<nav class="col navbar navbar-expand-md navbar-light">
    <button class="navbar-toggler ml-sm-auto" type="button" data-toggle="collapse" data-target="#MainNav" aria-controls="MainNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="MainNav">
        <ul class="navbar-nav ml-sm-auto">
            <% loop $CatalogueCategories %>
                <li class="{$LinkingMode} nav-item<% if $isCurrent || $isSection %> active<% end_if %>">
                    <a class="nav-link" href="{$Link}" title="{$Title.XML}">
                        {$MenuTitle.XML}
                    </a>
                </li>
            <% end_loop %>

            <li class="dropdown hidden-xs">
                <% with $ShoppingCart %>
                    <% include ViewCartButton %>
                <% end_with %>
            </li>
        </ul>
    </div>
</nav>