+++
template = "none.html"
path = ".well-known/webfinger"
render = false
+++

{
    "subject":"acct:scientiac@fosstodon.org",
    "aliases":
    [
        "https://fosstodon.org/@scientiac",
        "https://fosstodon.org/users/scientiac"
    ],
    "links":
    [
        {
            "rel":"http://webfinger.net/rel/profile-page",
            "type":"text/html",
            "href":"https://fosstodon.org/@scientiac"
        },
        {
            "rel":"self",
            "type":"application/activity+json",
            "href":"https://fosstodon.org/users/scientiac"
        },
        {
            "rel":"http://ostatus.org/schema/1.0/subscribe",
            "template":"https://fosstodon.org/authorize_interaction?uri={uri}"
        }
    ]
}