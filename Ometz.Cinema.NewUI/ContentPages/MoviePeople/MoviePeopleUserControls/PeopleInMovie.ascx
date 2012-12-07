<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PeopleInMovie.ascx.cs" Inherits="Ometz.Cinema.UI.ContentPages.MoviePeople.MoviePeopleUserControls.PeopleInMovie" %>
<link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />

<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 68px;
    }
    .style3
    {
        width: 432px;
    }
    .style4
    {
        width: 68px;
        height: 23px;
    }
    .style5
    {
        width: 432px;
        height: 23px;
    }
    .style6
    {
        height: 23px;
    }
</style>

<table class="style1">
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:Label ID="lblPersonInMovie" runat="server" CssClass="bold"> </asp:Label>
          
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            <asp:GridView ID="gridPersonInMovie" runat="server" AutoGenerateColumns="False" 
                DataSourceID="MoviePeopleDataSource1" 
                onselectedindexchanged="gridPersonInMovie_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" 
                        SortExpression="FirstName" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" 
                        SortExpression="LastName" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <asp:ObjectDataSource ID="MoviePeopleDataSource1" runat="server" 
                SelectMethod="GetMoviePeopleByMovieId" 
                TypeName="Ometz.Cinema.BLL.MoviePeople.MoviePeopleServices">
                <SelectParameters>
                    <asp:QueryStringParameter Name="movieId" QueryStringField="movieId" 
                        Type="Int32" />
                    <asp:QueryStringParameter Name="personType" QueryStringField="personType" 
                        Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            </td>
        <td class="style5">
            </td>
        <td class="style6">
            </td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>

