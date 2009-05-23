dnl
dnl $Id: config.m4,v 1.4.4.3 2009/05/13 08:04:27 datibbaw Exp $
dnl

PHP_ARG_WITH(oauth, for oauth support,
[  --with-oauth		Include oauth support])

if test "$PHP_OAUTH" != "no"; then
  PHP_SUBST(OAUTH_SHARED_LIBADD)

  PHP_NEW_EXTENSION(oauth, oauth.c, $ext_shared)
  CFLAGS="$CFLAGS -Wall -g"

dnl  PHP_ADD_EXTENSION_DEP(oauth, curl)
  PHP_ADD_EXTENSION_DEP(oauth, hash)
fi
