<!doctype html>
	<!--[if !IE]><!-->
	<html lang="$ContentLocale">
	<!--<![endif]-->
	<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
	<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
	<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
	<head>
		<% base_tag %>
		<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		$MetaTags(false)
		<!--[if lt IE 9]>
		<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

		<style id="antiClickjack">body{display:none !important;}</style>		

		<script>
			// Anti click jacking script
			try {
				if (self.location.hostname === top.location.hostname) {
					var antiClickjack = document.getElementById("antiClickjack");
					antiClickjack.parentNode.removeChild(antiClickjack);
				} else {
					top.location = self.location;
				}
			} catch(e) {
				if (e.name == "SecurityError") {
					top.location = self.location;
				}
			}
		</script>

		<% include Icons %>
		<% include Requirements %>
		<% include RequirementsExtra %>
	</head>
	<body class="$ClassName" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
		<% include Header %>

		<div class="main<% if $Level(2) %> sublevel<% end_if %><% if $FeaturedImage || $MapEmbed %> no-pad-top<% end_if %><% if $SiteConfig.TileBackground %> tile-background<% else %> full-background<% end_if %>" role="main"<% if $SiteConfig.Background %> style="background-image: url($SiteConfig.Background.ScaleMaxWidth(1920).URL)"<% end_if %>>
			<% include Banner %>
			<% include Layout %>
		</div>

		<% include Footer %>
	</body>
</html>
