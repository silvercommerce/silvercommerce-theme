<%-- Add the view cart button --%>
<a id="view-shoppingcart-button" class="shoppingcart-link nav-link" href="{$Link}" data-toggle="dropdown" data-target="#" role="button" aria-haspopup="true" aria-expanded="false">
    <i class="fa fa-shopping-basket fa-lg"></i>
    <span class="hidden-xs">&nbsp;{$Total.Nice}</span>
    <span class="caret hidden-xs"></span>
</a>

<%-- Cart summary dropdown --%>
<span id="shoppingcart-summary" class="shoppingcart-summary dropdown-menu" aria-labelledby="view-shoppingcart-button">
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
        <a class="btn btn-primary btn-block cart-btn" href="{$Link}">
            <%t ShoppingCart.ViewCart "View Cart" %>
        </a>
    <% end_if %>
</span>