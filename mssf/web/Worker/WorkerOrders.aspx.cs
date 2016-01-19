using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web.Worker
{
    public partial class WorkerOrders : System.Web.UI.Page
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
                if (user.Role != 2)
                {
                    Response.Redirect("../Error.aspx");
                }
            }
        }

        protected void grdActiveOrders_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = grdActiveOrders.SelectedRow;
            bll.clsOrder toUpdate = new bll.clsOrder();
            toUpdate.OrderStatus = Convert.ToInt32(row.Cells[12].Text) +1;
            toUpdate.ID = Convert.ToInt32(row.Cells[2].Text);
            if (toUpdate.OrderStatus == 3) {
                toUpdate.OrderDeliveryDate =DateTime.UtcNow;
            }
            toUpdate.Update();
            Response.Redirect("WorkerOrders.aspx");
           
        }
    }
}