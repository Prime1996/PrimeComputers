using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ProductModel
/// </summary>
public class ProductModel
{
    public string InsertProduct(Product product)
    {
        try
        {
            ShopDBEntities db = new ShopDBEntities();
            db.Products.Add(product);
            db.SaveChanges();

            return product.Name + "Was successfully inserted";
        }
        catch (Exception e)
        {
            return "Error" + e;
        }
    }
    public string UpdateProduct(int id, Product product)
    {
        try
        {
            ShopDBEntities db = new ShopDBEntities();
            //fetch object from db
            Product p = db.Products.Find(id);

            p.Name = product.Name;
            p.Price = product.Price;
            p.TypeId = product.TypeId;
            p.Description = product.Description;
            p.Image = product.Image;

            db.SaveChanges();
            return product.Name + "Was successfully updated";
        }
        catch (Exception e)
        {
            return "Error" + e;
        }
    }
    public string DeleteProduct(int id)
    {
        try
        {
            ShopDBEntities db = new ShopDBEntities();
            Product product = db.Products.Find(id);
            db.Products.Attach(product);
            db.Products.Remove(product);
            db.SaveChanges();

            return product.Name + "Was successfully deleted";
        }
        catch (Exception e)
        {
            return "Error" + e;
        }
    }

    public Product GetProduct(int id)
    {
        try
        {
            using (ShopDBEntities db = new ShopDBEntities())
            {
                Product product = db.Products.Find(id);
                return product;
            }
        }
        catch (Exception)
        {
            return null;
        }
    }

    public List<Product> GatAllProducts()
    {
        try
        {
            using (ShopDBEntities db = new ShopDBEntities())
            {
                List<Product> products = (from x in db.Products
                                          select x).ToList();
                return products;
            }
        }
        catch (Exception)
        {
            return null;
        }
    }

    public List<Product> GetProductByType(int typeId)
    {
        try
        {
            using (ShopDBEntities db = new ShopDBEntities())
            {
                List<Product> products = (from x in db.Products
                                          where x.TypeId == typeId
                                          select x).ToList();
                return products;
            }
        }
        catch (Exception)
        {
            return null;
        }
    }

}