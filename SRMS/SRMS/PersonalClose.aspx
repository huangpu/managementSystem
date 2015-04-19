<%@ Page Title="" Language="C#" MasterPageFile="~/PersonalRoot.Master" AutoEventWireup="true" CodeBehind="PersonalClose.aspx.cs" Inherits="SRMS.PersonalClose" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
<a href="#">项目结项</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
   <div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2>项目结项</h2>
						
					</div>
					<div class="box-content">
						<table class="table  table-bordered " align="center">
						  <thead>
							  <tr>
								  <th align=center>项目名称</th>
								  <th>负责人</th>								  
								  <th>立项日期</th>	
                                  <th>结项期限</th>							                         
                                  <th>操作</th>
							  </tr>
						  </thead>   
						  <tbody>
							
                                   <tr>
                                <td class="style1">
                                    <asp:Label ID="News_ID" runat="server" Text=' test'></asp:Label></td>
								<td class="style1">
                                    <asp:Label ID="News_Name" runat="server" Text=' test'></asp:Label></td>
								<td class="style1">
                                    <asp:Label ID="News_Time" runat="server" Text=' 2015/4/5'></asp:Label></td>
								<td class="style1">
									2016/4/5
								</td>
								<td class="style1">
									<a href="PersonalCsDetail.aspx"><span class="label label-success">结项</span></a>
								</td>
                                </tr>							
						  </tbody>
					  </table> 
                        <webdiyer:AspNetPager ID="AspNetPager1" runat="server"
                        AlwaysShow="True" 
                 CustomInfoHTML="每页%PageSize%条记录 总共%RecordCount%条记录 页码：%CurrentPageIndex%/%PageCount%" CustomInfoSectionWidth=""  FirstPageText="首页" 
                 HorizontalAlign="Right" LastPageText="尾页" LayoutType="Table" NextPageText="下一页" 
                 PrevPageText="上一页" ShowCustomInfoSection="Left" 
                 PageSize="10" 
                            >

                        </webdiyer:AspNetPager>
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
              </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>