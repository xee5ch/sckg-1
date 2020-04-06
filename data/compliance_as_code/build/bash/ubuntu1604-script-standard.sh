###############################################################################
#
# Bash remediation role for profile standard
# Profile Title:  Standard System Security Profile for Ubuntu 16.04
# Profile Description:
# This profile contains rules to ensure standard security baseline
# of an Ubuntu 16.04 system. Regardless of your system's workload
# all of these checks should pass.
#
# Benchmark ID:  UBUNTU-XENIAL
# Benchmark Version:  0.1.50
#
# XCCDF Version:  1.1
#
# This file was generated by OpenSCAP 1.2.17 using:
# 	$ oscap xccdf generate fix --profile standard --template urn:xccdf:fix:script:sh xccdf-file.xml 
#
# This script is generated from an OpenSCAP profile without preliminary evaluation.
# It attempts to fix every selected rule, even if the system is already compliant.
#
# How to apply this remediation role:
# $ sudo ./remediation-role.sh
#
###############################################################################

###############################################################################
# BEGIN fix (1 / 45) for 'package_rsyslog_installed'
###############################################################################
(>&2 echo "Remediating rule 1/45: 'package_rsyslog_installed'")
(>&2 echo "FIX FOR THIS RULE 'package_rsyslog_installed' IS MISSING!")
# END fix for 'package_rsyslog_installed'

###############################################################################
# BEGIN fix (2 / 45) for 'service_rsyslog_enabled'
###############################################################################
(>&2 echo "Remediating rule 2/45: 'service_rsyslog_enabled'")
(>&2 echo "FIX FOR THIS RULE 'service_rsyslog_enabled' IS MISSING!")
# END fix for 'service_rsyslog_enabled'

###############################################################################
# BEGIN fix (3 / 45) for 'ensure_logrotate_activated'
###############################################################################
(>&2 echo "Remediating rule 3/45: 'ensure_logrotate_activated'")

LOGROTATE_CONF_FILE="/etc/logrotate.conf"
CRON_DAILY_LOGROTATE_FILE="/etc/cron.daily/logrotate"

# daily rotation is configured
grep -q "^daily$" $LOGROTATE_CONF_FILE|| echo "daily" >> $LOGROTATE_CONF_FILE

# remove any line configuring weekly, monthly or yearly rotation
sed -i -r "/^(weekly|monthly|yearly)$/d" $LOGROTATE_CONF_FILE

# configure cron.daily if not already
if ! grep -q "^[[:space:]]*/usr/sbin/logrotate[[:alnum:][:blank:][:punct:]]*$LOGROTATE_CONF_FILE$" $CRON_DAILY_LOGROTATE_FILE; then
	echo "#!/bin/sh" > $CRON_DAILY_LOGROTATE_FILE
	echo "/usr/sbin/logrotate $LOGROTATE_CONF_FILE" >> $CRON_DAILY_LOGROTATE_FILE
fi
# END fix for 'ensure_logrotate_activated'

###############################################################################
# BEGIN fix (4 / 45) for 'rsyslog_files_groupownership'
###############################################################################
(>&2 echo "Remediating rule 4/45: 'rsyslog_files_groupownership'")
(>&2 echo "FIX FOR THIS RULE 'rsyslog_files_groupownership' IS MISSING!")
# END fix for 'rsyslog_files_groupownership'

###############################################################################
# BEGIN fix (5 / 45) for 'rsyslog_files_ownership'
###############################################################################
(>&2 echo "Remediating rule 5/45: 'rsyslog_files_ownership'")
(>&2 echo "FIX FOR THIS RULE 'rsyslog_files_ownership' IS MISSING!")
# END fix for 'rsyslog_files_ownership'

###############################################################################
# BEGIN fix (6 / 45) for 'rsyslog_files_permissions'
###############################################################################
(>&2 echo "Remediating rule 6/45: 'rsyslog_files_permissions'")
(>&2 echo "FIX FOR THIS RULE 'rsyslog_files_permissions' IS MISSING!")
# END fix for 'rsyslog_files_permissions'

