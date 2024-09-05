using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrjWebCsFriendbookP1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        // Evenement de clique sur le bouton login dans la page login.aspx
        protected void loginButton_Click(object sender, EventArgs e)
        {
            // Declaration des variables
            string email = txtemail.Text.Trim();
            string mdp = txtmotdepasse.Text.Trim();


            // Se connecter a la base de donne 
            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=FriendBook;Integrated Security=True";
            mycon.Open();


       
            // Mettre la requete de recherche de l'utilisateur dans la base de donne
            string sql = "SELECT UserID, FirstName , LastName FROM Accounts WHERE ";
            sql += "Email = '" + email + "'AND Password ='" + mdp + "'";



            SqlCommand mycmd = new SqlCommand(sql, mycon);

            // Execution de la requete
            SqlDataReader myRder = mycmd.ExecuteReader();

            // Si utilisateur est dans la base de donne on le redirige vers une autre page
            if (myRder.Read() == true) 
            {
                

               // insertion des information de l'utilisateur dans des variables globales
                Session["FirstName"] = myRder["FirstName"];
                Session["LastName"] = myRder["LastName"];
                Session["UserID"] = myRder["UserID"];


                // fermer la requete et la connection 
                myRder.Close();
                mycon.Close();
                // redirection vers la base de donne 
                Response.Redirect("WelcomePage.aspx");

            }
            // sinon informer l'utilisateur que les informations sont incorrect
            else
            {
                myRder.Close();
                mycon.Close();
                lblErreur.Text = "Numero ou Mot de passe invalide, Essayez de nouveau";

            }
        }
    }
}