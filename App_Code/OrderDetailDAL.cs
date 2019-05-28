using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System;

/// <summary>
/// Summary description for OrderDetailDAL
/// </summary>
public class OrderDetailDAL
{
    public static List<OrderDetail> GetOrderDetailsByProductID(int productID)
    {
        // returns a list of OrderDetail instances for a particular product based on the
        // data in the Northwind Products table
        string sql = "SELECT OrderID, UnitPrice, Quantity FROM [Order Details] WHERE ProductID = @ProductID";

        using (SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["NWConnectionString"].ConnectionString))
        {
            SqlCommand myCommand = new SqlCommand(sql, myConnection);
            myCommand.Parameters.Add(new SqlParameter("@ProductID", productID));

            myConnection.Open();

            SqlDataReader reader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);

            List<OrderDetail> results = new List<OrderDetail>();

            while (reader.Read())
            {
                OrderDetail detail = new OrderDetail();

                detail.OrderID = Convert.ToInt32(reader["OrderID"]);
                detail.ProductID = productID;
                detail.Quantity = Convert.ToInt32(reader["Quantity"]);
                detail.UnitPrice = Convert.ToDecimal(reader["UnitPrice"]);

                results.Add(detail);
            }

            reader.Close();
            myConnection.Close();

            return results;
        }
    }


    public static void DeleteOrderDetail(int original_OrderID, int original_ProductID)    
    {
        // deletes a specified Order Details record from the Northwind Products table
        string sql = "DELETE FROM [Order Details] WHERE OrderID = @OrderID AND ProductID = @ProductID";

        using (SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["NWConnectionString"].ConnectionString))
        {
            SqlCommand myCommand = new SqlCommand(sql, myConnection);
            myCommand.Parameters.Add(new SqlParameter("@OrderID", original_OrderID));
            myCommand.Parameters.Add(new SqlParameter("@ProductID", original_ProductID));

            myConnection.Open();
            myCommand.ExecuteNonQuery();
            myConnection.Close();
        }
    }
}
