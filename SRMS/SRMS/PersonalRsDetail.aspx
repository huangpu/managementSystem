<%@ Page Title="" Language="C#" MasterPageFile="~/PersonalRoot.Master" AutoEventWireup="true" CodeBehind="PersonalRsDetail.aspx.cs" Inherits="SRMS.PersonalRsDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 111px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
<a href="PersonalResult.aspx">我的成果</a>
<i class="icon-angle-right"></i>
<a href="PersonalRsDetail.aspx">成果详情</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
   <div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2>成果申报</h2>
						
					</div>
					<div class="box-content">
<table class="table table-striped table-bordered  " 
                            align="center">
						  <thead>
							  <tr>
								  <th class="style26" colspan="4">【基本信息】</th>
							  </tr>
						  </thead>   
						  <tbody>
							
							<tr>
								<td class="style1">项目编号：</td>
								<td class="style29" colspan="3">
                                    <asp:Label ID="Project_ID" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
							  <tr>
                                  <td class="style1">
                                      项目名称：</td>
                                  <td class="style29" colspan="3">
                                      <asp:Label ID="Project_Name" runat="server" Text="Label"></asp:Label>
                                  </td>
                              </tr>
							<tr>
								<td class="style1">负责人：</td>
								<td class="style29" colspan="3">
                                    <asp:Label ID="Project_PersonLiable" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
														
                              <tr>
                                  <td class="style1">
                                      著作号：</td>
                                  <td class="style14">
                                      <asp:Label ID="Result_BookNumber" runat="server" Text="Label"></asp:Label>
                                  </td>
                                  <td class="style1">
                                      著作类别：</td>
                                  <td class="style8">
                                      <asp:Label ID="Result_class" runat="server" Text="Label"></asp:Label>
                                  </td>
                              </tr>
							
							
							
                              <tr>
                                  <td class="style1">
                                      中文名称：</td>
                                  <td class="style14">
                                      <asp:Label ID="Result_BookNameC" runat="server" Text="Label"></asp:Label>
                                  </td>
                                  <td class="style1">
                                      英文名称：</td>
                                  <td class="style8">
                                      <asp:Label ID="Result_BookNameEn" runat="server" Text="Label"></asp:Label>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="style1">
                                      出版社名称：</td>
                                  <td class="style12" colspan="3">
                                      <asp:Label ID="Result_PublishName" runat="server" Text="Label"></asp:Label>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="style1">
                                      出版社级别：</td>
                                  <td class="style14">
                                      <asp:Label ID="Result_PublishLevel" runat="server" Text="Label"></asp:Label>
                                  </td>
                                  <td class="style1">
                                      出版日期：</td>
                                  <td class="style12">
                                      <asp:Label ID="Result_PublishTime" runat="server" Text="Label"></asp:Label>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="style1">
                                      出版号：</td>
                                  <td class="style14">
                                      <asp:Label ID="Result_publishNumber" runat="server" Text="Label"></asp:Label>
                                  </td>
                                  <td class="style1">
                                      著作字数：</td>
                                  <td class="style12">
                                      <asp:Label ID="Result_WordCount" runat="server" Text="Label"></asp:Label>
                                  </td>
                              </tr>																					                         
						  </tbody>
					  </table>
                      	</div>
				</div><!--/span-->
			
			</div><!--/row-->
              </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
