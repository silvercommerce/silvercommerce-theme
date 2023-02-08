<%-- Global site header and navigation --%>
<header class="sticky-top" role="banner">
	<% include SubHeader %>
	<div class="container px-lg-0">
		<div class="row align-items-stretch">
			<div class="col-7 col-sm-6 col-md-4 col-lg-auto">
				<p class="h1 mb-0">				
					<a href="$BaseHref" class="brand" rel="home">
						<% if $SiteConfig.Logo %>
							$SiteConfig.Logo.ScaleHeight(80)
						<% else %>
							$SiteConfig.Title
						<% end_if %>
					</a>
				</p>
				<% if not $SiteConfig.Logo && $SiteConfig.Tagline %>
					<p class="d-none d-sm-block">
						<a href="$BaseHref" class="brand" rel="home">
							$SiteConfig.Tagline
						</a>
					</p>
				<% end_if %>
			</div>
			<div class="navbar navbar-expand-lg navbar-light col-5 col-sm-6 col-md-8 d-lg-none py-0">
				<button class="navbar-toggler mx-auto my-1 ml-sm-auto mr-sm-2" type="button" data-toggle="collapse" data-target="#MainNav" aria-controls="MainNav" aria-expanded="false" aria-label="Toggle navigation">
					<i class="fas fa-bars"></i>
				</button>
				<% with $ShoppingCart %>
					<% include ViewCartMobile %>
				<% end_with %>
				<% if $SearchForm %>
					<button class="navbar-toggler my-1 mx-auto mx-sm-2" type="button" data-toggle="collapse" data-target="#SearchBar" aria-controls="SearchBar" aria-expanded="false" aria-label="Toggle search">
						<i class="fas fa-search"></i>
					</button>
				<% end_if %>
				<button class="navbar-toggler my-1 mx-auto mx-sm-2" type="button" data-toggle="collapse" data-target="#UserNav" aria-controls="MainNav" aria-expanded="false" aria-label="Toggle navigation">
					<i class="fas fa-user"></i>
				</button>
			</div>
			<div class="col-lg <% if $SearchForm %>searchform-enabled<% end_if %>">
				<% if $SearchForm %>
					<div class="search-bar navbar navbar-expand-lg p-0">
						<div id="SearchBar" class="collapse navbar-collapse">
							<div class="mx-auto mr-lg-0 my-2">
								$SearchForm
							</div>
						</div>
					</div>
				<% end_if %>
				<div class="row align-items-end">
					<% include Navigation %>
				</div>
			</div>
		</div>
	</div>
	<div class="bottom-bar"></div>
</header>
