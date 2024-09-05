using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrjWebCsFriendbookP1
{
    public partial class ComposerMessage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)


            {


                // ajouter la premier ligne de la liste

                cboDestnataires.Items.Add(new ListItem("Choisir un destinataire", "0"));
                cboDestnataires.Items[0].Selected = true;

                SqlConnection mycon = new SqlConnection();
                mycon.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=FriendBook;Integrated Security=True";
                mycon.Open();

                // interroger avec une requete avec un objet command

                string sql = "SELECT UserID, FirstName, LastName FROM Accounts ORDER BY FirstName";



                SqlCommand mycmd = new SqlCommand(sql, mycon);


                SqlDataReader myRder = mycmd.ExecuteReader();


                while (myRder.Read() == true)
                {
                    ListItem elm = new ListItem();
                    elm.Text = myRder["FirstName"].ToString() + myRder["LastName"].ToString();
                    elm.Value = myRder["UserID"].ToString();
                    cboDestnataires.Items.Add(elm);
                }
                myRder.Close();
                mycon.Close();
            }

        }

        

        

        protected void btnEnvoie_Click(object sender, EventArgs e)
        {
            if (cboDestnataires.SelectedIndex == 0)
            {
                lbl.Text = "Erreur : Choisir un destinataire SVP";
                cboDestnataires.Focus();
                return;
            }
            if (txtTitre.Text.Trim().Length == 0)
            {
                lbl.Text = "Erreur : Entrez un Titre pour votre message SVP";
                txtTitre.Focus();

                return;
            }


            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=FriendBook;Integrated Security=True";
            mycon.Open();

            string tit = txtTitre.Text;
            string msg = txtMessage.Text;
            string numReceveur = cboDestnataires.SelectedItem.Value.ToString();
            string numEnvoyeur = Session["UserID"].ToString();
            string aujourdui = DateTime.Today.ToShortDateString();

            // interroger avec une requete avec un objet command
            string sql = "INSERT INTO Messages (Titre, Message, Envoyeur, Receveur, Date, Nouveau) " +
                                   "VALUES ('" + tit + "', '" + msg + "', '" + numEnvoyeur + "', '" + numReceveur + "', '" + aujourdui + "', 'True');";


            SqlCommand mycmd = new SqlCommand(sql, mycon);


            mycmd.ExecuteNonQuery();
            mycon.Close();
            Response.Redirect("WelcomePage.aspx");
        }

        protected void btnEffacer_Click(object sender, EventArgs e)
        {
             txtTitre.Text = "";
            
            txtMessage.Text = "";
            cboDestnataires.SelectedItem.Value = "0";
        }

        protected void btnAnnuler_Click(object sender, EventArgs e)
        {
            Response.Redirect("WelcomePage.aspx");
        }
    }
}