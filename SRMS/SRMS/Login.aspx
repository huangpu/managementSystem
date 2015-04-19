<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SRMS.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
#apDiv1 {
	position: absolute;
	left: 2px;
	top: 1px;
	width: 100%;
	height: 100%;
	z-index: 1;
	visibility: visible;
}
#apDiv2 {
	position: absolute;
	left: 227px;
	top: 141px;
	width: 424px;
	height: 273px;
	z-index: 2;
	visibility: visible;
}
#apDiv3 {
	position: absolute;
	left: 742px;
	top: 196px;
	width: 263px;
	height: 178px;
	z-index: 3;
	text-align: right;
	visibility: visible;
}
.text1 {
	text-align: right;
}
.textcolor {
	color: #2655A7;
	font-family: "华文宋体";
}
#apDiv4 {
	position: absolute;
	left: 779px;
	top: 320px;
	width: 43px;
	height: 28px;
	z-index: 4;
	visibility: visible;
        right: 312px;
    }
#apDiv5 {
	position: absolute;
	left: 853px;
	top: 320px;
	width: 41px;
	height: 26px;
	z-index: 5;
	visibility: visible;
}
#apDiv6 {
	position: absolute;
	left: 927px;
	top: 327px;
	width: 41px;
	height: 26px;
	z-index: 5;
	visibility: visible;
}
.text2 {
	text-align: left;
}
    .style1
    {
        text-align: right;
        width: 73px;
    }
</style>

</head>

<body>

<div id="apDiv1">
    <img src="images/loginbg.png" /></div>
<div id="apDiv2"><img src="images/bg2.jpg" width="424" height="275" /></div>
    <form id="form1" runat="server">

<div id="apDiv3">

  <table width="264" height="178" border="0" cellpadding="0" cellspacing="0">
    <tr>
      <td class="style1"><img src="images/name.jpg" width="66" height="21" /></td>
      <td class="text2">
          <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
        <br /></td>
    </tr>
    <tr>
      <td class="style1"><img src="images/password.jpg" width="66" height="17" /></td>
      <td class="text2">
          <asp:TextBox ID="TxtPass" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
      <td colspan="2">
          
        </td>
    </tr>
  </table> 
</div>
<div id="apDiv4">
    <asp:Button ID="BtnLogin" runat="server" BackColor="#C0C0FF" onclick="BtnLogin_Click" Text="登录" />
    </div>
    <div id="apDiv5">
    <asp:Button ID="Btnreset" runat="server" BackColor="#C0C0FF" Text="重置" 
            />         </div>
    </form>



</body>
</html>