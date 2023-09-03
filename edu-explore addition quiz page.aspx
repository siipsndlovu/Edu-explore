<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.OleDb" %>
<%@ Import Namespace="System.Windows.Forms" %>
<%@ Import Namespace="System.Linq" %>
<script runat="server">
    void Page_Load()
    {
        if (!Page.IsPostBack)
        {
            bool addquizCheck = System.Convert.ToBoolean(Session["AddQuizreq"]);
            if (addquizCheck == !true)
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
                Session["AddQuizreq"] = "false";
            }
            string[] numPics = { "0.png", "1.png", "2.png", "3.png", "4.png", "5.png", "6.png", "7.png", "8.png", "9.png", "10.png" };
            int min = 0;
            int max = 11;
            Random randomQ1num1 = new Random();
            int Q1num1 = randomQ1num1.Next(min, max);
            string Q1num1pic = numPics[Q1num1];
            imgQ1num1.Src = Q1num1pic;
            int num1lastnum = Q1num1;
            int Q1num2 = randomQ1num1.Next(min, max);
            string Q1num2pic = numPics[Q1num2];
            imgQ1num2.Src = Q1num2pic;
            int num2lastnum = Q1num2;
            int Q1ansc = Q1num1 + Q1num2;
            Session["Q1ans"] = Q1ansc;
            int Q2num1 = randomQ1num1.Next(min, max);
            while (Q2num1 == num1lastnum)
            {
                Q2num1 = randomQ1num1.Next(min, max);
            }
            string Q2num1pic = numPics[Q2num1];
            imgQ2num1.Src = Q2num1pic;
            num1lastnum = Q2num1;
            int Q2num2 = randomQ1num1.Next(min, max);
            while (Q2num2 == num2lastnum)
            {
                Q2num2 = randomQ1num1.Next(min, max);
            }
            string Q2num2pic = numPics[Q2num2];
            imgQ2num2.Src = Q2num2pic;
            num2lastnum = Q2num2;
            int Q2ansc = Q2num1 + Q2num2;
            Session["Q2ans"] = Q2ansc;
            int Q3num1 = randomQ1num1.Next(min, max);
            while (Q3num1 == num1lastnum)
            {
                Q3num1 = randomQ1num1.Next(min, max);
            }
            string Q3num1pic = numPics[Q3num1];
            imgQ3num1.Src = Q3num1pic;
            num1lastnum = Q3num1;
            int Q3num2 = randomQ1num1.Next(min, max);
            while (Q3num2 == num2lastnum)
            {
                Q3num2 = randomQ1num1.Next(min, max);
            }
            string Q3num2pic = numPics[Q3num2];
            imgQ3num2.Src = Q3num2pic;
            num2lastnum = Q3num2;
            int Q3ansc = Q3num1 + Q3num2;
            Session["Q3ans"] = Q3ansc;
            int Q4num1 = randomQ1num1.Next(min, max);
            while (Q4num1 == num1lastnum)
            {
                Q4num1 = randomQ1num1.Next(min, max);
            }
            string Q4num1pic = numPics[Q4num1];
            imgQ4num1.Src = Q4num1pic;
            num1lastnum = Q4num1;
            int Q4num2 = randomQ1num1.Next(min, max);
            while (Q4num2 == num2lastnum)
            {
                Q4num2 = randomQ1num1.Next(min, max);
            }
            string Q4num2pic = numPics[Q4num2];
            imgQ4num2.Src = Q4num2pic;
            num2lastnum = Q3num2;
            int Q4ansc = Q4num1 + Q4num2;
            Session["Q4ans"] = Q4ansc;
            int Q5num1 = randomQ1num1.Next(min, max);
            while (Q5num1 == num1lastnum)
            {
                Q5num1 = randomQ1num1.Next(min, max);
            }
            string Q5num1pic = numPics[Q5num1];
            imgQ5num1.Src = Q5num1pic;
            num1lastnum = Q5num1;
            int Q5num2 = randomQ1num1.Next(min, max);
            while (Q5num2 == num2lastnum)
            {
                Q5num2 = randomQ1num1.Next(min, max);
            }
            string Q5num2pic = numPics[Q5num2];
            imgQ5num2.Src = Q5num2pic;
            num2lastnum = Q5num2;
            int Q5ansc = Q5num1 + Q5num2;
            Session["Q5ans"] = Q5ansc;
            int Q6num1 = randomQ1num1.Next(min, max);
            while (Q6num1 == num1lastnum)
            {
                Q6num1 = randomQ1num1.Next(min, max);
            }
            string Q6num1pic = numPics[Q6num1];
            imgQ6num1.Src = Q6num1pic;
            num1lastnum = Q6num1;
            int Q6num2 = randomQ1num1.Next(min, max);
            while (Q6num2 == num2lastnum)
            {
                Q6num2 = randomQ1num1.Next(min, max);
            }
            string Q6num2pic = numPics[Q6num2];
            imgQ6num2.Src = Q6num2pic;
            num2lastnum = Q6num2;
            int Q6ansc = Q6num1 + Q6num2;
            Session["Q6ans"] = Q6ansc;
            int Q7num1 = randomQ1num1.Next(min, max);
            while (Q7num1 == num1lastnum)
            {
                Q7num1 = randomQ1num1.Next(min, max);
            }
            string Q7num1pic = numPics[Q7num1];
            imgQ7num1.Src = Q7num1pic;
            num1lastnum = Q7num1;
            int Q7num2 = randomQ1num1.Next(min, max);
            while (Q7num2 == num2lastnum)
            {
                Q7num2 = randomQ1num1.Next(min, max);
            }
            string Q7num2pic = numPics[Q7num2];
            imgQ7num2.Src = Q7num2pic;
            num2lastnum = Q5num2;
            int Q7ansc = Q7num1 + Q7num2;
            Session["Q7ans"] = Q7ansc;
            int Q8num1 = randomQ1num1.Next(min, max);
            while (Q8num1 == num1lastnum)
            {
                Q8num1 = randomQ1num1.Next(min, max);
            }
            string Q8num1pic = numPics[Q8num1];
            imgQ8num1.Src = Q8num1pic;
            num1lastnum = Q8num1;
            int Q8num2 = randomQ1num1.Next(min, max);
            while (Q8num2 == num2lastnum)
            {
                Q8num2 = randomQ1num1.Next(min, max);
            }
            string Q8num2pic = numPics[Q8num2];
            imgQ8num2.Src = Q8num2pic;
            num2lastnum = Q8num2;
            int Q8ansc = Q8num1 + Q8num2;
            Session["Q8ans"] = Q8ansc;
            int Q9num1 = randomQ1num1.Next(min, max);
            while (Q9num1 == num1lastnum)
            {
                Q9num1 = randomQ1num1.Next(min, max);
            }
            string Q9num1pic = numPics[Q9num1];
            imgQ9num1.Src = Q9num1pic;
            num1lastnum = Q9num1;
            int Q9num2 = randomQ1num1.Next(min, max);
            while (Q9num2 == num2lastnum)
            {
                Q9num2 = randomQ1num1.Next(min, max);
            }
            string Q9num2pic = numPics[Q9num2];
            imgQ9num2.Src = Q9num2pic;
            num2lastnum = Q9num2;
            int Q9ansc = Q9num1 + Q9num2;
            Session["Q9ans"] = Q9ansc;
            int Q10num1 = randomQ1num1.Next(min, max);
            while (Q10num1 == num1lastnum)
            {
                Q10num1 = randomQ1num1.Next(min, max);
            }
            string Q10num1pic = numPics[Q10num1];
            imgQ10num1.Src = Q10num1pic;
            int Q10num2 = randomQ1num1.Next(min, max);
            while (Q10num2 == num2lastnum)
            {
                Q10num2 = randomQ1num1.Next(min, max);
            }
            string Q10num2pic = numPics[Q10num2];
            imgQ10num2.Src = Q10num2pic;
            int Q10ansc = Q10num1 + Q10num2;
            Session["Q10ans"] = Q10ansc;
        }
    }
    void btnBack_Click(Object s, EventArgs e)
    {
        Session["Login"] = "true";
        Response.Redirect("edu-explore home page.aspx");
    }
    void btnFinish_Click(Object s, EventArgs e)
    {
        string Q1 = txtQ1ans.Value;
        string Q2 = txtQ2ans.Value;
        string Q3 = txtQ3ans.Value;
        string Q4 = txtQ4ans.Value;
        string Q5 = txtQ5ans.Value;
        string Q6 = txtQ6ans.Value;
        string Q7 = txtQ7ans.Value;
        string Q8 = txtQ8ans.Value;
        string Q9 = txtQ9ans.Value;
        string Q10 = txtQ10ans.Value;
        if (string.IsNullOrEmpty(Q1) || string.IsNullOrEmpty(Q2) || string.IsNullOrEmpty(Q3) || string.IsNullOrEmpty(Q4) || string.IsNullOrEmpty(Q5) || string.IsNullOrEmpty(Q6) || string.IsNullOrEmpty(Q7) || string.IsNullOrEmpty(Q8) || string.IsNullOrEmpty(Q9) || string.IsNullOrEmpty(Q10))
        {
            MessageBox.Show("Please answer every question!");
        }
        else
        {
            if (Q1.Any(char.IsLetter) || Q2.Any(char.IsLetter) || Q3.Any(char.IsLetter) || Q4.Any(char.IsLetter) || Q5.Any(char.IsLetter) || Q6.Any(char.IsLetter) || Q7.Any(char.IsLetter) || Q8.Any(char.IsLetter) || Q9.Any(char.IsLetter) || Q10.Any(char.IsLetter))
            {
                MessageBox.Show("You can't use letters to answer the question! Please use only numbers!");
            }
            else
            {
                if (Q1.Any(char.IsSymbol) || Q2.Any(char.IsSymbol) || Q3.Any(char.IsSymbol) || Q4.Any(char.IsSymbol) || Q5.Any(char.IsSymbol) || Q6.Any(char.IsSymbol) || Q7.Any(char.IsSymbol) || Q8.Any(char.IsSymbol) || Q9.Any(char.IsSymbol) || Q10.Any(char.IsSymbol))
                {
                    MessageBox.Show("You can't use symbols to answer the question! Please use only numbers!");
                }
                else
                {
                    ScoreCalculation();
                }
            }
        }
    }
    public void ScoreCalculation() {
        btnFinish.Enabled = false;
        int score = 0;
        int Q1ansc = System.Convert.ToInt32(Session["Q1ans"]);
        int Q1txt = System.Convert.ToInt32(txtQ1ans.Value);
        if (Q1ansc == Q1txt)
        {
            score = score + 1;
        }
        int Q2ansc = System.Convert.ToInt32(Session["Q2ans"]);
        int Q2txt = System.Convert.ToInt32(txtQ2ans.Value);
        if (Q2ansc == Q2txt)
        {
            score = score + 1;
        }
        int Q3ansc = System.Convert.ToInt32(Session["Q3ans"]);
        int Q3txt = System.Convert.ToInt32(txtQ3ans.Value);
        if (Q3ansc == Q3txt)
        {
            score = score + 1;
        }
        int Q4ansc = System.Convert.ToInt32(Session["Q4ans"]);
        int Q4txt = System.Convert.ToInt32(txtQ4ans.Value);
        if (Q4ansc == Q4txt)
        {
            score = score + 1;
        }
        int Q5ansc = System.Convert.ToInt32(Session["Q5ans"]);
        int Q5txt = System.Convert.ToInt32(txtQ5ans.Value);
        if (Q5ansc == Q5txt)
        {
            score = score + 1;
        }
        int Q6ansc = System.Convert.ToInt32(Session["Q6ans"]);
        int Q6txt = System.Convert.ToInt32(txtQ6ans.Value);
        if (Q6ansc == Q6txt)
        {
            score = score + 1;
        }
        int Q7ansc = System.Convert.ToInt32(Session["Q7ans"]);
        int Q7txt = System.Convert.ToInt32(txtQ7ans.Value);
        if (Q7ansc == Q7txt)
        {
            score = score + 1;
        }
        int Q8ansc = System.Convert.ToInt32(Session["Q8ans"]);
        int Q8txt = System.Convert.ToInt32(txtQ8ans.Value);
        if (Q8ansc == Q8txt)
        {
            score = score + 1;
        }
        int Q9ansc = System.Convert.ToInt32(Session["Q9ans"]);
        int Q9txt = System.Convert.ToInt32(txtQ9ans.Value);
        if (Q9ansc == Q9txt)
        {
            score = score + 1;
        }
        int Q10ansc = System.Convert.ToInt32(Session["Q10ans"]);
        int Q10txt = System.Convert.ToInt32(txtQ10ans.Value);
        if (Q10ansc == Q10txt)
        {
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
            hs = System.Convert.ToInt32(r["AddQuizScore"]);
            Session["highscore1"] = hs;
        }
        cn.Close();
        int hsc = System.Convert.ToInt32(Session["highscore1"]);
        if (score > hsc)
        {
            string cs2 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                       "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
            OleDbConnection cn2 = new OleDbConnection(cs2);
            OleDbCommand cmd2;
            OleDbDataReader r2;
            cn2.Open();
            string sql2 = "UPDATE Accounts SET [AddQuizScore] = '" + score + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
            cmd2 = new OleDbCommand(sql2, cn2);
            r2 = cmd2.ExecuteReader();
            cn2.Close();
            if (score >= 3 && score < 6)
            {
                int bronze = 1;
                string cs3 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                       "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn3 = new OleDbConnection(cs3);
                OleDbCommand cmd3;
                OleDbDataReader r3;
                cn3.Open();
                string sql3 = "UPDATE Accounts SET [AddMedals] = '" + bronze + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd3 = new OleDbCommand(sql3, cn3);
                r3 = cmd3.ExecuteReader();
                cn3.Close();
                MessageBox.Show("Well done YOU SCORED " + score + "! This is now your NEW BEST SCORE! You've been awarded the BRONZE medal! Please press the BACK BUTTON to go back to your HOME!");
            }
            if (score >= 6 && score < 8)
            {
                int one = 1;
                int silver = 2;
                string cs4 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                       "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn4 = new OleDbConnection(cs4);
                OleDbCommand cmd4;
                OleDbDataReader r4;
                cn4.Open();
                string sql4 = "UPDATE Accounts SET [AddMedals] = '" + silver + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
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
                string sql6 = "UPDATE Accounts SET [Heart] = '" + one + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd6 = new OleDbCommand(sql6, cn6);
                r6 = cmd6.ExecuteReader();
                cn6.Close();
                MessageBox.Show("Well done you have UNLOCKED the following PROFILE PICTURE [HEART].");
            }
            if (score >= 8)
            {
                int one = 1;
                int gold = 3;
                string cs5 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                       "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn5 = new OleDbConnection(cs5);
                OleDbCommand cmd5;
                OleDbDataReader r5;
                cn5.Open();
                string sql5 = "UPDATE Accounts SET [AddMedals] = '" + gold + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
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
                string sql7 = "UPDATE Accounts SET [Star] = '" + one + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd7 = new OleDbCommand(sql7, cn7);
                r7 = cmd7.ExecuteReader();
                cn7.Close();
                MessageBox.Show("Well done you have UNLOCKED the following PROFILE PICTURE [STAR].");
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
    <title>Edu-explore | Addition quiz</title>
    <link rel="shortcut icon" type="image/png" href="Edu-Explore tab icon.png" />
    </head>
<body>
    <form runat="server">
        <input id="btnBack" type="button" value="Back" onserverclick="btnBack_Click" runat="server"/>
        <img id="imglogo" src="edu-explore logo.png" />
        <h1>Addition quiz</h1>
        <div class="parQ1">
            <p id="txtQ1" runat="server">1) Please use the text box to answer this question:</p>
            <img id="imgQ1num1" runat="server" />
            <img id="imgQ1plus" src="plus.png" />
            <img id="imgQ1num2" runat="server" />
            <img id="imgQ1equals" src="equals.png" />
            <input id="txtQ1ans" type="text" runat="server" />
        </div>
        <div class="parQ2">
            <p id="txtQ2">2) Please use the text box to answer this question:</p>
            <img id="imgQ2num1" runat="server" />
            <img id="imgQ2plus" src="plus.png" />
            <img id="imgQ2num2" runat="server" />
            <img id="imgQ2equals" src="equals.png" />
            <input id="txtQ2ans" type="text" runat="server" />
        </div>
        <div class="parQ3">
            <p id="txtQ3">3) Please use the text box to answer this question:</p>
            <img id="imgQ3num1" runat="server" />
            <img id="imgQ3plus" src="plus.png" />
            <img id="imgQ3num2" runat="server" />
            <img id="imgQ3equals" src="equals.png" />
            <input id="txtQ3ans" type="text" runat="server" />
        </div>
        <div class="parQ4">
            <p id="txtQ4">4) Please use the text box to answer this question:</p>
            <img id="imgQ4num1" runat="server" />
            <img id="imgQ4plus" src="plus.png" />
            <img id="imgQ4num2" runat="server" />
            <img id="imgQ4equals" src="equals.png" />
            <input id="txtQ4ans" type="text" runat="server" />
        </div>
        <div class="parQ5">
            <p id="txtQ5">5) Please use the text box to answer this question:</p>
            <img id="imgQ5num1" runat="server" />
            <img id="imgQ5plus" src="plus.png" />
            <img id="imgQ5num2" runat="server" />
            <img id="imgQ5equals" src="equals.png" />            
            <input id="txtQ5ans" type="text" runat="server" />
        </div>
        <div class="parQ6">
            <p id="txtQ6">6) Please use the text box to answer this question:</p>
            <img id="imgQ6num1" runat="server" />
            <img id="imgQ6plus" src="plus.png" />
            <img id="imgQ6num2" runat="server" />
            <img id="imgQ6equals" src="equals.png" />            
            <input id="txtQ6ans" type="text" runat="server" />
        </div>
        <div class="parQ7">
            <p id="txtQ7">7) Please use the text box to answer this question:</p>
            <img id="imgQ7num1" runat="server" />
            <img id="imgQ7plus" src="plus.png" />
            <img id="imgQ7num2" runat="server" />
            <img id="imgQ7equals" src="equals.png" />
            <input id="txtQ7ans" type="text" runat="server" />
        </div>
        <div class="parQ8">
            <p id="txtQ8">8) Please use the text box to answer this question:</p>
            <img id="imgQ8num1" runat="server" />
            <img id="imgQ8plus" src="plus.png" />
            <img id="imgQ8num2" runat="server" />
            <img id="imgQ8equals" src="equals.png" />
            <input id="txtQ8ans" type="text" runat="server" />
        </div>
        <div class="parQ9">
            <p id="txtQ9">9) Please use the text box to answer this question:</p>
            <img id="imgQ9num1" runat="server" />
            <img id="imgQ9plus" src="plus.png" />
            <img id="imgQ9num2" runat="server" />
            <img id="imgQ9equals" src="equals.png" />
            <input id="txtQ9ans" type="text" runat="server" />
        </div>
        <div class="parQ10">
            <p id="txtQ10">10) Please use the text box to answer this question:</p>
            <img id="imgQ10num1" runat="server" />
            <img id="imgQ10plus" src="plus.png" />
            <img id="imgQ10num2" runat="server" />
            <img id="imgQ10equals" src="equals.png" />
            <input id="txtQ10ans" type="text" runat="server" />
        </div>
        <div class="parSub">
            <asp:Button ID="btnFinish" CssClass="Finishbtn" Text="Finish & Check" runat="server" OnClick="btnFinish_Click" />
        </div>
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
    img[id=imgQ1num1] {
        position: absolute;
        left: 40px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ1plus] {
        position: absolute;
        left: 140px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ1num2] {
        position: absolute;
        left: 240px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ1equals] {
        position: absolute;
        left: 340px;
        top:50px;
        height:140px;
        width: auto;
    }
    input[id=txtQ1ans] {
        position: absolute;
        left: 40px;
        top: 210px;
        height: 30px;
        width: 405px;
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
    img[id=imgQ2num1] {
        position: absolute;
        left: 40px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ2plus] {
        position: absolute;
        left: 140px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ2num2] {
        position: absolute;
        left: 240px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ2equals] {
        position: absolute;
        left: 340px;
        top:50px;
        height:140px;
        width: auto;
    }
    input[id=txtQ2ans] {
        position: absolute;
        left: 40px;
        top: 210px;
        height: 30px;
        width: 405px;
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
    img[id=imgQ3num1] {
        position: absolute;
        left: 40px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ3plus] {
        position: absolute;
        left: 140px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ3num2] {
        position: absolute;
        left: 240px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ3equals] {
        position: absolute;
        left: 340px;
        top:50px;
        height:140px;
        width: auto;
    }
    input[id=txtQ3ans] {
        position: absolute;
        left: 40px;
        top: 210px;
        height: 30px;
        width: 405px;
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
    img[id=imgQ4num1] {
        position: absolute;
        left: 40px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ4plus] {
        position: absolute;
        left: 140px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ4num2] {
        position: absolute;
        left: 240px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ4equals] {
        position: absolute;
        left: 340px;
        top:50px;
        height:140px;
        width: auto;
    }
    input[id=txtQ4ans] {
        position: absolute;
        left: 40px;
        top: 210px;
        height: 30px;
        width: 405px;
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
    img[id=imgQ5num1] {
        position: absolute;
        left: 40px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ5plus] {
        position: absolute;
        left: 140px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ5num2] {
        position: absolute;
        left: 240px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ5equals] {
        position: absolute;
        left: 340px;
        top:50px;
        height:140px;
        width: auto;
    }
    input[id=txtQ5ans] {
        position: absolute;
        left: 40px;
        top: 210px;
        height: 30px;
        width: 405px;
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
    img[id=imgQ6num1] {
        position: absolute;
        left: 40px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ6plus] {
        position: absolute;
        left: 140px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ6num2] {
        position: absolute;
        left: 240px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ6equals] {
        position: absolute;
        left: 340px;
        top:50px;
        height:140px;
        width: auto;
    }
    input[id=txtQ6ans] {
        position: absolute;
        left: 40px;
        top: 210px;
        height: 30px;
        width: 405px;
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
    img[id=imgQ7num1] {
        position: absolute;
        left: 40px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ7plus] {
        position: absolute;
        left: 140px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ7num2] {
        position: absolute;
        left: 240px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ7equals] {
        position: absolute;
        left: 340px;
        top:50px;
        height:140px;
        width: auto;
    }
    input[id=txtQ7ans] {
        position: absolute;
        left: 40px;
        top: 210px;
        height: 30px;
        width: 405px;
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
    img[id=imgQ8num1] {
        position: absolute;
        left: 40px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ8plus] {
        position: absolute;
        left: 140px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ8num2] {
        position: absolute;
        left: 240px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ8equals] {
        position: absolute;
        left: 340px;
        top:50px;
        height:140px;
        width: auto;
    }
    input[id=txtQ8ans] {
        position: absolute;
        left: 40px;
        top: 210px;
        height: 30px;
        width: 405px;
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
    img[id=imgQ9num1] {
        position: absolute;
        left: 40px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ9plus] {
        position: absolute;
        left: 140px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ9num2] {
        position: absolute;
        left: 240px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ9equals] {
        position: absolute;
        left: 340px;
        top:50px;
        height:140px;
        width: auto;
    }
    input[id=txtQ9ans] {
        position: absolute;
        left: 40px;
        top: 210px;
        height: 30px;
        width: 405px;
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
    img[id=imgQ10num1] {
        position: absolute;
        left: 40px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ10plus] {
        position: absolute;
        left: 140px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ10num2] {
        position: absolute;
        left: 240px;
        top: 50px;
        height: 140px;
        width: auto;
    }
    img[id=imgQ10equals] {
        position: absolute;
        left: 340px;
        top:50px;
        height:140px;
        width: auto;
    }
    input[id=txtQ10ans] {
        position: absolute;
        left: 40px;
        top: 210px;
        height: 30px;
        width: 405px;
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