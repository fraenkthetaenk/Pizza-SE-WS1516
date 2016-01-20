using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web.Manager
{
    public partial class ManagerManageUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session.Count == 0)
            //{
            //    Response.Redirect("../Error.aspx");
            //}
            //else
            //{
            //    bll.clsUser user = (bll.clsUser)Session["Current User"];
            //    if (user.Role != 1)
            //    {
            //        Response.Redirect("../Error.aspx");
            //    }
            //}
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            bll.clsUser toInsert = new bll.clsUser();
            try {
                toInsert.Address = inAdress.Text;
                toInsert.Distance = Convert.ToInt32(inDistance.Text);
                toInsert.IsActive = checkActive.Enabled;
                toInsert.Name = inName.Text;
                toInsert.Password = inPassword.Text;
                toInsert.Role = Convert.ToInt32(ListRole.SelectedValue);
                toInsert.Insert(); }
            catch
            {
                lblError.Visible = true;
                lblError.Text = "Etwas ist schiefgelaufen bitte versuchen sie es erneut";
            }
            Response.Redirect("ManagerManageUser.aspx");
        }
    }
}