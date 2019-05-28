using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;

/// <summary>
/// Summary description for ProductDAL
/// </summary>
public class ProductDAL
{
    public static List<Product> GetProducts()
    {
        return GetProducts(int.MaxValue, 0, string.Empty);
    }

    public static List<Product> GetProducts(int maximumRows, int startRowIndex)
    {
        return GetProducts(maximumRows, startRowIndex, string.Empty);
    }

    public static List<Product> GetProducts(string SortExpression)
    {
        return GetProducts(int.MaxValue, 0, SortExpression);
    }

    public static List<Product> GetProducts(int maximumRows, int startRowIndex, string SortExpression)
    {
        // returns a list of Product instances based on the
        // data in the Northwind Products table
        string sql = @"SELECT ProductID, ProductName, QuantityPerUnit, UnitPrice, UnitsInStock
                        FROM Products";
        if (SortExpression != string.Empty)
            sql += " ORDER BY " + SortExpression;

        using (SqlConnection myConnection = new SqlConnection(ConfigurationManager  .ConnectionStrings["NWConnectionString"].ConnectionString))
        {
            // Place the data in a DataTable
            SqlCommand myCommand = new SqlCommand(sql, myConnection);
            SqlDataAdapter myAdapter = new SqlDataAdapter(myCommand);

            myConnection.Open();

            DataTable dt = new DataTable();
            myAdapter.Fill(dt);

            List<Product> results = new List<Product>();

            int currentIndex = startRowIndex;
            int itemsRead = 0;
            int totalRecords = dt.Rows.Count;

            while (itemsRead < maximumRows && currentIndex < totalRecords)
            {
                Product product = new Product();

                product.ProductID = Convert.ToInt32(dt.Rows[currentIndex]["ProductID"]);
                product.ProductName = dt.Rows[currentIndex]["ProductName"].ToString();
                product.QuantityPerUnit = dt.Rows[currentIndex]["QuantityPerUnit"].ToString();
                if (dt.Rows[currentIndex]["UnitPrice"].Equals(DBNull.Value))
                    product.UnitPrice = 0;
                else
                    product.UnitPrice = Convert.ToDecimal(dt.Rows[currentIndex]["UnitPrice"]);
                if (dt.Rows[currentIndex]["UnitsInStock"].Equals(DBNull.Value))
                    product.UnitsInStock = 0;
                else
                    product.UnitsInStock = Convert.ToInt32(dt.Rows[currentIndex]["UnitsInStock"]);

                results.Add(product);

                itemsRead++;
                currentIndex++;
            }

            myConnection.Close();

            return results;
        }
    }
    
    public static void UpdateProduct(int original_ProductID, string productName, decimal unitPrice, int unitsInStock)
    {
        // Updates the Products table
        string sql = "UPDATE Products SET ProductName = @ProductName, UnitPrice = @UnitPrice, UnitsInStock = @UnitsInStock WHERE ProductID = @ProductID";

        using (SqlConnection myConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["NWConnectionString"].ConnectionString))
        {
            SqlCommand myCommand = new SqlCommand(sql, myConnection);

            myCommand.Parameters.Add(new SqlParameter("@ProductName", productName));
            myCommand.Parameters.Add(new SqlParameter("@UnitPrice", unitPrice));
            myCommand.Parameters.Add(new SqlParameter("@UnitsInStock", unitsInStock));
            myCommand.Parameters.Add(new SqlParameter("@ProductID", original_ProductID));

            myConnection.Open();
            myCommand.ExecuteNonQuery();
            myConnection.Close();
        }
    }

}
