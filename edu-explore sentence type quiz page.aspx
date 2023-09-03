<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.OleDb" %>
<%@ Import Namespace="System.Windows.Forms" %>
<%@ Import Namespace="System.Linq" %>
<script runat="server">
    void Page_Load()
    {
        if (!Page.IsPostBack)
        {
            bool senquizCheck = System.Convert.ToBoolean(Session["SenQuizreq"]);
            if (senquizCheck == !true)
            {
                bool fh = System.Convert.ToBoolean(Session["FromHome"]);
                if (fh == !true)
                {
                    Response.Redirect("edu-explore intro page.aspx");
                }
                else
                {
                    Session["Login"] = "true";
                    Response.Redirect("edu-explore home page.aspx");
                }
            }
            else
            {

                Session["SenQuizreq"] = "false";
            }
        }
    }
    void btnBack_Click(Object s, EventArgs e)
    {
        Session["Login"] = "true";
        Response.Redirect("edu-explore home page.aspx");
    }
    void btnQ1C_Click(Object s, EventArgs e)
    {
        Session["Q1ans"] = 0;
        btnQ1S.BorderWidth = 0;
        btnQ1C.BorderColor = System.Drawing.Color.White;
        btnQ1C.BorderWidth = 5;
    }
    void btnQ1S_Click(Object s, EventArgs e)
    {
        Session["Q1ans"] = 1;
        btnQ1C.BorderWidth = 0;
        btnQ1S.BorderColor = System.Drawing.Color.White;
        btnQ1S.BorderWidth = 5;
    }
    void btnQ2C_Click(Object s, EventArgs e)
    {
        Session["Q2ans"] = 0;
        btnQ2S.BorderWidth = 0;
        btnQ2C.BorderColor = System.Drawing.Color.White;
        btnQ2C.BorderWidth = 5;
    }
    void btnQ2S_Click(Object s, EventArgs e)
    {
        Session["Q2ans"] = 1;
        btnQ2C.BorderWidth = 0;
        btnQ2S.BorderColor = System.Drawing.Color.White;
        btnQ2S.BorderWidth = 5;
    }
    void btnQ3C_Click(Object s, EventArgs e)
    {
        Session["Q3ans"] = 1;
        btnQ3S.BorderWidth = 0;
        btnQ3C.BorderColor = System.Drawing.Color.White;
        btnQ3C.BorderWidth = 5;
    }
    void btnQ3S_Click(Object s, EventArgs e)
    {
        Session["Q3ans"] = 0;
        btnQ3C.BorderWidth = 0;
        btnQ3S.BorderColor = System.Drawing.Color.White;
        btnQ3S.BorderWidth = 5;
    }
    void btnQ4C_Click(Object s, EventArgs e)
    {
        Session["Q4ans"] = 0;
        btnQ4S.BorderWidth = 0;
        btnQ4C.BorderColor = System.Drawing.Color.White;
        btnQ4C.BorderWidth = 5;
    }
    void btnQ4S_Click(Object s, EventArgs e)
    {
        Session["Q4ans"] = 1;
        btnQ4C.BorderWidth = 0;
        btnQ4S.BorderColor = System.Drawing.Color.White;
        btnQ4S.BorderWidth = 5;
    }
    void btnQ5C_Click(Object s, EventArgs e)
    {
        Session["Q5ans"] = 1;
        btnQ5S.BorderWidth = 0;
        btnQ5C.BorderColor = System.Drawing.Color.White;
        btnQ5C.BorderWidth = 5;
    }
    void btnQ5S_Click(Object s, EventArgs e)
    {
        Session["Q5ans"] = 0;
        btnQ5C.BorderWidth = 0;
        btnQ5S.BorderColor = System.Drawing.Color.White;
        btnQ5S.BorderWidth = 5;
    }
    void btnQ6C_Click(Object s, EventArgs e)
    {
        Session["Q6ans"] = 1;
        btnQ6S.BorderWidth = 0;
        btnQ6C.BorderColor = System.Drawing.Color.White;
        btnQ6C.BorderWidth = 5;
    }
    void btnQ6S_Click(Object s, EventArgs e)
    {
        Session["Q6ans"] = 0;
        btnQ6C.BorderWidth = 0;
        btnQ6S.BorderColor = System.Drawing.Color.White;
        btnQ6S.BorderWidth = 5;
    }
    void btnQ7C_Click(Object s, EventArgs e)
    {
        Session["Q7ans"] = 0;
        btnQ7S.BorderWidth = 0;
        btnQ7C.BorderColor = System.Drawing.Color.White;
        btnQ7C.BorderWidth = 5;
    }
    void btnQ7S_Click(Object s, EventArgs e)
    {
        Session["Q7ans"] = 1;
        btnQ7C.BorderWidth = 0;
        btnQ7S.BorderColor = System.Drawing.Color.White;
        btnQ7S.BorderWidth = 5;
    }
    void btnQ8C_Click(Object s, EventArgs e)
    {
        Session["Q8ans"] = 1;
        btnQ8S.BorderWidth = 0;
        btnQ8C.BorderColor = System.Drawing.Color.White;
        btnQ8C.BorderWidth = 5;
    }
    void btnQ8S_Click(Object s, EventArgs e)
    {
        Session["Q8ans"] = 0;
        btnQ8C.BorderWidth = 0;
        btnQ8S.BorderColor = System.Drawing.Color.White;
        btnQ8S.BorderWidth = 5;
    }
    void btnQ9C_Click(Object s, EventArgs e)
    {
        Session["Q9ans"] = 1;
        btnQ9S.BorderWidth = 0;
        btnQ9C.BorderColor = System.Drawing.Color.White;
        btnQ9C.BorderWidth = 5;
    }
    void btnQ9S_Click(Object s, EventArgs e)
    {
        Session["Q9ans"] = 0;
        btnQ9C.BorderWidth = 0;
        btnQ9S.BorderColor = System.Drawing.Color.White;
        btnQ9S.BorderWidth = 5;
    }
    void btnQ10C_Click(Object s, EventArgs e)
    {
        Session["Q10ans"] = 0;
        btnQ10S.BorderWidth = 0;
        btnQ10C.BorderColor = System.Drawing.Color.White;
        btnQ10C.BorderWidth = 5;
    }
    void btnQ10S_Click(Object s, EventArgs e)
    {
        Session["Q10ans"] = 1;
        btnQ10C.BorderWidth = 0;
        btnQ10S.BorderColor = System.Drawing.Color.White;
        btnQ10S.BorderWidth = 5;
    }
    void btnFinish_Click(Object s, EventArgs e)
    {
        btnFinish.Enabled = false;
        int score = 0;
        int Q1ansc = System.Convert.ToInt32(Session["Q1ans"]);
        if (Q1ansc == 0)
        {
            btnQ1C.BorderColor = System.Drawing.Color.Red;
        }
        if (Q1ansc == 1)
        {
            btnQ1S.BorderColor = System.Drawing.Color.Green;
            score = score + 1;
        }
        int Q2ansc = System.Convert.ToInt32(Session["Q2ans"]);
        if (Q2ansc == 0)
        {
            btnQ2C.BorderColor = System.Drawing.Color.Red;
        }
        if (Q2ansc == 1)
        {
            btnQ2S.BorderColor = System.Drawing.Color.Green;
            score = score + 1;
        }
        int Q3ansc = System.Convert.ToInt32(Session["Q3ans"]);
        if (Q3ansc == 0)
        {
            btnQ3S.BorderColor = System.Drawing.Color.Red;
        }
        if (Q3ansc == 1)
        {
            btnQ3C.BorderColor = System.Drawing.Color.Green;
            score = score + 1;
        }
        int Q4ansc = System.Convert.ToInt32(Session["Q4ans"]);
        if (Q4ansc == 0)
        {
            btnQ4C.BorderColor = System.Drawing.Color.Red;
        }
        if (Q4ansc == 1)
        {
            btnQ4S.BorderColor = System.Drawing.Color.Green;
            score = score + 1;
        }
        int Q5ansc = System.Convert.ToInt32(Session["Q5ans"]);
        if (Q5ansc == 0)
        {
            btnQ5S.BorderColor = System.Drawing.Color.Red;
        }
        if (Q5ansc == 1)
        {
            btnQ5C.BorderColor = System.Drawing.Color.Green;
            score = score + 1;
        }
        int Q6ansc = System.Convert.ToInt32(Session["Q6ans"]);
        if (Q6ansc == 0)
        {
            btnQ6S.BorderColor = System.Drawing.Color.Red;
        }
        if (Q6ansc == 1)
        {
            btnQ6C.BorderColor = System.Drawing.Color.Green;
            score = score + 1;
        }
        int Q7ansc = System.Convert.ToInt32(Session["Q7ans"]);
        if (Q7ansc == 0)
        {
            btnQ7C.BorderColor = System.Drawing.Color.Red;
        }
        if (Q7ansc == 1)
        {
            btnQ7S.BorderColor = System.Drawing.Color.Green;
            score = score + 1;
        }
        int Q8ansc = System.Convert.ToInt32(Session["Q8ans"]);
        if (Q8ansc == 0)
        {
            btnQ8S.BorderColor = System.Drawing.Color.Red;
        }
        if (Q8ansc == 1)
        {
            btnQ8C.BorderColor = System.Drawing.Color.Green;
            score = score + 1;
        }
        int Q9ansc = System.Convert.ToInt32(Session["Q9ans"]);
        if (Q9ansc == 0)
        {
            btnQ9S.BorderColor = System.Drawing.Color.Red;
        }
        if (Q9ansc == 1)
        {
            btnQ9C.BorderColor = System.Drawing.Color.Green;
            score = score + 1;
        }
        int Q10ansc = System.Convert.ToInt32(Session["Q10ans"]);
        if (Q10ansc == 0)
        {
            btnQ10C.BorderColor = System.Drawing.Color.Red;
        }
        if (Q9ansc == 1)
        {
            btnQ10S.BorderColor = System.Drawing.Color.Green;
            score = score + 1;
        }
        int hs;
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
        if (r.Read()){
            hs = System.Convert.ToInt32(r["SenQuizScore"]);
            Session["highscore4"] = hs;
        }
        cn.Close();
        int hsc = System.Convert.ToInt32(Session["highscore4"]);
        if (score > hsc)
        {
            string cs2 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                       "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
            OleDbConnection cn2 = new OleDbConnection(cs);
            OleDbCommand cmd2;
            OleDbDataReader r2;
            cn2.Open();
            string sql2 = "UPDATE Accounts SET [SenQuizScore] = '" + score + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
            cmd2 = new OleDbCommand(sql2, cn2);
            r2 = cmd2.ExecuteReader();
            cn2.Close();
            if (score >= 3 && score < 5)
            {
                int bronze = 1;
                string cs3 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                       "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn3 = new OleDbConnection(cs);
                OleDbCommand cmd3;
                OleDbDataReader r3;
                cn3.Open();
                string sql3 = "UPDATE Accounts SET [SenMedals] = '" + bronze + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd3 = new OleDbCommand(sql3, cn3);
                r3 = cmd3.ExecuteReader();
                cn3.Close();
                MessageBox.Show("Well done YOU SCORED " + score + "! This is now your NEW BEST SCORE! You've been awarded the BRONZE medal! Please press the BACK BUTTON to go back to your HOME!");
            }
            if (score >= 5 && score < 7)
            {
                int one = 1;
                int silver = 2;
                string cs4 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                       "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn4 = new OleDbConnection(cs);
                OleDbCommand cmd4;
                OleDbDataReader r4;
                cn4.Open();
                string sql4 = "UPDATE Accounts SET [SenMedals] = '" + silver + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd4 = new OleDbCommand(sql4, cn4);
                r4 = cmd4.ExecuteReader();
                cn4.Close();
                MessageBox.Show("Well done YOU SCORED " + score + "! This is now your NEW BEST SCORE! You've been awarded the SILVER medal! Please press the BACK BUTTON to go back to your HOME!");
                string cs6 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                       "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn6 = new OleDbConnection(cs6);
                OleDbCommand cmd6;
                OleDbDataReader r6;
                cn6.Open();
                string sql6 = "UPDATE Accounts SET [Yellow] = '" + one + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd6 = new OleDbCommand(sql6, cn6);
                r6 = cmd6.ExecuteReader();
                cn6.Close();
                MessageBox.Show("Well done you have UNLOCKED the following PROFILE PICTURE [#1 YELLOW].");
            }
            if (score >= 7)
            {
                int one = 1;
                int gold = 3;
                string cs5 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                       "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn5 = new OleDbConnection(cs);
                OleDbCommand cmd5;
                OleDbDataReader r5;
                cn5.Open();
                string sql5 = "UPDATE Accounts SET [SenMedals] = '" + gold + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd5 = new OleDbCommand(sql5, cn5);
                r5 = cmd5.ExecuteReader();
                cn5.Close();
                MessageBox.Show("Well done YOU SCORED " + score + "! This is now your NEW BEST SCORE! You've been awarded the GOLD medal! Please press the BACK BUTTON to go back to your HOME!");
                string cs7 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                       "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn7 = new OleDbConnection(cs7);
                OleDbCommand cmd7;
                OleDbDataReader r7;
                cn7.Open();
                string sql7 = "UPDATE Accounts SET [Heart] = '" + one + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd7 = new OleDbCommand(sql7, cn7);
                r7 = cmd7.ExecuteReader();
                cn7.Close();
                MessageBox.Show("Well done you have UNLOCKED the following PROFILE PICTURE [#1 RED].");
            }
        }
        else
        {
            MessageBox.Show("Well done you scored " + score + "! Please press the back button to go back to your home!");
        }
    }
