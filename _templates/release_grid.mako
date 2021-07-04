<%
    release_history = zf.config.release_data

    # these are our milestones
    release_milestones = zf.config.release_milestones

    # text overrides
    milestone_text = {
        'beta': "Beta",
        'early_development': "Development",
        'development': "Development",
        'current': "Current Release",
        'maintenance': "Maintenance",
        'security': "Security",
        'eol': "EOL",
    }

%>

<div class="release-status">

<h2>Release Status</h2>

<p>This table summarizes the overall history of SQLAlchemy releases with
further links for more recent minor releases.</p>

<table class="table table-striped">
    <thead>
        <tr>
            <th>Major/Minor Version</th>
            <th>First Release</th>
            <th>Latest Release</th>
            <th>Latest Point Release</th>
            <th>Release Status</th>
        </tr>
    </thead>
    <tbody>
        % for sqlalchemy_version in reversed(sorted(release_history)):
            <%
                version_rec = release_history[sqlalchemy_version]
                if version_rec['latest']:
                    latest_version = version_rec['latest']
                else:
                    latest_version = None

                if version_rec['first']:
                    first_version = version_rec['first']
                else:
                    first_version = None

            %>
            <tr>
                <td>
                    ${sqlalchemy_version}
                    % if version_rec['docs']:
                        <a class="release-tip" href="${version_rec['docs']}">[docs]</a>
                    % endif
                    % if version_rec['migration_url']:
                        <a class="release-tip" href="${version_rec['migration_url']}">[What's New?]</a>
                    % endif
                </td>
                <td>
                    % if first_version:
                        ${first_version['release_date'].strftime("%Y-%m-%d")}
                        % if first_version['version'].is_prerelease:
                            <span class="release-tip">(beta)</span>
                        % endif
                    % endif
                </td>
                <td>
                    % if latest_version:
                        ${latest_version['release_date'].strftime("%Y-%m-%d")}
                        % if latest_version['version'].is_prerelease:
                            <span class="release-tip">(beta)</span>
                        % endif
                    % endif
                </td>
                <td>
                    % if latest_version:
                        <a href="${latest_version['url']}">${latest_version['version']}</a>
                        <a class="release-tip" href="${latest_version['changelog']}">[changes]</a>
                    % endif
                </td>
                <td>
                    <a href="#status-desc-${version_rec['milestone']}">${milestone_text[version_rec['milestone']]}</a>
                </td>
            </tr>
        % endfor
    </tbody>
</table>

<h4>About Release Status Categories</h4>
<p>
    The following table summarizes each status category:
</p>
<table class="table table-striped">
    <thead>
        <tr>
            <th>Release Status</th>
            <th>Explanation</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <th>
                <a name="status-desc-development"></a>
                ${milestone_text['development']}
            </th>
            <td>
                Active development for the next major release of SQLAlchemy.
                The "development" status is by definition not released on
                Pypi and only exists within the git repository, typically
                under the main branch.   When the first release of the
                "development" status is created, the status moves to "beta".
            </td>
        </tr>
        <tr>
            <th>
                <a name="status-desc-beta"></a>
                ${milestone_text['beta']}
            </th>
            <td>
                Evaluation releases for the current development version.
                These releases are available on Pypi, however include a
                'b' character in their version name so that per
                <a href="https://www.python.org/dev/peps/pep-0440/">pep-0440</a>
                these releases will not be installed by the pip tool unless the
                <code>--pre</code> flag is specified. The "beta" status is
                generally mutually exclusive versus the "development" status.
            </td>
        </tr>
        <tr>
            <th>
                <a name="status-desc-current"></a>
                ${milestone_text['current']}
            </th>
            <td>
                The current official release of SQLAlchemy.
                Ongoing work is performed to close out regressions and
                bugs that can still be applied without significant
                risk of destabilization.  Applications
                which are under active development should seek to always
                refer to at least the "current" release.
            </td>
        </tr>
        <tr>
            <th>
                <a name="status-desc-maintenance"></a>
                ${milestone_text['maintenance']}
            </th>
            <td>
                The maintenance series exists when the "beta" series has
                become "current", and the previous "current" series becomes
                "maintenance".   The maintenance series accepts a limited
                set of critical bug fixes as they are encountered, as it is
                expected that applications under active development will be
                migrating to the "current" release if they have not done so
                already.  Once the next development version begins, the
                "maintenance" series is no longer released and moves to
                "EOL".
            </td>
        </tr>
        <tr>
            <th>
                <a name="status-desc-eol"></a>
                ${milestone_text['eol']}
            </th>
            <td>
                This release version is no longer maintained and is considered
                legacy.
                Applications in production use against an EOL milestone
                are strongly advised to upgrade to a newer version.
            </td>
        </tr>
    </tbody>
</table>

</div>

