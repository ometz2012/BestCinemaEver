using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ometz.Cinema.BLL.MoviePeople;

namespace Ometz.Cinema.UI.ContentPages.MoviePeople.Actors
{
    public partial class ActorsInMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PeopleInMovie2.SetLabelText(Request.QueryString["personType"] + "(s) in " + "\"" + Request.QueryString["movieTitle"] + "\"" + " Movie");
               
            }
           
        }
      
       
    }
}