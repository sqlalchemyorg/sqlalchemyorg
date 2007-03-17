class AbortException(Exception):
    def __init__(self, responsecode, message):
        self.responsecode = responsecode
        self.message = message


def etag_inherit(inherit, context, template):
    """check for etag return and abort, otherwise return inherit callable"""
    environ = context['environ']
    if_none_match = environ.get('If-None-Match', None)
    etag = str(template.module._modified_time)
    if etag == if_none_match:
                r.headers_out['ETag'] = etag
                m.abort(304)
        else:
                r.headers_out['ETag'] = etag
                m.call_next()
%>

