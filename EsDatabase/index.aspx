<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="EsDatabase.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" method="post">
        <% int i, j; %>
        <div>
            <table border="1" >
                <tr>
                <%for (j = 0; j < Dati.Tables["Artist"].Columns.Count; j++)
                    {%>
                    <td><%=Dati.Tables["Artist"].Columns[j].ColumnName %></td>
                <%} %>
                </tr>
                <%for (i = 0; i < Dati.Tables["Artist"].Rows.Count; i++)
                    {%>
                <tr>
                <%for ( j = 0; j < Dati.Tables["Artist"].Columns.Count; j++)
                    {%>
                    <%if (j == 0)
                        { %>
                        <td>
  
                     <%=Dati.Tables["Artist"].Rows[i][j] %> 

                        </td>
                    <%}
                    else
                    { %>
                       <td>

                       <input id="link" name="link" type="submit" value="<%=Dati.Tables["Artist"].Rows[i][j] %>" />  
                        
                       </td>
                    <%} %>
                <%} %>
                </tr>
                <%} %>
            </table>
        </div>
    </form>
</body>
</html>
