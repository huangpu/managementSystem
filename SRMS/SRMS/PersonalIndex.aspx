<%@ Page Title="" Language="C#" MasterPageFile="~/PersonalRoot.Master" AutoEventWireup="true" CodeBehind="PersonalIndex.aspx.cs" Inherits="SRMS.PersonalIndex" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    <a href="#">项目公告</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
   <div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span>项目公告</h2>
						
					</div>
					<div class="box-content">
						<table class="table  table-bordered " align="center">
						  <thead>
							  <tr>
								  <th align=center>项目编号</th>
								  <th>项目题目</th>
								  <th>发布日期</th>
								  <th>详细内容</th>
								  <th>申报项目</th>
							  </tr>
						  </thead>   
						  <tbody>
							<asp:Repeater ID="Repeater1" runat="server">
                                  <ItemTemplate>  
                                   <tr>
								<td class="style1">
                                    <asp:Label ID="News_ID" runat="server" Text='<%# Eval("News_ID") %>'>></asp:Label></td>
								<td class="style1">
                                    <asp:Label ID="News_Name" runat="server" Text='<%# Eval("News_Name") %>'></asp:Label></td>
								<td class="style1">
                                    <asp:Label ID="News_Time" runat="server" Text='<%# Eval("News_Time") %>'></asp:Label></td>
								<td class="style1">
									<span class="label label-success">详细内容</span>
								</td>
								<td class="style1">
									申报
								</td>
							</tr>
                            </ItemTemplate>
                            <FooterTemplate>
                       <tr onmouseover="this.className='rowHover'" onmouseout="this.className=''">
                            <td colspan="11" class="row" align="center">
                                <asp:Label ID="LblEmpty" runat="server" Text="暂无数据" Visible='<%#bool.Parse((Repeater1.Items.Count==0).ToString())%>'></asp:Label>
                            </td>
                        </tr>
                   </FooterTemplate>
                             </asp:Repeater>
							
						  </tbody>
					  </table> 
                        <webdiyer:AspNetPager ID="AspNetPager1" runat="server"
                        AlwaysShow="True" 
                 CustomInfoHTML="每页%PageSize%条记录 总共%RecordCount%条记录 页码：%CurrentPageIndex%/%PageCount%" CustomInfoSectionWidth=""  FirstPageText="首页" 
                 HorizontalAlign="Right" LastPageText="尾页" LayoutType="Table" NextPageText="下一页" 
                 PrevPageText="上一页" ShowCustomInfoSection="Left" 
                 PageSize="10" onpagechanging="AspNetPager1_PageChanging"
                            >

                        </webdiyer:AspNetPager>
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
              </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
