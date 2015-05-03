<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerRoot.Master" AutoEventWireup="true" CodeBehind="ManagerAlterPw.aspx.cs" Inherits="SRMS.ManagerAlterPw" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style1
    {
        height: 23px;
    }
    .style2
    {
        height: 23px;
        width: 83px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <a href="PersonalAlterPw.aspx">修改密码</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i>修改密码</h2>
						
					</div>
<div class="box-content">
						<table class="table table-striped table-bordered  " 
                            align="center">
						 
						  <tbody>
							
							<tr>
								<td class="style2">用户账号：</td>
								<td class="style1">
                                    <asp:Label ID="userID" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>							
                            <tr>
								<td class="style2">
                                    原密码：</td>
							    <td class="style1">
                                    <asp:TextBox ID="oldPassword" runat="server" 
                                        ontextchanged="oldPassword_TextChanged"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ErrorMessage="原密码不能为空！" ControlToValidate="oldPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                                </td>
							</tr>
                             
						      <tr>
                                  <td class="style2">
                                      新密码：</td>
                                  <td class="style1">
                                      <asp:TextBox ID="newPassword" runat="server"></asp:TextBox>
                                      
                                  </td>
                              </tr>
                              <tr>
                                  <td class="style2">
                                      确认密码：</td>
                                  <td class="style1">
                                      <asp:TextBox ID="newPassword2" runat="server"></asp:TextBox>
                                      <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                          ErrorMessage="两次输入密码不一致！" ControlToCompare="newPassword2" 
                                          ControlToValidate="newPassword" ForeColor="Red"></asp:CompareValidator>
                                  </td>
                              </tr>
                            <tr>
								<td class="style5" colspan="2">
                                    <asp:Button ID="submit" runat="server" type="submit" class="btn btn-primary"  
                                        Text="提交修改" 
                                        OnClientClick="{if(confirm('确定要修改？')){return true;}return false;}" onclick="submit_Click" 
                                          />
                                    <asp:Button ID="reset" runat="server" type="reset" class="btn"  Text="取消" 
                                         /></td>
							</tr>
                             
						  </tbody>
					  </table>
					</div>
                    </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

