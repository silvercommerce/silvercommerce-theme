<nav class="col navbar navbar-expand-lg navbar-light navbar-main">
    <button class="navbar-toggler mx-auto  ml-sm-auto mr-sm-2" type="button" data-toggle="collapse" data-target="#MainNav" aria-controls="MainNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <% if $SearchForm %>
        <button class="navbar-toggler mx-auto mx-sm-2" type="button" data-toggle="collapse" data-target="#SearchBar" aria-controls="SearchBar" aria-expanded="false" aria-label="Toggle search">
            <i class="fas fa-lg fa-search"></i>
        </button>
    <% end_if %>
    <% with $ShoppingCart %>
        <% include ViewCartMobile %>
    <% end_with %>
    <button class="navbar-toggler mx-auto mx-sm-2" type="button" data-toggle="collapse" data-target="#UserNav" aria-controls="MainNav" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fas fa-lg fa-user"></i>
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

            <li class="dropdown d-none d-sm-block nav-item shoppingcart-button">
                <% with $ShoppingCart %>
                    <% include ViewCartButton %>
                <% end_with %>
            </li>
        </ul>
    </div>
</nav>