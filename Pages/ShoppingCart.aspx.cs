using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

public partial class Pages_ShoppingCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //get id of current logged in user and display items in cart
        string userId = User.Identity.GetUserId();
        GetPurchasesInCart(userId);
    }

    private void GetPurchasesInCart(string userId)
    {
        CartModel model = new CartModel();
        int subTotal = 0;

        //generate html for each element in purchaselist
        List<Cart> purchaseList = model.GetOrdersInCart(userId);
        CreateShopTable(purchaseList, out subTotal);

        //add totals to webpage
        double vat = subTotal * 0.15;
        double totalAmount = subTotal + vat + 500;

        //Display values on page
        litTotal.Text = "Tk " + subTotal;
        litVat.Text = "Tk " + vat;
        litTotalAmount.Text = "Tk " + totalAmount;
    }

    private void CreateShopTable(List<Cart> purchaseList, out int subTotal)
    {
        subTotal = new int();
        ProductModel model = new ProductModel();

        foreach (Cart cart in purchaseList)
        {
            Product product = model.GetProduct(cart.ProductID);

            //Create the image button
            ImageButton btnImage = new ImageButton
            {
                ImageUrl = string.Format("~/Images/Products/{0}", product.Image),
                PostBackUrl = string.Format("~/Pages/Product.aspx?id={0}", product.Id)
            };

            //create the delete link
            LinkButton lnkdelete = new LinkButton
            {
                PostBackUrl = string.Format("~/Pages/Shoppingcart.aspx?productId={0}", cart.ID),
                Text = "Remove Item",
                ID = "del" + cart.ID
            };

            //Add an onClick event
            lnkdelete.Click += Delete_Item;

            //create the quantity drop down list
            //generate list with numbers 1 to 20
            int[] amount = Enumerable.Range(1, 20).ToArray();
            DropDownList ddlAmount = new DropDownList
            {
                DataSource= amount,
                AppendDataBoundItems = true,
                AutoPostBack= true,
                ID = cart.ID.ToString()
            };

            ddlAmount.DataBind();
            ddlAmount.SelectedValue = cart.Amount.ToString();
            ddlAmount.SelectedIndexChanged += ddlAmount_SelectedIndexChanged;

            //Create HTML table with 2 rows
            Table table = new Table{CssClass= "cartTable"};
            TableRow a= new TableRow();
            TableRow b = new TableRow();

            //create 6 cells for row a
            TableCell a1 = new TableCell { RowSpan = 2, Width = 50 };
            TableCell a2 = new TableCell { Text = string.Format("<h4>{0}</h4><br/>{1}<br/>In Stock",
            product.Name, "Item No: " + product.Id ),
            HorizontalAlign = HorizontalAlign.Left, Width=350};
            TableCell a3 = new TableCell{ Text = "Unit Price<hr/>" };
            TableCell a4 = new TableCell{ Text = "Quantity<hr/>" };
            TableCell a5 = new TableCell{ Text = "Item Total<hr/>" };
            TableCell a6 = new TableCell { };

            //create 6 cells for row b
            TableCell b1 = new TableCell { };
            TableCell b2 = new TableCell { Text = "Tk " +  product.Price };
            TableCell b3 = new TableCell { };
            TableCell b4 = new TableCell { Text = "Tk " + (cart.Amount * product.Price) };
            TableCell b5 = new TableCell { };
            TableCell b6 = new TableCell { };

            //Set special controls
            a1.Controls.Add(btnImage);
            a6.Controls.Add(lnkdelete);
            b3.Controls.Add(ddlAmount);

            //add cells to rows
            a.Cells.Add(a1);
            a.Cells.Add(a2);
            a.Cells.Add(a3);
            a.Cells.Add(a4);
            a.Cells.Add(a5);
            a.Cells.Add(a6);

            b.Cells.Add(b1);
            b.Cells.Add(b2);
            b.Cells.Add(b3);
            b.Cells.Add(b4);
            b.Cells.Add(b5);
            b.Cells.Add(b6);

            //add rows to table
            table.Rows.Add(a);
            table.Rows.Add(b);

            //add rows to shoppingcart panel
            pnlShoppingCart.Controls.Add(table);

            //add total amount of item in cart to subtotal
            subTotal += (int)(cart.Amount * product.Price);
        }

        //add current users shopping cart to user specific session value
        Session[User.Identity.GetUserId()] = purchaseList;
    }

    private void ddlAmount_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList selectedList = (DropDownList)sender;
        int quantity = Convert.ToInt32(selectedList.SelectedValue);
        int cartId = Convert.ToInt32(selectedList.ID);

        CartModel model = new CartModel();
        model.UpdateQuantity(cartId, quantity);

        Response.Redirect("~/Pages/ShoppingCart.aspx");
    }

    private void Delete_Item(object sender, EventArgs e)
    {
        LinkButton selectedLink = (LinkButton)sender;
        string link = selectedLink.ID.Replace("del", "");
        int cartId = Convert.ToInt32(link);

        CartModel model = new CartModel();
        model.DeleteCart(cartId);

        Response.Redirect("~/Pages/ShoppingCart.aspx");
    }
}