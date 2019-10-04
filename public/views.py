from django.shortcuts import render

# Create your views here.
#生成字典格式方法
def dictfetchall(cursor):
    desc = cursor.description
    return [
        dict(zip([col[0] for col in desc], row))
        for row in cursor.fetchall()
    ]