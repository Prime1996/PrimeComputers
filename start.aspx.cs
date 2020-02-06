﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class start : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        FillPage();
    }

    private void FillPage()
    {
        //get a list of all products
        ProductModel productModel = new ProductModel();
        List<Product> products = productModel.GatAllProducts();

        //existance of product
        if (products != null)
        {
            //new panel with a imagebutton and 2 labels
            foreach (Product product in products)
            {
                Panel productPanel = new Panel();
                ImageButton imageButton = new ImageButton();
                Label lblName = new Label();
                Label lblPrice = new Label();

                //childcontrol
                imageButton.ImageUrl = "~/Images/Products/" + product.Image;
                imageButton.CssClass = "productImage";
                imageButton.PostBackUrl = "~/Pages/Product.aspx?id=" + product.Id;

                lblName.Text = product.Name;
                lblName.CssClass = "productName";

                lblPrice.Text = "Tk. " + product.Price;
                lblPrice.CssClass = "productPrice";

                //child control to panel
                productPanel.Controls.Add(imageButton);
                productPanel.Controls.Add(new Literal { Text = "<br />" });
                productPanel.Controls.Add(lblName);
                productPanel.Controls.Add(new Literal { Text = "<br />" });
                productPanel.Controls.Add(lblPrice);

                //dynamic to static parent panel
                pnlProduct.Controls.Add(productPanel);
            }
        }
        else
        {
            //no product found
            pnlProduct.Controls.Add(new Literal {Text = "No products found"});
        }
    }
}