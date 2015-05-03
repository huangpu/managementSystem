<%@ Page Title="" Language="C#" MasterPageFile="~/PersonalRoot.Master" AutoEventWireup="true" CodeBehind="PersonalRsSubmit.aspx.cs" Inherits="SRMS.PersonalRsSubmit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
<a href="PersonalUnderway.aspx">我的成果</a>
<i class="icon-angle-right"></i>
<a href="PersonalUnInter.aspx">成果申报</a>
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
								<td class="style15">项目编号：</td>
								<td class="style29" colspan="3">
                                    <asp:Label ID="Project_ID" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
							  <tr>
                                  <td class="style15">
                                      项目名称：</td>
                                  <td class="style29" colspan="3">
                                      <asp:Label ID="Project_Name" runat="server" Text="Label"></asp:Label>
                                  </td>
                              </tr>
							<tr>
								<td class="style15">负责人：</td>
								<td class="style29" colspan="3">
                                    <asp:Label ID="Project_PersonLiable" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
														
                              <tr>
                                  <td class="style15">
                                      著作号：</td>
                                  <td class="style14">
                                      <asp:TextBox ID="Result_BookNumber" runat="server"></asp:TextBox>
                                  </td>
                                  <td class="style8">
                                      著作类别：</td>
                                  <td class="style8">
                                      <asp:TextBox ID="Result_class" runat="server"></asp:TextBox>
                                  </td>
                              </tr>
							
							
							
                              <tr>
                                  <td class="style15">
                                      中文名称：</td>
                                  <td class="style14">
                                      <asp:TextBox ID="Result_BookNameC" runat="server"></asp:TextBox>
                                  </td>
                                  <td class="style13">
                                      英文名称：</td>
                                  <td class="style8">
                                      <asp:TextBox ID="Result_BookNameEn" runat="server"></asp:TextBox>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="style15">
                                      出版社名称：</td>
                                  <td class="style12" colspan="3">
                                      <asp:TextBox ID="Result_PublishName" runat="server" Width="235px"></asp:TextBox>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="style15">
                                      出版社级别：</td>
                                  <td class="style14">
                                      <asp:DropDownList ID="Result_PublishLevel" runat="server">
                                          <asp:ListItem>一级</asp:ListItem>
                                          <asp:ListItem>二级</asp:ListItem>
                                          <asp:ListItem>三级</asp:ListItem>
                                          <asp:ListItem>四级</asp:ListItem>
                                      </asp:DropDownList>
                                  </td>
                                  <td class="style12">
                                      出版日期：</td>
                                  <td class="style12">
                                      <asp:TextBox ID="Result_PublishTime" runat="server"></asp:TextBox>
                                  </td>
                              </tr>
                              <tr>
                                  <td class="style15">
                                      出版号：</td>
                                  <td class="style14">
                                      <asp:TextBox ID="Result_publishNumber" runat="server"></asp:TextBox>
                                  </td>
                                  <td class="style12">
                                      著作字数：</td>
                                  <td class="style12">
                                      <asp:TextBox ID="Result_WordCount" runat="server"></asp:TextBox>
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