</script>
<html>
<head>
    <title>Edu-explore | Complex or simple?</title>
    <link rel="shortcut icon" type="image/png" href="Edu-Explore tab icon.png" />
</head>
<body>
    <form runat="server">
        <asp:Button ID="Back" CssClass="btnBack" Text="Back" OnClick="btnBack_Click" runat="server"/>
        <img id="imglogo" src="edu-explore logo.png" />
        <h1>Complex or simple</h1>
        <div class="parQ1">
            <p id="txtQ1" runat="server">1) Is the sentence below complex or simple?</p>
            <img id="imgQ1" src="sentence Q1.PNG"  />
            <asp:Button ID="btnQ1C" CssClass="Cbtn" Text="Complex" OnClick="btnQ1C_Click" runat="server" />
            <asp:Button ID="btnQ1S" CssClass="Sbtn" Text="Simple" OnClick="btnQ1S_Click" runat="server" />
        </div>
        <div class="parQ2">
            <p id="txtQ2" runat="server">2) Is the sentence below complex or simple?</p>
            <img id="imgQ2" src="sentence Q2.PNG" />
            <asp:Button ID="btnQ2C" CssClass="Cbtn" Text="Complex" OnClick="btnQ2C_Click" runat="server" />
            <asp:Button ID="btnQ2S" CssClass="Sbtn" Text="Simple" OnClick="btnQ2S_Click" runat="server" />
        </div>
        <div class="parQ3">
            <p id="txtQ3" runat="server">3) Is the sentence below complex or simple?</p>
            <img id="imgQ3" src="sentence Q3.PNG" />
            <asp:Button ID="btnQ3C" CssClass="Cbtn" Text="Complex" OnClick="btnQ3C_Click" runat="server" />
            <asp:Button ID="btnQ3S" CssClass="Sbtn" Text="Simple" OnClick="btnQ3S_Click" runat="server" />
        </div>
        <div class="parQ4">
            <p id="txtQ4" runat="server">4) Is the sentence below complex or simple?</p>
            <img id="imgQ4" src="sentence Q4.PNG" />
            <asp:Button ID="btnQ4C" CssClass="Cbtn" Text="Complex" OnClick="btnQ4C_Click" runat="server" />
            <asp:Button ID="btnQ4S" CssClass="Sbtn" Text="Simple" OnClick="btnQ4S_Click" runat="server" />
        </div>
        <div class="parQ5">
            <p id="txtQ5" runat="server">5) Is the sentence below complex or simple?</p>
            <img id="imgQ5" src="sentence Q5.PNG" />
            <asp:Button ID="btnQ5C" CssClass="Cbtn" Text="Complex" OnClick="btnQ5C_Click" runat="server" />
            <asp:Button ID="btnQ5S" CssClass="Sbtn" Text="Simple" OnClick="btnQ5S_Click" runat="server" />
        </div>
        <div class="parQ6">
            <p id="txtQ6" runat="server">6) Is the sentence below complex or simple?</p>
            <img id="imgQ6" src="sentence Q6.PNG" />
            <asp:Button ID="btnQ6C" CssClass="Cbtn" Text="Complex" OnClick="btnQ6C_Click" runat="server" />
            <asp:Button ID="btnQ6S" CssClass="Sbtn" Text="Simple" OnClick="btnQ6S_Click" runat="server" />
        </div>
        <div class="parQ7">
            <p id="txtQ7" runat="server">7) Is the sentence below complex or simple?</p>
            <img id="imgQ7" src="sentence Q7.PNG" />
            <asp:Button ID="btnQ7C" CssClass="Cbtn" Text="Complex" OnClick="btnQ7C_Click" runat="server" />
            <asp:Button ID="btnQ7S" CssClass="Sbtn" Text="Simple" OnClick="btnQ7S_Click" runat="server" />
        </div>
        <div class="parQ8">
            <p id="txtQ8" runat="server">8) Is the sentence below complex or simple?</p>
            <img id="imgQ8" src="sentence Q8.PNG" />
            <asp:Button ID="btnQ8C" CssClass="Cbtn" Text="Complex" OnClick="btnQ8C_Click" runat="server" />
            <asp:Button ID="btnQ8S" CssClass="Sbtn" Text="Simple" OnClick="btnQ8S_Click" runat="server" />
        </div>
        <div class="parQ9">
            <p id="txtQ9" runat="server">9) Is the sentence below complex or simple?</p>
            <img id="imgQ9" src="sentence Q9.PNG" />
            <asp:Button ID="btnQ9C" CssClass="Cbtn" Text="Complex" OnClick="btnQ9C_Click" runat="server" />
            <asp:Button ID="btnQ9S" CssClass="Sbtn" Text="Simple" OnClick="btnQ9S_Click" runat="server" />
        </div>
        <div class="parQ10">
            <p id="txtQ10" runat="server">10) Is the sentence below complex or simple?</p>
            <img id="imgQ10" src="sentence Q10.PNG" />
            <asp:Button ID="btnQ10C" CssClass="Cbtn" Text="Complex" OnClick="btnQ10C_Click" runat="server" />
            <asp:Button ID="btnQ10S" CssClass="Sbtn" Text="Simple" OnClick="btnQ10S_Click" runat="server" />
        </div>
        <div class="parSub">
            <asp:Button ID="btnFinish" CssClass="Finishbtn" Text="Finish & Check" OnClick="btnFinish_Click" runat="server" />
        </div>
    </form>
