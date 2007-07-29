##### http://autoconf-archive.cryp.to/ag_check_uname_syscall.html
#
# SYNOPSIS
#
#   AG_CHECK_UNAME_SYSCALL
#
# DESCRIPTION
#
#   Check that the POSIX compliant uname(2) call works properly.
#
# LAST MODIFICATION
#
#   2007-07-29
#
# COPYLEFT
#
#   Copyright (c) 2007 Bruce Korb <bkorb@gnu.org>
#
#   Copying and distribution of this file, with or without
#   modification, are permitted in any medium without royalty provided
#   the copyright notice and this notice are preserved.

AC_DEFUN([AG_CHECK_UNAME_SYSCALL],[
  AC_MSG_CHECKING([whether uname(2) is POSIX])
  AC_CACHE_VAL([ag_cv_uname_syscall],[
  AC_TRY_RUN([#include <sys/utsname.h>
int main() { struct utsname unm;
return uname( &unm ); }],[ag_cv_uname_syscall=yes],[ag_cv_uname_syscall=no],[ag_cv_uname_syscall=no]
  ) # end of TRY_RUN]) # end of CACHE_VAL

  AC_MSG_RESULT([$ag_cv_uname_syscall])
  if test x$ag_cv_uname_syscall = xyes
  then
    AC_DEFINE(HAVE_UNAME_SYSCALL, 1,
       [Define this if uname(2) is POSIX])
  fi
]) # end of AC_DEFUN of AG_CHECK_UNAME_SYSCALL
