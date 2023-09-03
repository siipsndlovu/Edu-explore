<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.OleDb" %>
<%@ Import Namespace="System.Windows.Forms" %>
<%@ Import Namespace="System.Linq" %>
<script runat="server">
    void Page_Load()
    {
        if (!Page.IsPostBack)
        {
            bool SignupreqCheck = System.Convert.ToBoolean(Session["signupreq"]);
            if (SignupreqCheck == !true)
            {
                Response.Redirect("edu-explore intro page.aspx");
            }
            else
            {
                Session["signupreq"] = "false";
            }
        }
    }
    void btnBack_Click(Object s, EventArgs e)
    {
        Response.Redirect("edu-explore intro page.aspx");
    }
    void btnSignup_Click(Object s, EventArgs e)
    {
        string fn = txtFname.Value;
        string ln = txtLname.Value;
        string em = txtEmail.Value;
        string unst = txtUname.Value;
        string pw = txtPword.Value;
        string cpw = txtCPword.Value;
        if (string.IsNullOrEmpty(fn))
        {
            MessageBox.Show("No text has been entered for the First name field!");
        }
        else
        {
            if (string.IsNullOrEmpty(ln))
            {
                MessageBox.Show("No text has been entered for the Last name field!");
            }
            else
            {
                if (string.IsNullOrEmpty(em))
                {
                    MessageBox.Show("No text has been entered for the Email field!");
                }
                else
                {
                    if (string.IsNullOrEmpty(unst))
                    {
                        MessageBox.Show("No text has been entered for the Username field!");
                    }
                    else
                    {
                        if (string.IsNullOrEmpty(pw))
                        {
                            MessageBox.Show("No text has been entered for the Password field!");
                        }
                        else
                        {
                            if (string.IsNullOrEmpty(cpw))
                            {
                                MessageBox.Show("You have to confirm your Password");
                            }
                            else
                            {
                                dbCheck();
                            }
                        }
                    }
                }
            }
        }
    }
    public void dbCheck()
    {
        string cs = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                    "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
        OleDbConnection cn = new OleDbConnection(cs);
        OleDbCommand cmd;
        OleDbDataReader r;
        cn.Open();
        string sql = "SELECT * FROM Accounts WHERE ([Username] = '" + txtUname.Value + "');";
        cmd = new OleDbCommand(sql, cn);
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            MessageBox.Show("That username is already in use by an already existing account!");
        }
        else
        {
            cn.Close();
            dbCheck2();
        }
    }
    public void dbCheck2()
    {
        string cs = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                  "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
        OleDbConnection cn = new OleDbConnection(cs);
        OleDbCommand cmd;
        OleDbDataReader r;
        cn.Open();
        string sql = "SELECT * FROM Accounts WHERE ([Email] = '" + txtEmail.Value + "');";
        cmd = new OleDbCommand(sql, cn);
        r = cmd.ExecuteReader();
        if (r.Read())
        {
            MessageBox.Show("That email is already in use by an already existing account!");
        }
        else
        {
            cn.Close();
            Validatepw();
        }
    }
    public void Validatepw()
    {
        string pw1 = txtPword.Value;
        string cpw1 = txtCPword.Value;
        if (pw1 == cpw1)
        {
            if (pw1.Any(char.IsUpper))
            {

                if (pw1.Any(char.IsDigit))
                {
                    if (pw1.Length >= 8)
                    {
                        emailCheck();
                    }
                    else
                    {
                        MessageBox.Show("Your chosen password should be at least eight characters long!");
                    }
                }
                else
                {
                    MessageBox.Show("Your chosen password should include at least one number!");
                }
            }
            else
            {
                MessageBox.Show("Your chosen password should include at least one upper case letter!");
            }
        }
        else
        {
            MessageBox.Show("The Passwords you entered do not match!");
        }
    }
    public void emailCheck()
    {
        string em = txtEmail.Value;
        if (em.ToLower().Contains("@"))
        {
            if (em.ToLower().Contains("."))
            {
                nameCheck();
            }
            else
            {
                MessageBox.Show("The email you've entered is invalid; the . is missing!");
            }
        }
        else
        {
            MessageBox.Show("The email you've entered is invalid; the @ is missing!");
            return;
        }
    }
    public void nameCheck()
    {
        string fn = txtFname.Value;
        string ln = txtLname.Value;
        bool fnCheck = fn.All(char.IsLetter);
        bool lnCheck = ln.All(char.IsLetter);
        if (fnCheck == true)
        {
            if (lnCheck == true)
            {
                accountcreate();
            }
            else
            {
                MessageBox.Show("You have entered an invalid last name!");
            }
        }
        else
        {
            MessageBox.Show("You have entered an invalid first name!");
        }
    }
    public void accountcreate()
    {
        string pro = "default profile.png";
        string cs = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                    "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
        OleDbConnection cn = new OleDbConnection(cs);
        OleDbCommand cmd;
        OleDbDataReader r;
        cn.Open();
        string sql = "INSERT INTO Accounts ([Username], [Password], [Email], [First name], [Last name], [Equipped])" + " values ('" + txtUname.Value + "','" + txtPword.Value + "','" + txtEmail.Value.ToLower() + "','" + txtFname.Value +"','" + txtLname.Value + "','" + pro +"'" + ");";
        cmd = new OleDbCommand(sql, cn);
        r = cmd.ExecuteReader();
        cn.Close();
        Response.Redirect("edu-explore intro page.aspx");
    }
