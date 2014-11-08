<%--
  Created by IntelliJ IDEA.
  User: panmingzhi815
  Date: 2014/10/4
  Time: 0:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>后台管理</title>
    <base href="<%=basePath %>"/>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8">
    <%@ include file="/plugin/easyui/include.jsp" %>
    <link rel="stylesheet" href="css/admin.css">
    <!-- insert css and js file -->
</head>
<body class="easyui-layout">
<div data-options="region:'north'" style="height: 89px;background:url(/image/header.gif) repeat-x;border: 1px solid #aac5e7;">
    <table class="logoTable">
        <tr>
            <td valign="middle" align="left" width="100px"><img src="/image/logo_72.png"></td>
            <td valign="middle" align="left"><label class="logoTitle">后台管理系统</label></td>
            <td valign="middle" align="right">
                <label class="logoTips">欢迎您，小潘，一天好心情。</label>
                <br/>
                <a href="javascript:void(0)" class="easyui-linkbutton">注销</a>
            </td>
        </tr>
    </table>
</div>
<div data-options="region:'south',split:true" style="height:50px;"></div>
<div data-options="region:'west',split:true" title="菜单" style="width:300px;"></div>
<div data-options="region:'center',title:'首页',iconCls:'icon-ok'">
    <table class="easyui-datagrid"
           data-options="url:'datagrid_data1.json',method:'get',border:false,singleSelect:true,fit:true,fitColumns:true">
        <thead>
        <tr>
            <th data-options="field:'itemid'" width="80">Item ID</th>
            <th data-options="field:'productid'" width="100">Product ID</th>
            <th data-options="field:'listprice',align:'right'" width="80">List Price</th>
            <th data-options="field:'unitcost',align:'right'" width="80">Unit Cost</th>
            <th data-options="field:'attr1'" width="150">Attribute</th>
            <th data-options="field:'status',align:'center'" width="60">Status</th>
        </tr>
        </thead>
    </table>
</div>
</body>
</html>

</body>
</html>
