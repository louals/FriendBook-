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
    public partial class WelcomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int nbM = 0;
            string numeroMbr = Session["UserID"].ToString(); ;
            // Creation de la premiere ligne du tableau
            TableRow maLigne = new TableRow();
            TableCell maCellule = new TableCell();
            maCellule.Text = "Titre";
            maLigne.Cells.Add(maCellule);

            maCellule = new TableCell();
            maCellule.Text = "Envoyeur";
            maLigne.Cells.Add(maCellule);

            maCellule = new TableCell();
            maCellule.Text = "Actions";
            maLigne.Cells.Add(maCellule);

            TabMessage.Rows.Add(maLigne);
            maLigne.BackColor = Color.Aquamarine;

            // Se connecter a la base de donne 
            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=FriendBook;Integrated Security=True";
            mycon.Open();

            string sql = "SELECT RefMessage, Titre, Envoyeur, Nouveau, FirstName , LastName FROM Messages ";
            sql += "JOIN Accounts On Messages.Envoyeur = Accounts.UserID ";
            sql += "WHERE Receveur ='" + numeroMbr + "'";


            SqlCommand mycmd = new SqlCommand(sql, mycon);


            SqlDataReader myRder = mycmd.ExecuteReader();
           
            while (myRder.Read() == true)
            {
                

                TableRow maLigne1 = new TableRow();
                TableCell maCellule1 = new TableCell();
                maCellule1.Text = myRder["Titre"].ToString();
                maLigne1.Cells.Add(maCellule1);

                maCellule1 = new TableCell();
                maCellule1.Text = myRder["FirstName"].ToString() + " " + myRder["FirstName"].ToString();
                maLigne1.Cells.Add(maCellule1);



                maCellule1 = new TableCell();
                Int32 msgID = Convert.ToInt32(myRder["RefMessage"].ToString());
                string liens = "<a href='liremessage.aspx?RefMsg="+msgID+"'>Lire</a>";
                liens += "&nbsp;&nbsp;&nbsp;";
                liens += "<a href='effacermessage.aspx?RefMsg="+msgID+"'>Effacer</a>";
                maCellule1.Text = liens;
                maLigne1.Cells.Add(maCellule1);
                if (myRder["Nouveau"].ToString() == "True")
                {
                    maLigne1.BackColor = Color.LightYellow;
                }
                TabMessage.Rows.Add(maLigne1);
                nbM++;
            }
            
            myRder.Close();
            mycon.Close();
            lblMessage.Text = " Bienvenue " + Session["FirstName"] +" "+Session["LastName"];
            lblMessage.Text += " Vous avez " + nbM + " Messages !";

        }

        protected void Composer_Click(object sender, EventArgs e)
        {
            Response.Redirect("ComposerMessage.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx");
        }
    }
}