###############################################################################
# BEGIN fix (7 / 45) for 'sysctl_fs_protected_hardlinks'
###############################################################################
(>&2 echo "Remediating rule 7/45: 'sysctl_fs_protected_hardlinks'")
(>&2 echo "FIX FOR THIS RULE 'sysctl_fs_protected_hardlinks' IS MISSING!")
# END fix for 'sysctl_fs_protected_hardlinks'

###############################################################################
# BEGIN fix (8 / 45) for 'sysctl_fs_protected_symlinks'
###############################################################################
(>&2 echo "Remediating rule 8/45: 'sysctl_fs_protected_symlinks'")
(>&2 echo "FIX FOR THIS RULE 'sysctl_fs_protected_symlinks' IS MISSING!")
# END fix for 'sysctl_fs_protected_symlinks'

###############################################################################
# BEGIN fix (9 / 45) for 'file_permissions_systemmap'
###############################################################################
(>&2 echo "Remediating rule 9/45: 'file_permissions_systemmap'")
(>&2 echo "FIX FOR THIS RULE 'file_permissions_systemmap' IS MISSING!")
# END fix for 'file_permissions_systemmap'

###############################################################################
# BEGIN fix (10 / 45) for 'file_owner_etc_group'
###############################################################################
(>&2 echo "Remediating rule 10/45: 'file_owner_etc_group'")


chown 0 /etc/group
# END fix for 'file_owner_etc_group'

###############################################################################
# BEGIN fix (11 / 45) for 'file_permissions_etc_group'
###############################################################################
(>&2 echo "Remediating rule 11/45: 'file_permissions_etc_group'")

chmod 0644 /etc/group
# END fix for 'file_permissions_etc_group'

###############################################################################
# BEGIN fix (12 / 45) for 'file_groupowner_etc_shadow'
###############################################################################
(>&2 echo "Remediating rule 12/45: 'file_groupowner_etc_shadow'")


chgrp 42 /etc/shadow
# END fix for 'file_groupowner_etc_shadow'

###############################################################################
# BEGIN fix (13 / 45) for 'file_permissions_etc_shadow'
###############################################################################
(>&2 echo "Remediating rule 13/45: 'file_permissions_etc_shadow'")

chmod 0640 /etc/shadow
# END fix for 'file_permissions_etc_shadow'

###############################################################################
# BEGIN fix (14 / 45) for 'file_groupowner_etc_gshadow'
###############################################################################
(>&2 echo "Remediating rule 14/45: 'file_groupowner_etc_gshadow'")


chgrp 42 /etc/gshadow
# END fix for 'file_groupowner_etc_gshadow'

###############################################################################
# BEGIN fix (15 / 45) for 'file_owner_etc_passwd'
###############################################################################
(>&2 echo "Remediating rule 15/45: 'file_owner_etc_passwd'")


chown 0 /etc/passwd
# END fix for 'file_owner_etc_passwd'

###############################################################################
# BEGIN fix (16 / 45) for 'file_owner_etc_gshadow'
###############################################################################
(>&2 echo "Remediating rule 16/45: 'file_owner_etc_gshadow'")


chown 0 /etc/gshadow
# END fix for 'file_owner_etc_gshadow'

###############################################################################
# BEGIN fix (17 / 45) for 'file_groupowner_etc_group'
###############################################################################
(>&2 echo "Remediating rule 17/45: 'file_groupowner_etc_group'")


chgrp 0 /etc/group
# END fix for 'file_groupowner_etc_group'

###############################################################################
# BEGIN fix (18 / 45) for 'file_permissions_etc_passwd'
###############################################################################
(>&2 echo "Remediating rule 18/45: 'file_permissions_etc_passwd'")

chmod 0644 /etc/passwd
# END fix for 'file_permissions_etc_passwd'

###############################################################################
# BEGIN fix (19 / 45) for 'file_owner_etc_shadow'
###############################################################################
(>&2 echo "Remediating rule 19/45: 'file_owner_etc_shadow'")


chown 0 /etc/shadow
# END fix for 'file_owner_etc_shadow'

###############################################################################
# BEGIN fix (20 / 45) for 'file_permissions_etc_gshadow'
###############################################################################
(>&2 echo "Remediating rule 20/45: 'file_permissions_etc_gshadow'")

