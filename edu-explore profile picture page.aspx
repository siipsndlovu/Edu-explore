<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.OleDb" %>
<%@ Import Namespace="System.Windows.Forms" %>
<%@ Import Namespace="System.Linq" %>
<script runat="server">
    void Page_Load()
    {
        if (!Page.IsPostBack)
        {
            bool ProfileCheck = System.Convert.ToBoolean(Session["Profilereq"]);
            if (ProfileCheck == !true)
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

                Session["Profilereq"] = "false";
                Session["Profilechoose"] = "false";
            }
            Session["b"] = "true";
            DefaultBbtn.ImageUrl = "default profile.png";
            Session["p"] = "true";
            DefaultPbtn.ImageUrl = "default pink profile.png";
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
                hs = System.Convert.ToInt32(r["Heart"]);
                Session["heartCheck"] = hs;
            }
            cn.Close();
            int heart = System.Convert.ToInt32(Session["heartCheck"]);
            if  (heart == 0)
            {
                Heartbtn.ImageUrl = "heart locked profile.png";
                Session["heart"] = "false";
            }
            if (heart == 1)
            {
                Heartbtn.ImageUrl = "heart profile.png";
                Session["heart"] = "true";
            }
            int ss;
            string cs2 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                       "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
            OleDbConnection cn2 = new OleDbConnection(cs2);
            OleDbCommand cmd2;
            OleDbDataReader r2;
            cn2.Open();
            string sql2 = "SELECT * FROM Accounts WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
            cmd2 = new OleDbCommand(sql2, cn2);
            r2 = cmd2.ExecuteReader();
            if (r2.Read()){
                ss = System.Convert.ToInt32(r2["Star"]);
                Session["starCheck"] = ss;
            }
            cn2.Close();
            int star = System.Convert.ToInt32(Session["starCheck"]);
            if (star == 0)
            {
                Starbtn.ImageUrl = "star locked profile.png";
                Session["star"] = "false";
            }
            if (star == 1)
            {
                Starbtn.ImageUrl = "star profile.png";
                Session["star"] = "true";
            }
            int us;
            string cs3 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                       "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
            OleDbConnection cn3 = new OleDbConnection(cs3);
            OleDbCommand cmd3;
            OleDbDataReader r3;
            cn3.Open();
            string sql3 = "SELECT * FROM Accounts WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
            cmd3 = new OleDbCommand(sql3, cn3);
            r3 = cmd3.ExecuteReader();
            if (r3.Read()){
                us = System.Convert.ToInt32(r3["Unicorn"]);
                Session["unicornCheck"] = us;
            }
            cn3.Close();
            int unicorn = System.Convert.ToInt32(Session["unicornCheck"]);
            if (unicorn == 0)
            {
                Unicornbtn.ImageUrl = "unicorn locked profile.png";
                Session["unicorn"] = "false";
            }
            if (unicorn == 1)
            {
                Unicornbtn.ImageUrl = "unicorn profile.png";
                Session["unicorn"] = "true";
            }
            int ds;
            string cs4 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                       "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
            OleDbConnection cn4 = new OleDbConnection(cs4);
            OleDbCommand cmd4;
            OleDbDataReader r4;
            cn4.Open();
            string sql4 = "SELECT * FROM Accounts WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
            cmd4 = new OleDbCommand(sql4, cn4);
            r4 = cmd4.ExecuteReader();
            if (r4.Read()){
                ds = System.Convert.ToInt32(r4["Dino"]);
                Session["dinoCheck"] = ds;
            }
            cn4.Close();
            int dino = System.Convert.ToInt32(Session["dinoCheck"]);
            if (dino == 0)
            {
                Dinobtn.ImageUrl = "dino locked profile.png";
                Session["dino"] = "false";
            }
            if (dino == 1)
            {
                Dinobtn.ImageUrl = "dino profile.png";
                Session["dino"] = "true";
            }
            int das;
            string cs5 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                       "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
            OleDbConnection cn5 = new OleDbConnection(cs5);
            OleDbCommand cmd5;
            OleDbDataReader r5;
            cn5.Open();
            string sql5 = "SELECT * FROM Accounts WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
            cmd5 = new OleDbCommand(sql5, cn5);
            r5 = cmd5.ExecuteReader();
            if (r5.Read()){
                das = System.Convert.ToInt32(r5["Daisy"]);
                Session["daisyCheck"] = das;
            }
            cn5.Close();
            int daisy = System.Convert.ToInt32(Session["daisyCheck"]);
            if (daisy == 0)
            {
                Daisybtn.ImageUrl = "daisy locked profile.png";
                Session["daisy"] = "false";
            }
            if (daisy == 1)
            {
                Daisybtn.ImageUrl = "daisy profile.png";
                Session["daisy"] = "true";
            }
            int fs;
            string cs6 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                       "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
            OleDbConnection cn6 = new OleDbConnection(cs6);
            OleDbCommand cmd6;
            OleDbDataReader r6;
            cn6.Open();
            string sql6 = "SELECT * FROM Accounts WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
            cmd6 = new OleDbCommand(sql6, cn6);
            r6 = cmd6.ExecuteReader();
            if (r6.Read()){
                fs = System.Convert.ToInt32(r6["Football"]);
                Session["footballCheck"] = fs;
            }
            cn6.Close();
            int football = System.Convert.ToInt32(Session["footballCheck"]);
            if (football == 0)
            {
                Footballbtn.ImageUrl = "football locked profile.png";
                Session["football"] = "false";
            }
            if (football == 1)
            {
                Footballbtn.ImageUrl = "football profile.png";
                Session["football"] = "true";
            }
            int ys;
            string cs7 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                       "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
            OleDbConnection cn7 = new OleDbConnection(cs7);
            OleDbCommand cmd7;
            OleDbDataReader r7;
            cn7.Open();
            string sql7 = "SELECT * FROM Accounts WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
            cmd7 = new OleDbCommand(sql7, cn7);
            r7 = cmd7.ExecuteReader();
            if (r7.Read()){
                ys = System.Convert.ToInt32(r7["Yellow"]);
                Session["yellowCheck"] = ys;
            }
            cn7.Close();
            int yellow = System.Convert.ToInt32(Session["yellowCheck"]);
            if (yellow == 0)
            {
                Yellowbtn.ImageUrl = "1 yellow locked profile.png";
                Session["yellow"] = "false";
            }
            if (yellow == 1)
            {
                Yellowbtn.ImageUrl = "1 yellow profile.png";
                Session["yellow"] = "true";
            }
            int rs;
            string cs8 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                       "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
            OleDbConnection cn8 = new OleDbConnection(cs8);
            OleDbCommand cmd8;
            OleDbDataReader r8;
            cn8.Open();
            string sql8 = "SELECT * FROM Accounts WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
            cmd8 = new OleDbCommand(sql8, cn8);
            r8 = cmd8.ExecuteReader();
            if (r8.Read()){
                rs = System.Convert.ToInt32(r8["Red"]);
                Session["redCheck"] = rs;
            }
            cn8.Close();
            int red = System.Convert.ToInt32(Session["redCheck"]);
            if (red == 0)
            {
                Redbtn.ImageUrl = "1 red locked profile.png";
                Session["red"] = "false";
            }
            if (red == 1)
            {
                Redbtn.ImageUrl = "1 red profile.png";
                Session["red"] = "true";
            }
        }
    }
    void btnBack_Click(Object s, EventArgs e)
    {
        Session["Login"] = "true";
        Response.Redirect("edu-explore home page.aspx");
    }
    void btnSave_Click(Object s, EventArgs e)
    {
        string un = System.Convert.ToString(Session["correctun"]);
        string pw = System.Convert.ToString(Session["correctpw"]);
        bool pc = System.Convert.ToBoolean(Session["Profilechoose"]);
        string equipped = System.Convert.ToString(Session["Equipped"]);
        if (pc == true)
        {
            if (equipped == "DefaultB")
            {
                string pic = "default profile.png";
                string cs = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                           "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn = new OleDbConnection(cs);
                OleDbCommand cmd;
                OleDbDataReader r;
                cn.Open();
                string sql = "UPDATE Accounts SET [Equipped] = '" + pic + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd = new OleDbCommand(sql, cn);
                r = cmd.ExecuteReader();
                cn.Close();
                MessageBox.Show("Your equipped profile picture has been updated to: [BLUE DEFAULT].");
                Session["Profilechoose"] = "false";
            }
            if (equipped == "DefaultP")
            {
                string pic = "default pink profile.png";
                string cs2 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                           "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn2 = new OleDbConnection(cs2);
                OleDbCommand cmd2;
                OleDbDataReader r2;
                cn2.Open();
                string sql2 = "UPDATE Accounts SET [Equipped] = '" + pic + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd2 = new OleDbCommand(sql2, cn2);
                r2 = cmd2.ExecuteReader();
                cn2.Close();
                MessageBox.Show("Your equipped profile picture has been updated to: [PINK DEFAULT].");
                Session["Profilechoose"] = "false";
            }
            if (equipped == "Heart")
            {
                string pic = "heart profile.png";
                string cs3 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                           "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn3 = new OleDbConnection(cs3);
                OleDbCommand cmd3;
                OleDbDataReader r3;
                cn3.Open();
                string sql3 = "UPDATE Accounts SET [Equipped] = '" + pic + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd3 = new OleDbCommand(sql3, cn3);
                r3 = cmd3.ExecuteReader();
                cn3.Close();
                MessageBox.Show("Your equipped profile picture has been updated to: [HEART].");
                Session["Profilechoose"] = "false";
            }
            if (equipped == "Star")
            {
                string pic = "star profile.png";
                string cs4 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                           "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn4 = new OleDbConnection(cs4);
                OleDbCommand cmd4;
                OleDbDataReader r4;
                cn4.Open();
                string sql4 = "UPDATE Accounts SET [Equipped] = '" + pic + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd4 = new OleDbCommand(sql4, cn4);
                r4 = cmd4.ExecuteReader();
                cn4.Close();
                MessageBox.Show("Your equipped profile picture has been updated to: [STAR].");
                Session["Profilechoose"] = "false";
            }
            if (equipped == "Unicorn")
            {;
                string pic = "unicorn profile.png";
                string cs5 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                           "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn5 = new OleDbConnection(cs5);
                OleDbCommand cmd5;
                OleDbDataReader r5;
                cn5.Open();
                string sql5 = "UPDATE Accounts SET [Equipped] = '" + pic + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd5 = new OleDbCommand(sql5, cn5);
                r5 = cmd5.ExecuteReader();
                cn5.Close();
                MessageBox.Show("Your equipped profile picture has been updated to: [UNICORN].");
                Session["Profilechoose"] = "false";
            }
            if (equipped == "Dino")
            {
                string pic = "dino profile.png";
                string cs6 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                           "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn6 = new OleDbConnection(cs6);
                OleDbCommand cmd6;
                OleDbDataReader r6;
                cn6.Open();
                string sql6 = "UPDATE Accounts SET [Equipped] = '" + pic + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd6 = new OleDbCommand(sql6, cn6);
                r6 = cmd6.ExecuteReader();
                cn6.Close();
                MessageBox.Show("Your equipped profile picture has been updated to: [DINO].");
                Session["Profilechoose"] = "false";
            }
            if (equipped == "Daisy")
            {
                string pic = "daisy profile.png";
                string cs7 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                           "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn7 = new OleDbConnection(cs7);
                OleDbCommand cmd7;
                OleDbDataReader r7;
                cn7.Open();
                string sql7 = "UPDATE Accounts SET [Equipped] = '" + pic + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd7 = new OleDbCommand(sql7, cn7);
                r7 = cmd7.ExecuteReader();
                cn7.Close();
                MessageBox.Show("Your equipped profile picture has been updated to: [DAISY].");
                Session["Profilechoose"] = "false";
            }
            if (equipped == "Football")
            {
                string pic = "football profile.png";
                string cs8 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                           "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn8 = new OleDbConnection(cs8);
                OleDbCommand cmd8;
                OleDbDataReader r8;
                cn8.Open();
                string sql8 = "UPDATE Accounts SET [Equipped] = '" + pic + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd8 = new OleDbCommand(sql8, cn8);
                r8 = cmd8.ExecuteReader();
                cn8.Close();
                MessageBox.Show("Your equipped profile picture has been updated to: [FOOTBALL].");
                Session["Profilechoose"] = "false";
            }
            if (equipped == "Yellow")
            {
                string pic = "1 yellow profile.png";
                string cs9 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                           "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn9 = new OleDbConnection(cs9);
                OleDbCommand cmd9;
                OleDbDataReader r9;
                cn9.Open();
                string sql9 = "UPDATE Accounts SET [Equipped] = '" + pic + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd9 = new OleDbCommand(sql9, cn9);
                r9 = cmd9.ExecuteReader();
                cn9.Close();
                MessageBox.Show("Your equipped profile picture has been updated to: [#1 YELLOW].");
                Session["Profilechoose"] = "false";
            }
            if (equipped == "Red")
            {
                string pic = "1 red profile.png";
                string cs10 = "Provider=Microsoft.ACE.OLEDB.12.0;" +
                           "Data Source=" + Server.MapPath("Edu-explore.accdb") + ";";
                OleDbConnection cn10 = new OleDbConnection(cs10);
                OleDbCommand cmd10;
                OleDbDataReader r10;
                cn10.Open();
                string sql10 = "UPDATE Accounts SET [Equipped] = '" + pic + "' WHERE [Username] = '" + un + "' AND [Password] = '" + pw + "';";
                cmd10 = new OleDbCommand(sql10, cn10);
                r10 = cmd10.ExecuteReader();
                cn10.Close();
                MessageBox.Show("Your equipped profile picture has been updated to: [#1 RED].");
                Session["Profilechoose"] = "false";
            }
        }
        else
        {
            MessageBox.Show("Please Choose a valid profile picture!");
        }
    }
    void btnDefaultB_Click(Object s, EventArgs e)
    {
        bool b = System.Convert.ToBoolean(Session["b"]);
        if (b == true)
        {
            DefaultPbtn.BorderWidth = 0;
            Heartbtn.BorderWidth = 0;
            Starbtn.BorderWidth = 0;
            Unicornbtn.BorderWidth = 0;
            Dinobtn.BorderWidth = 0;
            Daisybtn.BorderWidth = 0;
            Footballbtn.BorderWidth = 0;
            Yellowbtn.BorderWidth = 0;
            Redbtn.BorderWidth = 0;
            DefaultBbtn.BorderWidth = 4;
            DefaultBbtn.BorderColor = System.Drawing.Color.White;
            Session["Equipped"] = "DefaultB";
            Session["Profilechoose"] = "true";
        }
    }
    void btnDefaultP_Click(Object s, EventArgs e)
    {
        bool p = System.Convert.ToBoolean(Session["p"]);
        if (p == true)
        {
            DefaultBbtn.BorderWidth = 0;
            Heartbtn.BorderWidth = 0;
            Starbtn.BorderWidth = 0;
            Unicornbtn.BorderWidth = 0;
            Dinobtn.BorderWidth = 0;
            Daisybtn.BorderWidth = 0;
            Footballbtn.BorderWidth = 0;
            Yellowbtn.BorderWidth = 0;
            Redbtn.BorderWidth = 0;
            DefaultPbtn.BorderWidth = 4;
            DefaultPbtn.BorderColor = System.Drawing.Color.White;
            Session["Equipped"] = "DefaultP";
            Session["Profilechoose"] = "true";
        }
    }
    void btnHeart_Click(Object s, EventArgs e)
    {
        bool h = System.Convert.ToBoolean(Session["heart"]);
        if (h == true)
        {
            DefaultPbtn.BorderWidth = 0;
            DefaultBbtn.BorderWidth = 0;
            Starbtn.BorderWidth = 0;
            Unicornbtn.BorderWidth = 0;
            Dinobtn.BorderWidth = 0;
            Daisybtn.BorderWidth = 0;
            Footballbtn.BorderWidth = 0;
            Yellowbtn.BorderWidth = 0;
            Redbtn.BorderWidth = 0;
            Heartbtn.BorderWidth = 4;
            Heartbtn.BorderColor = System.Drawing.Color.White;
            Session["Equipped"] = "Heart";
            Session["Profilechoose"] = "true";
        }
        else
        {
            MessageBox.Show("This profile picture is locked, to unlock it get a SCORE OF AT LEAST 6 in the ADDITION QUIZ!");
        }
    }
    void btnStar_Click(Object s, EventArgs e)
    {
        bool st = System.Convert.ToBoolean(Session["star"]);
        if (st == true)
        {
            DefaultPbtn.BorderWidth = 0;
            Heartbtn.BorderWidth = 0;
            DefaultBbtn.BorderWidth = 0;
            Unicornbtn.BorderWidth = 0;
            Dinobtn.BorderWidth = 0;
            Daisybtn.BorderWidth = 0;
            Footballbtn.BorderWidth = 0;
            Yellowbtn.BorderWidth = 0;
            Redbtn.BorderWidth = 0;
            Starbtn.BorderWidth = 4;
            Starbtn.BorderColor = System.Drawing.Color.White;
            Session["Equipped"] = "Star";
            Session["Profilechoose"] = "true";
        }
        else
        {
            MessageBox.Show("This profile picture is locked, to unlock it get a SCORE OF AT LEAST 8 in the ADDITION QUIZ!");
        }
    }
    void btnUnicorn_Click(Object s, EventArgs e)
    {
        bool u = System.Convert.ToBoolean(Session["unicorn"]);
        if (u == true)
        {
            DefaultPbtn.BorderWidth = 0;
            Heartbtn.BorderWidth = 0;
            Starbtn.BorderWidth = 0;
            DefaultBbtn.BorderWidth = 0;
            Dinobtn.BorderWidth = 0;
            Daisybtn.BorderWidth = 0;
            Footballbtn.BorderWidth = 0;
            Yellowbtn.BorderWidth = 0;
            Redbtn.BorderWidth = 0;
            Unicornbtn.BorderWidth = 4;
            Unicornbtn.BorderColor = System.Drawing.Color.White;
            Session["Equipped"] = "Unicorn";
            Session["Profilechoose"] = "true";
        }
        else
        {
            MessageBox.Show("This profile picture is locked, to unlock it get a SCORE AT LEAST 6 in the SUBTRACTION QUIZ!");
        }
    }
    void btnDino_Click(Object s, EventArgs e)
    {
        bool d = System.Convert.ToBoolean(Session["dino"]);
        if (d == true)
        {
            DefaultPbtn.BorderWidth = 0;
            Heartbtn.BorderWidth = 0;
            Starbtn.BorderWidth = 0;
            Unicornbtn.BorderWidth = 0;
            DefaultBbtn.BorderWidth = 0;
            Daisybtn.BorderWidth = 0;
            Footballbtn.BorderWidth = 0;
            Yellowbtn.BorderWidth = 0;
            Redbtn.BorderWidth = 0;
            Dinobtn.BorderWidth = 4;
            Dinobtn.BorderColor = System.Drawing.Color.White;
            Session["Equipped"] = "Dino";
            Session["Profilechoose"] = "true";
        }
        else
        {
            MessageBox.Show("This profile picture is locked, to unlock it get a SCORE OF AT LEAST 8 in the SUBTRACTION QUIZ!");
        }
    }
    void btnDaisy_Click(Object s, EventArgs e)
    {
        bool da = System.Convert.ToBoolean(Session["daisy"]);
        if (da == true)
        {
            DefaultPbtn.BorderWidth = 0;
            Heartbtn.BorderWidth = 0;
            Starbtn.BorderWidth = 0;
            Unicornbtn.BorderWidth = 0;
            Dinobtn.BorderWidth = 0;
            DefaultBbtn.BorderWidth = 0;
            Footballbtn.BorderWidth = 0;
            Yellowbtn.BorderWidth = 0;
            Redbtn.BorderWidth = 0;
            Daisybtn.BorderWidth = 4;
            Daisybtn.BorderColor = System.Drawing.Color.White;
            Session["Equipped"] = "Daisy";
            Session["Profilechoose"] = "true";
        }
        else
        {
            MessageBox.Show("This profile picture is locked, to unlock it get a SCORE OF AT LEAST 5 in the GRAMMAR QUIZ!");
        }
    }
    void btnFootball_Click(Object s, EventArgs e)
    {
        bool f = System.Convert.ToBoolean(Session["football"]);
        if (f == true)
        {
            DefaultPbtn.BorderWidth = 0;
            Heartbtn.BorderWidth = 0;
            Starbtn.BorderWidth = 0;
            Unicornbtn.BorderWidth = 0;
            Dinobtn.BorderWidth = 0;
            Daisybtn.BorderWidth = 0;
            DefaultBbtn.BorderWidth = 0;
            Yellowbtn.BorderWidth = 0;
            Redbtn.BorderWidth = 0;
            Footballbtn.BorderWidth = 4;
            Footballbtn.BorderColor = System.Drawing.Color.White;
            Session["Equipped"] = "Football";
            Session["Profilechoose"] = "true";
        }
        else
        {
            MessageBox.Show("This profile picture is locked, to unlock it get a SCORE OF AT LEAST 7 in the GRAMMAR QUIZ!");
        }
    }
    void btn1Yellow_Click(Object s, EventArgs e)
    {
        bool y = System.Convert.ToBoolean(Session["yellow"]);
        if (y == true)
        {
            DefaultPbtn.BorderWidth = 0;
            Heartbtn.BorderWidth = 0;
            Starbtn.BorderWidth = 0;
            Unicornbtn.BorderWidth = 0;
            Dinobtn.BorderWidth = 0;
            Daisybtn.BorderWidth = 0;
            Footballbtn.BorderWidth = 0;
            DefaultBbtn.BorderWidth = 0;
            Redbtn.BorderWidth = 0;
            Yellowbtn.BorderWidth = 4;
            Yellowbtn.BorderColor = System.Drawing.Color.White;
            Session["Equipped"] = "Yellow";
            Session["Profilechoose"] = "true";
        }
        else
        {
            MessageBox.Show("This profile picture is locked, to unlock it get a SCORE OF AT LEAST 5 in COMPLEX OR SIMPLE!");
        }
    }
    void btn1Red_Click(Object s, EventArgs e)
    {
        bool r = System.Convert.ToBoolean(Session["red"]);
        if (r == true)
        {
            DefaultPbtn.BorderWidth = 0;
            Heartbtn.BorderWidth = 0;
            Starbtn.BorderWidth = 0;
            Unicornbtn.BorderWidth = 0;
            Dinobtn.BorderWidth = 0;
            Daisybtn.BorderWidth = 0;
            Footballbtn.BorderWidth = 0;
            Yellowbtn.BorderWidth = 0;
            DefaultBbtn.BorderWidth = 0;
            Redbtn.BorderWidth = 4;
            Redbtn.BorderColor = System.Drawing.Color.White;
            Session["Equipped"] = "Red";
            Session["Profilechoose"] = "true";
        }
        else
        {
            MessageBox.Show("This profile picture is locked, to unlock it get a SCORE OF AT LEAST 7 in COMPLEX OR SIMPLE!");
        }
    }
