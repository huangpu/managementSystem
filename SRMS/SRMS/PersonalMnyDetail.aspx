<%@ Page Title="" Language="C#" MasterPageFile="~/PersonalRoot.Master" AutoEventWireup="true" CodeBehind="PersonalMnyDetail.aspx.cs" Inherits="SRMS.PersonalMoney" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <a href="#">项目经费</a>
    <style type="text/css">
        .style1
        {
            height: 35px;
        }
        .style2
        {
            height: 43px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <ContentTemplate>
   <div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						&nbsp; 
                       项目编号：<asp:Label ID="projectID" runat="server" ></asp:Label>
                       &nbsp;
                       项目名称：<asp:Label ID="projectName" runat="server" ></asp:Label>
						
					     &nbsp; 总经费：<asp:Label 
                                ID="Money_Totality" runat="server" ></asp:Label>
&nbsp; 已用经费：<asp:Label ID="Money_Use" runat="server" ></asp:Label>
&nbsp; 剩余经费：<asp:Label ID="Money_surplus" runat="server"></asp:Label>
						
					     <br />
						
					</div>
					<div class="box-content">
						<table class="table  table-bordered " align="center">
						  <thead>
							  <tr>
								  <th class="style2">使用金额</th>
								  <th class="style2">使用详情</th>
								  <th class="style2">使用时间</th>
							  </tr>
						  </thead>   
						  <tbody>
							<asp:Repeater ID="Repeater1" runat="server">
                                  <ItemTemplate>  
                                   <tr>
								
                                  
								<td class="style1">
                                 <asp:Label ID="Label3" runat="server" Text='<%# Eval("Money_CrUse") %>'></asp:Label>
                                    </td>
								<td class="style1">
									 <asp:Label ID="Label1" runat="server" Text='<%# Eval("Money_UseDetails") %>'></asp:Label>
								</td>
								<td class="style1">
									 <asp:Label ID="Label2" runat="server" Text='<%# Eval("Money_Time") %>'></asp:Label>
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
<webdiyer:AspNetPager ID="AspNetPager1" runat=server
  AlwaysShow="True" 
                 CustomInfoHTML="每页%PageSize%条记录 总共%RecordCount%条记录 页码：%CurrentPageIndex%/%PageCount%" CustomInfoSectionWidth=""  FirstPageText="首页" 
                 HorizontalAlign="Right" LastPageText="尾页" LayoutType="Table" NextPageText="下一页" 
                 PrevPageText="上一页" ShowCustomInfoSection="Left" 
                 PageSize="10" 
></webdiyer:AspNetPager>
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
              </ContentTemplate>
</asp:Content>
