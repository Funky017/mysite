import string
import random
import time
from django.shortcuts import render, redirect
from django.contrib import auth   # auth认证模块
from django.contrib.auth.models import User
from django.http import JsonResponse
from django.core.mail import send_mail
from django.urls import reverse
from .models import Profile
from .forms import LoginForm, RegForm, ChangNicknameForm, BindEmailForm


# 登录
def login(request):
    if request.method == 'POST':
        login_form = LoginForm(request.POST)
        if login_form.is_valid():
            user = login_form.cleaned_data['user']
            auth.login(request, user)
            # 跳转到from传进来的参数，没有就跳到home
            return redirect(request.GET.get('from', reverse('home')))
    else:
        login_form = LoginForm()

    context = {
        'login_form': login_form,
    }
    return render(request, 'user/login.html', context)


# 返回登录表单
def login_for_model(request):
    login_form = LoginForm(request.POST)
    if login_form.is_valid():
        user = login_form.cleaned_data['user']
        auth.login(request, user)
        # 跳转到from传进来的参数，没有就跳到home
        data = {'status': 'SUCCESS'}
    else:
        data = {'status': 'ERROR'}

    return JsonResponse(data)


# 注册
def register(request):
    if request.method == 'POST':
        reg_form = RegForm(request.POST)
        if reg_form.is_valid():
            # 验证通过
            username = reg_form.cleaned_data['username']
            password = reg_form.cleaned_data['password']
            email = reg_form.cleaned_data['email']
            # 创建用户
            user = User.objects.create_user(username, email, password)
            user.save()
            # 登录用户
            user = auth.authenticate(username=username, password=password)
            auth.login(request, user)
            return redirect(request.GET.get('from', reverse('home')))

    else:
        reg_form = RegForm()

    context = {
        'reg_form': reg_form,
    }
    return render(request, 'user/register.html', context)


# 退出
def login_out(request):
    auth.logout(request)
    return redirect(request.GET.get('from', reverse('home')))


# 用户信息
def user_info(request):
    context = {}
    return render(request, 'user/user_info.html', context)


# 修改昵称
def change_nickname(request):
    redirect_to = request.GET.get('from', reverse('home'))

    if request.method == 'POST':
        form = ChangNicknameForm(request.POST, user=request.user)
        if form.is_valid():
            nickname_new = form.cleaned_data['nickname_new']
            profile, created = Profile.objects.get_or_create(user=request.user)
            profile.nickname = nickname_new
            profile.save()
            return redirect(redirect_to)
    else:
        form = ChangNicknameForm()

    context = {
        'page_title': '修改昵称',
        'form_title': '修改昵称',
        'submit_text': '修改',
        'form': form,
        'return_back_url': redirect_to,
    }
    return render(request, 'form.html', context)


# 绑定邮箱
def bind_email(request):
    redirect_to = request.GET.get('from', reverse('home'))

    if request.method == 'POST':
        form = BindEmailForm(request.POST, request=request)
        if form.is_valid():
            email = form.cleaned_data['email']
            request.user.email = email
            request.user.save()
            return redirect(redirect_to)
    else:
        form = BindEmailForm()

    context = {'page_title': '绑定邮箱', 'form_title': '绑定邮箱', 'submit_text': '绑定', 'form': form,
               'return_back_url': redirect_to}
    return render(request, 'user/bind_email.html', context)


# 发送邮箱验证
def send_verification_code(request):
    email = request.GET.get('email', '')
    data = {}

    if email != '':
        # 生成验证码,ascii_letters(显示所有字母)，digits(显示所有数字)
        code = ''.join(random.sample(string.ascii_letters + string.digits, 4))
        now = int(time.time())
        send_code_time = request.session.get('send_code_time', 0)
        if now - send_code_time < 30:
            data['status'] = 'ERROR'
        else:
            request.session['bind_email_code'] = code
            request.session['send_code_time'] = now

            # 发送邮件
            send_mail(
                '绑定邮箱',
                '验证码: %s' % code,
                '962269708@qq.com',
                [email],
                fail_silently=False,
            )
            data['status'] = 'SUCCESS'
    else:
        data['status'] = 'ERROR'
    return JsonResponse(data)

