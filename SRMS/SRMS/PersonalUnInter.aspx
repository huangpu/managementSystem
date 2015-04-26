<%@ Page Title="" Language="C#" MasterPageFile="~/PersonalRoot.Master" AutoEventWireup="true" CodeBehind="PersonalUnInter.aspx.cs" Inherits="SRMS.PersonalInter" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
    <style type="text/css">
        .style5
        {
        }
        .style8
        {
            width: 208px;
        }
        .style9
        {
            width: 138px;
        }
        .style10
        {
            width: 132px;
        }
        </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
<a href="PersonalUnderway.aspx">在研项目</a>
<i class="icon-angle-right"></i>
<a href="PersonalUnInter.aspx">中期报告</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
   <div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2>项目中期报告</h2>
						
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
								<td class="style9">项目编号：</td>
								<td class="style29" colspan="3">
                                    <asp:Label ID="Project_ID" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
							  <tr>
                                  <td class="style9">
                                      项目名称：</td>
                                  <td class="style29" colspan="3">
                                      <asp:Label ID="Project_Name" runat="server" Text="Label"></asp:Label>
                                  </td>
                              </tr>
							<tr>
								<td class="style9">负责人：</td>
								<td class="style29" colspan="3">
                                    <asp:Label ID="Project_PersonLiable" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
							
							
							<tr>
								<td class="style9">项目开始时间：</td>
							    <td class="style8">
                                    <asp:Label ID="Project_StartTime" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td class="style10">
                                    项目计划结束时间：</td>
                                <td class="style29">
                                    <asp:Label ID="Project_PlanTime" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
							
							
							<tr>
								<td class="style5" colspan="4">
                                   
                                        研究计划与进度：</td>
							</tr>
                            <tr>
								<td class="style5" colspan="4">
                                    <div class="controls">
                                        <textarea ID="Interim_Plan" class="cleditor" cols="20" name="Interim_Plan" runat=server rows="3"></textarea>
                                    </div>
                                </td>
							</tr>
							<tr>
								<td class="style5" colspan="4">
                                    
                                        取得的成果：</td>
							</tr>
                            <tr>
								<td class="style5" colspan="4">
                                    <div class="controls">
                                        <textarea ID="Interim_Fruit" class="cleditor" cols="20" name="Interim_Fruit" runat=server 
                                            rows="3"></textarea>
                                    </div>
                                </td>
							</tr>
							<tr>
								<td class="style5" colspan="4">
                                    
                                        存在的问题：</td>
							</tr>
                            <tr>
								<td class="style5" colspan="4">
                                    <div class="controls">
                                        <textarea ID="Interim_Question" class="cleditor" cols="20" name="Interim_Question" runat=server 
                                            rows="3"></textarea>
                                    </div>
                                </td>
							    
							</tr>
                            <tr>
                            <td class="style5" colspan="4">
                                    <asp:Button ID="submit" runat="server" type="submit" class="btn btn-primary"  
                                        Text="提交" 
                                        OnClientClick="{if(confirm('确定要提交中期检查报告？')){return true;}return false;}" 
                                        onclick="submit_Click"   />
                                    <asp:Button ID="reset" runat="server" type="reset" class="btn"  Text="取消" 
                                         />
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

