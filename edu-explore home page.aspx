<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script runat="server">
    void Page_Load()
    {
        if (!Page.IsPostBack)
        {
            bool HomereqCheck = System.Convert.ToBoolean(Session["Login"]);
            if (HomereqCheck == !true )
            {
                Response.Redirect("edu-explore login page.aspx");
            }
            else
            {
                Session["FromHome"] = "true";
                string fn;
                string ln;
                string pro;
                int am;
                int abs;
                int sm;
                int sbs;
                int gm;
                int gbs;
                int senm;
                int senbs;
                string un = System.Convert.ToString(Session["correctun"]);
                string pw = System.Convert.ToString(Session["correctpw"]);
                string cs = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                   "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn = new OleDbConnection(cs);
                OleDbCommand cmd;
                OleDbDataReader r;
                cn.Open();
                string sql = "SELECT * FROM Accounts WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd = new OleDbCommand(sql, cn);
                r = cmd.ExecuteReader();
                fn = "";
                if (r.Read()){
                    fn = System.Convert.ToString(r["First name"]);
                    Session["Login"] = "false";
                }
                cn.Close();
                string cs2 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                   "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn2 = new OleDbConnection(cs);
                OleDbCommand cmd2;
                OleDbDataReader r2;
                cn2.Open();
                string sql2 = "SELECT * FROM Accounts WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd2 = new OleDbCommand(sql2, cn2);
                r2 = cmd2.ExecuteReader();
                ln = "";
                if (r2.Read()){
                    ln = System.Convert.ToString(r2["last name"]);
                }
                cn2.Close();
                txtName.InnerHtml = fn + " " + ln + "'s";
                Session["Login"] = "false";
                string cs3 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                   "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn3 = new OleDbConnection(cs);
                OleDbCommand cmd3;
                OleDbDataReader r3;
                cn3.Open();
                string sql3 = "SELECT * FROM Accounts WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd3 = new OleDbCommand(sql3, cn3);
                r3 = cmd3.ExecuteReader();
                if (r3.Read()){
                    am = System.Convert.ToInt32(r3["AddMedals"]);
                    Session["AddMedals"] = am;
                }
                cn3.Close();
                int amCheck = System.Convert.ToInt32(Session["AddMedals"]);
                if (amCheck == 0)
                {
                    AddMedal1.Src = "locked.png";
                    AddMedal2.Src = "locked.png";
                    AddMedal3.Src = "locked.png";
                }
                if (amCheck == 1)
                {
                    AddMedal1.Src = "locked.png";
                    AddMedal2.Src = "locked.png";
                    AddMedal3.Src = "bronze.png";
                }
                if (amCheck == 2)
                {
                    AddMedal1.Src = "locked.png";
                    AddMedal2.Src = "silver.png";
                    AddMedal3.Src = "bronze.png";
                }
                if (amCheck == 3)
                {
                    AddMedal1.Src = "gold.png";
                    AddMedal2.Src = "silver.png";
                    AddMedal3.Src = "bronze.png";
                }
                string cs4 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                   "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn4 = new OleDbConnection(cs);
                OleDbCommand cmd4;
                OleDbDataReader r4;
                cn4.Open();
                string sql4 = "SELECT * FROM Accounts WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd4 = new OleDbCommand(sql4, cn4);
                r4 = cmd4.ExecuteReader();
                if (r4.Read()){
                    abs = System.Convert.ToInt32(r4["AddQuizScore"]);
                    Session["AddQuizScore"] = abs;
                }
                cn4.Close();
                int ascoreCheck = System.Convert.ToInt32(Session["AddQuizScore"]);
                txtAddScore.InnerHtml = ascoreCheck + "/10";
                decimal aperCheck = ((ascoreCheck/10m)*100m);
                txtAddPercentage.InnerHtml = aperCheck + "%";
                string cs5 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                   "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn5 = new OleDbConnection(cs);
                OleDbCommand cmd5;
                OleDbDataReader r5;
                cn5.Open();
                string sql5 = "SELECT * FROM Accounts WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd5 = new OleDbCommand(sql5, cn5);
                r5 = cmd5.ExecuteReader();
                if (r5.Read()){
                    sm = System.Convert.ToInt32(r5["SubMedals"]);
                    Session["SubMedals"] = sm;
                }
                cn5.Close();
                int smCheck = System.Convert.ToInt32(Session["SubMedals"]);
                if (smCheck == 0)
                {
                    SubMedal1.Src = "locked.png";
                    SubMedal2.Src = "locked.png";
                    SubMedal3.Src = "locked.png";
                }
                if (smCheck == 1)
                {
                    SubMedal1.Src = "locked.png";
                    SubMedal2.Src = "locked.png";
                    SubMedal3.Src = "bronze.png";
                }
                if (smCheck == 2)
                {
                    SubMedal1.Src = "locked.png";
                    SubMedal2.Src = "silver.png";
                    SubMedal3.Src = "bronze.png";
                }
                if (smCheck == 3)
                {
                    SubMedal1.Src = "gold.png";
                    SubMedal2.Src = "silver.png";
                    SubMedal3.Src = "bronze.png";
                }
                string cs6 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                   "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn6 = new OleDbConnection(cs);
                OleDbCommand cmd6;
                OleDbDataReader r6;
                cn6.Open();
                string sql6 = "SELECT * FROM Accounts WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd6 = new OleDbCommand(sql6, cn6);
                r6 = cmd6.ExecuteReader();
                if (r6.Read()){
                    sbs = System.Convert.ToInt32(r6["SubQuizScore"]);
                    Session["SubQuizScore"] = sbs;
                }
                cn6.Close();
                int sscoreCheck = System.Convert.ToInt32(Session["SubQuizScore"]);
                txtSubScore.InnerHtml = sscoreCheck + "/10";
                decimal sperCheck = ((sscoreCheck/10m)*100m);
                txtSubPercentage.InnerHtml = sperCheck + "%";
                string cs7 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                   "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn7 = new OleDbConnection(cs);
                OleDbCommand cmd7;
                OleDbDataReader r7;
                cn7.Open();
                string sql7 = "SELECT * FROM Accounts WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd7 = new OleDbCommand(sql7, cn7);
                r7 = cmd7.ExecuteReader();
                if (r7.Read()){
                    gm = System.Convert.ToInt32(r7["GraMedals"]);
                    Session["GraMedals"] = gm;
                }
                cn7.Close();
                int gmCheck = System.Convert.ToInt32(Session["GraMedals"]);
                if (gmCheck == 0)
                {
                    GraMedal1.Src = "locked.png";
                    GraMedal2.Src = "locked.png";
                    GraMedal3.Src = "locked.png";
                }
                if (gmCheck == 1)
                {
                    GraMedal1.Src = "locked.png";
                    GraMedal2.Src = "locked.png";
                    GraMedal3.Src = "bronze.png";
                }
                if (gmCheck == 2)
                {
                    GraMedal1.Src = "locked.png";
                    GraMedal2.Src = "silver.png";
                    GraMedal3.Src = "bronze.png";
                }
                if (gmCheck == 3)
                {
                    GraMedal1.Src = "gold.png";
                    GraMedal2.Src = "silver.png";
                    GraMedal3.Src = "bronze.png";
                }
                string cs8 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                   "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn8 = new OleDbConnection(cs);
                OleDbCommand cmd8;
                OleDbDataReader r8;
                cn8.Open();
                string sql8 = "SELECT * FROM Accounts WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd8 = new OleDbCommand(sql8, cn8);
                r8 = cmd8.ExecuteReader();
                if (r8.Read()){
                    gbs = System.Convert.ToInt32(r8["GraQuizScore"]);
                    Session["GraQuizScore"] = gbs;
                }
                cn8.Close();
                int gscoreCheck = System.Convert.ToInt32(Session["GraQuizScore"]);
                txtGraScore.InnerHtml = gscoreCheck + "/10";
                decimal gperCheck = ((gscoreCheck/10m)*100m);
                txtGraPercentage.InnerHtml = gperCheck + "%";
                string cs9 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                   "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn9 = new OleDbConnection(cs);
                OleDbCommand cmd9;
                OleDbDataReader r9;
                cn9.Open();
                string sql9 = "SELECT * FROM Accounts WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd9 = new OleDbCommand(sql9, cn9);
                r9 = cmd9.ExecuteReader();
                if (r9.Read()){
                    senm = System.Convert.ToInt32(r9["SenMedals"]);
                    Session["SenMedals"] = senm;
                }
                cn9.Close();
                int senmCheck = System.Convert.ToInt32(Session["SenMedals"]);
                if (senmCheck == 0)
                {
                    SenMedal1.Src = "locked.png";
                    SenMedal2.Src = "locked.png";
                    SenMedal3.Src = "locked.png";
                }
                if (senmCheck == 1)
                {
                    SenMedal1.Src = "locked.png";
                    SenMedal2.Src = "locked.png";
                    SenMedal3.Src = "bronze.png";
                }
                if (senmCheck == 2)
                {
                    SenMedal1.Src = "locked.png";
                    SenMedal2.Src = "silver.png";
                    SenMedal3.Src = "bronze.png";
                }
                if (senmCheck == 3)
                {
                    SenMedal1.Src = "gold.png";
                    SenMedal2.Src = "silver.png";
                    SenMedal3.Src = "bronze.png";
                }
                string cs10 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                   "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn10 = new OleDbConnection(cs);
                OleDbCommand cmd10;
                OleDbDataReader r10;
                cn10.Open();
                string sql10 = "SELECT * FROM Accounts WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd10 = new OleDbCommand(sql10, cn10);
                r10 = cmd10.ExecuteReader();
                if (r10.Read()){
                    senbs = System.Convert.ToInt32(r10["SenQuizScore"]);
                    Session["SenQuizScore"] = senbs;
                }
                cn10.Close();
                int senscoreCheck = System.Convert.ToInt32(Session["SenQuizScore"]);
                txtSenScore.InnerHtml = senscoreCheck + "/10";
                decimal senperCheck = ((senscoreCheck/10m)*100m);
                txtSenPercentage.InnerHtml = senperCheck + "%";
                string cs11 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                   "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn11 = new OleDbConnection(cs11);
                OleDbCommand cmd11;
                OleDbDataReader r11;
                cn11.Open();
                string sql11 = "SELECT * FROM Accounts WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd11 = new OleDbCommand(sql11, cn11);
                r11 = cmd11.ExecuteReader();
                if (r11.Read()){
                    pro = System.Convert.ToString(r11["Equipped"]);
                    Session["pEquipped"] = pro;
                }
                cn11.Close();
                string profile = System.Convert.ToString(Session["pEquipped"]);
                Profilebtn.ImageUrl = profile;
            }
        }
    }
    void btnLogout_Click(Object s, EventArgs e)
    {
        Session["Logout"] = "false";
        Session["Loginreq"] = "true";
        Session.Remove("correctun");
        Session.Remove("correctpw");
        Response.Redirect("edu-explore login page.aspx");
    }
    void btnProfile_Click(Object s, EventArgs e)
    {
        Session["Profilereq"] = "true";
        Response.Redirect("edu-explore profile picture page.aspx");
    }
    protected void btnAddQuiz_Click(Object s, EventArgs e)
    {
        Session["AddQuizreq"] = "true";
        Response.Redirect("edu-explore addition quiz page.aspx");
    }
    protected void btnSubQuiz_Click(Object s, EventArgs e)
    {
        Session["SubQuizreq"] = "true";
        Response.Redirect("edu-explore subtraction quiz page.aspx");
    }
    protected void btnGraQuiz_Click(Object s, EventArgs e)
    {
        Session["GraQuizreq"] = "true";
        Response.Redirect("edu-explore grammar quiz page.aspx");
    }
    protected void btnSenQuiz_Click(Object s, EventArgs e)
    {
        Session["SenQuizreq"] = "true";
        Response.Redirect("edu-explore sentence type quiz page.aspx");
    }
