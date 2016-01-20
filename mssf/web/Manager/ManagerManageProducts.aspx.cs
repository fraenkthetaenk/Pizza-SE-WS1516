using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web.Manager
{
    public partial class ManagerManageProducts : System.Web.UI.Page
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
            bll.clsProduct toInsert= new bll.clsProduct();
            try {
                toInsert.Category = Convert.ToInt32(ListCategoty.SelectedValue);
                toInsert.IsActive = checkActive.Enabled;
                toInsert.Name = inName.Text;
                toInsert.PricePerExtra = Convert.ToDouble(inPPE.Text);
                toInsert.PricePerUnit = Convert.ToDouble(inPPU.Text);
                toInsert.Insert();
            }
            catch
            {
                lblError.Visible = true;
                lblError.Text = "Es gab einen Fehler bitte Versuchen sie es Erneut";
                
            }
           
        }
    }
}