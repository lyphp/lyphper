from django.shortcuts import render
from django.http import HttpResponse,JsonResponse
from django.db import connection
from public.views import dictfetchall

# Create your views here.
def login(request):
    #return HttpResponse("haha")
    return render(request,"login.html")
def login_check(request):
    #from .public import dictfetchall

    if request.method=="POST":
        password = request.POST['password']
        username = request.POST['username']
    else:
        username = request.COOKIES.get('username')
        if username=='zhangyi':
            data = {'username': username, "status": "1"}
            res = render(request, "loginok.html", {'data': data})
            return res
        return HttpResponse("Error Request")
    cursor = connection.cursor()
    checkSql="select count(1) as num from users where username='{0}' and password='{1}'".format(username,password)
    #return HttpResponse(checkSql)
    cursor.execute(checkSql,None)
    res = dictfetchall(cursor)

    if res[0]['num']==0:
        return HttpResponse("<a herf=baidu.com>Error code101</a>")
    else:
        data = {'username':username,"status":"1"}
        res = render(request,"loginok.html",{'data':data})
        res.set_cookie('username',username)
        return res
def users(request):
    cursor = connection.cursor()
    cursor.execute("select * from users")
    tmpres = dictfetchall(cursor)

    data = {
            "code":0,
            "data": tmpres,
            }
    return JsonResponse(data)



