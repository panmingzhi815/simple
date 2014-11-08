<%@ page import="java.util.Date" %>
<%--
  Created by IntelliJ IDEA.
  User: panmingzhi815
  Date: 2014/9/20
  Time: 13:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8">
    <title>用户登录</title>
    <base href="<%=basePath %>"/>
    <%@ include file="/plugin/easyui/include.jsp" %>
    <link rel="stylesheet" href="css/admin.css">
    <script type="text/javascript" src="js/admin.js"></script>
</head>
<body style="width: 100%;height: 100%">
<div id="dlg" class="easyui-window" title="用户登陆" data-options="iconCls:'icon-save',draggable:false,closable:false,minimizable:false,maximizable:false,collapsible:false,resizable:false" style="width:400px;height:300px;">
    <div class="easyui-layout" fit="true">
        <div region="north" border="false">
            <img src="image/loginBanner.gif" width="100%">
        </div>
        <div region="center" border="false">
            <div class="easyui-tabs" fit="true">
                <div title="用户登陆" style="overflow:hidden;">
                    <form id="loginForm" method="post" class="form" action="admin/adminLoginPage.do">
                        <div>
                            <label>用户名</label>
                            <input name="username" type="text" placeholder="请输入用户名" class="easyui-textbox" value="${username}">
                        </div>
                        <div>
                            <label>密　码</label>
                            <input name="password" type="password" placeholder="请输入密码" class="easyui-textbox" value="${password}">
                        </div>
                        <div>
                            <label>验证码</label>
                            <input class="easyui-textbox" name="kaptcha" type="text" placeholder="请输入验证码">
                            <img src="/kaptcha.jpg" width="70" id="kaptchaImage" align="middle" style="border:1px solid;margin-top: -5px;"/>
                        </div>

                        <div>
                            <div>
                                <a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#loginForm').submit();">提交</a>
                                <a href="javascript:void(0)" class="easyui-linkbutton" onclick="history.go(0)">重置</a>
                            </div>
                        </div>

                        <label class="error">　${error}</label>
                    </form>
                </div>
                <div title="公告" border="false"  style="overflow:hidden;padding: 20px;font-size: 15px;text-indent: 2em">
                    <p style="">本软件仅供学习参考，如果您觉得不错，请联系开发者;</p>
                    <p>QQ：154341736</p>
                    <p>开发者：小潘</p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
