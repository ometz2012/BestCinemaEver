<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PersonFullInfo.aspx.cs" Inherits="Ometz.Cinema.NewUI.ContentPages.MoviePeople.Actors.PersonFullInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 84%;
        }
          .style14
        {       
            text-align: center;
            font-weight: bold;
            font-size:large;
        }
        .style16
        {
            width: 243px;
            }
        .style17
        {
            width: 126px;
        }
        .style19
        {
            width: 560px;
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
                <asp:Image ID="ImgPersonPhoto" runat="server" 
                    AlternateText="Picture Is Not Available Yet" Height="250px" 
                    Width="280px" />
            </td>
            <td class="style17">
                </td>
            <td class="style19">
                <table class="style1">
                    <tr>
                        <td>
                <asp:Label ID="lblOccupation" runat="server" CssClass="bold" 
                    Text="Occupation: "></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                <asp:Label ID="lblFirstName" runat="server" CssClass="bold" Text="First Name:"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                <asp:Label ID="lblLastName" runat="server" CssClass="bold" Text="Last Name:"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                <asp:Label ID="lblBirthPlace" runat="server" CssClass="bold" 
                    Text="Birth Place:"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                <asp:Label ID="lblBirthDate" runat="server" CssClass="bold" 
                    Text="Date Of Birth:"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        </table>
</asp:Content>
