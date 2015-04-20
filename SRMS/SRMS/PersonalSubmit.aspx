<%@ Page Title="" Language="C#" MasterPageFile="~/PersonalRoot.Master" AutoEventWireup="true" CodeBehind="PersonalSubmit.aspx.cs" Inherits="SRMS.PersonalSubmit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            height: 45px;
        }
        .style2
        {
        }
        .style3
        {
            width: 136px;
        }
        .style5
        {
        }
        .style6
        {
            width: 122px;
            height: 45px;
        }
        .style7
        {
            width: 230px;
            height: 45px;
        }
        .style8
        {
            width: 136px;
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
<a href="#">项目公告</a>
<i class="icon-angle-right"></i>
<a href="#">申报</a>项目 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i>申报项目</h2>
						
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
								<td class="style5">项目名称：</td>
								<td class="style29" colspan="3">
                                    <asp:TextBox ID="Project_Name" runat="server"></asp:TextBox>
                                </td>
							</tr>
							<tr>
								<td class="style5">负责人：</td>
								<td class="style29" colspan="3">
                                    <asp:TextBox ID="Project_PersonLiable" runat="server"></asp:TextBox>
                                </td>
							</tr>
							<tr>
								<td class="style5">所属学院：</td>
								<td class="style29" colspan="3">
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                </td>
							</tr>
							<tr>
								<td class="style5">项目性质：</td>
								<td class="style2">
                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                        <asp:ListItem>自然科学</asp:ListItem>
                                        <asp:ListItem>社会科学</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
								<td class="style3">
                                    项目类别：</td>
								<td class="style29">
                                    <asp:DropDownList ID="DropDownList3" runat="server">
                                        <asp:ListItem>一类</asp:ListItem>
                                        <asp:ListItem>二类</asp:ListItem>
                                        <asp:ListItem>三类</asp:ListItem>
                                        <asp:ListItem>四类</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
							</tr>
							<tr>
								<td class="style6">校内主管部门：</td>
								<td class="style7">
                                    科技处</td>
								<td class="style8">所属学科：</td>
								<td class="style1">
                                    <asp:DropDownList ID="DropDownList8" runat="server" 
                                        DataSourceID="SqlDataSource1" DataTextField="Course_ID" 
                                        DataValueField="Course_ID">
                                        <asp:ListItem>请选择</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:connectionString %>" 
                                        SelectCommand="SELECT [Course_ID] FROM [tbl_CourseData]">
                                    </asp:SqlDataSource>
                                </td>
							</tr>
							<tr>
								<td class="style5">项目等级：</td>
								<td class="style29" colspan="3">
                                    <asp:DropDownList ID="DropDownList5" runat="server">
                                        <asp:ListItem>国家级</asp:ListItem>
                                        <asp:ListItem>省部级</asp:ListItem>
                                        <asp:ListItem>市厅级</asp:ListItem>
                                        <asp:ListItem>院校级</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
							</tr>
							<tr>
								<td class="style26" colspan="4">【详细信息】</td>
							</tr>
							<tr>
								<td class="style5">项目来源：</td>
								<td class="style2">
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                </td>
								<td class="style3">项目密级：</td>
								<td class="style26">
                                    <asp:DropDownList ID="DropDownList9" runat="server">
                                        <asp:ListItem>秘密</asp:ListItem>
                                        <asp:ListItem>机密</asp:ListItem>
                                        <asp:ListItem>绝密</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
							</tr>
							<tr>
								<td class="style5">项目成员：</td>
								<td class="style2" colspan="3">
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                </td>
							</tr>
							<tr>
								<td class="style5">项目开始时间：</td>
								<td class="style2">
                                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                                </td>
								<td class="style3">计划结项时间：</td>
								<td class="style2">
                                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                </td>
							</tr>
							<tr>
								<td class="style5">预期成果形式：</td>
								<td class="style2" colspan="3">
                                    <asp:DropDownList ID="DropDownList10" runat="server">
                                        <asp:ListItem>论文和专著</asp:ListItem>
                                        <asp:ListItem>应用软件</asp:ListItem>
                                        <asp:ListItem>新产品原型</asp:ListItem>
                                        <asp:ListItem>外观设计专利</asp:ListItem>
                                        <asp:ListItem>其他</asp:ListItem>
                                    </asp:DropDownList>
                                </td>
							</tr>
							<tr>
								<td class="style5">申请经费：</td>
								<td class="style2" colspan="3">
                                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                </td>
							</tr>
							<tr>
								<td class="style5" colspan="4">主要研究内容：</td>
							</tr>
							<tr>
								<td class="style5" colspan="4">
                                   
                                        <div class="controls">
                                            <textarea id="content4" class="cleditor" cols="20" name="content" rows="3"></textarea>
                                        </div>
                                   
                                </td>
							</tr>
                            <tr>
								<td class="style5" colspan="4">文献综述：</td>
							</tr>
							<tr>
								<td class="style5" colspan="4">
                                    
                                        <div class="controls">
                                            <textarea id="Textarea1" class="cleditor" cols="20" name="content" rows="3"></textarea>
                                        </div>
                                    
                                </td>
							</tr>
                            <tr>
								<td class="style5" colspan="4">项目创新点：</td>
							</tr>
							<tr>
								<td class="style5" colspan="4">
                                    
                                        <div class="controls">
                                            <textarea id="Textarea2" class="cleditor" cols="20" name="content" rows="3"></textarea>
                                        </div>
                                    
                                </td>
							</tr>
                            <tr>
								<td class="style5" colspan="4"><asp:Button ID="submit" runat="server" type="submit" class="btn btn-primary"  
                                        Text="提交" OnClientClick="{if(confirm('确定要申请项目？')){return true;}return false;}"   />
                                    <asp:Button ID="reset" runat="server" type="reset" class="btn"  Text="取消" 
                                         /></td>
							</tr>
                             
						  </tbody>
					  </table>
					</div>
</asp:Content>

