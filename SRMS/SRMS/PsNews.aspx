<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PsNews.aspx.cs" Inherits="SRMS.personal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <style type="text/css">
#apDiv1 {
	position: absolute;
	left: 10px;
	top: 3px;
	width: 1080px;
	height: 125px;
	
	background-color: #66CCFF;
}
#apDiv2 {
	position: absolute;
	left: 10px;
	top: 129px;
	width: 156px;
	height: 517px;
	
	color: #6FC;
	background-color: #999999;
}
#apDiv3 {
	position: absolute;
	left: 166px;
	top: 128px;
	width: 925px;
	height: 517px;

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
        CellPadding="4" DataKeyNames="News_ID" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" AllowPaging="True" 
        AllowSorting="True" Caption="科研项目公告" Width="925px" Height="492px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="News_ID" HeaderText="项目编号" ReadOnly="True" 
                SortExpression="News_ID" />
            <asp:BoundField DataField="News_Name" HeaderText="项目名称" 
                SortExpression="News_Name" />
            <asp:BoundField DataField="News_Time" HeaderText="发布时间" 
                SortExpression="News_Time" />
            <asp:BoundField DataField="News_Author" HeaderText="发布人" 
                SortExpression="News_Author" />
            <asp:HyperLinkField DataNavigateUrlFields="News_ID" 
                DataNavigateUrlFormatString="NewsDetail.aspx?News_id={0}" HeaderText="详细信息" 
                Text="详细信息" />
            <asp:HyperLinkField HeaderText="申请" Text="申请" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" HorizontalAlign="Center" />
        <EmptyDataTemplate>
            项目公告
        </EmptyDataTemplate>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
            HorizontalAlign="Center" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" 
            HorizontalAlign="Center" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:connectionString %>" 
        SelectCommand="SELECT [News_ID], [News_Name], [News_Time], [News_Author] FROM [tbl_NewsBulletin] ORDER BY [News_Time] DESC">
    </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
