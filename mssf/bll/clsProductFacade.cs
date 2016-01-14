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
        public List<clsProduct> ProductsGetAllActive()
        {
            List<clsProduct> allProducts = ProductsGetAll();
            List<clsProduct> ActiveProducts = new List<clsProduct>();
            for(int i =0; i<allProducts.Count; i = i +1) {
                if (allProducts.ElementAt(i).IsActive)
                {
                    ActiveProducts.Add(allProducts.ElementAt(i));
                }
            }
            return ActiveProducts;
        }

        public clsProduct ProductGetByID(int _ID)
        {
            List<clsProduct> allProducts = ProductsGetAll();
            for (int i = 0; i < allProducts.Count; i = i + 1)
            {
                if (allProducts.ElementAt(i).Id == _ID)
                {
                    return allProducts.ElementAt(i);
                }
            }
            return null;

        }


    }
}
