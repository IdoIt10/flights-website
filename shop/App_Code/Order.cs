using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;

/// <summary>
/// Summary description for Order
/// </summary>
public class Order
{
    private string computer;
    private string extra;

    private string date;
    private string date2;
    private string payment;
    private string pic;
    private string pic1;
    private ArrayList list_office;

    public Order()
    {
        this.computer = "Economy Class";
        this.extra = "Extra Hard Disk";
        this.date = DateTime.Now.ToShortDateString();
        this.date2 = DateTime.Now.ToShortDateString();
        this.payment = "Cash";
    }

    public void SetComputer(string type)
    {
        this.computer = type;
    }

    public string GetComputer()
    {
        return this.computer;
    }

    public void SetPic(string newpic)
    {
        this.pic = newpic;
    }

    public string GetPic()
    {
        return this.pic;
    }

    public void SetPic1(string newpic1)
    {
        this.pic1 = newpic1;
    }

    public string GetPic1()
    {
        return this.pic1;
    }

    public void SetDate(string newdate)
    {
        this.date = newdate;
    }

    public string GetDate()
    {
        return this.date;
    }

    public void SetDate2(string newdate2)
    {
        this.date2 = newdate2;
    }

    public string GetDate2()
    {
        return this.date2;
    }

    public void SetPay(string newpay)
    {
        this.payment = newpay;
    }

    public string GetPay()
    {
        return this.payment;
    }


    public ArrayList GetList()
    {
        return this.list_office;
    }

    public void SetList(ArrayList list)
    {
        this.list_office = list;
    }

    public void SetExtra(string newextra)
    {
        this.extra = newextra;
    }

    public string GetExtra()
    {
        return this.extra;
    }

}