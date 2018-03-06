<% include Banner %>

<div class="col-sm-12">
    <div class="row mb-4">
        <div class="col-sm-12 content text-center" role="main">
            $Content
            $Form
            $PageComments
        </div>
    </div>

    <% if $FeaturedProducts.Exists %>
        <h2 class="text-center">
            <%t CatalogueFrontEnd.FeaturedProducts "Featured Products" %>
        </h2>
        <div class="row mt-4 mb-4">
            <% loop $FeaturedProducts %>
                <div class="col-sm-4 col-lg-3">
                    <% include ProductSummary %>
                </div>
            <% end_loop %>
        </div>
    <% end_if %>

    <% if $FeaturedCategories.Exists %>
        <h2 class="text-center">
            <%t CatalogueFrontEnd.FeaturedCategories "Featured Categories" %>
        </h2>
        <div class="row">
            <% loop $FeaturedCategories %>
                <div class="col-sm">
                    <h2>$Title</h2>
                </div>
            <% end_loop %>
        </div>
    <% end_if %>
</div>