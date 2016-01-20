using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace bll
{
    public class clsProductCollection : clsBLLCollections
    {
        string _databaseFile;
        DAL.DALObjects.dDataProvider _myDAL;
        /// <summary>
        /// Product-Collection Konstruktor stellt Verbindung zur Datenbank her
        /// </summary>
        /// 
        internal clsProductCollection()
        {
            _databaseFile = System.Configuration.ConfigurationManager.AppSettings["AccessFileName"];
            _myDAL = DAL.DataFactory.GetAccessDBProvider(_databaseFile);
        }

        internal    List<clsProduct> getAllProducts()
        {
            DataSet _myDataSet = _myDAL.GetStoredProcedureDSResult("QPGetAllProducts");
            DataTable _myDataTable = _myDataSet.Tables[0];
            List<clsProduct> _myProductList = new List<clsProduct>();
            foreach (DataRow _dr in _myDataTable.Rows)
            {
                clsProduct _myProduct = DatarowToClsProduct(_dr);
                _myProductList.Add(_myProduct);
            }
            return _myProductList;
        }

        internal clsProduct DatarowToClsProduct(DataRow _dr)
        {
            clsProduct _myProduct = new clsProduct();
            _myProduct.Id = AddIntFieldValue(_dr, "PID");
            _myProduct.Name = AddStringFieldValue(_dr, "PName");
            _myProduct.Category = AddIntFieldValue(_dr, "PFKCategory"); 
            _myProduct.CategoryName = AddStringFieldValue(_dr, "CName");
            _myProduct.Unit = AddStringFieldValue(_dr, "CUnit");
            _myProduct.PricePerUnit = AddDoubleFieldValue(_dr, "PPricePerUnit");
            _myProduct.PricePerExtra = AddDoubleFieldValue(_dr, "PPricePerExtra");
            _myProduct.IsActive = AddBoolFieldValue(_dr, "PSell");
            
            return _myProduct;
        }

        public int UpdateProduct(clsProduct _Product)
        {

            // Übergabeparameter hinzufügen 
            // (Parameter in derselben Reihenfolge wie in der Access-Query)
            _myDAL.AddParam("Name", _Product.Name, DAL.DataDefinition.enumerators.SQLDataType.VARCHAR);
            _myDAL.AddParam("Category", _Product.Category, DAL.DataDefinition.enumerators.SQLDataType.INT);
            _myDAL.AddParam("PPU", _Product.PricePerUnit, DAL.DataDefinition.enumerators.SQLDataType.DOUBLE);
            _myDAL.AddParam("Active", _Product.IsActive, DAL.DataDefinition.enumerators.SQLDataType.BOOL);
            _myDAL.AddParam("PPE", _Product.PricePerExtra, DAL.DataDefinition.enumerators.SQLDataType.DOUBLE);
            _myDAL.AddParam("ID", _Product.Id, DAL.DataDefinition.enumerators.SQLDataType.INT);

            //Ausführen und veränderte Zeilen zurückgeben
            int _changedSets = _myDAL.MakeStoredProcedureAction("QUUpdateProductByID");

            return _changedSets;
        } //updatProduct()


        public int InsertProduct(clsProduct _Product)
        {
            // die Übergabeparameter hinzufügen 
            // (Parameter in derselben Reihenfolge wie in der Access-Query)
            _myDAL.AddParam("Name", _Product.Name, DAL.DataDefinition.enumerators.SQLDataType.VARCHAR);
            _myDAL.AddParam("Category", _Product.Category, DAL.DataDefinition.enumerators.SQLDataType.INT);
            _myDAL.AddParam("PPU", _Product.PricePerUnit, DAL.DataDefinition.enumerators.SQLDataType.DOUBLE);           
            _myDAL.AddParam("PPE", _Product.PricePerExtra, DAL.DataDefinition.enumerators.SQLDataType.DOUBLE);
            _myDAL.AddParam("Active", _Product.IsActive, DAL.DataDefinition.enumerators.SQLDataType.BOOL);


            //Ausführen und veränderte Zeilen zurückgeben
            int _changedSets = _myDAL.MakeStoredProcedureAction("QPInsertProduct");

            return _changedSets;
        } //insertProduct()
    }
}
