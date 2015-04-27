<%@ Page Title="" Language="C#" MasterPageFile="~/PersonalRoot.Master" AutoEventWireup="true" CodeBehind="PersonalMnyEdit.aspx.cs" Inherits="SRMS.PersonalMnyEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 152px;
            height: 38px;
        }
        .style2
        {
            width: 109px;
            height: 38px;
        }
        .style3
        {
            height: 38px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
<a href="PersonalWait.aspx">经费管理</a>
<i class="icon-angle-right"></i>
<a href="PersonalWEdit.aspx">填写报表</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
   <div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2>经费报表</h2>
						
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
								<td class="style3">使用金额：</td>
							    <td class="style1">
                                    <asp:TextBox ID="Money_CrUse" runat="server"></asp:TextBox>
                                </td>
                                <td class="style2">
                                    使用时间：</td>
                                <td class="style3">
                                    <asp:TextBox ID="Money_Time" runat="server"></asp:TextBox>
                                </td>
							</tr>														                 
							<tr>
								<td class="style5" colspan="4">
                                    
                                        使用详情：</td>
							</tr>
                            <tr>
								<td class="style5" colspan="4">
                                    <div class="controls">
                                        <textarea ID="Money_UseDetails" class="cleditor" cols="20" name="Interim_Question" runat=server 
                                            rows="3"></textarea>
                                    </div>
                                </td>
							    
							</tr>
                            <tr>
                            <td class="style5" colspan="4">
                                    <asp:Button ID="submit" runat="server" type="submit" class="btn btn-primary"  
                                        Text="提交" 
                                        OnClientClick="{if(confirm('确定要提交经费报表？')){return true;}return false;}" onclick="submit_Click" 
                                           />
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
