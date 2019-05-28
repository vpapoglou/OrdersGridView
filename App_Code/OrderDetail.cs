using System;

/// <summary>
/// Summary description for OrderDetail
/// </summary>
public class OrderDetail
{
#region Private Member Variables
    private int _orderID;
    private int _productID;
    private int _quantity;
    private decimal _unitPrice;
#endregion

#region Constructors
    public OrderDetail() {}

    public OrderDetail(int orderID, int productID, int quantity, decimal unitPrice)
    {
        this._orderID = orderID;
        this._productID = productID;
        this._quantity = quantity;
        this._unitPrice = unitPrice;
    }
#endregion

#region Public Properties
    public int OrderID
    {
        get
        {
            return _orderID;
        }
        set
        {
            if (value < 0)
                throw new ArgumentException("OrderID must be greater than or equal to zero.");
            else
                _orderID = value;
        }
    }

    public int ProductID
    {
        get
        {
            return _productID;
        }
        set
        {
            if (value < 0)
                throw new ArgumentException("ProductID must be greater than or equal to zero.");
            else
                _productID = value;
        }
    }

    public int Quantity
    {
        get
        {
            return _quantity;
        }
        set
        {
            if (value < 0)
                throw new ArgumentException("Quantity must be greater than or equal to zero.");
            else
                _quantity = value;
        }
    }

    public decimal UnitPrice
    {
        get
        {
            return _unitPrice;
        }
        set
        {
            _unitPrice = value;
        }
    }
    #endregion
}
