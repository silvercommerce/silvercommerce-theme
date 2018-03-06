<nav class="col navbar navbar-expand-lg navbar-light navbar-main">
    <div class="collapse navbar-collapse" id="MainNav">
        <ul class="navbar-nav ml-sm-auto">
            <% loop $CatalogueCategories %>
                <li class="{$LinkingMode} nav-item<% if $isCurrent || $isSection %> active<% end_if %>">
                    <a class="nav-link" href="{$Link}" title="{$Title.XML}">
                        {$MenuTitle.XML}
                    </a>
                </li>
            <% end_loop %>

            <li class="dropdown d-none d-sm-block nav-item shoppingcart-button">
                <% with $ShoppingCart %>
                    <% include ViewCartButton %>
                <% end_with %>
            </li>
        </ul>
    </div>
</nav>