</script>
<html>
    <head>
    <title>Edu-explore | Profile picture</title>
    <link rel="shortcut icon" type="image/png" href="Edu-Explore tab icon.png" />
    </head>
    <body>
        <form runat="server">
            <input id="btnBack" type="button" value="Back" onserverclick="btnBack_Click" runat="server"/>
            <img id="imglogo" src="edu-explore logo.png" />
            <h1>Profile picture selection</h1>
            <p id="parInst">Please choose which profile picture you want to use and save it using the "Save" button:</p>
            <asp:ImageButton ID="DefaultBbtn" CssClass="btnDefaultB" ImageUrl="default profile.png" OnClick="btnDefaultB_Click" runat="server" />
            <asp:ImageButton ID="DefaultPbtn" CssClass="btnDefaultP" ImageUrl="default pink profile.png" OnClick="btnDefaultP_Click" runat="server" />
            <asp:ImageButton ID="Heartbtn" CssClass="btnHeart" OnClick="btnHeart_Click" runat="server" />
            <asp:ImageButton ID="Starbtn" CssClass="btnStar" OnClick="btnStar_Click" runat="server" />
            <asp:ImageButton ID="Unicornbtn" CssClass="btnUnicorn" OnClick="btnUnicorn_Click" runat="server" />
            <asp:ImageButton ID="Dinobtn" CssClass="btnDino" OnClick="btnDino_Click" runat="server" />
            <asp:ImageButton ID="Daisybtn" CssClass="btnDaisy" OnClick="btnDaisy_Click" runat="server" />
            <asp:ImageButton ID="Footballbtn" CssClass="btnFootball" OnClick="btnFootball_Click" runat="server" />
            <asp:ImageButton ID="Yellowbtn" CssClass="btn1Yellow" OnClick="btn1Yellow_Click" runat="server" />
            <asp:ImageButton ID="Redbtn" CssClass="btn1Red" OnClick="btn1Red_Click" runat="server" />
            <asp:Button ID="Savebtn" CssClass="btnSave" Text="Save" OnClick="btnSave_Click" runat="server" />
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
        left: 620px;
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
    p[id=parInst] {
        position: absolute;
        left: 50px;
        top: 230px;
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
    .btnSave {
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
        left: 1520px;
        top: 70px;
    }
    .btnDefaultB {
        position: absolute;
        left: 50px;
        top: 350px;
    }
    .btnDefaultP {
        position: absolute;
        left: 400px;
        top: 350px;
    }
    .btnHeart {
        position: absolute;
        left: 750px;
        top: 350px;
    }
    .btnStar {
        position: absolute;
        left: 1100px;
        top: 350px;
    }
    .btnUnicorn {
        position: absolute;
        left: 1450px;
        top: 350px;
    }
    .btnDino {
        position: absolute;
        left: 50px;
        top: 650px;
    }
    .btnDaisy {
        position: absolute;
        left: 400px;
        top: 650px;
    }
    .btnFootball {
        position: absolute;
        left: 750px;
        top: 650px;
    }
    .btn1Yellow {
        position: absolute;
        left: 1100px;
        top: 650px;
    }
    .btn1Red {
        position: absolute;
        left: 1450px;
        top: 650px;
    }
</style>