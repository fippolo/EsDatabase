using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace EsDatabase
{
    public partial class index : System.Web.UI.Page
    {
        public  System.Data.SqlClient.SqlConnection CN;
        public  System.Data.SqlClient.SqlCommand CM;
        public  System.Data.SqlClient.SqlDataAdapter DA;
        public  System.Data.DataSet Dati;
        protected void Page_Load(object sender, EventArgs e)
        {
            CN = new System.Data.SqlClient.SqlConnection();
            CM = new System.Data.SqlClient.SqlCommand();
            DA = new System.Data.SqlClient.SqlDataAdapter();
            Dati = new System.Data.DataSet();

            CN.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + HttpContext.Current.Server.MapPath("~") + @"Canzoni.mdf" + ";Integrated Security=True;Connect Timeout=30";
            CN.Open();
            CM.Connection = CN;
            CM.CommandType = System.Data.CommandType.Text;
            DA.SelectCommand = CM;
            CM.CommandText = "Select * from Artista;";
            DA.Fill(Dati, "Artist");
            if (IsPostBack)
            {
                string a = Request.Form["link"];
                foreach (DataRow row in Dati.Tables["Artist"].Rows)                             //ciclo tutte le righe della tabella e dove il nome preso dal bottone è uguale prendo il codice
                {
                    if ((string)row[1] == a)
                        Response.Redirect(@"brani.aspx?IDA=" + row[0]);
                }
            }

        }
    }
}