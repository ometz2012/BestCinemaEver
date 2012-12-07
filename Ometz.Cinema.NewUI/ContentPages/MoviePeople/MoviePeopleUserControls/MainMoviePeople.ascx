<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MainMoviePeople.ascx.cs" Inherits="Ometz.Cinema.UI.ContentPages.MoviePeople.MoviePeopleUserControls.MainMoviePeople" %>

<link href="../../../Styles/Site.css" rel="stylesheet" type="text/css" />
<script src="../../../Scripts/jquery-1.4.1.min.js" type="text/javascript"> </script>

<style type="text/css">
    .style1
    {
        width: 100%;
    }
    .style2
    {
        width: 216px;
    }
    .style3
    {
        width: 290px;
    }
</style>

<p>
    &nbsp;</p>
<table class="style1">
    <tr>
        <td class="style2">
            <asp:Label ID="lblSearchByMovieName" runat="server" CssClass="bold"></asp:Label>
        </td>
        <td class="style3">
            <asp:Label ID="lblChoseMoviePeople" runat="server" CssClass="bold" 
                Text="Chose Movie Person "></asp:Label>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            <asp:GridView ID="gridMovies" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="MovieID" DataSourceID="SqlDataSourceCinema">
                <Columns>
                    <asp:BoundField DataField="MovieID" HeaderText="MovieID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="MovieID" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
           
            <asp:SqlDataSource ID="SqlDataSourceCinema" runat="server" 
                ConnectionString="<%$ ConnectionStrings:CinemaConnectionString %>" 
                SelectCommand="SELECT [MovieID], [Title] FROM [Movie]"></asp:SqlDataSource>
        </td>
        <td class="style3">
            <asp:RadioButtonList ID="rblMoviePeople" runat="server" AutoPostBack="True" 
                onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                <asp:ListItem>Actor</asp:ListItem>
                <asp:ListItem>Producer</asp:ListItem>
                <asp:ListItem>Director</asp:ListItem>
                <asp:ListItem>Composer</asp:ListItem>
                <asp:ListItem>Writer</asp:ListItem>
            </asp:RadioButtonList>
           
        </td>
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
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            <asp:Label ID="lblSearchByPersonName" runat="server" CssClass="bold"></asp:Label>
        </td>
        <td class="style3">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            <asp:TextBox ID="txtSearchPersonByName" runat="server" 
                ontextchanged="txtSearchPersonByName_TextChanged"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" onclick="btnSearch_Click" 
                Text="Search" />
        </td>
        <td>
            &nbsp;</td>
           	

    </tr>
    

</table>


     <a id="slickbox-toggle" href="#">Search Info</a>		                 
     <div id="slickbox">Search the Movie Person by First or Last name, Full Name or 
Part of the Name ..</div>

<script type="text/javascript">
    $(document).ready(function () {

        $('#slickbox').hide();
    });
    $('a#slickbox-toggle').click(function () {
       
        $('#slickbox').slideToggle(100);
        $(this).text($(this).text() == 'Search Info' ? 'Hide' : 'Search Info'); // <- HERE
        return false;
    });
 </script>