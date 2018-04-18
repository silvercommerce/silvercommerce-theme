<% if $MapEmbed %>
    <div class="map-row row">
        <div class="mb-4 embed-responsive embed-responsive-map">
            $MapEmbed
        </div>
    </div>
<% else_if $FeaturedImage %>
    <div class="banner-row row">
        <p class="banner-image mb-4">
            <img class="img-fluid d-none d-md-block" src="$FeaturedImage.Fill(1200,500).URL" alt="$FeaturedImage.Title">
            <img class="img-fluid d-md-none" src="$FeaturedImage.Fill(400,300).URL" alt="$FeaturedImage.Title">
        </p>
    </div>
<% else_if $Parent.FeaturedImage %>
    <div class="banner-row row">
        <p class="banner-image mb-4">
            <img class="img-fluid d-none d-md-block" src="$Parent.FeaturedImage.Fill(1200,500).URL" alt="$Parent.FeaturedImage.Title">
            <img class="img-fluid d-md-none" src="$Parent.FeaturedImage.Fill(400,300).URL" alt="$Parent.FeaturedImage.Title">
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