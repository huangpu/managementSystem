<%@ Page Title="" Language="C#" MasterPageFile="~/PersonalRoot.Master" AutoEventWireup="true" CodeBehind="PersonalUnDetail.aspx.cs" Inherits="SRMS.PersonalUnDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style3
        {
            width: 138px;
        }
        .style4
        {
        }
        .style5
        {
        }
        .style6
        {
            width: 147px;
        }
        .style7
        {
            width: 108px;
        }
        .style8
        {
            width: 110px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
<a href="PersonalUnderway.aspx">在研项目</a>
<i class="icon-angle-right"></i>
<a href="PersonalUnDetail.aspx">项目详情</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
   <div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i>项目详情</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i >h</i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<table class="table  table-bordered " align="center">
						  
						  <tbody>
							
                                   <thead>
							  <tr>
								  <th class="style26" colspan="4">【基本信息】</th>
							  </tr>
						  </thead>   
						  <tbody>
							
							<tr>
								<td class="style7">项目编号：</td>
								<td class="style29" colspan="3">
                                    <asp:Label ID="Project_ID" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
							  <tr>
                                  <td class="style7">
                                      项目名称：</td>
                                  <td class="style29" colspan="3">
                                      <asp:Label ID="Project_Name" runat="server" Text="Label"></asp:Label>
                                  </td>
                              </tr>
							<tr>
								<td class="style7">负责人：</td>
								<td class="style29" colspan="3">
                                    <asp:Label ID="Project_PersonLiable" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
							
							
							  <tr>
                                  <td class="style7">
                                      项目成员：</td>
                                  <td class="style29" colspan="3">
                                      <asp:Label ID="Project_Team" runat="server" Text="Label"></asp:Label>
                                  </td>
                              </tr>
							
							
							<tr>
								<td class="style7">项目开始时间：</td>
							    <td class="style8">
                                    <asp:Label ID="Project_StartTime" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td class="style3">
                                    项目计划结束时间：</td>
                                <td class="style29">
                                    <asp:Label ID="Project_PlanTime" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
                            
							
						      <tr>
                                  <td class="style7">
                                      所属学院：</td>
                                  <td class="style8">
                                      <asp:Label ID="Project_Institute" runat="server" Text="Label"></asp:Label>
                                  </td>
                                  <td class="style3">
                                      主管部门：</td>
                                  <td class="style29">
                                      <asp:Label ID="Project_MgDpart" runat="server" Text="Label"></asp:Label>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="style7">
                                      项目性质：</td>
                                  <td class="style8">
                                      <asp:Label ID="Project_Nature" runat="server" Text="Label"></asp:Label>
                                  </td>
                                  <td class="style3">
                                      项目状态：</td>
                                  <td class="style29">
                                      <asp:Label ID="Project_Status" runat="server" Text="Label"></asp:Label>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="style7">
                                      项目等级：</td>
                                  <td class="style8">
                                      <asp:Label ID="Project_level" runat="server" Text="Label"></asp:Label>
                                  </td>
                                  <td class="style3">
                                      项目来源：</td>
                                  <td class="style29">
                                      <asp:Label ID="Project_Source" runat="server" Text="Label"></asp:Label>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="style7">
                                      申请经费：</td>
                                  <td class="style8">
                                      <asp:Label ID="Project_PlanMoney" runat="server" Text="Label"></asp:Label>
                                  </td>
                                  <td class="style3">
                                      批准经费：</td>
                                  <td class="style29">
                                      <asp:Label ID="Project_RatifyMoney" runat="server" Text="Label"></asp:Label>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="style7">
                                      预期结果形式：</td>
                                  <td class="style4" colspan="3">
                                      <asp:Label ID="Project_ResultForm" runat="server" Text="Label"></asp:Label>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="style5" colspan="4">
                                      主要研究内容：</td>
                              </tr>
                              <tr>
                                  <td class="style5" colspan="4">
                                      <asp:Label ID="Project_Content" runat="server" Text="Label"></asp:Label>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="style5" colspan="4">
                                      文献综述：</td>
                              </tr>
                              <tr>
                                  <td class="style5" colspan="4">
                                      <asp:Label ID="Project_History" runat="server" Text="Label"></asp:Label>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="style5" colspan="4">
                                      项目创新点：</td>
                              </tr>
                              <tr>
                                  <td class="style5" colspan="4">
                                      <asp:Label ID="Project_Innovate" runat="server" Text="Label"></asp:Label>
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
