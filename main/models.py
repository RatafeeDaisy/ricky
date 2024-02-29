#coding:utf-8
__author__ = "ila"
from django.db import models

from .model import BaseModel

from datetime import datetime



class xuesheng(BaseModel):
    __doc__ = u'''xuesheng'''
    __tablename__ = 'xuesheng'

    __loginUser__='xuehao'


    __authTables__={}
    __authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __loginUserColumn__='xuehao'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    xuehao=models.CharField ( max_length=255,null=False,unique=True,verbose_name='学号' )
    mima=models.CharField ( max_length=255,null=False, unique=False,verbose_name='密码' )
    xueshengxingming=models.CharField ( max_length=255,null=False, unique=False,verbose_name='学生姓名' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False,verbose_name='性别' )
    nianling=models.IntegerField  (  null=True, unique=False,verbose_name='年龄' )
    nianji=models.CharField ( max_length=255, null=True, unique=False,verbose_name='年级' )
    xueyuan=models.CharField ( max_length=255, null=True, unique=False,verbose_name='学院' )
    zhuanye=models.CharField ( max_length=255, null=True, unique=False,verbose_name='专业' )
    xueshengshouji=models.CharField ( max_length=255, null=True, unique=False,verbose_name='学生手机' )
    zhaopian=models.CharField ( max_length=255, null=True, unique=False,verbose_name='照片' )
    '''
    xuehao=VARCHAR
    mima=VARCHAR
    xueshengxingming=VARCHAR
    xingbie=VARCHAR
    nianling=Integer
    nianji=VARCHAR
    xueyuan=VARCHAR
    zhuanye=VARCHAR
    xueshengshouji=VARCHAR
    zhaopian=VARCHAR
    '''
    class Meta:
        db_table = 'xuesheng'
        verbose_name = verbose_name_plural = '学生'
class xueyuanxinxi(BaseModel):
    __doc__ = u'''xueyuanxinxi'''
    __tablename__ = 'xueyuanxinxi'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    xueyuanmingcheng=models.CharField ( max_length=255, null=True, unique=False,verbose_name='学院名称' )
    xueyuanjianjie=models.TextField   (  null=True, unique=False,verbose_name='学院简介' )
    '''
    xueyuanmingcheng=VARCHAR
    xueyuanjianjie=Text
    '''
    class Meta:
        db_table = 'xueyuanxinxi'
        verbose_name = verbose_name_plural = '学院信息'
class zhuanyexinxi(BaseModel):
    __doc__ = u'''zhuanyexinxi'''
    __tablename__ = 'zhuanyexinxi'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    zhuanyemingcheng=models.CharField ( max_length=255, null=True, unique=False,verbose_name='专业名称' )
    zhuanyejianjie=models.CharField ( max_length=255, null=True, unique=False,verbose_name='专业简介' )
    '''
    zhuanyemingcheng=VARCHAR
    zhuanyejianjie=VARCHAR
    '''
    class Meta:
        db_table = 'zhuanyexinxi'
        verbose_name = verbose_name_plural = '专业信息'
class sushexinxi(BaseModel):
    __doc__ = u'''sushexinxi'''
    __tablename__ = 'sushexinxi'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    louhao=models.CharField ( max_length=255, null=True, unique=False,verbose_name='楼号' )
    loucenghao=models.CharField ( max_length=255, null=True, unique=False,verbose_name='楼层号' )
    sushehao=models.CharField ( max_length=255, null=True, unique=False,verbose_name='宿舍号' )
    susheleixing=models.CharField ( max_length=255, null=True, unique=False,verbose_name='宿舍类型' )
    susheweizhi=models.CharField ( max_length=255, null=True, unique=False,verbose_name='宿舍位置' )
    sushezhaopian=models.CharField ( max_length=255, null=True, unique=False,verbose_name='宿舍照片' )
    '''
    louhao=VARCHAR
    loucenghao=VARCHAR
    sushehao=VARCHAR
    susheleixing=VARCHAR
    susheweizhi=VARCHAR
    sushezhaopian=VARCHAR
    '''
    class Meta:
        db_table = 'sushexinxi'
        verbose_name = verbose_name_plural = '宿舍信息'
