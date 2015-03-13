<%inherit file="/base.mako"/>
<%!
    section = 'download'
%>

<%
    release_history = bf.config.release_data
    release_milestones = bf.config.release_milestones

%>


<%block name="head_title">
Download - SQLAlchemy
</%block>

<h1>Get SQLAlchemy</h1>


<%def name="download_version(milestone)">
    <%
        try:
            release_rec = release_history[release_milestones[milestone]]
        except KeyError:
            return ""
        latest_rec = release_rec['latest']
    %>

    <h2>Version ${release_rec['major_version']}</h2>

    <p>Latest ${release_rec['major_version']} Release: <b>${latest_rec['version']}</b>

    <a href="${latest_rec['url']}"><b>(${latest_rec['version']} via Cheeseshop)</b></a>

    <a href="${latest_rec['changelog']}"><b>(CHANGES)</b></a></p>


    % if milestone  == 'security':
        <div class="inline-alert deprecation-security">
            <h4>Release Support: Security Fixes Only</h4>
            <p>
                <em>
                    Please note: As of ${latest_rec['release_date'].strftime("%Y-%m-%d")},
                    the ${release_rec['major_version']} release is only updated
                    for critical security fixes.
                </em>
            </p>
        </div>
    % elif milestone == 'maintenance':
        <div class="inline-alert deprecation-maintenance">
            <h4>Release Support: Maintenance Mode</h4>
            <p>
                <em>
                    Please note: As of ${latest_rec['release_date'].strftime("%Y-%m-%d")}, the
                    ${release_rec['major_version']} release has been placed
                    into the "Maintenance" milestone.  Periodic updates and
                    security fixes will still be available, but users are
                    advised to begin upgrading to a more current version of
                    SQLAlchemy.
                </em>
            </p>
        </div>
    % endif

    <p>SQLAlchemy ${latest_rec['version']} is signed using Michael Bayer&#8217;s PGP key id <a href="http://pgp.mit.edu:11371/pks/lookup?search=0xC4DAFEE1&op=index">C4DAFEE1</a> (use <code>gpg --recv-keys C4DAFEE1</code> to import).</p>

    <p>Please be sure to review the ${release_rec['previous_version']} to ${release_rec['major_version']} migration guide, found at <a
    href="${release_rec['migration_url']}"><b>${release_rec['migration_title']}</b></a>, for full details on changes
    made since ${release_rec['previous_version']}.</p>

</%def>

% if 'beta' in release_milestones:
    ${download_version("beta")}
% endif

% if 'current' in release_milestones:
    ${download_version("current")}
% endif

% if 'maintenance' in release_milestones:
    ${download_version("maintenance")}
% elif 'security' in release_milestones:
    ${download_version("security")}
% endif


<a name="development"/>
<h2>Development Versions</h2>

<p><a href="https://bitbucket.org/zzzeek/sqlalchemy/">SQLAlchemy on Bitbucket</a></p>
<p><a href="https://github.com/zzzeek/sqlalchemy/">SQLAlchemy on GitHub</a></p>


<p>For further details on Git repository access please see <a href="/develop.html">development</a>.</p>


<h2>License</h2>

<p>SQLAlchemy is covered by the <a href="http://www.opensource.org/licenses/mit-license.php">MIT License</a>.

<%include file="release_grid.mako"/>