</body>
</html>
<style>
    body {
        background-color: #ffc0cb;
    }
    .btnBack {
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
    h1 {
        position: absolute;
        top: 140px;
        left: 745px;
        font: bold 50px arial, sans-serif;
        color: white;
        text-decoration: underline;
    }
    img[id=imglogo] {
        position: absolute;
        top: 20px;
        left: 740px;
        height: 170px;
        width: auto;
    }
    .parQ1 {
        position: absolute;
        left: 50px;
        top: 280px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 250px;
        width: 810px;
    }
    p[id=txtQ1] {
        position: absolute;
        left: 40px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 30px arial, sans-serif;
        text-decoration: underline;
    }
    img[id=imgQ1] {
        position: absolute;
        left: 40px;
        top: 70px;
    }
    .parQ2 {
        position: absolute;
        left: 910px;
        top: 280px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 250px;
        width: 810px;
    }
    p[id=txtQ2] {
        position: absolute;
        left: 40px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 30px arial, sans-serif;
        text-decoration: underline;
    }
    img[id=imgQ2] {
        position: absolute;
        left: 40px;
        top: 70px;
    }
    .parQ3 {
        position: absolute;
        left: 50px;
        top: 580px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 250px;
        width: 810px;
    }
    p[id=txtQ3] {
        position: absolute;
        left: 40px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 30px arial, sans-serif;
        text-decoration: underline;
    }
    img[id=imgQ3] {
        position: absolute;
        left: 40px;
        top: 70px;
    }
    .parQ4{
        position: absolute;
        left: 910px;
        top: 580px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 250px;
        width: 810px;
    }
    p[id=txtQ4] {
        position: absolute;
        left: 40px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 30px arial, sans-serif;
        text-decoration: underline;
    }
    img[id=imgQ4] {
        position: absolute;
        left: 40px;
        top: 70px;
    }
    .parQ5 {
        position: absolute;
        left: 50px;
        top: 880px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 250px;
        width: 810px;
    }
    p[id=txtQ5] {
        position: absolute;
        left: 40px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 30px arial, sans-serif;
        text-decoration: underline;
    }
    img[id=imgQ5] {
        position: absolute;
        left: 40px;
        top: 70px;
    }
    .parQ6{
        position: absolute;
        left: 910px;
        top: 880px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 250px;
        width: 810px;
    }
    p[id=txtQ6] {
        position: absolute;
        left: 40px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 30px arial, sans-serif;
        text-decoration: underline;
    }
    img[id=imgQ6] {
        position: absolute;
        left: 40px;
        top: 70px;
    }
    .parQ7 {
        position: absolute;
        left: 50px;
        top: 1180px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 250px;
        width: 810px;
    }
    p[id=txtQ7] {
        position: absolute;
        left: 40px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 30px arial, sans-serif;
        text-decoration: underline;
    }
    img[id=imgQ7] {
        position: absolute;
        left: 40px;
        top: 70px;
    }
    .parQ8 {
        position: absolute;
        left: 910px;
        top: 1180px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 250px;
        width: 810px;
    }
    p[id=txtQ8] {
        position: absolute;
        left: 40px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 30px arial, sans-serif;
        text-decoration: underline;
    }
    img[id=imgQ8] {
        position: absolute;
        left: 40px;
        top: 70px;
    }
    .parQ9 {
        position: absolute;
        left: 50px;
        top: 1480px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 250px;
        width: 810px;
    }
    p[id=txtQ9] {
        position: absolute;
        left: 40px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 30px arial, sans-serif;
        text-decoration: underline;
    }
    img[id=imgQ9] {
        position: absolute;
        left: 40px;
        top: 70px;
    }
    .parQ10 {
        position: absolute;
        left: 910px;
        top: 1480px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 250px;
        width: 810px;
    }
    p[id=txtQ10] {
        position: absolute;
        left: 40px;
        top: 10px;
        margin-top: -2px;
        color: white;
        font: bold 30px arial, sans-serif;
        text-decoration: underline;
    }
    img[id=imgQ10] {
        position: absolute;
        left: 40px;
        top: 70px;
    }
    .Cbtn{
        background: #0066A2;
        color: white;
        border-style: outset;
        border-color: #0066A2;
        height: 60px;
        width: auto;
        font: bold 30px arial, sans-serif;
        text-shadow:none;
        border-radius: 8px;     
        position: absolute;
        left: 40px;
        top: 160px;
    }
    .Sbtn{
        background: #0066A2;
        color: white;
        border-style: outset;
        border-color: #0066A2;
        height: 60px;
        width: auto;
        font: bold 30px arial, sans-serif;
        text-shadow:none;
        border-radius: 8px;     
        position: absolute;
        left: 220px;
        top: 160px;
    }
    .parSub {
        position: absolute;
        top: 1780px;
        left: 765px;
        height: 100px;
        width: 300px;
    }
    .Finishbtn {
        background: #0066A2;
        color: white;
        border-style: outset;
        border-color: #0066A2;
        height: 60px;
        width: auto;
        font: bold 30px arial, sans-serif;
        text-shadow:none;
        border-radius: 8px;     
        position: absolute;
        left: 0px;
        top: 0px;
    }
</style>