<%@ Page Title="" Language="C#" MasterPageFile="~/PersonalRoot.Master" AutoEventWireup="true" CodeBehind="PersonalWait.aspx.cs" Inherits="SRMS.PersonalWait" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
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
    <a href="#">待审项目</a>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
   <div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span>待审项目</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i >h</i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<table class="table  table-bordered " align="center">
						  <thead>
							  <tr>
								  <th>项目编号</th>
								  <th>项目名称</th>
								  <th>负责人</th>
								  <th>项目状态</th>
                                  <th>操作</th>
							  </tr>
						  </thead>   
						  <tbody>
							<asp:Repeater ID="Repeater1" runat="server">
                                  <ItemTemplate>  
                                  <tr>
								<td class="style1">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Project_ID") %>'></asp:Label>
                                    </td>
							    <td class="style1">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Project_Name") %>'></asp:Label>
                                    </td>
								<td class="style1">
                                     <asp:Label ID="Project_PersonLiable" runat="server" Text='<%# Eval("Project_PersonLiable") %>'></asp:Label>
                                    </td>
                               <td class="style1">
                                    <span class="label label-success"><asp:Label ID="Project_Status" runat="server" Text='<%# Eval("Project_Status") %>'></asp:Label>
                                    </span>
                                    </td>
								<td class="style1">
                                <a href="PersonalWEdit.aspx?id=<%# Eval("Project_ID") %>">修改
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
                 CustomInfoHTML="每页%PageSize%条记录 总共%RecordCount%条记录 页码：%CurrentPageIndex%/%PageCount%" 
                            CustomInfoSectionWidth=""  FirstPageText="首页" 
                 HorizontalAlign="Center" LastPageText="尾页" LayoutType="Table" NextPageText="下一页" 
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
