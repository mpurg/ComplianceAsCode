# platform = multi_platform_all

# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'
{{{ bash_fix_audit_watch_rule("auditctl", "/var/log/journal/", "wa", "systemd_journal") }}}
{{{ bash_fix_audit_watch_rule("augenrules", "/var/log/journal/", "wa", "systemd_journal") }}}
