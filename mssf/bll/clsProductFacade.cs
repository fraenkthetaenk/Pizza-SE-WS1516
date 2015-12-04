using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bll
{
    public class clsProductFacade
    {
        clsProductCollection _productCol;

        public clsProductFacade()
        {
            _productCol = new clsProductCollection();
        }

        public List<clsProduct> ProductsGetAll()
        {
            return _productCol.getAllProducts();
        }


    }
}
