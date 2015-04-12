<%@ Page Title="" Language="C#" MasterPageFile="~/PersonalRoot.Master" AutoEventWireup="true" CodeBehind="PersonalInfor.aspx.cs" Inherits="SRMS.PersonalInfor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style22
        {
        }
        .style24
        {
        }
        .style26
        {
        }
        .style27
        {
            width: 70px;
        }
        .style28
        {
            width: 37px;
        }
        .style29
        {
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <p>
        <a href="#">个人资料</a></p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span>个人信息</h2>
						
					</div>
<div class="box-content">
						<table class="table table-striped table-bordered  " 
                            align="center">
						  <thead>
							  <tr>
								  <th class="style26">职工号</th>
								  <th colspan="2">
                                      <asp:Label ID="User_ID" runat="server" Text="Label"></asp:Label>
                                  </th>
								  <th class="style27">姓名</th>
								  <th class="style22" colspan="2">
                                      <asp:Label ID="User_Name" runat="server" Text="Label"></asp:Label>
                                  </th>
							  </tr>
						  </thead>   
						  <tbody>
							<tr>
								<td class="style26">性别</td>
								<td class="style29">
                                    <asp:Label ID="User_Sex" runat="server" Text="Label"></asp:Label>
                                </td>
								<td class="style28">民族</td>
								<td class="style27">
									<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                </td>
								<td class="style24">
									出生日期</td>
								<td class="center">
									<asp:Label ID="User_Birth" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
							 <tr>
								  <th class="style26">身份证号</th>
								  <th colspan="2">
                                      <asp:Label ID="User_IdCard" runat="server" Text="Label"></asp:Label>
                                  </th>
								  <th class="style27">政治面貌</th>
								  <th class="style22" colspan="2">
                                      <asp:Label ID="User_Politics" runat="server" Text="Label"></asp:Label>
                                  </th>
							  </tr>
                            <tr>
								<td class="style26">所属学院</td>
								<td class="style29" colspan="2">
                                    <asp:Label ID="User_institute" runat="server" Text="Label"></asp:Label>
                                </td>
								<td class="style27">
									最高学历</td>
								<td class="style24" colspan="2">
									<asp:Label ID="User_LastDegree" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
                            <tr>
								  <th class="style26">最高职称</th>
								  <th colspan="2">
                                      <asp:Label ID="User_TechnicalTitle" runat="server" Text="Label"></asp:Label>
                                  </th>
								  <th class="style27">一级学科</th>
								  <th class="style22" colspan="2">
                                      <asp:Label ID="User_Cours" runat="server" Text="Label"></asp:Label>
                                  </th>
							  </tr>
                               <tr>
								<td class="style26">联系电话</td>
								<td class="style29" colspan="2">
                                    <asp:Label ID="User_Tel" runat="server" Text="Label"></asp:Label>
                                   </td>
								<td class="style27">
									个人邮箱</td>
								<td class="style24" colspan="2">
									<asp:Label ID="User_Mail" runat="server" Text="Label"></asp:Label>
                                   </td>
							</tr>
                            <tr>
								  <th class="style26">研究方向</th>
								  <th colspan="5">
                                      <asp:Label ID="User_Search" runat="server" Text="Label"></asp:Label>
                                  </th>
							  </tr>
                             <tr>
								  <th class="style26" colspan="6">个人简介：</th>
							  </tr>
                              <tr>
								<td class="style26" colspan="6">&nbsp;&nbsp;<asp:Label ID="User_Vitae" 
                                        runat="server" Text="Label"></asp:Label>
                                  </td>
							</tr>
						  </tbody>
					  </table>
					</div>
				
</asp:Content>
