<%@ Page Title="" Language="C#" MasterPageFile="~/PersonalRoot.Master" AutoEventWireup="true" CodeBehind="PersonalNsDetail.aspx.cs" Inherits="SRMS.PersonalNsDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <a href="PersonalIndex.aspx">科研公告</a><i class="icon-angle-right"></i> <a href="PersonalNsDetail.aspx">公告详情</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

  <div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" >
						<h2><i class="halflings-icon user"></i><span class="break"></span>公告详情</h2>
						
					</div>
					<div class="box-content">
						<table  >
						  
						  <tbody>
							
                                   <tr>
								<td class="style1" align="center">
                                    <asp:Label ID="Titletext" runat="server" Text="Label"></asp:Label></td>
							</tr>
                           
							
                                   <tr>
								<td class="style1" align="center">
                                    <asp:Label ID="Time" runat="server" Text="Label"></asp:Label></td>
							</tr>
                           
							
                                   <tr>
								<td class="style1">
                                    <asp:Label ID="Content" runat="server" Text="Label"></asp:Label></td>
							</tr>
                           
							
						  </tbody>
					  </table> 
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
</asp:Content>
