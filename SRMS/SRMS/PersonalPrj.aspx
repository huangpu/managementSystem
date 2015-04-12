<%@ Page Title="" Language="C#" MasterPageFile="~/PersonalRoot.Master" AutoEventWireup="true" CodeBehind="PersonalPrj.aspx.cs" Inherits="SRMS.PersonalPrj" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
<a href="#">我的项目</a>
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
								  <th align=center>项目名称</th>
								  <th>负责人</th>
								  <th>所属单位</th>
								  <th>立项日期</th>
								  <th>项目经费</th>
                                  <th>项目状态</th>                          
                                  <th>编辑</th>
							  </tr>
						  </thead>   
						  <tbody>
							<asp:Repeater ID="Repeater1" runat="server">
                                  <ItemTemplate>  
                                
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
                 PageSize="10" 
                            >

                        </webdiyer:AspNetPager>
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
              </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
