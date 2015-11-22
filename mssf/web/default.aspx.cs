using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session.Count == 0)
            {

                lblCurrentuser.Text = "Aktuell ist kein user Angemeldet";
            }
            else
            {
                bll.clsUser currentUser;
                currentUser = (bll.clsUser)Session["Current User"];
                lblCurrentuser.Text = "Aktuell ist "+ currentUser.Name +" angemeldet";

            }

              
        }
    }
}