chmod 0640 /etc/gshadow
# END fix for 'file_permissions_etc_gshadow'

###############################################################################
# BEGIN fix (21 / 45) for 'file_groupowner_etc_passwd'
###############################################################################
(>&2 echo "Remediating rule 21/45: 'file_groupowner_etc_passwd'")


chgrp 0 /etc/passwd
# END fix for 'file_groupowner_etc_passwd'

###############################################################################
# BEGIN fix (22 / 45) for 'sysctl_fs_suid_dumpable'
###############################################################################
(>&2 echo "Remediating rule 22/45: 'sysctl_fs_suid_dumpable'")
(>&2 echo "FIX FOR THIS RULE 'sysctl_fs_suid_dumpable' IS MISSING!")
# END fix for 'sysctl_fs_suid_dumpable'

###############################################################################
# BEGIN fix (23 / 45) for 'sysctl_kernel_randomize_va_space'
###############################################################################
(>&2 echo "Remediating rule 23/45: 'sysctl_kernel_randomize_va_space'")
(>&2 echo "FIX FOR THIS RULE 'sysctl_kernel_randomize_va_space' IS MISSING!")
# END fix for 'sysctl_kernel_randomize_va_space'

###############################################################################
# BEGIN fix (24 / 45) for 'package_audit_installed'
###############################################################################
(>&2 echo "Remediating rule 24/45: 'package_audit_installed'")
(>&2 echo "FIX FOR THIS RULE 'package_audit_installed' IS MISSING!")
# END fix for 'package_audit_installed'

###############################################################################
# BEGIN fix (25 / 45) for 'service_auditd_enabled'
###############################################################################
(>&2 echo "Remediating rule 25/45: 'service_auditd_enabled'")
(>&2 echo "FIX FOR THIS RULE 'service_auditd_enabled' IS MISSING!")
# END fix for 'service_auditd_enabled'

###############################################################################
# BEGIN fix (26 / 45) for 'partition_for_home'
###############################################################################
(>&2 echo "Remediating rule 26/45: 'partition_for_home'")
(>&2 echo "FIX FOR THIS RULE 'partition_for_home' IS MISSING!")
# END fix for 'partition_for_home'

###############################################################################
# BEGIN fix (27 / 45) for 'partition_for_tmp'
###############################################################################
(>&2 echo "Remediating rule 27/45: 'partition_for_tmp'")
(>&2 echo "FIX FOR THIS RULE 'partition_for_tmp' IS MISSING!")
# END fix for 'partition_for_tmp'

###############################################################################
# BEGIN fix (28 / 45) for 'partition_for_var'
###############################################################################
(>&2 echo "Remediating rule 28/45: 'partition_for_var'")
(>&2 echo "FIX FOR THIS RULE 'partition_for_var' IS MISSING!")
# END fix for 'partition_for_var'

###############################################################################
# BEGIN fix (29 / 45) for 'partition_for_var_log_audit'
###############################################################################
(>&2 echo "Remediating rule 29/45: 'partition_for_var_log_audit'")
(>&2 echo "FIX FOR THIS RULE 'partition_for_var_log_audit' IS MISSING!")
# END fix for 'partition_for_var_log_audit'

###############################################################################
# BEGIN fix (30 / 45) for 'partition_for_var_log'
###############################################################################
(>&2 echo "Remediating rule 30/45: 'partition_for_var_log'")
(>&2 echo "FIX FOR THIS RULE 'partition_for_var_log' IS MISSING!")
# END fix for 'partition_for_var_log'

###############################################################################
# BEGIN fix (31 / 45) for 'package_cron_installed'
###############################################################################
(>&2 echo "Remediating rule 31/45: 'package_cron_installed'")
(>&2 echo "FIX FOR THIS RULE 'package_cron_installed' IS MISSING!")
# END fix for 'package_cron_installed'

###############################################################################
# BEGIN fix (32 / 45) for 'service_cron_enabled'
###############################################################################
(>&2 echo "Remediating rule 32/45: 'service_cron_enabled'")
(>&2 echo "FIX FOR THIS RULE 'service_cron_enabled' IS MISSING!")
# END fix for 'service_cron_enabled'