</script>
<html>
<head>
    <title>Edu-explore | Home</title>
    <link rel="shortcut icon" type="image/png" href="Edu-Explore tab icon.png" />
</head>
<body>
    <form runat="server">
        <div class="parTopborder">
            <input id="btnLogout" type="submit" value="Log-out" onserverclick="btnLogout_Click" runat="server" />
            <p id="txtName" runat="server"></p>
            <asp:ImageButton ID="Profilebtn" CssClass="btnProfile" ImageUrl="profile pic placeholder.jpg" OnClick="btnProfile_Click" runat="server" />
        </div>
        <img id="imgLogo" src="edu-explore logo.png" runat="server" />
        <h1>Home</h1>
        <p id="parInst">Please choose which quiz you would like to take from the options below:</p>
        <div class="parAddQuiz">
            <p id="txtAddQuiz">Addition quiz</p>
            <asp:ImageButton ID="AddQuizbtn" CssClass="btnAddQuiz" ImageUrl="Addition thumbnail.png" OnClick="btnAddQuiz_Click" runat="server" />
            <p id="txtAddScoreTitle">Best score:</p>
            <p id="txtAddScore" runat="server"></p>
            <p id="txtAddPercentageTitle">Percentage:</p>
            <p id="txtAddPercentage" runat="server"></p>
            <p id="txtAddMedalTitle">Medals:</p>
            <img id="AddMedal1" runat="server" />
            <img id="AddMedal2" runat="server" />
            <img id="AddMedal3" runat="server" />
        </div>
        <div class="parSubQuiz">
            <p id="txtSubQuiz">Subtraction quiz</p>
            <asp:ImageButton ID="SubQuizbtn" CssClass="btnSubQuiz" ImageUrl="subtraction thumbnail.png" OnClick="btnSubQuiz_Click" runat="server" />
            <p id="txtSubScoreTitle">Best score:</p>
            <p id="txtSubScore" runat="server"></p>
            <p id="txtSubPercentageTitle">Percentage:</p>
            <p id="txtSubPercentage" runat="server"></p>
            <p id="txtSubMedalTitle">Medals:</p>
            <img id="SubMedal1" runat="server" />
            <img id="SubMedal2" runat="server" />
            <img id="SubMedal3" runat="server" />
        </div>
        <div class="parGraQuiz">
            <p id="txtGraQuiz">Grammar quiz</p>
            <asp:ImageButton ID="GraQuizbtn" CssClass="btnGraQuiz" ImageUrl="Grammar thumbnail.png" OnClick="btnGraQuiz_Click" runat="server" />
            <p id="txtGraScoreTitle">Best score:</p>
            <p id="txtGraScore" runat="server"></p>
            <p id="txtGraPercentageTitle">Percentage:</p>
            <p id="txtGraPercentage" runat="server"></p>
            <p id="txtGraMedalTitle">Medals:</p>
            <img id="GraMedal1" runat="server" />
            <img id="GraMedal2" runat="server" />
            <img id="GraMedal3" runat="server" />
        </div>
        <div class="parSenQuiz">
            <p id="txtSenQuiz">Complex or simple?</p>
            <asp:ImageButton ID="SenQuizbtn" CssClass="btnSenQuiz" ImageUrl="complex or simple thumbnail.png" OnClick="btnSenQuiz_Click" runat="server" />
            <p id="txtSenScoreTitle">Best score:</p>
            <p id="txtSenScore" runat="server"></p>
            <p id="txtSenPercentageTitle">Percentage:</p>
            <p id="txtSenPercentage" runat="server"></p>
            <p id="txtSenMedalTitle">Medals:</p>
            <img id="SenMedal1" runat="server" />
            <img id="SenMedal2" runat="server" />
            <img id="SenMedal3" runat="server" />
        </div>
    </form>