</script>
<html>
<head>
    <title>Edu-explore | Sign-up</title>
    <link rel="shortcut icon" type="image/png" href="Edu-Explore tab icon.png" />
</head>
<body>
    <form runat="server">
    <input id="btnBack" type="submit" value="Back" runat="server" onserverclick="btnBack_Click"/>
    <img id="logo" src="edu-explore logo.png" />
    <h1>Sign-up</h1>
    <p id="parInstr">Please get your Parent/Guardian to complete the form bellow as required in order to create an account:</p>
    <br />
    <p id="parForm" >Child's First name:   <input id="txtFname" type="text" runat="server" /><br /> 
    Child's Last name:   <input id="txtLname" type="text" runat="server" /><br />
    Parents Email:  <input id="txtEmail" type="text" runat="server"/><br /> 
    Username:   <input id="txtUname" type="text" runat="server"/><br />
    Create Password:   <input id="txtPword" type="password" runat="server" /><br />
    Confirm Password:   <input id="txtCPword" type="password" runat="server" /><br /> 
    </p>
    <input id="btnSignuptry" type="submit" value="Sign-up" runat="server" onserverclick="btnSignup_Click"/>
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
        text-shadow:none;
        border-radius: 8px;     
        position: absolute;
        left: 50px;
        top: 60px;
    }
    img[id=logo] {
        height: 180px;
        position: absolute;
        left: 50px;
        top: 150px;
    }
    h1 {
        position: absolute;
        left: 50px;
        top: 250px;
        font: bold 60px arial, sans-serif;
        color: white;
        text-decoration: underline;
    }
    p[id=parInstr] {
        position: absolute;
        left: 50px;
        top: 375px;
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
    p[id=parForm] {
        position: absolute;
        left: 50px;
        top: 455px;
        font: 35px arial, sans-serif;
        color: white;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: auto;
        width: 610px; 
        padding-left: 10px;
        padding-top: 10px;
        padding-bottom: 50px;
        padding-right: 10px;
    }
    input[type=text] {
        position: absolute;
        left: 320px;
        top: auto;
        height: 35px;
        width: 300px;
    }
    input[type=password] {
        position: absolute;
        left: 320px;
        top: auto;
        height: 35px;
        width: 300px;
    }
    input[id=txtEmail] {
        text-transform: lowercase;
    } 
    input[id=btnSignuptry] {
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
        left: 50px;
        top: 850px;
    }
</style>
