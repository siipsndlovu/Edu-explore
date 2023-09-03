<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.OleDb" %>
<%@ Import Namespace="System.Windows.Forms" %>
<%@ Import Namespace="System.Linq" %>
<script runat="server">
    void Page_Load()
    {
        if (!Page.IsPostBack)
        {
            bool graquizCheck = System.Convert.ToBoolean(Session["GraQuizreq"]);
            if (graquizCheck == !true)
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

                Session["GraQuizreq"] = "false";
            }
        }
    }
    void btnBack_Click(Object s, EventArgs e)
    {
        Session["Login"] = "true";
        Response.Redirect("edu-explore home page.aspx");
    }
    void btnQ1A_Click(Object s, EventArgs e)
    {
        Session["Q1ans"] = 0;
        btnQ1B.BorderWidth = 0;
        btnQ1C.BorderWidth = 0;
        btnQ1A.BorderColor = System.Drawing.Color.White;
        btnQ1A.BorderWidth = 5;
    }
    void btnQ1B_Click(Object s, EventArgs e)
    {
        Session["Q1ans"] = 1;
        btnQ1A.BorderWidth = 0;
        btnQ1C.BorderWidth = 0;
        btnQ1B.BorderColor = System.Drawing.Color.White;
        btnQ1B.BorderWidth = 5;
    }
    void btnQ1C_Click(Object s, EventArgs e)
    {
        Session["Q1ans"] = 2;
        btnQ1A.BorderWidth = 0;
        btnQ1B.BorderWidth = 0;
        btnQ1C.BorderColor = System.Drawing.Color.White;
        btnQ1C.BorderWidth = 5;
    }
    void btnQ2A_Click(Object s, EventArgs e)
    {
        Session["Q2ans"] = 0;
        btnQ2B.BorderWidth = 0;
        btnQ2C.BorderWidth = 0;
        btnQ2A.BorderColor = System.Drawing.Color.White;
        btnQ2A.BorderWidth = 5;
    }
    void btnQ2B_Click(Object s, EventArgs e)
    {
        Session["Q2ans"] = 2;
        btnQ2A.BorderWidth = 0;
        btnQ2C.BorderWidth = 0;
        btnQ2B.BorderColor = System.Drawing.Color.White;
        btnQ2B.BorderWidth = 5;
    }
    void btnQ2C_Click(Object s, EventArgs e)
    {
        Session["Q2ans"] = 1;
        btnQ2A.BorderWidth = 0;
        btnQ2B.BorderWidth = 0;
        btnQ2C.BorderColor = System.Drawing.Color.White;
        btnQ2C.BorderWidth = 5;
    }
    void btnQ3A_Click(Object s, EventArgs e)
    {
        Session["Q3ans"] = 1;
        btnQ3B.BorderWidth = 0;
        btnQ3C.BorderWidth = 0;
        btnQ3A.BorderColor = System.Drawing.Color.White;
        btnQ3A.BorderWidth = 5;
    }
    void btnQ3B_Click(Object s, EventArgs e)
    {
        Session["Q3ans"] = 2;
        btnQ3A.BorderWidth = 0;
        btnQ3C.BorderWidth = 0;
        btnQ3B.BorderColor = System.Drawing.Color.White;
        btnQ3B.BorderWidth = 5;
    }
    void btnQ3C_Click(Object s, EventArgs e)
    {
        Session["Q3ans"] = 0;
        btnQ3A.BorderWidth = 0;
        btnQ3B.BorderWidth = 0;
        btnQ3C.BorderColor = System.Drawing.Color.White;
        btnQ3C.BorderWidth = 5;
    }
    void btnQ4A_Click(Object s, EventArgs e)
    {
        Session["Q4ans"] = 2;
        btnQ4B.BorderWidth = 0;
        btnQ4C.BorderWidth = 0;
        btnQ4A.BorderColor = System.Drawing.Color.White;
        btnQ4A.BorderWidth = 5;
    }
    void btnQ4B_Click(Object s, EventArgs e)
    {
        Session["Q4ans"] = 1;
        btnQ4A.BorderWidth = 0;
        btnQ4C.BorderWidth = 0;
        btnQ4B.BorderColor = System.Drawing.Color.White;
        btnQ4B.BorderWidth = 5;
    }
    void btnQ4C_Click(Object s, EventArgs e)
    {
        Session["Q4ans"] = 0;
        btnQ4A.BorderWidth = 0;
        btnQ4B.BorderWidth = 0;
        btnQ4C.BorderColor = System.Drawing.Color.White;
        btnQ4C.BorderWidth = 5;
    }
    void btnQ5A_Click(Object s, EventArgs e)
    {
        Session["Q5ans"] = 1;
        btnQ5B.BorderWidth = 0;
        btnQ5C.BorderWidth = 0;
        btnQ5A.BorderColor = System.Drawing.Color.White;
        btnQ5A.BorderWidth = 5;
    }
    void btnQ5B_Click(Object s, EventArgs e)
    {
        Session["Q5ans"] = 2;
        btnQ5A.BorderWidth = 0;
        btnQ5C.BorderWidth = 0;
        btnQ5B.BorderColor = System.Drawing.Color.White;
        btnQ5B.BorderWidth = 5;
    }
    void btnQ5C_Click(Object s, EventArgs e)
    {
        Session["Q5ans"] = 0;
        btnQ5A.BorderWidth = 0;
        btnQ5B.BorderWidth = 0;
        btnQ5C.BorderColor = System.Drawing.Color.White;
        btnQ5C.BorderWidth = 5;
    }
    void btnQ6A_Click(Object s, EventArgs e)
    {
        Session["Q6ans"] = 2;
        btnQ6B.BorderWidth = 0;
        btnQ6C.BorderWidth = 0;
        btnQ6A.BorderColor = System.Drawing.Color.White;
        btnQ6A.BorderWidth = 5;
    }
    void btnQ6B_Click(Object s, EventArgs e)
    {
        Session["Q6ans"] = 0;
        btnQ6A.BorderWidth = 0;
        btnQ6C.BorderWidth = 0;
        btnQ6B.BorderColor = System.Drawing.Color.White;
        btnQ6B.BorderWidth = 5;
    }
    void btnQ6C_Click(Object s, EventArgs e)
    {
        Session["Q6ans"] = 1;
        btnQ6A.BorderWidth = 0;
        btnQ6B.BorderWidth = 0;
        btnQ6C.BorderColor = System.Drawing.Color.White;
        btnQ6C.BorderWidth = 5;
    }
    void btnQ7A_Click(Object s, EventArgs e)
    {
        Session["Q7ans"] = 2;
        btnQ7B.BorderWidth = 0;
        btnQ7C.BorderWidth = 0;
        btnQ7A.BorderColor = System.Drawing.Color.White;
        btnQ7A.BorderWidth = 5;
    }
    void btnQ7B_Click(Object s, EventArgs e)
    {
        Session["Q7ans"] = 1;
        btnQ7A.BorderWidth = 0;
        btnQ7C.BorderWidth = 0;
        btnQ7B.BorderColor = System.Drawing.Color.White;
        btnQ7B.BorderWidth = 5;
    }
    void btnQ7C_Click(Object s, EventArgs e)
    {
        Session["Q7ans"] = 0;
        btnQ7A.BorderWidth = 0;
        btnQ7B.BorderWidth = 0;
        btnQ7C.BorderColor = System.Drawing.Color.White;
        btnQ7C.BorderWidth = 5;
    }
    void btnQ8A_Click(Object s, EventArgs e)
    {
        Session["Q8ans"] = 2;
        btnQ8B.BorderWidth = 0;
        btnQ8C.BorderWidth = 0;
        btnQ8A.BorderColor = System.Drawing.Color.White;
        btnQ8A.BorderWidth = 5;
    }
    void btnQ8B_Click(Object s, EventArgs e)
    {
        Session["Q8ans"] = 0;
        btnQ8A.BorderWidth = 0;
        btnQ8C.BorderWidth = 0;
        btnQ8B.BorderColor = System.Drawing.Color.White;
        btnQ8B.BorderWidth = 5;
    }
    void btnQ8C_Click(Object s, EventArgs e)
    {
        Session["Q8ans"] = 1;
        btnQ8A.BorderWidth = 0;
        btnQ8B.BorderWidth = 0;
        btnQ8C.BorderColor = System.Drawing.Color.White;
        btnQ8C.BorderWidth = 5;
    }
    void btnQ9A_Click(Object s, EventArgs e)
    {
        Session["Q9ans"] = 1;
        btnQ9B.BorderWidth = 0;
        btnQ9C.BorderWidth = 0;
        btnQ9A.BorderColor = System.Drawing.Color.White;
        btnQ9A.BorderWidth = 5;
    }
    void btnQ9B_Click(Object s, EventArgs e)
    {
        Session["Q9ans"] = 2;
        btnQ9A.BorderWidth = 0;
        btnQ9C.BorderWidth = 0;
        btnQ9B.BorderColor = System.Drawing.Color.White;
        btnQ9B.BorderWidth = 5;
    }
    void btnQ9C_Click(Object s, EventArgs e)
    {
        Session["Q9ans"] = 0;
        btnQ9A.BorderWidth = 0;
        btnQ9B.BorderWidth = 0;
        btnQ9C.BorderColor = System.Drawing.Color.White;
        btnQ9C.BorderWidth = 5;
    }
    void btnQ10A_Click(Object s, EventArgs e)
    {
        Session["Q10ans"] = 2;
        btnQ10B.BorderWidth = 0;
        btnQ10C.BorderWidth = 0;
        btnQ10A.BorderColor = System.Drawing.Color.White;
        btnQ10A.BorderWidth = 5;
    }
    void btnQ10B_Click(Object s, EventArgs e)
    {
        Session["Q10ans"] = 0;
        btnQ10A.BorderWidth = 0;
        btnQ10C.BorderWidth = 0;
        btnQ10B.BorderColor = System.Drawing.Color.White;
        btnQ10B.BorderWidth = 5;
    }
    void btnQ10C_Click(Object s, EventArgs e)
    {
        Session["Q10ans"] = 1;
        btnQ10A.BorderWidth = 0;
        btnQ10B.BorderWidth = 0;
        btnQ10C.BorderColor = System.Drawing.Color.White;
        btnQ10C.BorderWidth = 5;
    }
    void btnFinish_Click(Object s, EventArgs e)
    {
        btnFinish.Enabled = false;
        int score = 0;
        int Q1ansc = System.Convert.ToInt32(Session["Q1ans"]);
        if (Q1ansc == 0)
        {
            btnQ1A.BorderColor = System.Drawing.Color.Red;
        }
        if (Q1ansc == 1)
        {
            btnQ1B.BorderColor = System.Drawing.Color.Green;
            score = score + 1;
        }
        if (Q1ansc == 2)
        {
            btnQ1C.BorderColor = System.Drawing.Color.Red;
        }
        int Q2ansc = System.Convert.ToInt32(Session["Q2ans"]);
        if (Q2ansc == 0)
        {
            btnQ2A.BorderColor = System.Drawing.Color.Red;
        }
        if (Q2ansc == 1)
        {
            btnQ2C.BorderColor = System.Drawing.Color.Green;
            score = score + 1;
        }
        if (Q2ansc == 2)
        {
            btnQ2B.BorderColor = System.Drawing.Color.Red;
        }
        int Q3ansc = System.Convert.ToInt32(Session["Q3ans"]);
        if (Q3ansc == 0)
        {
            btnQ3C.BorderColor = System.Drawing.Color.Red;
        }
        if (Q3ansc == 1)
        {
            btnQ3A.BorderColor = System.Drawing.Color.Green;
            score = score + 1;
        }
        if (Q3ansc == 2)
        {
            btnQ3B.BorderColor = System.Drawing.Color.Red;
        }
        int Q4ansc = System.Convert.ToInt32(Session["Q4ans"]);
        if (Q4ansc == 0)
        {
            btnQ4C.BorderColor = System.Drawing.Color.Red;
        }
        if (Q4ansc == 1)
        {
            btnQ4B.BorderColor = System.Drawing.Color.Green;
            score = score + 1;
        }
        if (Q4ansc == 2)
        {
            btnQ4A.BorderColor = System.Drawing.Color.Red;
        }
        int Q5ansc = System.Convert.ToInt32(Session["Q5ans"]);
        if (Q5ansc == 0)
        {
            btnQ5C.BorderColor = System.Drawing.Color.Red;
        }
        if (Q5ansc == 1)
        {
            btnQ5A.BorderColor = System.Drawing.Color.Green;
            score = score + 1;
        }
        if (Q5ansc == 2)
        {
            btnQ5B.BorderColor = System.Drawing.Color.Red;
        }
        int Q6ansc = System.Convert.ToInt32(Session["Q6ans"]);
        if (Q6ansc == 0)
        {
            btnQ6B.BorderColor = System.Drawing.Color.Red;
        }
        if (Q6ansc == 1)
        {
            btnQ6C.BorderColor = System.Drawing.Color.Green;
            score = score + 1;
        }
        if (Q6ansc == 2)
        {
            btnQ6A.BorderColor = System.Drawing.Color.Red;
        }
        int Q7ansc = System.Convert.ToInt32(Session["Q7ans"]);
        if (Q7ansc == 0)
        {
            btnQ7C.BorderColor = System.Drawing.Color.Red;
        }
        if (Q7ansc == 1)
        {
            btnQ7B.BorderColor = System.Drawing.Color.Green;
            score = score + 1;
        }
        if (Q7ansc == 2)
        {
            btnQ7A.BorderColor = System.Drawing.Color.Red;
        }
        int Q8ansc = System.Convert.ToInt32(Session["Q8ans"]);
        if (Q8ansc == 0)
        {
            btnQ8B.BorderColor = System.Drawing.Color.Red;
        }
        if (Q8ansc == 1)
        {
            btnQ8C.BorderColor = System.Drawing.Color.Green;
            score = score + 1;
        }
        if (Q8ansc == 2)
        {
            btnQ8A.BorderColor = System.Drawing.Color.Red;
        }
        int Q9ansc = System.Convert.ToInt32(Session["Q9ans"]);
        if (Q9ansc == 0)
        {
            btnQ9C.BorderColor = System.Drawing.Color.Red;
        }
        if (Q9ansc == 1)
        {
            btnQ9A.BorderColor = System.Drawing.Color.Green;
            score = score + 1;
        }
        if (Q9ansc == 2)
        {
            btnQ9B.BorderColor = System.Drawing.Color.Red;
        }
        int Q10ansc = System.Convert.ToInt32(Session["Q10ans"]);
        if (Q10ansc == 0)
        {
            btnQ10B.BorderColor = System.Drawing.Color.Red;
        }
        if (Q10ansc == 1)
        {
            btnQ10C.BorderColor = System.Drawing.Color.Green;
            score = score + 1;
        }
        if (Q10ansc == 2)
        {
            btnQ10A.BorderColor = System.Drawing.Color.Red;
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
            hs = System.Convert.ToInt32(r["GraQuizScore"]);
            Session["highscore3"] = hs;
        }
        cn.Close();
        int hsc = System.Convert.ToInt32(Session["highscore3"]);
        if (score > hsc)
        {
            string cs2 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                       "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
            OleDbConnection cn2 = new OleDbConnection(cs);
            OleDbCommand cmd2;
            OleDbDataReader r2;
            cn2.Open();
            string sql2 = "UPDATE Accounts SET [GraQuizScore] = '" + score + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
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
                string sql3 = "UPDATE Accounts SET [GraMedals] = '" + bronze + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
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
                string sql4 = "UPDATE Accounts SET [GraMedals] = '" + silver + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
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
                string sql6 = "UPDATE Accounts SET [Daisy] = '" + one + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd6 = new OleDbCommand(sql6, cn6);
                r6 = cmd6.ExecuteReader();
                cn6.Close();
                MessageBox.Show("Well done you have UNLOCKED the following PROFILE PICTURE [Daisy].");
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
                string sql5 = "UPDATE Accounts SET [GraMedals] = '" + gold + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
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
                string sql7 = "UPDATE Accounts SET [Football] = '" + one + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd7 = new OleDbCommand(sql7, cn7);
                r7 = cmd7.ExecuteReader();
                cn7.Close();
                MessageBox.Show("Well done you have UNLOCKED the following PROFILE PICTURE [FOOTBALL].");
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
    <title>Edu-explore | Subtraction quiz</title>
    <link rel="shortcut icon" type="image/png" href="Edu-Explore tab icon.png" />
</head>
<body>
    <form runat="server">
        <asp:Button ID="Back" CssClass="btnBack" Text="Back" OnClick="btnBack_Click" runat="server"/>
        <img id="imglogo" src="edu-explore logo.png" />
        <h1>Grammar quiz</h1>
        <div class="parQ1">
            <p id="txtQ1" runat="server">1) Which one of these sentences is written correctly?</p>
            <img id="imgQ1" src="grammar Q1.PNG" />
            <asp:Button ID="btnQ1A" CssClass="Abtn" Text="A" OnClick="btnQ1A_Click" runat="server" />
            <asp:Button ID="btnQ1B" CssClass="Bbtn" Text="B" OnClick="btnQ1B_Click" runat="server" />
            <asp:Button ID="btnQ1C" CssClass="Cbtn" Text="C" OnClick="btnQ1C_Click" runat="server" />
        </div>
        <div class="parQ2">
            <p id="txtQ2" runat="server">2) Which one of these sentences is written correctly?</p>
            <img id="imgQ2" src="grammar Q2.PNG" />
            <asp:Button ID="btnQ2A" CssClass="Abtn" Text="A" OnClick="btnQ2A_Click" runat="server" />
            <asp:Button ID="btnQ2B" CssClass="Bbtn" Text="B" OnClick="btnQ2B_Click" runat="server" />
            <asp:Button ID="btnQ2C" CssClass="Cbtn" Text="C" OnClick="btnQ2C_Click" runat="server" />
        </div>
        <div class="parQ3">
            <p id="txtQ3" runat="server">3) Which one of these sentences is written correctly?</p>
            <img id="imgQ3" src="grammar Q3.PNG" />
            <asp:Button ID="btnQ3A" CssClass="Abtn" Text="A" OnClick="btnQ3A_Click" runat="server" />
            <asp:Button ID="btnQ3B" CssClass="Bbtn" Text="B" OnClick="btnQ3B_Click" runat="server" />
            <asp:Button ID="btnQ3C" CssClass="Cbtn" Text="C" OnClick="btnQ3C_Click" runat="server" />
        </div>
        <div class="parQ4">
            <p id="txtQ4" runat="server">4) Which one of these sentences is written correctly?</p>
            <img id="imgQ4" src="grammar Q4.PNG" />
            <asp:Button ID="btnQ4A" CssClass="Abtn" Text="A" OnClick="btnQ4A_Click" runat="server" />
            <asp:Button ID="btnQ4B" CssClass="Bbtn" Text="B" OnClick="btnQ4B_Click" runat="server" />
            <asp:Button ID="btnQ4C" CssClass="Cbtn" Text="C" OnClick="btnQ4C_Click" runat="server" />
        </div>
        <div class="parQ5">
            <p id="txtQ5" runat="server">5) Which one of these sentences is written correctly?</p>
            <img id="imgQ5" src="grammar Q5.PNG" />
            <asp:Button ID="btnQ5A" CssClass="Abtn" Text="A" OnClick="btnQ5A_Click" runat="server" />
            <asp:Button ID="btnQ5B" CssClass="Bbtn" Text="B" OnClick="btnQ5B_Click" runat="server" />
            <asp:Button ID="btnQ5C" CssClass="Cbtn" Text="C" OnClick="btnQ5C_Click" runat="server" />
        </div>
        <div class="parQ6">
            <p id="txtQ6" runat="server">6) Which one of these words can be used in this sentence?</p>
            <img id="imgQ6" src="grammar Q6.PNG" />
            <asp:Button ID="btnQ6A" CssClass="Abtn" Text="A" OnClick="btnQ6A_Click" runat="server" />
            <asp:Button ID="btnQ6B" CssClass="Bbtn" Text="B" OnClick="btnQ6B_Click" runat="server" />
            <asp:Button ID="btnQ6C" CssClass="Cbtn" Text="C" OnClick="btnQ6C_Click" runat="server" />
        </div>
        <div class="parQ7">
            <p id="txtQ7" runat="server">7) Which one of these words can be used in this sentence?</p>
            <img id="imgQ7" src="grammar Q7.PNG" />
            <asp:Button ID="btnQ7A" CssClass="Abtn" Text="A" OnClick="btnQ7A_Click" runat="server" />
            <asp:Button ID="btnQ7B" CssClass="Bbtn" Text="B" OnClick="btnQ7B_Click" runat="server" />
            <asp:Button ID="btnQ7C" CssClass="Cbtn" Text="C" OnClick="btnQ7C_Click" runat="server" />
        </div>
        <div class="parQ8">
            <p id="txtQ8" runat="server">8) How do you punchuate this sentence?</p>
            <img id="imgQ8" src="grammar Q8.PNG" />
            <asp:Button ID="btnQ8A" CssClass="Abtn" Text="A" OnClick="btnQ8A_Click" runat="server" />
            <asp:Button ID="btnQ8B" CssClass="Bbtn" Text="B" OnClick="btnQ8B_Click" runat="server" />
            <asp:Button ID="btnQ8C" CssClass="Cbtn" Text="C" OnClick="btnQ8C_Click" runat="server" />
        </div>
        <div class="parQ9">
            <p id="txtQ9" runat="server">9) Which two words can be used in this sentence?</p>
            <img id="imgQ9" src="grammar Q9.PNG" />
            <asp:Button ID="btnQ9A" CssClass="Abtn" Text="A" OnClick="btnQ9A_Click" runat="server" />
            <asp:Button ID="btnQ9B" CssClass="Bbtn" Text="B" OnClick="btnQ9B_Click" runat="server" />
            <asp:Button ID="btnQ9C" CssClass="Cbtn" Text="C" OnClick="btnQ9C_Click" runat="server" />
        </div>
        <div class="parQ10">
            <p id="txtQ10" runat="server">10) Which two words can be useed in this sentence?</p>
            <img id="imgQ10" src="grammar Q10.PNG" />
            <asp:Button ID="btnQ10A" CssClass="Abtn" Text="A" OnClick="btnQ10A_Click" runat="server" />
            <asp:Button ID="btnQ10B" CssClass="Bbtn" Text="B" OnClick="btnQ10B_Click" runat="server" />
            <asp:Button ID="btnQ10C" CssClass="Cbtn" Text="C" OnClick="btnQ10C_Click" runat="server" />
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
        height: 350px;
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
        height: 200px;
        width: auto;
        position: absolute;
        left: 40px;
        top: 50px;
    }
    .parQ2 {
        position: absolute;
        left: 910px;
        top: 280px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 350px;
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
        height: 200px;
        width: auto;
        position: absolute;
        left: 40px;
        top: 50px;
    }
    .parQ3 {
        position: absolute;
        left: 50px;
        top: 680px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 350px;
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
        height: 200px;
        width: auto;
        position: absolute;
        left: 40px;
        top: 50px;
    }
    .parQ4{
        position: absolute;
        left: 910px;
        top: 680px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 350px;
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
        height: 200px;
        width: auto;
        position: absolute;
        left: 40px;
        top: 50px;
    }
    .parQ5 {
        position: absolute;
        left: 50px;
        top: 1080px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 350px;
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
        height: 200px;
        width: auto;
        position: absolute;
        left: 40px;
        top: 50px;
    }
    .parQ6{
        position: absolute;
        left: 910px;
        top: 1080px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 350px;
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
        height: 200px;
        width: auto;
        position: absolute;
        left: 40px;
        top: 50px;
    }
    .parQ7 {
        position: absolute;
        left: 50px;
        top: 1480px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 350px;
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
        height: 200px;
        width: auto;
        position: absolute;
        left: 40px;
        top: 50px;
    }
    .parQ8 {
        position: absolute;
        left: 910px;
        top: 1480px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 350px;
        width: 810px;
    }
    img[id=imgQ8] {
        height: 200px;
        width: auto;
        position: absolute;
        left: 40px;
        top: 50px;
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
    .parQ9 {
        position: absolute;
        left: 50px;
        top: 1880px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 350px;
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
        height: 200px;
        width: auto;
        position: absolute;
        left: 40px;
        top: 50px;
    }
    .parQ10 {
        position: absolute;
        left: 910px;
        top: 1880px;
        border-left: 6px solid blue;
        background-color: cornflowerblue;
        height: 350px;
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
        height: 200px;
        width: auto;
        position: absolute;
        left: 40px;
        top: 50px;
    }
    .Abtn {
        background: #0066A2;
        color: white;
        border-style: outset;
        border-color: #0066A2;
        height: 35px;
        width: 80px;
        font: bold 25px arial, sans-serif;
        text-shadow:none;
        border-radius: 8px;     
        position: absolute;
        left: 40px;
        top: 275px;
    }
    .Bbtn {
        background: #0066A2;
        color: white;
        border-style: outset;
        border-color: #0066A2;
        height: 35px;
        width: 80px;
        font: bold 25px arial, sans-serif;
        text-shadow:none;
        border-radius: 8px;     
        position: absolute;
        left: 140px;
        top: 275px;
    }
    .Cbtn {
        background: #0066A2;
        color: white;
        border-style: outset;
        border-color: #0066A2;
        height: 35px;
        width: 80px;
        font: bold 25px arial, sans-serif;
        text-shadow:none;
        border-radius: 8px;     
        position: absolute;
        left: 240px;
        top: 275px;
    }
    .parSub {
        position: absolute;
        top: 2280px;
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