<% if $Menu(2) %>
    <% with $Level(1) %>
        <% if $Children.exists %>
            <div class="dropdown mb-5">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="CategoriesDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <%t CatalogueFrontend.FilterByCategory "Filter By Category" %>
                </button>
                <div class="dropdown-menu">
                    <% include RecursiveMenu %>
                </div>
            </div>
        <% end_if %>
    <% end_with %>
<% end_if %>