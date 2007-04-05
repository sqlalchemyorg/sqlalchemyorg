import cgi, re, os, posixpath, mimetypes, sys
from mako.lookup import TemplateLookup
from mako import exceptions

import framework

root = len(sys.argv) > 1 and sys.argv[1] or '/www/hosts/www.sqlalchemy.org'

htdocs = root + '/htdocs'
templates = root + '/templates'
lookup = TemplateLookup(directories=[templates, htdocs], filesystem_checks=True, module_directory=root+'/modules', output_encoding='utf-8')


def serve(environ, start_response):
    fieldstorage = cgi.FieldStorage(
            fp = environ['wsgi.input'],
            environ = environ,
            keep_blank_values = True
    )
    d = dict([(k, getfield(fieldstorage[k])) for k in fieldstorage])

    uri = environ.get('PATH_INFO', environ.get('SCRIPT_URL', environ.get('SCRIPT_NAME', '/')))

    if not uri:
        uri = '/index.html'
    else:
        uri = re.sub(r'/$', '/index.html', uri)

    if re.match(r'.*\.html$', uri):
        try:
            template = lookup.get_template(uri)
            start_response("200 OK", [('Content-type','text/html; charset=UTF-8')])
            x= [template.render(attributes={}, req=d, environ=environ)]
            return x
            #return ["URI: " + uri + " " + repr(environ)]
        except exceptions.TopLevelLookupException:
            start_response("404 Not Found", [])
            return ["Cant find template '%s'" % uri]
        except framework.AbortException, e:
            start_response("%s %s" % (e.responsecode, e.message), [])
            return [e.message]
        except:
            start_response("200 OK", [('Content-type','text/html')])
            return [exceptions.html_error_template().render()]
    else:
        u = re.sub(r'^\/+', '', uri)
        filename = os.path.join(htdocs, u)
        start_response("200 OK", [('Content-type',guess_type(uri))])
        return [file(filename).read()]
        
def getfield(f):
    if isinstance(f, list):
        return [getfield(x) for x in f]
    else:
        return f.value

extensions_map = mimetypes.types_map.copy()
extensions_map.update({
'': 'text/html', # Default
})

def guess_type(path):
    base, ext = posixpath.splitext(path)
    if ext in extensions_map:
        return extensions_map[ext]
    ext = ext.lower()
    if ext in extensions_map:
        return extensions_map[ext]
    else:
        return extensions_map['']
        
if __name__ == '__main__':
    root = './'
    from wsgiutils import wsgiServer
    server = wsgiServer.WSGIServer (('localhost', 8000), {'/': serve})
    print "Server listening on port 8000"
    server.serve_forever()


