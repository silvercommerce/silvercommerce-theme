<% require css('i-lateral/silverstripe-reviews:client/dist/css/reviews.min.css') %>

<% if $CommentsEnabled %>
	<div id="$CommentHolderID" class="comments-holder-container">
		<p class="coments-ratings">{$AverageRatingStars} {$ExcessRatingStars}</p>
		<h4><% _t('SSReviews.PostReview','Post your review') %></h4>

		<div class="mb-6">
			<% if $AddCommentForm %>
				<% if $canPostComment %>
					<% if $ModeratedSubmitted %>
						<p id="moderated" class="message good">
							<% _t('SSReviews.AwaitingModeration', 'Your review has been submitted and is now awaiting moderation.') %>
						</p>
					<% end_if %>

					$AddCommentForm
				<% else %>
					<p><% _t('SSReviews.CommentLogInError', 'You cannot post reviews until you have logged in') %><% if $PostingRequiredPermission %>,
						<% _t('CommentsInterface_ss.COMMENTPERMISSIONERROR', 'and have an appropriate permission level') %><% end_if %>.
						<a
							href="Security/login?BackURL={$Parent.Link}"
							title="<% _t('SSReviews.LoginToPostReview', 'Login to post a review') %>"
						><% _t('CommentsInterface_ss.COMMENTPOSTLOGIN', 'Login Here') %></a>.
					</p>
				<% end_if %>
			<% else %>
				<p><% _t('SSReviews.ReviewsDisabled', 'Posting reviews has been disabled') %>.</p>
			<% end_if %>
		</div>


		<h4><% _t('SSReviews.Reviews','Reviews') %></h4>

		<div class="comments-holder">
			<% if $PagedComments %>
				<% loop $PagedComments %>
					<div class="card mb-3 $EvenOdd<% if FirstLast %> $FirstLast <% end_if %> $SpamClass">
						<% include ReviewsInterface_singlecomment %>
					</div>
				<% end_loop %>
				<% with $PagedComments %>
					<% include Pagination %>
				<% end_with %>
			<% end_if %>

			<p class="no-comments-yet"<% if $PagedComments.Count %> style='display: none' <% end_if %> >
				<% _t('CommentsInterface_ss.NOCOMMENTSYET','No one has commented on this page yet.') %>
			</p>
		</div>

		<% if $DeleteAllLink %>
			<p class="delete-comments">
				<a href="$DeleteAllLink"><% _t('SSReviews.DeleteAllReviews','Delete all reviews on this page') %></a>
			</p>
		<% end_if %>

		<p class="commenting-rss-feed">
			<a href="$CommentRSSLinkPage"><% _t('SSReviews.RSSFeedComments', 'RSS feed for reviews on this page') %></a> |
			<a href="$CommentRSSLink"><% _t('SSReviews.RSSFeedAllComments', 'RSS feed for all reviews') %></a>
		</p>
	</div>
<% end_if %>
