<% if $FeaturedImage.exists %>
    <div class="banner-row">
        <div class="banner-image mb-4">
            <span class="d-none d-md-block">$FeaturedImage.Fill(2000,500)</span>
            <span class="d-md-none">$FeaturedImage.Fill(400,175)</span>
        </div>
    </div>
<% else_if $Parent.FeaturedImage.exists %>
    <div class="banner-row">
        <div class="banner-image col-12 mb-4">
            <span class="d-none d-md-block">$Parent.FeaturedImage.Fill(2000,500)</span>
            <span class="d-md-none">$Parent.FeaturedImage.Fill(400,175)</span>
        </div>
    </div>
<% end_if %>

<div class="col-sm-12">
    <div class="row">
        <div class="col">
            <h1<% if not $Level(2) %> class="text-center"<% end_if %>>
                $Title
            </h1>
        </div>
        <% include BreadCrumbs %>
    </div>
</div>