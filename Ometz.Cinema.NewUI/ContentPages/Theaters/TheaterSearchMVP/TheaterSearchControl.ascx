﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TheaterSearchControl.ascx.cs" Inherits="Ometz.Cinema.UI.ContentPages.Theaters.TheaterSearchMVP.TheaterSearchControl" %>
<style type="text/css">
	.style1
	{
		width: 100%;
	}
	.style2
	{
	}
	.style3
	{
		width: 114px;
	}
	.style4
	{
	}
	.style5
	{
		width: 180px;
	}
	.hidden
	{
		display:none;
	}
</style>

<table class="style1">
	<tr>
		<td class="style4" colspan="2">
			<asp:Label ID="lblSearch" runat="server" Text="Search for Theater :"></asp:Label>
		</td>
		<td>
			&nbsp;</td>
		<td>
			&nbsp;</td>
	</tr>
	<tr>
		<td class="style5">
			<asp:Label ID="lblCity" runat="server" Text="By City :"></asp:Label>
		</td>
		<td class="style3">
			<asp:DropDownList ID="ddlCity" runat="server">
			</asp:DropDownList>
		</td>
		<td>
			<asp:Button ID="btnSearch" runat="server" Text="Search" Width="78px" 
				onclick="btnSearch_Click" />
		</td>
		<td>
			&nbsp;</td>
	</tr>
	<tr>
		<td class="style5">
			&nbsp;</td>
		<td class="style3">
			&nbsp;</td>
		<td>
			&nbsp;</td>
		<td>
			&nbsp;</td>
	</tr>
	<tr>
		<td class="style2" colspan="3">
			<asp:GridView ID="GridViewTheaterList" runat="server" 
				AutoGenerateColumns="False" 
				onselectedindexchanged="GridViewTheaterList_SelectedIndexChanged">
				<Columns>
					<asp:BoundField DataField="TheaterID" HeaderText="TheaterID" Visible="True" 
						ItemStyle-CssClass="hidden"  >
<ItemStyle CssClass="hidden"></ItemStyle>
					</asp:BoundField>
					<asp:BoundField DataField="TheaterName" HeaderText="Theater Name" />
					<asp:CommandField SelectText="Select theater" ShowSelectButton="True" />
				</Columns>
			</asp:GridView>
		</td>
		<td>
			&nbsp;</td>
	</tr>
</table>