</body>
</html>
<style>
    body {
        background-color: #ffc0cb;
    }
    input[id=btnLogout] {
        background: #0066A2;
        color: white;
        border-style: outset;
        border-color: #0066A2;
        height: 50px;
        width: auto;
        font: bold 18px arial, sans-serif;
        text-shadow: none;
        border-radius: 8px;
        position: absolute;
        left: 165px;
        top: 120px;
    }
    img[id=imgLogo] {
        position: absolute;
        top: 15px;
        left: 100px;
        height: 125px;
        width: auto;
    }
    p[id=txtName] {
        font: bold 50px arial, sans-serif;
        text-align: center;
        margin-top: -10px;
        color: white;
        text-decoration: underline;
    }
    h1 {
        position: absolute;
        top: 60px;
        left: 830px;
        font: bold 50px arial, sans-serif;
        color: white;
        text-decoration: underline;
    }
    .btnProfile {
        position: absolute;
        top: 12px;
        left: 1520px;
        height: 150px;
        width: auto;
        border: 6px solid white;
    }
    .parTopborder{
        position: absolute;
        top: 0px;
        left: 0px;
        border-bottom: 6px solid blue;
        border-right: 6px solid blue;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 140px;
        width: 1770px;
        padding-left: 10px;
        padding-top: 30px;
        padding-bottom: 10px;
        padding-right: 10px;
    }
    p[id=parInst] {
        position: absolute;
        left: 50px;
        top: 190px;
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
    .parAddQuiz {
        position: absolute;
        left: 50px;
        top: 290px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 250px;
        width: 810px;
    }
    p[id=txtAddQuiz] {
        position: absolute;
        left: 40px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
        text-decoration: underline;
    }
    .btnAddQuiz {
        position: absolute;
        left: 40px;
        top: 60px;
        height: 150px;
        width: auto;
        border: 6px solid white;
    }
    p[id=txtAddScoreTitle] {
        position: absolute;
        left: 280px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
        text-decoration: underline;
    }
    p[id=txtAddScore] {
        position: absolute;
        left: 315px;
        top: 40px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
    }
    p[id=txtAddPercentageTitle] {
        position: absolute;
        left: 460px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
        text-decoration: underline;
    }
    p[id=txtAddPercentage] {
        position: absolute;
        left: 500px;
        top: 40px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
    }
    p[id=txtAddMedalTitle] {
        position: absolute;
        left: 660px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
        text-decoration: underline;
    }
    img[id=AddMedal1] {
        position: absolute;
        left: 680px;
        top: 180px;
        height: 50px;
        width: auto;
    }
    img[id=AddMedal2] {
        position: absolute;
        left: 680px;
        top: 110px;
        height: 50px;
        width: auto;
    }
    img[id=AddMedal3] {
        position: absolute;
        left: 680px;
        top: 40px;
        height: 50px;
        width: auto;
    }
    .parSubQuiz {
        position: absolute;
        left: 910px;
        top:290px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 250px;
        width: 810px;
    }
    p[id=txtSubQuiz] {
        position: absolute;
        left: 40px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
        text-decoration: underline;
    }
    .btnSubQuiz {
        position: absolute;
        left: 40px;
        top: 60px;
        height: 150px;
        width: auto;
        border: 6px solid white;
    }
    p[id=txtSubScoreTitle] {
        position: absolute;
        left: 280px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
        text-decoration: underline;
    }
    p[id=txtSubScore] {
        position: absolute;
        left: 315px;
        top: 40px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
    }
    p[id=txtSubPercentageTitle] {
        position: absolute;
        left: 460px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
        text-decoration: underline;
    }
    p[id=txtSubPercentage] {
        position: absolute;
        left: 500px;
        top: 40px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
    }
    p[id=txtSubMedalTitle] {
        position: absolute;
        left: 660px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
        text-decoration: underline;
    }
    img[id=SubMedal1] {
        position: absolute;
        left: 680px;
        top: 180px;
        height: 50px;
        width: auto;
    }
    img[id=SubMedal2] {
        position: absolute;
        left: 680px;
        top: 110px;
        height: 50px;
        width: auto;
    }
    img[id=SubMedal3] {
        position: absolute;
        left: 680px;
        top: 40px;
        height: 50px;
        width: auto;
    }
    .parGraQuiz {
        position: absolute;
        left: 50px;
        top: 590px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 250px;
        width: 810px;
    }
    p[id=txtGraQuiz] {
        position: absolute;
        left: 40px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
        text-decoration: underline;
    }
    .btnGraQuiz {
        position: absolute;
        left: 40px;
        top: 60px;
        height: 150px;
        width: auto;
        border: 6px solid white;
    }
    p[id=txtGraScoreTitle] {
        position: absolute;
        left: 280px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
        text-decoration: underline;
    }
    p[id=txtGraScore] {
        position: absolute;
        left: 315px;
        top: 40px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
    }
    p[id=txtGraPercentageTitle] {
        position: absolute;
        left: 460px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
        text-decoration: underline;
    }
    p[id=txtGraPercentage] {
        position: absolute;
        left: 500px;
        top: 40px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
    }
    p[id=txtGraMedalTitle] {
        position: absolute;
        left: 660px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
        text-decoration: underline;
    }
    img[id=GraMedal1] {
        position: absolute;
        left: 680px;
        top: 180px;
        height: 50px;
        width: auto;
    }
    img[id=GraMedal2] {
        position: absolute;
        left: 680px;
        top: 110px;
        height: 50px;
        width: auto;
    }
    img[id=GraMedal3] {
        position: absolute;
        left: 680px;
        top: 40px;
        height: 50px;
        width: auto;
    }
    .parSenQuiz {
        position: absolute;
        left: 910px;
        top: 590px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 250px;
        width: 810px;
    }
    p[id=txtSenQuiz] {
        position: absolute;
        left: 40px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
        text-decoration: underline;
    }
    .btnSenQuiz {
        position: absolute;
        left: 40px;
        top: 60px;
        height: 150px;
        width: auto;
        border: 6px solid white;
    }
    p[id=txtSenScoreTitle] {
        position: absolute;
        left: 280px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
        text-decoration: underline;
    }
    p[id=txtSenScore] {
        position: absolute;
        left: 315px;
        top: 40px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
    }
    p[id=txtSenPercentageTitle] {
        position: absolute;
        left: 460px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
        text-decoration: underline;
    }
    p[id=txtSenPercentage] {
        position: absolute;
        left: 500px;
        top: 40px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
    }
    p[id=txtSenMedalTitle] {
        position: absolute;
        left: 660px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 20px arial, sans-serif;
        text-decoration: underline;
    }
    img[id=SenMedal1] {
        position: absolute;
        left: 680px;
        top: 180px;
        height: 50px;
        width: auto;
    }
    img[id=SenMedal2] {
        position: absolute;
        left: 680px;
        top: 110px;
        height: 50px;
        width: auto;
    }
    img[id=SenMedal3] {
        position: absolute;
        left: 680px;
        top: 40px;
        height: 50px;
        width: auto;
    }
</style>