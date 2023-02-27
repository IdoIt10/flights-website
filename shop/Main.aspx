<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order</title>
    <style type="text/css">
        body {
            background-image: url("Pics/Back.bmp");
            height: 570px;
            background-position: right;
             background-repeat:no-repeat;
            background-size: contain;
            background-color:#eeeeee;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style7 {
            height: 7px;
            width: 260px;
        }
        .auto-style11 {
            height: 17px;
        }
        .auto-style15 {
            height: 112px;
            width: 64px;
        }
        .auto-style16 {
            height: 17px;
            width: 260px;
        }
        .auto-style19 {
            height: 17px;
            width: 83px;
        }
        .auto-style20 {
            height: 112px;
            width: 83px;
        }
        .auto-style21 {
            height: 112px;
            width: 5px;
        }
        .auto-style22 {
            height: 17px;
            width: 5px;
        }
        .auto-style23 {
            height: 17px;
            width: 183px;
        }
        .auto-style24 {
            height: 112px;
            width: 183px;
        }
    </style>
</head>
<body>
    
     

    <form id="form1" runat="server">
        

        <table cellspacing="30">
           

            <tr>
                <%--<th style="color:darkblue; font-size: 20px;" class="auto-style13">
                    Flight Information
                </th>--%>

                

                <td style="font-weight:bold; vertical-align:middle; font-size:15px" class="auto-style7">
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="16px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="270px" OnSelectionChanged="Calendar1_SelectionChanged" CssClass="auto-style5" ShowGridLines="True">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                        <DayStyle Width="14%" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                        <TodayDayStyle BackColor="#CCCC99" />
                    </asp:Calendar>
                        <p>departure date: </p>
                        <asp:Label ID="Lblmydate" runat="server" Text="" ForeColor="#000066"></asp:Label>
                    <asp:Label ID="LblDate" runat="server" ForeColor="#eeeeee">                            </asp:Label>
                </td>

                <td style="font-weight:bold; vertical-align:middle; font-size:15px" class="auto-style7">
                    <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="16px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="270px" OnSelectionChanged="Calendar2_SelectionChanged" CssClass="auto-style5" ShowGridLines="True" BorderStyle="None">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                        <DayStyle Width="14%" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                        <TodayDayStyle BackColor="#CCCC99" />
                    </asp:Calendar>
                        
                        <p>return date: </p>
                        <asp:Label ID="Lblmydate0" runat="server" Text="" ForeColor="#000066"></asp:Label>
                    <asp:Label ID="LblDate0" runat="server" ForeColor="#eeeeee">                            </asp:Label>
                </td>

                <td style="text-align:left" class="auto-style22">
                    <p style="color:darkblue; font-size:20px">Personal preferences</p>
                    <asp:Panel ID="Panel2" runat="server"  BorderStyle="Solid" Height="62px" Width="134px">
                        <asp:CheckBox ID="preCheap" Text="The cheapest" runat="server" OnCheckedChanged="PreCheap_CheckedChanged" AutoPostBack="True"></asp:CheckBox><br />
                        <asp:CheckBox ID="preBeP" Text="The best plane" runat="server" AutoPostBack="True" OnCheckedChanged="PreBeP_CheckedChanged"></asp:CheckBox><br />
                        <asp:CheckBox ID="prePWW" Text="Plane with wifi" runat="server" AutoPostBack="True" OnCheckedChanged="PrePWW_CheckedChanged"></asp:CheckBox>
                    </asp:Panel>
                </td>

                <td style="text-align:left" class="auto-style23">
                     <p style="color:darkblue; font-size:20px">Class</p>
                    <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" Height="64px" Width="226px">
                        <asp:RadioButton ID="class11" runat="server" Font-Size="Large" Text="Economy Class" Checked="True" ForeColor="#339966" OnCheckedChanged="Class11_CheckedChanged" GroupName="bb" AutoPostBack="True"></asp:RadioButton><br />
                        <asp:RadioButton ID="class2" runat="server" BorderColor="White" Font-Size="Large" ForeColor="#339966" OnCheckedChanged="Class2_CheckedChanged" Text="Business class (100$ more)" GroupName="bb" AutoPostBack="True"></asp:RadioButton>
                        <asp:RadioButton ID="class3" runat="server" Font-Size="Large" ForeColor="#339966" Text="First Class (150$ more)" GroupName="bb" OnCheckedChanged="Class3_CheckedChanged" AutoPostBack="True"></asp:RadioButton><br />
                    </asp:Panel>
                </td>

                

                <td class="auto-style15">
                    <asp:Image ID="Img1" runat="server" Height="70px" Width="70px" ImageAlign="Middle" ImageUrl="~/Pics/מחלקת תיירים.jpg"></asp:Image>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <%--<asp:Image ID="Img2" runat="server" Height="70px" Width="70px" ImageAlign="Middle" ImageUrl="~/Pics/רקע לבן.jpg"></asp:Image>--%>
                </td>

                

                
                <%--<td class="auto-style6">
                    <asp:Image ID="Img3" runat="server" Height="70px" Width="70px" ImageAlign="Middle" ImageUrl="~/Pics/Harddisk.bmp"></asp:Image>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Img4" runat="server" Height="70px" Width="70px" ImageAlign="Middle" ImageUrl="~/Pics/רקע לבן.jpg"></asp:Image>
                </td>--%>
