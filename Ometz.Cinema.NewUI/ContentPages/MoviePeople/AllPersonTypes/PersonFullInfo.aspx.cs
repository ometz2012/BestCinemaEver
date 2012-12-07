using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ometz.Cinema.BLL.MoviePeople;

namespace Ometz.Cinema.NewUI.ContentPages.MoviePeople.Actors
{
    public partial class PersonFullInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MoviePeopleServices personInfo = new MoviePeopleServices();         
            MoviePersonDTO person = personInfo.GetMoviePersonByName(Request.QueryString["personToShow"].ToString(),
                Request.QueryString["personType"]);
            if (person != null)
            {

                Guid personId = personInfo.GetMoviePersonIdByFirstAndLastName(person.FirstName, person.LastName);              
                ShowPersonFullInfo(person, personId);

            }
        }
        private void ShowPersonFullInfo(MoviePersonDTO personToShow, Guid personId)
        {

            lblFirstName.Text += " " + personToShow.FirstName;
            lblLastName.Text += " " + personToShow.LastName;
            lblBirthPlace.Text += " " + personToShow.BirthPlace;
            lblOccupation.Text += " " + Request.QueryString["personType"];
            DateTime birthDate = personToShow.BirthDate;
            string result = birthDate.ToString("d/MM/yyyy");
            if (result == "1/01/9999")
            {
                result = "Unknown";
            }
            lblBirthDate.Text += " " + result;
            //GetAppropriateView(actorFoundByName);
            ImgPersonPhoto.ImageUrl = String.Format("~/ContentPages/MoviePeople/MoviePeopleUserControls/MoviePersonPhoto.ashx?personId=" + personId);                      
        }
    }
}