class xueshengruzhu(BaseModel):
    __doc__ = u'''xueshengruzhu'''
    __tablename__ = 'xueshengruzhu'



    __authTables__={'xuehao':'xuesheng',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    xuehao=models.CharField ( max_length=255, null=True, unique=False,verbose_name='学号' )
    xueshengxingming=models.CharField ( max_length=255, null=True, unique=False,verbose_name='学生姓名' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False,verbose_name='性别' )
    nianji=models.CharField ( max_length=255, null=True, unique=False,verbose_name='年级' )
    nianling=models.CharField ( max_length=255, null=True, unique=False,verbose_name='年龄' )
    xueyuan=models.CharField ( max_length=255, null=True, unique=False,verbose_name='学院' )
    zhuanye=models.CharField ( max_length=255, null=True, unique=False,verbose_name='专业' )
    louhao=models.CharField ( max_length=255, null=True, unique=False,verbose_name='楼号' )
    loucenghao=models.CharField ( max_length=255, null=True, unique=False,verbose_name='楼层号' )
    sushehao=models.CharField ( max_length=255, null=True, unique=False,verbose_name='宿舍号' )
    chuangpuhao=models.CharField ( max_length=255,null=False, unique=False,verbose_name='床铺号' )
    beizhu=models.CharField ( max_length=255, null=True, unique=False,verbose_name='备注' )
    '''
    xuehao=VARCHAR
    xueshengxingming=VARCHAR
    xingbie=VARCHAR
    nianji=VARCHAR
    nianling=VARCHAR
    xueyuan=VARCHAR
    zhuanye=VARCHAR
    louhao=VARCHAR
    loucenghao=VARCHAR
    sushehao=VARCHAR
    chuangpuhao=VARCHAR
    beizhu=VARCHAR
    '''
    class Meta:
        db_table = 'xueshengruzhu'
        verbose_name = verbose_name_plural = '学生入住'
class suguanyuan(BaseModel):
    __doc__ = u'''suguanyuan'''
    __tablename__ = 'suguanyuan'



    __authTables__={}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    suguanyuanxingming=models.CharField ( max_length=255, null=True, unique=False,verbose_name='宿管员姓名' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False,verbose_name='性别' )
    nianling=models.CharField ( max_length=255, null=True, unique=False,verbose_name='年龄' )
    ruzhishijian=models.DateField   (  null=True, unique=False,verbose_name='入职时间' )
    zhaopian=models.CharField ( max_length=255, null=True, unique=False,verbose_name='照片' )
    fuzelouhao=models.CharField ( max_length=255, null=True, unique=False,verbose_name='负责楼号' )
    '''
    suguanyuanxingming=VARCHAR
    xingbie=VARCHAR
    nianling=VARCHAR
    ruzhishijian=Date
    zhaopian=VARCHAR
    fuzelouhao=VARCHAR
    '''
    class Meta:
        db_table = 'suguanyuan'
        verbose_name = verbose_name_plural = '宿管员'
class shebeibaoxiu(BaseModel):
    __doc__ = u'''shebeibaoxiu'''
    __tablename__ = 'shebeibaoxiu'



    __authTables__={'xuehao':'xuesheng',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    xuehao=models.CharField ( max_length=255, null=True, unique=False,verbose_name='学号' )
    xueshengxingming=models.CharField ( max_length=255, null=True, unique=False,verbose_name='学生姓名' )
    louhao=models.CharField ( max_length=255, null=True, unique=False,verbose_name='楼号' )
    loucenghao=models.CharField ( max_length=255, null=True, unique=False,verbose_name='楼层号' )
    sushehao=models.CharField ( max_length=255, null=True, unique=False,verbose_name='宿舍号' )
    baoxiuwupin=models.CharField ( max_length=255, null=True, unique=False,verbose_name='报修物品' )
    miaoshu=models.CharField ( max_length=255, null=True, unique=False,verbose_name='描述' )
    baoxiushijian=models.DateTimeField  (  null=True, unique=False,verbose_name='报修时间' )
    sfsh=models.CharField ( max_length=255, null=True, unique=False,verbose_name='是否审核' )
    shhf=models.TextField   (  null=True, unique=False,verbose_name='审核回复' )
    '''
    xuehao=VARCHAR
    xueshengxingming=VARCHAR
    louhao=VARCHAR
    loucenghao=VARCHAR
    sushehao=VARCHAR
    baoxiuwupin=VARCHAR
    miaoshu=VARCHAR
    baoxiushijian=DateTime
    sfsh=VARCHAR
    shhf=Text
    '''
    class Meta:
        db_table = 'shebeibaoxiu'
        verbose_name = verbose_name_plural = '设备报修'
