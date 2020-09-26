from django.db import models
from django.contrib.auth.models import User
from ckeditor_uploader.fields import RichTextUploadingField
from django.contrib.contenttypes.models import ContentType
from django.contrib.contenttypes.fields import GenericRelation
from read_statistics.models import ReadNumExpandMethod, ReadDetail


# Create your models here.
class BlogType(models.Model):
    type_name = models.CharField(max_length=15)

    # 管理后台显示名称
    def __str__(self):
        return self.type_name


class Blog(models.Model, ReadNumExpandMethod):
    title = models.CharField(max_length=32)

    # 关联博客类型外键，类型模块要放在上面
    blog_type = models.ForeignKey(BlogType, on_delete=models.CASCADE)
    content = RichTextUploadingField()
    # 外键关联到用户
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    read_details = GenericRelation(ReadDetail)    # 建立与ReadDetail的反向关联
    created_time = models.DateTimeField(auto_now_add=True)
    last_update_time = models.DateTimeField(auto_now=True)

    def __str__(self):
        return "<Blog %s>" % self.title

    class Meta:
        # 设置排序，不然无法分页
        ordering = ['-created_time']


'''
class ReadNum(models.Model):
    read_num = models.IntegerField(default=0)
    # 关联外键一对一关系，且删除时不影响Blog模型
    blog = models.OneToOneField(Blog, on_delete=models.CASCADE)
'''


