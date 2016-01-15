using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bll.clsUserFacade facade = new bll.clsUserFacade();
            List<bll.clsUser> user = facade.UsersGetAll();
            //bll.clsUser usr;
            bll.clsOrderFacade orfacade = new bll.clsOrderFacade();
            List<bll.clsOrderExtended> orders;
            double[] sumUser;
            sumUser = new double[user.Count];
            for(int i = 0; i < user.Count; i++)
            {
                
                orders =orfacade.OrdersGetByID(user.ElementAt(i).ID.ToString());
                for (int j =0; j<orders.Count; j++)
                {
                    sumUser[i] = sumUser[i] + orders.ElementAt(j).OrderSum;
                }
            }

            double higest = 0;
            for(int i = 0; i < sumUser.Length; i++)
            {
                if (higest < sumUser.ElementAt(i))
                {
                    higest = sumUser.ElementAt(i);
                }
            }

            Label1.Text = higest.ToString();

        }
    }
}