<%@ Page Language="C#" %>
<script runat="server">
    void Page_Load()
    {
        Session["signupreq"] = "false";
        Session["loginreq"] = "false";
        Session["Login"] = "false";
        Session["AddQuizreq"] = "false";
        Session["SubQuizreq"] = "false";
        Session["GraQuizreq"] = "false";

    }
    void btnLogin_Click(Object s, EventArgs e)
    {
        Session["loginreq"] = "true";
        Response.Redirect("edu-explore login page.aspx");
    }
    void btnSignup_Click(Object s, EventArgs e)
    {
        Session["signupreq"] = "true";
        Response.Redirect("edu-explore signup page.aspx");
    }
</script>
<html>
<head>
    <title>Edu-explore</title>
    <link rel="shortcut icon" type="image/png" href="Edu-Explore tab icon.png" />
</head>
<body>
    <img id="logo" src="edu-explore logo.png"/>
    <form runat="server">
    <p><input id="btnLogin" type="submit" value="Log-in" runat="server" onserverclick="btnLogin_Click"/>
    <input id="btnSignup" type="submit" value="Sign up" runat="server" onserverclick="btnSignup_Click" /></p>
    </form>
</body>
</html>
<style>
    body {
        background-color: #ffc0cb;
    }
    input[type=submit] {
        background: #0066A2;
        color: white;
        border-style: outset;
        border-color: #0066A2;
        height: 60px;
        width: 150px;
        font: bold 30px arial, sans-serif;
        text-shadow:none;
        border-radius: 8px; 
    }
    input[id=btnLogin] {
        position: absolute;
        left: 660px;
        top: 500px;
    }
    input[id=btnSignup] {
        position: absolute;
        left: 950px;
        top: 500px;
    }
    img[id=logo] {
        position: absolute;
        left: 625px;
        top: 200px;
    }
</style>