<%!
    import syntax_highlight
    import zeekofile_zf as zf
%>
<%def name="code()"><%
    return syntax_highlight.highlight_site(capture(caller.body))
%></%def>
<%def name="markdown()"><%
	return zf.filter.run_chain('markdown', capture(caller.body))
%></%def>

