from django.shortcuts import render
from django.contrib.contenttypes.models import ContentType
from django.http import JsonResponse
from django.db.models import ObjectDoesNotExist
from likes.models import LikeCount, LikeRecord


# Create your views here.
def success_response(liked_num):
    data = {
        'status': 'SUCCESS',
        'liked_num': liked_num,
    }
    return JsonResponse(data)


def error_response(code, message):
    data = {
        'status': 'ERROR',
        'code': code,
        'message': message,
    }
    return JsonResponse(data)


def like_change(request):
    # 获取数据
    user = request.user
    if not user.is_authenticated:
        return error_response(400, 'you are not login')
    content_type = request.GET.get('content_type')
    object_id = request.GET.get('object_id')

    try:
        content_type = ContentType.objects.get(model=content_type)
        model_class = content_type.model_class()
        model_obj = model_class.objects.get(pk=object_id)
    except ObjectDoesNotExist:
        return error_response(401, 'object is not exist.')

    # 处理数据
    if request.GET.get('is_like') == 'true':
        # 要点赞
        like_record, created = LikeRecord.objects.get_or_create(content_type=content_type, object_id=object_id,
                                                                user=user)
        if created:
            # 未点赞，进行点赞
            like_count, created = LikeCount.objects.get_or_create(content_type=content_type, object_id=object_id)
            like_count.liked_num += 1
            like_count.save()
            return success_response(like_count.liked_num)
        else:
            # 已点赞,不能重复点赞
            return error_response(402, 'you were liked')
    else:
        # 取消点赞
        if LikeRecord.objects.filter(content_type=content_type, object_id=object_id, user=user).exists():
            # 有点赞，取消点赞
            like_record = LikeRecord.objects.filter(content_type=content_type, object_id=object_id, user=user)
            like_record.delete()
            # 点赞总数-1
            like_count, created = LikeCount.objects.get_or_create(content_type=content_type, object_id=object_id)
            if not created:
                like_count.liked_num -= 1
                like_count.save()
                return success_response(like_count.liked_num)
            else:
                return error_response(404, 'data error')

        else:
            # 没有点赞过，不能取消
            return error_response(403, 'you are not liked')

