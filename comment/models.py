from django.db import models
from django.contrib.contenttypes.fields import GenericForeignKey
from django.contrib.contenttypes.models import ContentType
from django.contrib.auth.models import User


# Create your models here.
# 评论模型
class Comment(models.Model):

    # 可以关联任意类型的字段
    content_type = models.ForeignKey(ContentType, on_delete=models.CASCADE)
    object_id = models.PositiveIntegerField()
    content_object = GenericForeignKey('content_type', 'object_id')

    text = models.TextField()
    comment_time = models.DateTimeField(auto_now_add=True)   # 自动添加时间
    # 评论人;related_name反向解析,避免冲突
    user = models.ForeignKey(User, related_name='comments', on_delete=models.CASCADE)

    # 记录每一条评论的顶层是哪一条
    root = models.ForeignKey('self', null=True, related_name='root_comment', on_delete=models.CASCADE)
    # 外键指向自己，如果是第一条允许为空
    parent = models.ForeignKey('self', null=True, related_name='parent_comment', on_delete=models.CASCADE)
    # 被回复的人
    reply_to = models.ForeignKey(User, related_name='replies', null=True, on_delete=models.CASCADE)

    def __str__(self):
        return self.text

    class Meta:
        ordering = ["comment_time"]



