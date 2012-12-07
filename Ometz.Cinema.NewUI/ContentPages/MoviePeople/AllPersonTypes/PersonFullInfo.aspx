<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonFullInfo.aspx.cs" Inherits="Ometz.Cinema.NewUI.ContentPages.MoviePeople.Actors.PersonFullInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
          .style14
        {       
            text-align: center;
            font-weight: bold;
            font-size:large;
        }
        .style15
        {
            width: 243px;
        }
        .style16
        {
            width: 243px;
            height: 25px;
        }
        .style17
        {
            height: 25px;
        }
    </style>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
 <p class="style14">
Person's Full Information
<br /></p>
    <table class="style1">
        <tr>
            <td class="style16">
                <asp:Label ID="lblFirstName" runat="server" CssClass="bold" Text="First Name:"></asp:Label>
            </td>
            <td class="style17">
                </td>
            <td class="style17">
                <asp:Label ID="lblOccupation" runat="server" CssClass="bold" 
                    Text="Occupation: "></asp:Label>
            </td>
            <td class="style17">
                </td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblLastName" runat="server" CssClass="bold" Text="Last Name:"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblBirthPlace" runat="server" CssClass="bold" 
                    Text="Birth Place:"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                <asp:Label ID="lblBirthDate" runat="server" CssClass="bold" 
                    Text="Date Of Birth:"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Image ID="ImgPersonPhoto" runat="server" 
                    AlternateText="Picture Is Not Available Yet" Height="200px" Width="160px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