###############################################################################
# BEGIN fix (33 / 45) for 'package_ntp_installed'
###############################################################################
(>&2 echo "Remediating rule 33/45: 'package_ntp_installed'")
(>&2 echo "FIX FOR THIS RULE 'package_ntp_installed' IS MISSING!")
# END fix for 'package_ntp_installed'

###############################################################################
# BEGIN fix (34 / 45) for 'service_timesyncd_enabled'
###############################################################################
(>&2 echo "Remediating rule 34/45: 'service_timesyncd_enabled'")
(>&2 echo "FIX FOR THIS RULE 'service_timesyncd_enabled' IS MISSING!")
# END fix for 'service_timesyncd_enabled'

###############################################################################
# BEGIN fix (35 / 45) for 'service_ntp_enabled'
###############################################################################
(>&2 echo "Remediating rule 35/45: 'service_ntp_enabled'")
(>&2 echo "FIX FOR THIS RULE 'service_ntp_enabled' IS MISSING!")
# END fix for 'service_ntp_enabled'

###############################################################################
# BEGIN fix (36 / 45) for 'package_nis_removed'
###############################################################################
(>&2 echo "Remediating rule 36/45: 'package_nis_removed'")

# CAUTION: This remediation script will remove nis
#	   from the system, and may remove any packages
#	   that depend on nis. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

apt-get remove -y "nis"
# END fix for 'package_nis_removed'

###############################################################################
# BEGIN fix (37 / 45) for 'package_telnetd_removed'
###############################################################################
(>&2 echo "Remediating rule 37/45: 'package_telnetd_removed'")

# CAUTION: This remediation script will remove telnetd
#	   from the system, and may remove any packages
#	   that depend on telnetd. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

apt-get remove -y "telnetd"
# END fix for 'package_telnetd_removed'

###############################################################################
# BEGIN fix (38 / 45) for 'package_ntpdate_removed'
###############################################################################
(>&2 echo "Remediating rule 38/45: 'package_ntpdate_removed'")

# CAUTION: This remediation script will remove ntpdate
#	   from the system, and may remove any packages
#	   that depend on ntpdate. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

apt-get remove -y "ntpdate"
# END fix for 'package_ntpdate_removed'

###############################################################################
# BEGIN fix (39 / 45) for 'package_telnetd-ssl_removed'
###############################################################################
(>&2 echo "Remediating rule 39/45: 'package_telnetd-ssl_removed'")

# CAUTION: This remediation script will remove telnetd-ssl
#	   from the system, and may remove any packages
#	   that depend on telnetd-ssl. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

apt-get remove -y "telnetd-ssl"
# END fix for 'package_telnetd-ssl_removed'

###############################################################################
# BEGIN fix (40 / 45) for 'package_inetutils-telnetd_removed'
###############################################################################
(>&2 echo "Remediating rule 40/45: 'package_inetutils-telnetd_removed'")

# CAUTION: This remediation script will remove inetutils-telnetd
#	   from the system, and may remove any packages
#	   that depend on inetutils-telnetd. Execute this
#	   remediation AFTER testing on a non-production
#	   system!

apt-get remove -y "inetutils-telnetd"
# END fix for 'package_inetutils-telnetd_removed'

###############################################################################
# BEGIN fix (41 / 45) for 'sshd_disable_empty_passwords'
###############################################################################
(>&2 echo "Remediating rule 41/45: 'sshd_disable_empty_passwords'")
if [ -e "/etc/ssh/sshd_config" ] ; then
    LC_ALL=C sed -i "/^\s*PermitEmptyPasswords\s\+/Id" "/etc/ssh/sshd_config"
else
    touch "/etc/ssh/sshd_config"
fi
cp "/etc/ssh/sshd_config" "/etc/ssh/sshd_config.bak"
# Insert before the line matching the regex '^Match'.
line_number="$(LC_ALL=C grep -n "^Match" "/etc/ssh/sshd_config.bak" | LC_ALL=C sed 's/:.*//g')"
if [ -z "$line_number" ]; then
    # There was no match of '^Match', insert at
    # the end of the file.
    printf '%s\n' "PermitEmptyPasswords no" >> "/etc/ssh/sshd_config"
