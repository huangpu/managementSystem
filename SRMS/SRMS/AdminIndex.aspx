<%@ Page Title="" Language="C#" MasterPageFile="~/AdminRoot.Master" AutoEventWireup="true" CodeBehind="AdminIndex.aspx.cs" Inherits="SRMS.AdminIndex" ValidateRequest="False" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 82px;
        }
        .style2
        {
            height: 37px;
        }
        .style3
        {
            width: 82px;
            height: 30px;
        }
        .style4
        {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <a href="#">发布公告</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
                      <div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span>发布公告</h2>				
					</div>
                        <div class="box-content">  
						<table class="table table-striped table-bordered">
						  <thead>
							  <tr>
								  <th class="style26" colspan="2">【基本信息】：必填</th>
							  </tr>
						  </thead>   
						  <tbody>
							<tr>
								<td class="style3">公告标题：</td>
								<td class="style4">
                                    <asp:TextBox ID="title" runat="server" ></asp:TextBox>
                                </td>
							</tr>
							<tr>
								<td class="style1">发布人：</td>
								<td class="style29">
                                    <asp:Label ID="author" runat="server" Text="Label">张三</asp:Label>
                                </td>
							</tr>
							<tr>
								<td class="style1">发布时间：</td>
								<td class="style29">
                                    <asp:Label ID="time" runat="server" Text="Label">2014/3/4</asp:Label>
                                </td>
							</tr>
							<tr>
								<th class="style26" colspan="2">【文件内容】：预览</td>
							</tr>
							<tr>
								<td class="style2" colspan="2"><div class="form-actions">
                                
							  
							  <div class="controls">
								<textarea  class="cleditor" id="content" name="content" rows="3"></textarea>
							  </div>
							
							        <asp:Button ID="submit" runat="server" type="submit" class="btn btn-primary"  
                                        Text="提交" OnClientClick="{if(confirm('确定要发布公告？')){return true;}return false;}"  onclick="submit_Click" />
                                    <asp:Button ID="reset" runat="server" type="reset" class="btn"  Text="取消" 
                                         />
							</div></td>
							</tr>
						  </tbody>
					  </table>
					</div>
                     </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
