<%-- Cart summary dropdown --%>
<span id="shoppingcart-summary" class="shoppingcart-summary collapse dropdown-menu dropdown-menu-right" aria-labelledby="view-shoppingcart-button">
    <span class="shoppingcart-items">
        <% if $TotalItems > 0 %>
            <% loop $Items %>
                <span class="row">
                    <span class="col">
                        {$Quantity} x
                        <% if $FindStockItem %>
                            <a href="{$FindStockItem.Link}">$Title</a>
                        <% else %>
                            {$Title}
                        <% end_if %>
                    </span>
                    <span class="col text-right">
                        {$Total.Nice}
                    </span>
                </span>
            <% end_loop %>
            <span class="row">
                <strong class="col text-right"><%t ShoppingCart.Total "Total" %>: {$Total.Nice}</strong>
            </span>
        <% else %>
            <span class="row">
                <strong class="col">
                    <%t ShoppingCart.CartIsEmpty 'Your cart is currently empty' %>
                </strong>
            </span>
        <% end_if %>
    </span>

    <% if $TotalItems > 0 %>
        <a class="btn btn-primary btn-block cart-btn" href="{$Up.Link}">
            <%t ShoppingCart.ViewCart "View Cart" %>
        </a>
    <% end_if %>
</span>