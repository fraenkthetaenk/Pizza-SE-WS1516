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
                linkMyOrders.Visible = false;
                lblCurrentuser.Text = "Aktuell ist kein user Angemeldet";
                lblNotLogedIn.Visible = true;
                linkOrder.Visible = false;

            }
            else
            {
                bll.clsUser currentUser;
                currentUser = (bll.clsUser)Session["Current User"];
                lblCurrentuser.Text = "Aktuell ist "+ currentUser.Name +" angemeldet";
                switch (currentUser.Role)
                {
                    case 0:
                        lblKunde.Visible = true;
                        linkRegister.Visible = false;
                        linkLogin.Visible = false;
                        break;

                    case 1:
                        lblManger.Visible = true;
                        linkUnregister.Visible = false;
                        linkOrder.Visible = false;
                        linkRegister.Visible = false;
                        linkLogin.Visible = false;
                        linkMyOrders.Text = "Bestellungen";
                        break;
                    case 2:
                        lblMitarbeiter.Visible = true;
                        linkUnregister.Visible = false;
                        linkOrder.Visible = false;
                        linkRegister.Visible = false;
                        linkLogin.Visible = false;
                        linkMyOrders.Text = "Bestellungen";
                        break;



                }

            }

              
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("default.aspx");
        }
    }
}