using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web.Costumer
{
    public partial class CostumerDefault : System.Web.UI.Page
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
                lblLogedin.Text = user.Name;
            }

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {

            Session.RemoveAll();
            Response.Redirect("../Redirect.aspx");
        }
    }
}