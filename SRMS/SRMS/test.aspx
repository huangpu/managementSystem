<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="SRMS.test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
#apDiv1 {
	position: absolute;
	left: 6px;
	top: 9px;
	width: 745px;
	height: 134px;
	z-index: 1;
	background-color: #CCCC66;
}
#apDiv2 {
	position: absolute;
	left: 7px;
	top: 151px;
	width: 162px;
	height: 492px;
	z-index: 2;
	background-color: #999999;
}
#apDiv3 {
	position: absolute;
	left: 178px;
	top: 151px;
	width: 556px;
	height: 489px;
	z-index: 3;
	background-color: #CFCFD1;
}
#apDiv4 {
	position: absolute;
	left: 5px;
	top: 647px;
	width: 726px;
	height: 136px;
	z-index: 4;
	background-color: #669999;
}
*{margin:0;padding:0;list-style-type:none;}
a,img{border:0;}
body{font:12px/180% Arial, Helvetica, sans-serif, "新宋体";}
.demo{margin:60px auto;width:720px;}

.navbox{float:left;}
ul.nav{width:158px;
padding:60px 0 60px 0;background:url(images/shad2.png) no-repeat;
        }
ul.nav li{margin:5px 0 0 0;}
ul.nav li a{
	background:#cbcbcb url(images/border.png) no-repeat;color:#174867;padding:7px 15px 7px 15px;width:100px;display:block;text-decoration:none;
	
	-webkit-transition:all 0.3s ease-out;
	-moz-transition:all 0.3s ease-out;
	-o-transition:all 0.3s ease-out;
	
	-webkit-box-shadow:2px 2px 4px #888;
	-moz-box-shadow:2px 2px 4px #888;
	-o-box-shadow:2px 2px 4px #888;
}
ul.nav li a:hover{background:#ebebeb url(images/border.png) no-repeat;color:#67a5cd;padding:7px 15px 7px 30px;}
</style>
</head>
<body>
    <form id="form1" runat="server">
   <div id="apDiv1"></div>
<div id="apDiv2">
<div class="demo">

	<div class="navbox">
		<ul class="nav">
			<li><a href="#">项目公告</a></li>
			<li><a href="#">个人信息</a></li>
			<li><a href="#">我的项目</a></li>
			<li><a href="#">我的成果</a></li>
			
		</ul>
	</div>
	
	
</div>

</div>
<div id="apDiv3">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="News_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="News_ID" HeaderText="News_ID" ReadOnly="True" 
                SortExpression="News_ID" />
            <asp:BoundField DataField="News_Name" HeaderText="News_Name" 
                SortExpression="News_Name" />
            <asp:BoundField DataField="News_Time" HeaderText="News_Time" 
                SortExpression="News_Time" />
            <asp:BoundField DataField="News_Author" HeaderText="News_Author" 
                SortExpression="News_Author" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:connectionString %>" 
        SelectCommand="SELECT [News_ID], [News_Name], [News_Time], [News_Author] FROM [tbl_NewsBulletin] ORDER BY [News_Time] DESC">
    </asp:SqlDataSource>
    </div>
<div id="apDiv4"></div>
    </form>
</body>
</html>
