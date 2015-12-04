using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web
{
    public partial class MyOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bll.clsUser logedIn = (bll.clsUser)Session["Current User"];
            lblUserID.Text = Convert.ToString(logedIn.ID);
            if (logedIn.Role == 0)
            {
                ViewID.Visible = true;
            }
            else
            {
                ViewAll.Visible = true;
            }
        }
    }
}