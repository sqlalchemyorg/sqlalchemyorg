SQLAlchemy Website
==================

This site uses `zeekofile <https://github.com/sqlalchemyorg/zeekofile>`_ to
build a static site, which can also be served locally using zeekofile.


Building and Testing::

  #!/bin/bash

  virtualenv .venv
  source .venv/bin/activate
  pip install git+https://github.com/sqlalchemyorg/zeekofile
  git clone https://github.com/sqlalchemyorg/sqlalchemyorg
  cd sqlalchemyorg/
  pip install -r requirements.txt
  zeekofile --serve

Then view::

	http://127.0.0.1:8080

