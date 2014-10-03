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
    <title></title>
    <base href="<%=basePath %>"/>
    <%@ include file="/plugin/easyui/include.jsp" %>
    <link rel="stylesheet" href="css/admin.css">
    <script type="text/javascript" src="js/admin.js"></script>
</head>
<body>
<div id="dlg" class="easyui-window" title="用户登陆" data-options="iconCls:'icon-save',draggable:false,closable:false,minimizable:false,maximizable:false,collapsible:false,resizable:false" style="width:400px;height:250px;">
    <img src="image/loginBanner.gif" width="100%">
    <form method="post" class="form" action="admin/adminLogin.do">
        <div>
            <label>用户名</label>
            <input name="username" type="text" placeholder="请输入用户名" value="${model.username}" class="easyui-validatebox" data-options="required:true,validType:['length[6,18]'],invalidMessage:'用户名为6至18位字母或数字组合',missingMessage:'用户名不能为空'">
        </div>
        <div>
            <label>密　码</label>
            <input name="password" type="password" placeholder="请输入密码" class="easyui-validatebox" data-options="required:true,validType:['length[6,18]'],invalidMessage:'密码为6至18位字母或数字组合',missingMessage:'密码不能空'">
        </div>
        <div>
            <label>验证码</label>
            <input name="kaptcha" type="text" placeholder="请输入验证码" class="easyui-validatebox" data-options="required:true,validType:['length[0,18]'],missingMessage:'验证码不能为空'">
            <img src="/kaptcha.jpg" width="80" id="kaptchaImage" align="middle" />${model.error}
        </div>
        <div>
            <div>
                <a id="submit" href="#" class="easyui-linkbutton">提交</a>
                <a id="reset" href="#" class="easyui-linkbutton">重置</a>
            </div>
        </div>
    </form>
</div>
</body>
</html>
