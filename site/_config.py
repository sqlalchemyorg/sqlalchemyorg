# This is a barren blogofile config file.
# See docs at http://www.blogofile.com/documentation
# for config options
# or run 'blogofile help init' to see more complete templates

docs = controllers.docs

docs.enabled = True

dev_root = '/Users/classic/dev'

docs.standard_docs = [
    (dev_root + '/sa04/doc/', '04'),
]

docs.sphinx_docs = [
    (dev_root + '/sa05/doc/build/output/site', '05'),
    (dev_root + '/sa06/doc/build/output/site', '_06'),
    (dev_root + '/sqlalchemy/doc/build/output/site', '07')
]

