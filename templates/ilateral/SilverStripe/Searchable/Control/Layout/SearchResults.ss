<div class="search-results col-sm-12 content-container">
    <h1 class="text-center"><%t Searchable.TopSearchResults "Top Search Results for '{query}'" query=$Query %></h1>

    <% if $Objects.exists %>
        <p class="mt-4 text-center search-query">
            <%t Searchable.TopSearchExplination "Below are the top results for your search, click 'View all results' to see more results of that type." %>
        </p>

        <% loop $Objects %>
            <h2 class="text-center">$Title</h2>

            <div class="search-results-list {$ClassName}">
                <div class="row mt-4">
                    <% loop $Results %>
                        <% if $Up.ClassName == "Product" %>
                            <div class="col-sm-6 col-lg-3 mb-3">
                                <% include ProductSummary %>
                            </div>
                        <% else %>
                            <div class="col-sm-12">
                                <% include ilateral\SilverStripe\Searchable\SearchResultsSummary %>
                            </div>
                        <% end_if %>

                        <% if $MultipleOf(4) && not $Last %>
                            </div><div class="row mt-4">
                        <% end_if %>
                    <% end_loop %>
                </div>

                <div class="row mt-4">
                    <p class="col text-center">
                        <a class="view-all-link btn btn-lg btn-dark" href="{$Link}">
                            <%t Searchable.ViewAll "View all results" %>
                        </a>
                    </p>
                </div>
            </div>

            <hr/>
        <% end_loop %>
    <% else %>
        <p><%t Searchable.NoResults "Sorry, your search did not return any results." %></p>
    <% end_if %>
</div>
