// q and qA defined in ./themeSelector.js

async function loadComments(link) {
	q("#comments button").innerText = "Loading…";

	let post = {
		id: link.split('/').slice(-1)[0],
		instance: link.split('/')[2]
	};
	const response = await fetch(`https://${post.instance}/api/v1/statuses/${post.id}/context`);
	if (response.status !== 200) {
		q("#comments button").innerText = "Error!";
	}
	const replies = (await response.json()).descendants;
	const html = replies
		.map(reply => {
			return `
				<div class="comment">
					<img class="avatar" src="${reply.account.avatar_static}" alt="">
					<div class="comment__details">
						<a href="${reply.account.url}" class="comment__author__username">${reply.account.username}@${reply.account.url.split('/')[2]}</a> <span clas="comment__time">${reply.created_at}</span>
					</div>
					<div class="comment__content">
						${HtmlSanitizer.SanitizeHtml(reply.content)}
					</div>
				</div>
			`
		})
		.join('');
	q("#comments").innerHTML = html + `
		<details>
			<summary>Comment via Fediverse</summary>
			<p>To comment on this post, leave a reply to <a href="${link}">this thread</a> from your Fediverse (Mastodon, Pixelfed, Pleroma, etc.) account.</p>
		</details>
	`;
}
