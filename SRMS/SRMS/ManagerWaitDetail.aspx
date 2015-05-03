<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerRoot.Master" AutoEventWireup="true" CodeBehind="ManagerWaitDetail.aspx.cs" Inherits="SRMS.ManagerWaitDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 45px;
        }
        .style2
        {
        }
        .style3
        {
            width: 136px;
        }
        .style5
        {
        }
        .style6
        {
            width: 122px;
            height: 45px;
        }
        .style8
        {
            width: 136px;
            height: 45px;
        }
        .style9
        {
            height: 55px;
        }
        .style10
        {
            width: 80px;
        }
        .style11
        {
            width: 179px;
        }
        .style12
        {
            width: 179px;
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
<a href="#">待审</a>项目
<i class="icon-angle-right"></i>
    申报详情  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<div class="box-header" data-original-title>
						<h2>项目详情</h2>
						
					</div>
<div class="box-content">
						<table class="table table-striped table-bordered  " 
                            align="center">
						  <thead>
							  <tr>
								  <th class="style26" colspan="5">【基本信息】</th>
							  </tr>
						  </thead>   
						  <tbody>
							
							<tr>
								<td class="style9">项目编号：</td>
								<td class="style9" colspan="4">
                                    <asp:Label ID="Project_ID" runat="server" Text=""></asp:Label>
                                </td>
							</tr>
							  <tr>
                                  <td class="style9">
                                      项目名称：</td>
                                  <td class="style9" colspan="4">
                                      <asp:Label ID="Project_Name" runat="server" Text="Label"></asp:Label>
                                  </td>
                              </tr>
							<tr>
								<td class="style5">负责人：</td>
								<td class="style29" colspan="2">
                                    <asp:Label ID="Project_PersonLiable" runat="server" Text="Label"></asp:Label>
                                </td>
							    <td class="style10">
                                    团队成员：</td>
                                <td class="style29">
                                    <asp:Label ID="Project_Team" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
							<tr>
								<td class="style5">所属学院：</td>
								<td class="style29" colspan="4">
                                    <asp:Label ID="Project_Institute" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
							<tr>
								<td class="style5">项目性质：</td>
								<td class="style11">
                                    <asp:Label ID="Project_Nature" runat="server" Text="Label"></asp:Label>
                                </td>
								<td class="style3" colspan="2">
                                    项目类别：</td>
								<td class="style29">
                                    <asp:Label ID="Project_class" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
							<tr>
								<td class="style6">校内主管部门：</td>
								<td class="style12">
                                    <asp:Label ID="Project_MgDpart" runat="server" Text="科技处"></asp:Label>
                                </td>
								<td class="style8" colspan="2">所属学科：</td>
								<td class="style1">
                                    <asp:Label ID="Project_Course" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
							<tr>
								<td class="style5">项目等级：</td>
								<td class="style29" colspan="4">
                                    <asp:Label ID="Project_level" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
							<tr>
								<td class="style26" colspan="5">【详细信息】</td>
							</tr>
							<tr>
								<td class="style5">项目来源：</td>
								<td class="style11">
                                    <asp:Label ID="Project_Source" runat="server" Text="Label"></asp:Label>
                                </td>
								<td class="style3" colspan="2">项目密级：</td>
								<td class="style26">
                                    <asp:Label ID="Project_SecretGrade" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
							
							<tr>
								<td class="style5">项目开始时间：</td>
								<td class="style11">
                                    <asp:Label ID="Project_StartTime" runat="server" Text="Label"></asp:Label>
                                </td>
								<td class="style3" colspan="2">计划结项时间：</td>
								<td class="style2">
                                    <asp:Label ID="Project_PlanTime" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
							<tr>
								<td class="style5">预期成果形式：</td>
								<td class="style2" colspan="4">
                                    <asp:Label ID="Project_ResultForm" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
							<tr>
								<td class="style5">申请经费：</td>
								<td class="style2" colspan="4">
                                    <asp:Label ID="Project_PlanMoney" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
							<tr>
								<td class="style5" colspan="5">主要研究内容：</td>
							</tr>
							<tr>
								<td class="style5" colspan="5">
                                   
                                        <div class="controls">
                                            &nbsp;<asp:Label ID="Project_Content" runat="server" Text="Label"></asp:Label>
                                        </div>
                                   
                                </td>
							</tr>
                            <tr>
								<td class="style5" colspan="5">文献综述：</td>
							</tr>
							<tr>
								<td class="style5" colspan="5">
                                    
                                        <div class="controls">
                                            &nbsp;<asp:Label ID="Project_History" runat="server" Text="Label"></asp:Label>
                                        </div>
                                    
                                </td>
							</tr>
                            <tr>
								<td class="style5" colspan="5">项目创新点：</td>
							</tr>
							<tr>
								<td class="style5" colspan="5">
                                    
                                        <div class="controls">
                                            &nbsp;<asp:Label ID="Project_Innovate" runat="server" Text="Label"></asp:Label>
                                        </div>
                                    
                                </td>
							</tr>
                             
                            <tr>
								<td class="style5" colspan="5"><asp:Button ID="submit" runat="server" type="submit" class="btn btn-primary"  
                                        Text="提交" 
                                        OnClientClick="{if(confirm('确定要申请项目？')){return true;}return false;}" 
                                        onclick="submit_Click"   />
                                    <asp:Button ID="reset" runat="server" type="reset" class="btn"  Text="取消" 
                                         /></td>
							</tr>
                             
						  </tbody>
					  </table>
					</div>
                    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>