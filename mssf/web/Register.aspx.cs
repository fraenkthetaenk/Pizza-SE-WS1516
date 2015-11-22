using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            bll.clsUser newUser = new bll.clsUser();
            newUser.Address = inAdress.Text;
            newUser.Distance = Convert.ToInt32(inDistance.Text);
            newUser.IsActive = isActive.Checked;
            newUser.Name = inUsername.Text;
            newUser.Password = inPassword.Text;
            newUser.Role = Convert.ToInt32(inRole.SelectedValue);
            newUser.Insert();

        }
    }
}