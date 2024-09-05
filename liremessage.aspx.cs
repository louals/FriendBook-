using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrjWebCsFriendbookP1
{
    public partial class liremessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {

                if (Request.QueryString["RefMsg"] != null)
                {
                    
                    Int32 id = Convert.ToInt32(Request.QueryString["RefMsg"].ToString());

                    SqlConnection mycon = new SqlConnection();
                    mycon.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=FriendBook;Integrated Security=True";
                    mycon.Open();


                    string sql = "SELECT * FROM Messages WHERE RefMessage =" + id;
                    SqlCommand myCmd = new SqlCommand(sql, mycon);
                    SqlDataReader myRder = myCmd.ExecuteReader();
                    if (myRder.Read() == true)
                    {
                        string info = "<p>Titre : " + myRder["Titre"].ToString() + "</p>";
                        info += "<p>Date : " + myRder["Date"].ToString() + "</p>";
                        info += "<p>Message : " + myRder["Message"].ToString() + "</p>";

                        lblMessage.Text = info;
                    }
                    myRder.Close();

                    sql = "UPDATE Messages SET Nouveau='False' WHERE RefMessage =" + id;
                    SqlCommand myCmd2 = new SqlCommand(sql, mycon);
                    myCmd2.ExecuteNonQuery();

                    mycon.Close();
                }
                else
                {
                 
                    Response.Write("No message reference provided.");
                }
               
            }
        }

        protected void btnRetour_Click(object sender, EventArgs e)
        {
            Response.Redirect("WelcomePage.aspx");
        }
    }
}