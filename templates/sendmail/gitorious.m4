FEATURE(`genericstable')dnl
GENERICS_DOMAIN_FILE(`/etc/mail/genericsdomain')dnl
MASQUERADE_AS(<%= sendmail_domain -%>)dnl
FEATURE(masquerade_envelope)dnl
FEATURE(masquerade_entire_domain)dnl
MASQUERADE_DOMAIN(<%= sendmail_domain -%>)dnl