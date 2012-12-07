using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ometz.Cinema.BLL.Movies;
using Ometz.Cinema.BLL.MoviePeople;

namespace Ometz.Cinema.UI.ContentPages.MoviePeople.MoviePeopleUserControls
{
    public enum MovieProperties {MovieId, Title, SelectButton, Description, Year, GenreName };

    public partial class MainMoviePeople : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridMovieList.HeaderRow.Cells[(int)MovieId].Visible = false;
                GridMovieList.HeaderRow.Cells[(int)SelectButton].Visible = false;

                foreach (GridViewRow row in GridMovieList.Rows)
                {
                    row.Cells[(int)MovieId].Visible = false;
                    row.Cells[(int)SelectButton].Visible = false;
                }
            }
            btnSearch.Enabled = false;
        }
        protected override void OnPreRender(EventArgs e)
        {
            if (IsPostBack)
            {
                if (GridMovieList.SelectedIndex > -1)
                {
                    string personType = rblMoviePeople.SelectedItem.Text;
                    int movieId = Convert.ToInt32(GridMovieList.SelectedRow.Cells[(int)MovieId].Text);
                    string movieTitle = GridMovieList.SelectedRow.Cells[(int)Title].Text;
                    string url = "PeopleInMovie.aspx?movieId=" + movieId + "&movieTitle=" + movieTitle 
                        + "&personType=" + personType;
                    Response.Redirect(url);
                }
            }
        }
        public MovieProperties SelectButton
        {
            get { return MovieProperties.SelectButton; }
        }
        public MovieProperties MovieId
        {
            get { return MovieProperties.MovieId; }
        }
        public MovieProperties Title
        {
            get { return MovieProperties.Title; }
        }
        public MovieProperties Description
        {
            get { return MovieProperties.Description; }
        }
        public MovieProperties Year
        {
            get { return MovieProperties.Year; }
        }
        public MovieProperties GenreName
        {
            get { return MovieProperties.GenreName; }
        }

        public GridView GridMovieList
        {
            get { return this.gridMovies; }
        }

        //public GridView GridPersonName
        //{
        //    get { return this.gridPersonName; }
        //}

        public Label lblSearchMoviePersonType
        {
            get { return this.lblSearchByMovieName; }
            set {  }
        }
        public Label lblSearchMoviePersonByName
        {
            get { return this.lblSearchByPersonName; }
            set { }
        }
        public TextBox SearchPersonByName
        {
            get { return txtSearchPersonByName; }
            set { }
        }
     
        public void SetLabelText(string messageMovieTitle, string messagePersonName)
        {          
            lblSearchMoviePersonType.Text = messageMovieTitle;
            lblSearchByPersonName.Text = messagePersonName;
        }

        protected void txtSearchPersonByName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridMovieList.HeaderRow.Cells[(int)SelectButton].Visible = true;

            foreach (GridViewRow row in GridMovieList.Rows)
            {
                row.Cells[(int)SelectButton].Visible = true;

            }
            btnSearch.Enabled = true;
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (SearchPersonByName.Text == "")
            {
                return;
            }

            string personType = rblMoviePeople.SelectedItem.Text;
            MoviePeopleServices personInfo = new MoviePeopleServices();

            string personToShow = SearchPersonByName.Text;           
            string url = "PersonFullInfo.aspx?personToShow=" + personToShow  + "&personType=" + personType; 
            Response.Redirect(url);
            SearchPersonByName.Text = "";

        }
       

       
        }
      
    }
