using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web
{
    public partial class Redirect11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session.Count == 0)
            {
                Response.Redirect("default.aspx");
            }
            else
            {
                bll.clsUser user = (bll.clsUser)Session["Current User"];
                switch (user.Role)
                {
                    case 0:
                        Response.Redirect("Costumer/CostumerDefault.aspx");
                        break;
                    case 1:
                        Response.Redirect("Manager/ManagerDefault.aspx");
                        break;
                    case 2:
                        Response.Redirect("Worker/WorkerDefault.aspx");
                        break;
                }
            }
        }
    }
}