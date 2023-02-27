using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Main : System.Web.UI.Page
{
    private static Order order = null;
    private static ArrayList list = new ArrayList();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            Meals.Items.Add("Regular meal");
            Meals.Items.Add("Vegan meal");
            Meals.Items.Add("Kosher meal");

            Meals.SelectedIndex = 0;

            order = new Order();
            

            Meals.SelectedIndex = 0;

            Droppayment.Items.Add("Cash");
            Droppayment.Items.Add("Check");
            Droppayment.Items.Add("Credit Card");

            LblDate.Text = DateTime.Today.ToShortDateString();

            LblDate0.Text = DateTime.Today.ToShortDateString();

            order.SetList(list);

            

        }
    }

    private void ShowList()
    {
        string st = "";

        for (int i = 0; i < list.Count; i++)
        {
            if (i == list.Count - 1)
                st += list[i];
            else
                st += list[i] + ", ";
        }
        Lbloffice.Text = st;
    }

    private void Search_Delete(string item)
    {
        bool found = false;
        int index = 0;
        while (index < list.Count && found == false)
        {
            if (list[index].ToString().Equals(item) == true)
            {
                list.RemoveAt(index);
                found = true;
            }
            else
            {
                index++;
            }
        }
    }

   

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        LblDate.Text = Calendar1.SelectedDate.ToShortDateString();
        order.SetDate(LblDate.Text);
        Lblmydate.Text = Calendar1.SelectedDate.ToShortDateString();
    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        LblDate0.Text = Calendar2.SelectedDate.ToShortDateString();
        order.SetDate2(LblDate0.Text);
        Lblmydate0.Text = Calendar2.SelectedDate.ToShortDateString();
    }

    protected void Meals_SelectedIndexChanged(object sender, EventArgs e)
    {
        int index = Meals.SelectedIndex;
        switch (index)
        {
            case 0:
                order.SetExtra("Regular meal");
                Lblextra.Text = "Regular meal";
                break;
            case 1:
                order.SetExtra("Vegan meal");
                Lblextra.Text = "Vegan meal";
                break;
            case 2:
                order.SetExtra("Kosher meal");
                Lblextra.Text = "Kosher meal";
                break;
        }
    }

    


    protected void Droppayment_SelectedIndexChanged(object sender, EventArgs e)
    {
        int index = Droppayment.SelectedIndex;
        switch (index)
        {
            case 0:
                Img5.ImageUrl = "~/pics/Dollar.bmp";
                order.SetPay("Cash");
                Lblcash.Text = "Cash";
                break;
            case 1:
                Img5.ImageUrl = "~/pics/Check.bmp";
                order.SetPay("Check");
                Lblcash.Text = "Check";
                break;
            case 2:
                Img5.ImageUrl = "~/pics/Credit Card.jpg";
                order.SetPay("Credit Card");
                Lblcash.Text = "Credit Card";
                break;
        }
    }


    protected void PreCheap_CheckedChanged(object sender, EventArgs e)
    {
        if (preCheap.Checked == true)
        {
            list.Add("The cheapest");
        }
        else
        {
            Search_Delete("The cheapest");
        }
        ShowList();

        order.SetList(list);
    }

    protected void PreBeP_CheckedChanged(object sender, EventArgs e)
    {
        if (preCheap.Checked == true)
        {
            list.Add("The best plane");

        }
        else
        {
            Search_Delete("The best plane");
        }
        ShowList();

        order.SetList(list);
    }

    protected void PrePWW_CheckedChanged(object sender, EventArgs e)
    {
        if (preCheap.Checked == true)
        {
            list.Add("Plane with wifi");

        }
        else
        {
            Search_Delete("Plane with wifi");
        }
        ShowList();

        order.SetList(list);
    }

    

    protected void Class11_CheckedChanged(object sender, EventArgs e)
    {

        Img1.ImageUrl = "~/pics/מחלקת תיירים.jpg";

        order.SetComputer("tur");

        Lblpc.Text = "economy class";
    }

    

    protected void Class3_CheckedChanged (object sender, EventArgs e)
    {

        Img1.ImageUrl = "~/pics/מחלקה 1.jpg";

        order.SetComputer("First Class");

        Lblpc.Text = "first Class";
    }

    protected void Class2_CheckedChanged(object sender, EventArgs e)
    {

        Img1.ImageUrl = "~/pics/ביזנס.png";

        order.SetComputer("Business class");

        Lblpc.Text = "business class";
    }



    protected void Btnorder_Click(object sender, EventArgs e)
    {
        string path1 = Server.MapPath("id");
        if (FileUpload2.HasFile)
        {
            FileUpload2.SaveAs(path1 + FileUpload2.FileName);
            order.SetPic1("id" + FileUpload2.FileName);
        }

        string path = Server.MapPath("passport");
        if(FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(path + FileUpload1.FileName);
            order.SetPic("passport" + FileUpload1.FileName);
        }

        

        Random rnd = new Random();
        string flight = "";
        flight = "ly";
        int nums = rnd.Next(100,1000);
        Session["flight"] = flight + nums;

        string user = Request.Form["names"];
        Session["names"] = user;

        string amount = Request.Form["hm"];
        Session["hm"] = amount;

        string place1 = Request.Form["From"];
        Session["From"] = place1;

        string place2 = Request.Form["Dep"];
        Session["Dep"] = place2;

        string meal = Request.Form["Meals"];
        Session["Meals"] = meal;

        string File = Request.Form["File0"];
        Session["File0"] = File;


        int price = int.Parse(amount) * 200;


        if (Lblpc.Text == "first Class")
            price += 150 * int.Parse(amount);

        if (Lblpc.Text == "economy class")
            price += 0;

        if (Lblpc.Text == "business class")
            price += 100 * int.Parse(amount);

        if (int.Parse(amount)>=5)
            price-=50;

        string amont = price.ToString();
        Session["price"] = price;

        Session["MyOrder"] = order;
        
        Response.Redirect("Recipt.aspx");
    }
}