else
    head -n "$(( line_number - 1 ))" "/etc/ssh/sshd_config.bak" > "/etc/ssh/sshd_config"
    printf '%s\n' "PermitEmptyPasswords no" >> "/etc/ssh/sshd_config"
    tail -n "+$(( line_number ))" "/etc/ssh/sshd_config.bak" >> "/etc/ssh/sshd_config"
fi
# Clean up after ourselves.
rm "/etc/ssh/sshd_config.bak"
# END fix for 'sshd_disable_empty_passwords'

###############################################################################
# BEGIN fix (42 / 45) for 'sshd_set_keepalive'
###############################################################################
(>&2 echo "Remediating rule 42/45: 'sshd_set_keepalive'")
(>&2 echo "FIX FOR THIS RULE 'sshd_set_keepalive' IS MISSING!")
# END fix for 'sshd_set_keepalive'

###############################################################################
# BEGIN fix (43 / 45) for 'sshd_allow_only_protocol2'
###############################################################################
(>&2 echo "Remediating rule 43/45: 'sshd_allow_only_protocol2'")
if [ -e "/etc/ssh/sshd_config" ] ; then
    LC_ALL=C sed -i "/^\s*Protocol\s\+/Id" "/etc/ssh/sshd_config"
else
    touch "/etc/ssh/sshd_config"
fi
cp "/etc/ssh/sshd_config" "/etc/ssh/sshd_config.bak"
# Insert before the line matching the regex '^Match'.
line_number="$(LC_ALL=C grep -n "^Match" "/etc/ssh/sshd_config.bak" | LC_ALL=C sed 's/:.*//g')"
if [ -z "$line_number" ]; then
    # There was no match of '^Match', insert at
    # the end of the file.
    printf '%s\n' "Protocol 2" >> "/etc/ssh/sshd_config"
else
    head -n "$(( line_number - 1 ))" "/etc/ssh/sshd_config.bak" > "/etc/ssh/sshd_config"
    printf '%s\n' "Protocol 2" >> "/etc/ssh/sshd_config"
    tail -n "+$(( line_number ))" "/etc/ssh/sshd_config.bak" >> "/etc/ssh/sshd_config"
fi
# Clean up after ourselves.
rm "/etc/ssh/sshd_config.bak"
# END fix for 'sshd_allow_only_protocol2'

###############################################################################
# BEGIN fix (44 / 45) for 'sshd_set_idle_timeout'
###############################################################################
(>&2 echo "Remediating rule 44/45: 'sshd_set_idle_timeout'")
(>&2 echo "FIX FOR THIS RULE 'sshd_set_idle_timeout' IS MISSING!")
# END fix for 'sshd_set_idle_timeout'

###############################################################################
# BEGIN fix (45 / 45) for 'sshd_disable_root_login'
###############################################################################
(>&2 echo "Remediating rule 45/45: 'sshd_disable_root_login'")
if [ -e "/etc/ssh/sshd_config" ] ; then
    LC_ALL=C sed -i "/^\s*PermitRootLogin\s\+/Id" "/etc/ssh/sshd_config"
else
    touch "/etc/ssh/sshd_config"
fi
cp "/etc/ssh/sshd_config" "/etc/ssh/sshd_config.bak"
# Insert before the line matching the regex '^Match'.
line_number="$(LC_ALL=C grep -n "^Match" "/etc/ssh/sshd_config.bak" | LC_ALL=C sed 's/:.*//g')"
if [ -z "$line_number" ]; then
    # There was no match of '^Match', insert at
    # the end of the file.
    printf '%s\n' "PermitRootLogin no" >> "/etc/ssh/sshd_config"
else
    head -n "$(( line_number - 1 ))" "/etc/ssh/sshd_config.bak" > "/etc/ssh/sshd_config"
    printf '%s\n' "PermitRootLogin no" >> "/etc/ssh/sshd_config"
    tail -n "+$(( line_number ))" "/etc/ssh/sshd_config.bak" >> "/etc/ssh/sshd_config"
fi
# Clean up after ourselves.
rm "/etc/ssh/sshd_config.bak"
# END fix for 'sshd_disable_root_login'

