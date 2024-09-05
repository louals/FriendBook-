using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrjWebCsFriendbookP1
{
    public partial class effacerMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Int32 id = Convert.ToInt32(Request.QueryString["RefMsg"].ToString());

            SqlConnection myCon = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=FriendBook;Integrated Security=True");
            myCon.Open();
            string sql = "DELETE FROM Messages WHERE RefMessage =" + id;
            SqlCommand myCmd = new SqlCommand(sql, myCon);
            myCmd.ExecuteNonQuery();

            myCon.Close();
            Response.Redirect("WelcomePage.aspx");
        }
    }
}