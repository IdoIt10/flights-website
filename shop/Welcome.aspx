<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>דף בית</title>
    <style>
        body {
            background-image: url("Pics/Background Img.jpg");
            height: 570px;
            background-position: center;
             background-repeat:no-repeat;
            background-size: contain;
            background-color:#eeeeee;
        }
        .auto-style1 {
            display: block;
  margin-left: auto;
  margin-right: auto;
  width: 50%;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">

        <div>
            
            <h1 style="text-align:center; font-size:30px; font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
            color:darkblue">Welcome to IdoGo-
            </h1>

            <b>
            <h1 style="text-align:center; font-size:25px; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; 
            color:darkblue; line-height:0">
                the only way to fly
            </h1>
            </b>

            <br />

            <b>
            <p style="text-align:center; font-family:Arial; font-size:15px">
                Welcome to the site that will find the flight that suits you best, so this is how it works.
            </p>  

            <p style="text-align:center; font-family:Arial; font-size:15px; line-height:2">
                1. You enter the data according to what suits you<br />
                2. We present you the recipt, with the flight number that suits you exactly<br />
                Press the image below to continue
            </p>
            
            <asp:ImageButton id="imagebutton1" runat="server" Width="380px" 
           AlternateText=""
           ImageAlign="Top"
           ImageUrl="~/Pics/Image button.jpg"
           OnClick="imagebutton1_Click" CssClass="auto-style1" Height="250px" />

        </div>

    </form>

</body>
</html>
