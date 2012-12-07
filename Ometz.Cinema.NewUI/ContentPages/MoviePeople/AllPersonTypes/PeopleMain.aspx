<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PeopleMain.aspx.cs" Inherits="Ometz.Cinema.UI.ContentPages.MoviePeople.Actors.ActorMain" %>
<%@ Register src="../MoviePeopleUserControls/MainMoviePeople.ascx" tagname="MainMoviePeople" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style4
        {
            width: 4px;
        }
        .style5
        {
            width: 303px;
        }
        .style14
        {       
            text-align: center;
            font-weight: bold;
            font-size:large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p class="style14">
Movie People
<br /></p>
    <uc1:MainMoviePeople ID="MainMoviePeople1" runat="server" />
    <table class="style1">
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style5">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
</table>
</asp:Content>
