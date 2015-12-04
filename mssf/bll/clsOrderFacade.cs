using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bll
{
    /// <summary>
    /// clsOrderFacade: nach außen hin sichtbare Methoden bzgl. Order-Verwaltung
    /// das meiste wird direkt an clsOrderCollection-Methoden durchgereicht
    /// </summary>
    public class clsOrderFacade
    {
        clsOrderCollection _orderCol;  // Objektvariable für Order-Collection, wird im Konstruktor instantiiert 
        /// <summary>
        /// Konstruktor, instatiiert _orderCol
        /// </summary>
        public clsOrderFacade()
        {
            _orderCol = new clsOrderCollection();
        }

        /// <summary>
        /// Alle Orders lesen
        /// </summary>
        /// <returns>Liste der Order</returns>
        public List<clsOrderExtended> OrdersGetAll()
        {
            return _orderCol.getAllOrders();
        } // OrdersGetAll()

        /// <summary>
        /// OrderInsert
        /// </summary>
        /// <param name="_newOrder"></param>
        /// <returns>true fals insert erfolgreich</returns>
        public bool OrderInsert(clsOrder _newOrder)
        {
            if (_orderCol.InsertOrder(_newOrder) == 1)
                return true;
            else
                return false;
        } // OrderInsert()

        /// <summary>
        /// Preisberechnung der Bestellung - noch nicht implementiert
        /// </summary>
        /// <param name="_newOrder"></param>
        /// <returns>berechneter Preis</returns>
        public double CalculateOrderPrice(clsOrder _newOrder)
        {
            bll.clsProductFacade products;
            products = new bll.clsProductFacade();
            List<bll.clsProduct> List;
            List = products.ProductsGetAll();
            int i = 0;
            bool found = false;

            while (found == false && i < List.Count)
            {
                if (List.ElementAt(i).Id == _newOrder.ProductId)
                {
                    found = true;
                }
                else
                {
                    i = i + 1;
                }
            }
            double price = 0;
            price = price + ((Convert.ToDouble(_newOrder.OrderSize) * List.ElementAt(i).PricePerUnit) * _newOrder.OrderCount);
            price = price + ((_newOrder.OrderExtras * List.ElementAt(i).PricePerExtra) * _newOrder.OrderCount);
           // hier müsste die Preisberechnungsroutine hin
            return price;
        } // CalculateOrderPrice()

        public List<clsOrderExtended> OrdersGetByID(String userID)
        {
            List<clsOrderExtended> listAll = new List<clsOrderExtended>();
            listAll = _orderCol.getAllOrders();
            List<clsOrderExtended> listID = new List<clsOrderExtended>();
            for (int i = 0; i < listAll.Count; i = i + 1)
            {
                if (listAll.ElementAt(i).UserId == Convert.ToInt32(userID))
                {
                    listID.Add(listAll.ElementAt(i));
                }
            }
            return listID;
        }
            

        } // clsOrderFacade
}
