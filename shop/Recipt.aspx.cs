using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class Recipt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Order MyOrder = (Order) Session["MyOrder"];
        LblComp.Text = MyOrder.GetComputer();

        ArrayList list = MyOrder.GetList();

        string st = "";

        for (int i = 0; i < list.Count; i++)
        {
            if (i == list.Count - 1)
                st += list[i];
            else
                st += list[i] + ", ";
        }
        LblOffice.Text = st;

        //LblExtra.Text = MyOrder.GetExtra();

        LblPay.Text = MyOrder.GetPay();

        LblDate.Text = MyOrder.GetDate()+ " -";

        LblDate0.Text = MyOrder.GetDate2();

        ImgF.ImageUrl = MyOrder.GetPic();

        ImgF1.ImageUrl = MyOrder.GetPic1();
    }
}