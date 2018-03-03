<a id="cart-button" href="$Link" data-toggle="dropdown" data-target="#" role="button" aria-haspopup="true" aria-expanded="false">
    <i class="fa fa-shopping-basket fa-lg"></i><span class="hidden-xs">&nbsp; {$TotalCost.Nice}</span>
    <span class="caret hidden-xs"></span>
    <% if $Items.Exists %><span class="item-counter visible-xs-block">$Items.Count</span><% end_if %>
</a>
<div id="cart-summary" class="cart-summary dropdown-menu" aria-labelledby="cart-button">
    <% if $Items.Exists %>
        <div>
            <% loop $Items %>
                <div class="row">
                    <div class="col-xs-9">
                        <p>$Title</p>
                    </div>
                    <div class="col-xs-3">
                         <p>$Quantity x $Price.Nice</p>
                    </div>
                </div>
            <% end_loop %>
            <p class="lead text-center">
                Total: &nbsp;
                <strong>{$TotalCost.Nice}</strong>
            </p>
        </div>
    <% else %>
        <p>
            <strong>
                <%t Checkout.CartIsEmpty 'Your cart is currently empty' %>
            </strong>
        </p>
    <% end_if %>
    <p class="cart-btn"><a class="btn btn-default btn-block" href="$Link">
        <%t Checkout.ViewCart "View Cart" %>
    </a></p>	
</div>