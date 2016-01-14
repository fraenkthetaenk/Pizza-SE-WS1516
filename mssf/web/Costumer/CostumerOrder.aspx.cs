using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web.Costumer
{
    public partial class CostumerOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Count == 0)
            {
                Response.Redirect("../Error.aspx");
            }
            else
            {
                bll.clsUser user = (bll.clsUser)Session["Current User"];
                if (user.Role != 0)
                {
                    Response.Redirect("../Error.aspx");
                }
            }

        }

        protected void grdProducts_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = grdProducts.SelectedRow;
            DropDownList list2 = row.FindControl("List") as DropDownList;


            //Ab hier noch nicht sicher
            bll.clsProductFacade products;
            products = new bll.clsProductFacade();
            int i = Convert.ToInt32(row.Cells[0].Text);
            bll.clsProduct product = products.ProductGetByID(i);



            bll.clsUser user = (bll.clsUser)Session["Current User"];
            bll.clsOrder order;
            order = new bll.clsOrder();
            bll.clsOrderFacade orders = new bll.clsOrderFacade();
            order.OrderCount = 1;//Convert.ToInt32(inCount.Text);
            order.OrderDate = DateTime.UtcNow;
            //if (inListDelivery.SelectedValue == "true")
            //{
            //    order.OrderDelivery = true;
            //}
            //else
            //{
            //    order.OrderDelivery = false;
            //}
            order.OrderDelivery = true;
            order.OrderExtras = 0;// Convert.ToInt32(inExtras.Text);
            order.OrderSize = Convert.ToInt32(list2.SelectedValue);//Convert.ToInt32(inSize.Text);
            order.OrderStatus = 0;
            order.ProductId = product.Id;
            order.UserId = user.ID;
            order.OrderSum = orders.CalculateOrderPrice(order);




            if (orders.OrderInsert(order))
            {
                lblMessage.Text= "Die Bestellung wurde erfolgreich aufgenommen";
            }

        }
    }
}