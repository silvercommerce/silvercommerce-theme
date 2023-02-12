<% if $AllTags && $AllTags.exists %>
    <div class="dropdown mb-5">
        <button class="btn btn-secondary dropdown-toggle" type="button" id="TagsDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <%t CatalogueFrontend.FilterByTags "Filter By Tags" %>
        </button>
        <div class="dropdown-menu">
            <a href="{$Link}" class="dropdown-item">
                <span class="text"><%t CatalogueFrontend.AllTags "All Tags" %></span>
            </a>
            <% loop $AllTags %>
                <a href="{$Up.Link}?t={$URLSegment}" class="dropdown-item<% if $isCurrent %> active<% end_if %>">
                    <span class="text">$Title</span>
                </a>
            <% end_loop %>
        </div>
    </div>
<% end_if %>