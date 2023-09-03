<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.OleDb" %>
<%@ Import Namespace="System.Windows.Forms" %>
<%@ Import Namespace="System.Linq" %>
<script runat="server">
    void Page_Load()
    {
        if (!Page.IsPostBack)
        {
            bool loginreqCheck = System.Convert.ToBoolean(Session["loginreq"]);
            if (loginreqCheck == !true)
            {
                Response.Redirect("edu-explore intro page.aspx");
            }
            else
            {
                Session["loginreq"] = "false";
            }
        }
    }
    void btnBack_Click(Object s, EventArgs e)
    {
        Response.Redirect("edu-explore intro page.aspx");
    }
    private void btnLogintry_Click(Object s, EventArgs e)
    {
        string cs = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                   "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
        OleDbConnection cn = new OleDbConnection(cs);
        OleDbCommand cmd;
        OleDbDataReader r;
        cn.Open();
        string sql = "SELECT * FROM Accounts WHERE [Username] = '" + txtUname.Value + "' AND [Password] = '" + txtPword.Value + "';";
        cmd = new OleDbCommand(sql, cn);
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            Session["correctun"] = txtUname.Value;
            Session["correctpw"] = txtPword.Value;
            Session["Login"] = "true";
            Response.Redirect("edu-explore home page.aspx");
        }
        else
        {
            MessageBox.Show("You've entered an invalid username or password!");
        }
        cn.Close();
    }
</script>
<html>
<head>
    <title>Edu-explore | Log-in</title>
    <link rel="shortcut icon" type="image/png" href="Edu-Explore tab icon.png" />
</head>
<body>
    <form runat="server">
        <input id="btnBack" type="button" value="Back" runat="server" onserverclick="btnBack_Click"/>
        <img id="logo" src="edu-explore logo.png" />
        <h1>Log-in</h1>
        <p id="parLogin"></p>
        <p id="parInstr">Please enter the following information to Log-in:</p>
        <br />
        <p id="parForm">Username:   <input id="txtUname" type="text" runat="server" /><br />
        Password:   <input id="txtPword" type="password" runat="server" /><br />
        <asp:Button ID="btnLogintry" Text="Log-in" CssClass="btnLogin" runat="server" onclick="btnLogintry_Click" />
        </p>
    </form>
</body>
</html>
<style>
    body {
        background-color: #ffc0cb;
    }
    input[id=btnBack] {
        background: #0066A2;
        color: white;
        border-style: outset;
        border-color: #0066A2;
        height: 60px;
        width: 125px;
        font: bold 30px arial, sans-serif;
        text-shadow: none;
        border-radius: 8px;
        position: absolute;
        left: 100px;
        top: 70px;
    }
    img[id=logo] {
        position: absolute;
        left: 625px;
        top: 125px;
    }
    h1 {
        position: absolute;
        left: 780px;
        top: 310px;
        font: bold 60px arial, sans-serif;
        color: white;
        text-decoration: underline;
    }
    p[id=parInstr] {
        position: absolute;
        left: 615px;
        top: 425px;
        font: 25px arial, sans-serif;
        color: white;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: auto;
        padding-left: 10px;
        padding-top: 10px;
        padding-bottom: 10px;
        padding-right: 10px;
    }
    p[id=parForm]{
        position: absolute;
        left: 575px;
        top: 490px;
        font: 35px arial, sans-serif;
        color: white;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: auto;
        width: 610px; 
        padding-left: 10px;
        padding-top: 30px;
        padding-bottom: 30px;
        padding-right: 10px;
    }
    input[type=text]{
        position: absolute;
        left: 220px;
        top: auto;
        height: 35px;
        width: 390px;
    }
    .btnLogin{
        background: #0066A2;
        color: white;
        border-style: outset;
        border-color: #0066A2;
        height: 60px;
        width: 125px;
        font: bold 30px arial, sans-serif;
        text-shadow:none;
        border-radius: 8px;     
        position: absolute;
        left: 240px;
        top: 190px;
    }
    input[type=password] {
        position: absolute;
        left: 220px;
        top: auto;
        height: 35px;
        width: 390px;
    }
</style>