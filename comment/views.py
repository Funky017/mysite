from django.shortcuts import render, redirect
from django.urls import reverse
from django.http import JsonResponse
from .models import Comment
from django.contrib.contenttypes.models import ContentType
from .forms import CommentForm


# Create your views here.

# 提交评论
def update_comment(request):
    referer = request.META.get('HTTP_REFERER', reverse('home'))
    comment_form = CommentForm(request.POST, user=request.user)
    if comment_form.is_valid():
        comment = Comment()
        comment.user = comment_form.cleaned_data['user']
        comment.text = comment_form.cleaned_data['text']
        comment.content_object = comment_form.cleaned_data['content_object']

        parent = comment_form.cleaned_data['parent']
        if not parent is None:
            comment.root = parent.root if not parent.root is None else parent
            comment.parent = parent
            comment.reply_to = parent.user
        comment.save()

        # 返回数据
        data = {
            'status': 'SUCCESS',
            'username': comment.user.get_nickname_or_username(),
            'comment_time': comment.comment_time.strftime('%Y-%m-%d %H:%S'),
            'text': comment.text,
            'pk': comment.pk,
            'content_type': ContentType.objects.get_for_model(comment).model,
        }
        if not parent is None:
            data['reply_to'] = comment.reply_to.get_nickname_or_username()
        else:
            data['reply_to'] = ''
        data['root_pk'] = comment.root.pk if not comment.root is None else ''
        return JsonResponse(data)
    else:
        data = {
            'status': 'ERROR',
            'message': list(comment_form.errors.value())[0][0],
        }
        return JsonResponse(data)
        # return render(request, 'error.html', {'message': comment_form.errors, 'redirect_to': referer})
