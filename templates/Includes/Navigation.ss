<nav class="col navbar navbar-expand-md navbar-light">
    <button class="navbar-toggler mx-sm-auto" type="button" data-toggle="collapse" data-target="#MainNav" aria-controls="MainNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <% if $SearchForm %>
        <button class="navbar-toggler mx-sm-auto" type="button" data-toggle="collapse" data-target="#SearchBar" aria-controls="SearchBar" aria-expanded="false" aria-label="Toggle search">
            <i class="fas fa-lg fa-search"></i>
        </button>
    <% end_if %>
    <% with $ShoppingCart %>
        <% with $Estimate %>
            <button class="navbar-toggler mx-sm-auto" type="button" data-toggle="dropdown" data-target="#shoppingcart-summary" role="button" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-shopping-basket fa-lg"></i>
            </button>
            <% include ViewCartDropdown %>

        <% end_with %>
    <% end_with %>

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