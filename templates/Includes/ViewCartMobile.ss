<%-- Add the view cart button --%>
<% with $Estimate %>
    <a class="navbar-toggler mx-sm-auto cart-link" href="{$Up.Link}" role="button">
        <i class="fas fa-shopping-basket fa-lg"></i>
        <% if $TotalItems > 0 %>
            <span class="item-count">
                <span class="badge badge-pill badge-secondary">{$TotalItems}</span>
            </span>
        <% end_if %>
    </a>
<% end_with %>