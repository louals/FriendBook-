using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrjWebCsFriendbookP1
{
    public partial class Search : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack== false)
            {
                PopulateLookingForListBox();
                PopulateReligionListBox();
                PopulateGendertBox();
            }
        }

        private void PopulateLookingForListBox()
        {
            LookingForListBoxs.Items.Clear();

            
            LookingForListBoxs.Items.Add(new ListItem("Amour", "Love"));
            LookingForListBoxs.Items.Add(new ListItem("Amitié", "Friendship"));
            LookingForListBoxs.Items.Add(new ListItem("Relation sérieuse", "Serious"));
            LookingForListBoxs.Items.Add(new ListItem("Compagnon de voyage", "Travel"));

            
        }
        private void PopulateReligionListBox()
        {
            cboReligion.Items.Clear();

        
            cboReligion.Items.Add(new ListItem("Musulman", "Muslim"));
            cboReligion.Items.Add(new ListItem("Chrétien", "Christian"));
            cboReligion.Items.Add(new ListItem("Juif", "Jewish"));
        }
        private void PopulateGendertBox()
        {
            GenderDropDown.Items.Clear();


            GenderDropDown.Items.Add(new ListItem("Homme", "Man"));
            GenderDropDown.Items.Add(new ListItem("Femme", "Woman"));


        }

       

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            string ageFrom = AgeFromTextBox.Text.Trim();
            string ageTo = AgeToTextBox.Text.Trim();
            string country = CountryTextBox.Text.Trim();
            string gender = GenderDropDown.SelectedValue;
            string lookingFor = LookingForListBoxs.SelectedValue;
            string religion = cboReligion.SelectedValue;
            if (string.IsNullOrWhiteSpace(ageFrom) || string.IsNullOrWhiteSpace(ageTo) ||
    string.IsNullOrWhiteSpace(country) || string.IsNullOrWhiteSpace(gender) ||
    string.IsNullOrWhiteSpace(lookingFor) || string.IsNullOrWhiteSpace(religion))
            {
                Label1.Text = "Please fill in all fields.";
                return;
            }

            List<User> users = new List<User>();

            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=FriendBook;Integrated Security=True";
            mycon.Open();

            string sql = "SELECT * FROM Accounts WHERE Age BETWEEN '"+ageFrom+"' AND '"+ageTo+"'";
            sql += " AND Country = '" +country +"'";
            sql += " AND Gender = '" + gender + "'";
            sql += " AND LookingFor = '" + lookingFor + "'";
            sql += " AND Religion = '" + religion + "'";


            SqlCommand myCmd = new SqlCommand(sql, mycon);

            SqlDataReader myRder = myCmd.ExecuteReader();

            if (!myRder.HasRows)
            {
                Label1.Text = "Aucun utilisateur trouve";
            }
            else
            {
                while (myRder.Read())
                {
                    User user = new User
                    {
                        Id = myRder["UserID"].ToString(),
                        FirstName = myRder["FirstName"].ToString(),
                        LastName = myRder["LastName"].ToString(),
                        Age = Convert.ToInt32(myRder["Age"]),
                        Country = myRder["Country"].ToString()
                    };

                    users.Add(user);
                }
                Session["UsersList"] = users;
                Response.Redirect("SearchResult.aspx");
            }


        }
        public class User
        {
            public string Id { get; set; }
            public string FirstName { get; set; }
            public string LastName { get; set; }
            public int Age { get; set; }
            public string Country { get; set; }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("WelcomePage.aspx");
        }
    }
}