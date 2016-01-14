using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bll
{
    public class clsProduct
    {
        private int _id;
        public int Id
        {
            get { return _id; }
            set { _id = value; }
        }
        private String _name;

        public String Name
        {
            get { return _name; }
            set {
                if(String.IsNullOrWhiteSpace(value))
                    {
                    _name = "Product without a name";
                }
                else{
                    _name = value; }
            }
        }
        private double _pricePerUnit;
        public double PricePerUnit
        {
            get { return _pricePerUnit;}
            set { _pricePerUnit = value; }
        }

        private int _category;
        public int Category
        {

            get { return _category; }
            set { _category = value; } 
        }

        private String _categoryName;
        public String CategoryName
        {
            get
            {
                return _categoryName;
            }
            set { _categoryName = value; }
        }
        private String _unit;
            public String Unit
        {
            get { return _unit; }
            set { _unit = value; }

        }

        private double _pricePerExtra;

        public double PricePerExtra
        {
            get { return _pricePerExtra; }
            set { _pricePerExtra = value; }
        }

        private bool _isActive;

        public bool IsActive
        {
            get { return _isActive; }
            set { _isActive = value; }
        }
    }
}
