using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session.Count == 0)
            //{
            //    lblError.Visible = true;
            //    grdProducts.Visible = false;
            //    btnOrder.Visible = false;
            //    inOrderlist.Visible = false;
            //    lblCount.Visible = false;
            //    inCount.Visible = false;
            //    lblExtras.Visible = false;
            //    inExtras.Visible = false;
            //    inSize.Visible = false;
            //    lblSize.Visible = false;
            //    inListDelivery.Visible = false;

            //    linkLogin.Visible = true;
            //    lblError.Text = "Bitte loggen sie sich ein, bevor sie eine Bestellung aufgeben.";
            //}



        }

        protected void btnOrder_Click(object sender, EventArgs e)
        {
            bll.clsProductFacade products;
            products = new bll.clsProductFacade();
            List<bll.clsProduct> List;
            List = products.ProductsGetAll();
            int i = 0;
            bool found = false;

            while (found == false && i < List.Count)
            {
                if (List.ElementAt(i).Id == Convert.ToInt32(inOrderlist.SelectedValue))
                {
                    found = true;
                }
                else
                {
                    i = i + 1;
                }
            }


            bll.clsUser user = (bll.clsUser)Session["Current User"];
            bll.clsOrder order;
            order = new bll.clsOrder();
            bll.clsOrderFacade orders = new bll.clsOrderFacade();
            order.OrderCount = Convert.ToInt32(inCount.Text);
            order.OrderDate = DateTime.UtcNow;
            if (inListDelivery.SelectedValue == "true")
            {
                order.OrderDelivery = true;
            }
            else
            {
                order.OrderDelivery = false;
            }
            order.OrderExtras = Convert.ToInt32(inExtras.Text);
            order.OrderSize = Convert.ToInt32(inSize.Text);
            order.OrderStatus = 0;
            order.ProductId = List.ElementAt(i).Id;
            order.UserId = user.ID;
            order.OrderSum = orders.CalculateOrderPrice(order);




            if (orders.OrderInsert(order))
            {
                Response.Redirect("default.aspx");
            }
        }

        protected void grdProducts_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Select Scheint die richtige Methode zu sein
            // int i=e.Row.RowIndex;
            GridViewRow row = grdProducts.SelectedRow;
            DropDownList list2 = row.FindControl("List") as DropDownList;
            lblError.Visible = true;
            lblError.Text = list2.SelectedValue;
            lblError.Text = row.Cells[1].Text;


        }


    }
}