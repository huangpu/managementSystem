<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PsNews.aspx.cs" Inherits="SRMS.personal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
#apDiv4 {
	position: absolute;
	left: 10px;
	top: 212px;
	width: 151px;
	height: 45px;
	z-index: 1;
	background-color: #0099FF;
}
#apDiv5 {
	position: absolute;
	left: 11px;
	top: 261px;
	width: 155px;
	height: 45px;
	z-index: 2;
	background-color: #0099FF;
}
#apDiv6 {
	position: absolute;
	left: 11px;
	top: 310px;
	width: 155px;
	height: 45px;
	z-index: 3;
	background-color: #0099FF;
}
#apDiv7 {
	position: absolute;
	left: 11px;
	top: 360px;
	width: 155px;
	height: 45px;
	z-index: 4;
	
	background-color: #0099FF;
}

.certen {
	text-align: center;
}
       .style10
       {
           width: 132px;
           height: 32px;
       }
       .style12
       {
           width: 234px;
           height: 32px;
       }
       .style14
       {
           width: 88px;
           height: 184px;
       }
       .style15
       {
           height: 184px;
       }
       .style17
       {
           height: 37px;
       }
       .style18
       {
           height: 37px;
           width: 97px;
       }
       .style23
       {
           height: 37px;
           width: 88px;
       }
       .style29
       {
           height: 29px;
           width: 97px;
       }
       .style31
       {
           width: 124px;
           height: 32px;
       }
       .style32
       {
           height: 32px;
           width: 88px;
       }
       .style34
       {
           width: 124px;
           height: 28px;
       }
       .style35
       {
           height: 28px;
           width: 132px;
       }
       .style36
       {
           height: 28px;
           width: 234px;
       }
       .style37
       {
           height: 28px;
           width: 88px;
       }
       .style38
       {
           height: 31px;
           width: 88px;
       }
       .style39
       {
           width: 124px;
           height: 31px;
       }
       .style40
       {
           height: 31px;
           width: 132px;
       }
       .style41
       {
           height: 31px;
           width: 234px;
       }
       .style43
       {
           height: 29px;
       }
       .style44
       {
           height: 29px;
           width: 88px;
       }
       .style47
       {
           height: 30px;
           width: 97px;
       }
       .style48
       {
           height: 30px;
           width: 88px;
       }
       .style49
       {
           height: 30px;
       }
   </style>
</head>
<body>
    <form id="form1" runat="server">
   <div id="apDiv1"></div>
<div id="apDiv2"></div>
<div id="apDiv3">
    <table border="2" style="width:100%;">
        <tr>
            <td align="center" class="style32">
                职工号：</td>
            <td class="style31">
            </td>
            <td class="style10" colspan="2">
                姓名：</td>
            <td class="style12">
            </td>
        </tr>
        <tr>
            <td class="style37">
                性别：</td>
            <td class="style34">
            </td>
            <td class="style35" colspan="2">
                出生日期：</td>
            <td class="style36">
            </td>
        </tr>
        <tr>
            <td class="style38">
                身份证号：</td>
            <td class="style39">
            </td>
            <td class="style40" colspan="2">
                政治面貌：</td>
            <td class="style41">
            </td>
        </tr>
        <tr>
            <td class="style44">
                所属学院：</td>
            <td class="style43" colspan="4">
            </td>
        </tr>
        <tr>
            <td class="style48">
                最高学历：</td>
            <td class="style49" colspan="2">
            </td>
            <td class="style47">
                职称：</td>
            <td class="style49">
            </td>
        </tr>
        <tr>
            <td class="style44">
                一级学科：</td>
            <td class="style43" colspan="2">
            </td>
            <td class="style29">
                研究方向：</td>
            <td class="style43">
            </td>
        </tr>
        <tr>
            <td class="style23">
                联系电话：</td>
            <td class="style17" colspan="2">
            </td>
            <td class="style18">
                邮箱：</td>
            <td class="style17">
            </td>
        </tr>
        <tr>
            <td class="style14">
                个人简历：</td>
            <td class="style15" colspan="4">
            </td>
        </tr>
    </table>
    </div>
<div id="apDiv4">
  <table width="155" height="45" border="2" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td class="certen">项目公告</td>
    </tr>
  </table>
</div>
<div id="apDiv5">
<table width="155" height="45" border="2" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td class="certen">个人信息</td>
    </tr>
</table></div>
<div id="apDiv6"><table width="155" height="45" border="2" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td class="certen">我的项目</td>
    </tr>
</table></div>
<div id="apDiv7">
<table width="155" height="45" border="2" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td class="certen">科研成果</td>
    </tr>
  </table>
</div>
    </form>
</body>
</html>
