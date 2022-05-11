<% if $FeaturedImage.exists %>
    <div class="banner-row row">
        <p class="banner-image mb-4">
            <span class="d-none d-md-block">$FeaturedImage.Fill(1200,500)</span>
            <span class="d-md-none">$FeaturedImage.Fill(400,175)</span>
        </p>
    </div>
<% else_if $Parent.FeaturedImage.exists %>
    <div class="banner-row row">
        <p class="banner-image mb-4">
            <span class="d-none d-md-block">$Parent.FeaturedImage.Fill(1200,500)</span>
            <span class="d-md-none">$Parent.FeaturedImage.Fill(400,175)</span>
        </p>
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