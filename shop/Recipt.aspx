<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Recipt.aspx.cs" Inherits="Recipt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 255px;
            height: 151px;
        }
        .auto-style2 {
            height: 28px;
            width: 1px;
        }
        .auto-style8 {
            width: 224px;
            text-align: center;
            height: 60px;
        }
    </style>
</head>
<body>
    <center>

        <h1 style="color:blue; font-size:70px" class="auto-style8">Recipt</h1>

         
         <p style="color:white; background-color:black; font-size: 25px; font-family: Rod"> <b>!</b> Please arrive 3 hours before the flight <b>!</b> </p>


    <form id="form1" runat="server">



        <table class="auto-style1">

            <tr>
                <td style="Color:#000066" class="auto-style2">
                    <p>Names</p>
                    </td>
                <td class="auto-style7">
                    <p style="color:red"><%= Session["names"] %></p>
                </td>
                </tr>


            <tr>
                <td style="Color:#000066" class="auto-style2">
                    <p>Number of passengers</p>
                    </td>
                <td class="auto-style7">
                    <p style="color:red"><%= Session["hm"] %></p>
                </td>
                </tr>


                <tr>
                <td style="Color:#000066" class="auto-style2">
                    <p>From</p>
                    </td>
                <td class="auto-style7">
                    <p style="color:red"><%= Session["From"] %></p>
                </td>
                </tr>


            <tr>
                <td style="Color:#000066" class="auto-style2">
                    <p>Destination</p>
                    </td>
                <td class="auto-style7">
                    <p style="color:red"><%= Session["Dep"] %></p>
                </td>
                </tr>

            <tr>
                 <td class="auto-style2">
<asp:Label ID="Label2" runat="server" Text="Preferences" ForeColor="#000066"></asp:Label>
                     <br />
                     <br />
                </td>

                 <td class="auto-style2">
<asp:Label ID="LblOffice" runat="server" Text="Label" ForeColor="Red"></asp:Label>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">
<asp:Label ID="Label1" runat="server" Text="Class" ForeColor="#000066"></asp:Label>
                </td>
                <td class="auto-style2">
<asp:Label ID="LblComp" runat="server" Text="Label" ForeColor="Red"></asp:Label>
                </td>
            </tr>

            <br />

            <tr>
                <td style="Color:#000066" class="auto-style2">
                    <p>Meal</p>
                    </td>
                <td class="auto-style7">
                    <p style="color:red"><%= Session["Meals"] %></p>
                </td>
                </tr>
             

            <tr>
                <td class="auto-style2">
<asp:Label ID="Label7" runat="server" Text="Payment" ForeColor="#000066"></asp:Label>
                </td>
                <td class="auto-style2">
                    <br />
<asp:Label ID="LblPay" runat="server" Text="Label" ForeColor="Red"></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>

            
             
                <tr>
                <td class="auto-style2">
<asp:Label ID="Label9" runat="server" Text="Date" ForeColor="#000066"></asp:Label>
                </td>
                <td class="auto-style2">
<asp:Label ID="LblDate" runat="server" Text="Label" ForeColor="Red"></asp:Label>
                    <asp:Label ID="LblDate0" runat="server" Text="Label" ForeColor="Red"></asp:Label>
                </td>
            </tr>

            


            <tr>
                <td style="Color:#000066" class="auto-style2">
                    <p>Price</p>
                    </td>
                <td class="auto-style2">
                    <p style="color:red"><%= Session["price"] %>$</p>
                </td>
                </tr>
            <tr>
                <td style="Color:#000066" class="auto-style2">
                    <p>Flight number</p>
                    </td>
                <td class="auto-style2">
                    <p style="color:red"><%= Session["flight"] %></p>
                </td>
                </tr>

            <tr>
                <td class="auto-style2">
<asp:Label ID="Label30" runat="server" Text="passport" ForeColor="#000066"></asp:Label>
                    <asp:Image ID="ImgF" runat="server" Width="190px" Height="120px"></asp:Image>
                </td>
                <td class="auto-style2">
<asp:Label ID="Label312" runat="server" Text="Id" ForeColor="#000066"></asp:Label>
                    <asp:Image ID="ImgF1" runat="server" Width="190px" Height="120px"></asp:Image>
                </td>
            </tr>

        </table>

    </form></center>
</body>
</html>