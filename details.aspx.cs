using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrjWebCsFriendbookP1
{
    public partial class details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Int32 id = Convert.ToInt32(Request.QueryString["userId"].ToString());

            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=FriendBook;Integrated Security=True";
            mycon.Open();


            string sql = "SELECT * FROM Accounts WHERE UserID =" + id;
            SqlCommand myCmd = new SqlCommand(sql, mycon);
            SqlDataReader myRder = myCmd.ExecuteReader();

            if (myRder.Read() == true)
            {
                string info = "<p>Nom : " + myRder["FirstName"].ToString() + "</p>";
                info += "<p>Prénom : " + myRder["LastName"].ToString() + "</p>";
                info += "<p>Age : " + myRder["Age"].ToString() + "</p>";
                info += "<p>Genre : " + myRder["Gender"].ToString() + "</p>";
                info += "<p>Date de naissance : " + Convert.ToDateTime(myRder["DateOfBirth"]).ToString("dd/MM/yyyy") + "</p>";
                info += "<p>Email : " + myRder["Email"].ToString() + "</p>";
                info += "<p>Religion : " + myRder["Religion"].ToString() + "</p>";
                info += "<p>Pays : " + myRder["Country"].ToString() + "</p>";
                info += "<p>Recherche : " + myRder["LookingFor"].ToString() + "</p>";

                lblMessage.Text = info;
            }
            myRder.Close();
        }

        protected void btnreturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx");
        }
    }
}