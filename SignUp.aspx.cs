using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrjWebCsFriendbookP1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // dans la premier rechargement de la page on remplie le dropdown list
            if (!IsPostBack)
            {
                PopulateLookingForListBox();
                PopulateReligionListBox();
                PopulateCountry();

                ListItem listItem = new ListItem();
                listItem.Text = "Select";
                listItem.Value = "0";
                listItem.Selected = true;
                cboGenre.Items.Add(listItem);
                cboGenre.Items.Add(new ListItem("Man", "1"));
                cboGenre.Items.Add(new ListItem("Woman", "2"));
               
                
              
            }

        }

        protected void interestedSelect_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void signUpButton_Click(object sender, EventArgs e)
        {

            // declaration des variables et l'affectation des 
            string nom = txtnom.Text.Trim();
            string prenom = txtprenom.Text.Trim();
            string email = txtemail.Text.Trim();
            string mp = txtmotdepasse.Text.Trim();
            string genre = cboGenre.SelectedItem.Text;
            string naissance = txtNaissance.Text;
            string cmp = txtconfirmpassword.Text.Trim();
            string religion = cboReligion.SelectedValue;
            string country = cboCountry.SelectedValue;
            string interet = LookingForcboBoxs.SelectedValue;
            // verifier si l'utilisateur a remplie tout les champs sinon afficher un message d'erreur et faire return pour sortir de la fonction
            if (string.IsNullOrEmpty(nom) || string.IsNullOrEmpty(prenom) || string.IsNullOrEmpty(email) ||
                string.IsNullOrEmpty(mp) || string.IsNullOrEmpty(cmp) || cboGenre.SelectedIndex == 0)
            {
                lblErreur.Text = "Tous les champs sont obligatoires et doivent être remplis.";
                return;
            }

            // recuperer la date de naissance de l'utilisateur
            int anneNais = Convert.ToDateTime(naissance).Year;
            int currentYear = DateTime.Now.Year;
            int age = currentYear - anneNais;
            // se connecter a la base de donne 
            SqlConnection mycon = new SqlConnection();
            mycon.ConnectionString = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=FriendBook;Integrated Security=True";
            mycon.Open();

            // verifier si l'utilisateur a entre le meme mot de passe
            if( mp == cmp )
            {

                // la requete pour verifier si le membre n'existe pas deja 
                 string sql = "SELECT FirstName FROM Accounts WHERE Email='" + email + "'";
                 SqlCommand mycmd = new SqlCommand(sql, mycon);
                 SqlDataReader myRder = mycmd.ExecuteReader();

                    // si utilisateur est membre on l'informe en affichant un message d'erreur
                    if (myRder.Read() == true)
                    {

                myRder.Close();
                mycon.Close();
                lblErreur.Text = " Echec d'inscription : Vous etes deja membre. ";
                    }
                    else // user est etudiant et pas membre : donc l'ajouter 
                    {
                         myRder.Close();
                    // requete pour ajouter un utilisateur a la table account ce qui va le rendre membre du site        
                    string sqll = "INSERT INTO Accounts (FirstName, LastName, Gender, DateOfBirth, Email, Password, Religion, Country, LookingFor , Age) ";
                    sqll += "VALUES ('" + nom + "', '" + prenom + "', '" + genre + "', '" + anneNais + "', '" + email + "', '" + mp + "', '" + religion + "', '" + country + "', '" + interet + "' , '" + age + "')";
                    SqlCommand mycmd2 = new SqlCommand(sqll, mycon);
                mycmd2.ExecuteNonQuery();
                mycon.Close();
                    // redirection vers la page de login pour que l'utilisateur entre ses informations
                Response.Redirect("login.aspx");

                    }

            }
            // sinon on affiche un message d'erreur que les mots de passe ne sont pas identique
            else
            {
                lblErreur.Text = " Echec d'inscription : Les mots de passe ne correspondent pas";
            }


         


        }
        private void PopulateLookingForListBox()
        {
            LookingForcboBoxs.Items.Clear();


            LookingForcboBoxs.Items.Add(new ListItem("Amour", "Love"));
            LookingForcboBoxs.Items.Add(new ListItem("Amitié", "Friendship"));
            LookingForcboBoxs.Items.Add(new ListItem("Relation sérieuse", "Serious"));
            LookingForcboBoxs.Items.Add(new ListItem("Compagnon de voyage", "Travel"));


        }
        private void PopulateReligionListBox()
        {
            cboReligion.Items.Clear();


            cboReligion.Items.Add(new ListItem("Musulman", "Muslim"));
            cboReligion.Items.Add(new ListItem("Chrétien", "Christian"));
            cboReligion.Items.Add(new ListItem("Juif", "Jewish"));
        }

        private void PopulateCountry()
        {
            cboCountry.Items.Clear();


            cboCountry.Items.Add(new ListItem("USA", "USA"));
            cboCountry.Items.Add(new ListItem("CANADA", "CANADA"));
            cboCountry.Items.Add(new ListItem("MEXICO", "MEXICO"));
            




        }

    }
}