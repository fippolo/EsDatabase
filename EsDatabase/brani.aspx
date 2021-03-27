<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="brani.aspx.cs" Inherits="EsDatabase.brani" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <%
        System.Data.SqlClient.SqlConnection CN = new System.Data.SqlClient.SqlConnection();
        System.Data.SqlClient.SqlCommand CM = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlDataAdapter DA = new System.Data.SqlClient.SqlDataAdapter();
        System.Data.DataSet Dati = new System.Data.DataSet();

        CN.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename"+ HttpContext.Current.Server.MapPath("~") + @"Canzoni.mdf" + ";Integrated Security=True;Connect Timeout=30";
        CN.Open();
        CM.Connection = CN;
        CM.CommandType = System.Data.CommandType.Text;
        DA.SelectCommand = CM;
        CM.CommandText = "Select * from Brani inner join Album on albumID=IDalbum where artistaID="+Request.QueryString["IDA"]+" ;";
        DA.Fill(Dati, "Brani");
    %>
            <table border="1" >
                <tr>
                <%for (int j = 0; j < Dati.Tables["Brani"].Columns.Count; j++)
                    {%>
                    <td><%=Dati.Tables["Brani"].Columns[j].ColumnName %></td>
                <%} %>
                </tr>
                <%for (int i = 0; i < Dati.Tables["Brani"].Rows.Count; i++)
                    {%>
                <tr>
                <%for (int j = 0; j < Dati.Tables["Brani"].Columns.Count; j++)
                    {%>
                    <td><%=Dati.Tables["Brani"].Rows[i][j] %></td>
                <%} %>
                </tr>
                <%} %>
            </table>
        </div>
    </form>
</body>
</html>
