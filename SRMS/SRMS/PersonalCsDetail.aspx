<%@ Page Title="" Language="C#" MasterPageFile="~/PersonalRoot.Master" AutoEventWireup="true" CodeBehind="PersonalCsDetail.aspx.cs" Inherits="SRMS.PersonalCsDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 98px;
        }
        .style2
        {
            width: 129px;
        }
        .style3
        {
            width: 188px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
<a href="PersonalWait.aspx">项目</a>结项
<i class="icon-angle-right"></i>
<a href="PersonalWEdit.aspx">结项</a>报表 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
   <div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2>结项报表</h2>
						
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
								<td class="style1">项目开始时间：</td>
							    <td class="style3">
                                    <asp:Label ID="Project_StartTime" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td class="style2">
                                    项目计划结束时间：</td>
                                <td class="style29">
                                    <asp:Label ID="Project_PlanTime" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
							
							
							<tr>
								<td class="style5" colspan="4">
                                   
                                        主要研究内容：</td>
							</tr>
                            <tr>
								<td class="style5" colspan="4">
                                    <div class="controls">
                                        <textarea ID="Project_Content" class="cleditor" cols="20" name="Interim_Plan" runat=server rows="3"></textarea>
                                    </div>
                                </td>
							</tr>
							<tr>
								<td class="style5" colspan="4">
                                    
                                        计划执行方案：</td>
							</tr>
                            <tr>
								<td class="style5" colspan="4">
                                    <div class="controls">
                                        <textarea ID="Project_PlanImplement" class="cleditor" cols="20" name="Interim_Fruit" runat=server 
                                            rows="3"></textarea>
                                    </div>
                                </td>
							</tr>
							<tr>
								<td class="style5" colspan="4">
                                    
                                        创新点：</td>
							</tr>
                            <tr>
								<td class="style5" colspan="4">
                                    <div class="controls">
                                        <textarea ID="Project_innovation" class="cleditor" cols="20" name="Interim_Question" runat=server 
                                            rows="3"></textarea>
                                    </div>
                                </td>
							    
							</tr>
                            <tr>
								<td class="style5" colspan="4">
                                    
                                        取得成果：</td>
							</tr>
                            <tr>
								<td class="style5" colspan="4">
                                    <div class="controls">
                                        <textarea ID="Project_Fruit" class="cleditor" cols="20" name="Interim_Question" runat=server 
                                            rows="3"></textarea>
                                    </div>
                                </td>
							    
							</tr>
                                                        <tr>
								<td class="style5" colspan="4">
                                    
                                        下一步问题：</td>
							</tr>
                            <tr>
								<td class="style5" colspan="4">
                                    <div class="controls">
                                        <textarea ID="Project_NextProblem" class="cleditor" cols="20" name="Interim_Question" runat=server 
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