</tr>
            <tr>
                <td style="text-align:left" class="auto-style19">
                     <p style="color:darkblue; font-size:20px">Meals</p>
                    <asp:ListBox ID="Meals" runat="server" Font-Size="Small" ForeColor="#339966" Width="171px" Height="68px" AutoPostBack="True" OnSelectedIndexChanged="Meals_SelectedIndexChanged"></asp:ListBox>
                </td>


                <td class="auto-style11">
                    <asp:DropDownList ID="Droppayment" runat="server" Height="20px" Width="106px" AutoPostBack="True" OnSelectedIndexChanged="Droppayment_SelectedIndexChanged">

                    </asp:DropDownList>
                </td>

                <td class="auto-style22">
                    <br />
&nbsp;<asp:Image ID="Img5" runat="server" Height="70px" Width="70px" ImageAlign="Middle" ImageUrl="~/Pics/Dollar.bmp"></asp:Image>
                    <asp:Image ID="Img6" runat="server" Height="70px" Width="70px" ImageAlign="Middle" ImageUrl="~/Pics/רקע לבן.jpg"></asp:Image>
                </td>

                <td style="font-size: 15px;" class="auto-style24" id="File">
                     <p style="color:darkblue; font-size:20px">Upload a passport photo and a photocopy of the payer's ID card</p>
                        passport <asp:FileUpload ID="FileUpload1" runat="server" EnableTheming="True"></asp:FileUpload> 
                     ID <asp:FileUpload ID="FileUpload2" runat="server" EnableTheming="True"></asp:FileUpload>
                        <br />
                    <b>!</b>Please make sure the passport is valid, otherwise you will not be able to board the flight<b>!</b>
                </td>

                </tr>
                
                <%--<td style="font-weight:bold; vertical-align:middle; font-size:40px" class="auto-style12">
                    <center>
                        <asp:Label ID="Label1" runat="server" Text="Label">
                    </asp:Label>
                    </center>
                </td>--%>

            

            <tr>
                <td class="auto-style11">
                     <p style="color:darkblue; font-size:20px">*by cities</p>
                    from: <input type="text" value="City" id="From" name="From"/>
                    <br />
                    destination: <input type="text" value="City"  id="Dep" name="Dep"/>
                </td>
                
                <td style="font-size: 15px;" class="auto-style20" id="names">
                     <p style="color:darkblue; font-size:20px">passengers names: </p>
                    <input type="text" name="Names" id="Names"/>
                </td>

                <td style="font-size: 15px;" class="auto-style21">
                    <p style="color:darkblue; font-size:20px">number of passengers: </p>
                    <input type="number" name="hm" id="hm" value="1"/>
                    <br />
                    50$ discount for 5
                    <br />
                    people or more
                </td>

            </tr>


            



                <tr style="">


                <td class="auto-style16" style="font-size: 20px">
                    <asp:Label ID="Label2" runat="server" Text="Class: " ForeColor="#000066"></asp:Label>
                    <asp:Label ID="Lblpc" runat="server" Text="Economy Class" ForeColor="Red"></asp:Label><br />

                    <asp:Label ID="Label3" runat="server" Text="Preferences: " ForeColor="#000066"></asp:Label>
                    <asp:Label ID="Lbloffice" runat="server" ForeColor="Red"></asp:Label><br />

                    <asp:Label ID="Label4" runat="server" Text="Meals: " ForeColor="#000066"></asp:Label>
                    <asp:Label ID="Lblextra" runat="server" Text="Regular meal" ForeColor="Red"></asp:Label><br />

                    <asp:Label ID="Label5" runat="server" Text="Payment: " ForeColor="#000066"></asp:Label>
                    <asp:Label ID="Lblcash" runat="server" Text="Cash" ForeColor="Red"></asp:Label><br />
                </td>

                     <td>
                    <asp:Button ID="Button1" runat="server" Text="Order" Height="40px" Font-Size="30px" OnClick="Btnorder_Click" Width="115px"></asp:Button>
</td>


                    </tr>
                

        </table>
    </form>
</body>
</html>
