# This is a barren blogofile config file.
# See docs at http://www.blogofile.com/documentation
# for config options
# or run 'blogofile help init' to see more complete templates

docs = controllers.docs
docs.enabled = True
docs.priority = 50

docs_url = "http://docs.sqlalchemy.org"
bb_url = "https://bitbucket.org/zzzeek/sqlalchemy"
site.url = "http://www.sqlalchemy.org"


filters.syntax_highlight.style= "manni"
filters.syntax_highlight.enabled = True

releases = controllers.gen_releases
releases.enabled = True
releases.priority = 100

scss = controllers.gen_scss
scss.enabled = True
scss.priority = 10

blog = controllers.blog
blog.enabled = True
blog.path = "/blog"
blog.priority = 50

blog.name = "Your Blog's Name"

blog.description = "Your Blog's short description"

blog.timezone = "US/Eastern"

blog.post_default_filters = {
    "markdown": "markdown",
    "textile": "syntax_highlight, textile",
    "org": "syntax_highlight, org",
    "rst": "rst, syntax_highlight"
}

