<%-- Add the view cart button --%>
<% with $Estimate %>
    <a class="navbar-toggler mx-auto mx-sm-2 cart-link" href="{$Up.Link}" role="button">
        <i class="fas fa-shopping-basket fa-lg"></i>
        <% if $TotalItems > 0 %>
            <span class="item-count">
                <span class="badge badge-pill badge-secondary">{$TotalItems}</span>
            </span>
        <% end_if %>
    </a>
<% end_with %>