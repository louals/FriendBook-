using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static PrjWebCsFriendbookP1.Search;

namespace PrjWebCsFriendbookP1
{
    public partial class SearchResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            List<User> users = Session["UsersList"] as List<User>;

            if (users != null)
            {
                TableRow headRow = new TableRow();

                TableCell headCell = new TableCell();
                headCell.Text = "Nom";
                headRow.Cells.Add(headCell);

                headCell = new TableCell();
                headCell.Text = "Prenom";
                headRow.Cells.Add(headCell);

                headCell = new TableCell();
                headCell.Text = "Age";
                headRow.Cells.Add(headCell);

                headCell = new TableCell();
                headCell.Text = "Pays";
                headRow.Cells.Add(headCell);

                headCell = new TableCell();
                headCell.Text = "Actions";
                headRow.Cells.Add(headCell);

                TAB.Rows.Add(headRow);
             
                foreach (var user in users)
                {
                    
                    TableRow dataRow = new TableRow();

                    TableCell dataCell = new TableCell();
                    dataCell.Text = user.FirstName;
                    dataRow.Cells.Add(dataCell);

                    dataCell = new TableCell();
                    dataCell.Text = user.LastName;
                    dataRow.Cells.Add(dataCell);

                    dataCell = new TableCell();
                    dataCell.Text = user.Age.ToString();
                    dataRow.Cells.Add(dataCell);

                    dataCell = new TableCell();
                    dataCell.Text = user.Country;
                    dataRow.Cells.Add(dataCell);

                    dataCell = new TableCell();
                    Int32 detailID = Convert.ToInt32(user.Id.ToString());
                    string liens = "<a href='details.aspx?userId=" + detailID + "'>Details</a>";
                    dataCell.Text = liens;
                    dataRow.Cells.Add(dataCell);


                    TAB.Rows.Add(dataRow);
                }
            }
        
    }
    }
}