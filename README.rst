SQLAlchemy Website
==================

The site uses Blogofile 0.7.1 (it's advised that you install that
version specifically).

Issues and pullrequests for the site overall can be submitted here.

    easy_install Blogofile==0.7.1
    easy_install pyScss==1.1.0


Building and Testing:

	build
	>> blogofile build

	test
	>> cd _site
	>> python -m SimpleHTTPServer

	view
	>> http://127.0.0.1:8000/download.html