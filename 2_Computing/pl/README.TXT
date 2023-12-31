		    SWI-Prolog Distribution Directory

** Last update: Mar 19, 2009, 2009 (Version 5.7.8)

AUTHOR
======
			Jan Wielemaker

	HCS (Formery SWI)		Web and Media
	University of Amsterdam		VU University Amsterdam
	Kruislaan 419			De Boelelaan 1081a
	1098 VA  Amsterdam		1081 HV Amsterdam
			The Netherlands
			E-mail: jan@swi-prolog.org

A list of contributors can be found at

	http://www.swi-prolog.org/Contributors.html


WEB-HOME
========

Please find the up-to-date information on  SWI-Prolog at the link below.
You will find the latest sources (also   accessible through GIT), a FAQ,
mailinglist archive, various additional packages, etc.

	http://www.swi-prolog.org


DOCUMENTATION
=============

Documentation is available  on-line  using   the  help/1  and  apropos/1
commands. HTML and PDF versions of  the   manual  are available from the
SWI-Prolog download page. The add-on  packages   are  documented  in the
doc/packages directory of the installed system.


DIRECTORIES
===========

The SWI-Prolog source tree consists of the following directories.
The packages are labeled as follows:

	I - Installed
	e - experimental/incomplete
	f - foreign (not for SWI-Prolog)
	N - Not installed, but ok.
	o - Obsolete

----------------------------------------------------------------
./src		C sources
./boot		Prolog system predicates defined in Prolog
./library	Prolog user's library
./include	Include files.  Mostly for handling foreign-code
./man		Manual (LaTeX)
./packages	Additional packages:
  chr	      I Constraint handling rules
  clib	      I Process management and TCP/IP sockets
  clpqr	      I Constraints over floats and rational numbers
  cpp	      I C++ wrapper for foreign-language interface
  cppproxy    e C++ based socket object exchange
  C-sicstus   f Package for SICStus to emulate SWI foreign interface
  db	      N Interface to BerkeleyDB 3.0 or higher
  http	      I HTTP server and client library
  inclpr      N	nonlinear (polynomial) constraints over the  real numbers
  jasmine     N Jasmine database interface
  jpl	      I Java interface
  ltx2htm     N LaTeX to HTML converter in Prolog for the documentation
  mp	      o Arbitrary precision arithmetic
  nlp	      I Natural language support: Porter stem and Metaphone
  odbc	      I Database connectivity
  pldoc	      I Documentation system
  plunit      I Unit testing framework
  R	      e Interface to R statistical package
  semweb      I RDF infrastructure
  smgl	      I XML/SGML interface as well as RDF parser
  ssl	      I	Secure sockets
  table	      I Simple table-access routines (for static DB)
  tipc	      I Transparent InterProcess Communication
  uri	      e URI/URL handling
  xpce	      I The Prolog (portable) GUI toolkit and GUI tracer
  zlib	      I Compression utilities


BUILDING SWI-Prolog
===================

Unix using build.templ
----------------------

The script build.templ automates the   'Unix  step-by-step' instructions
below. Once you get this right, the   same script will generally suffice
to compile future versions without hassle.

	* Get and install the required libraries (see Unix step-by-step)
	and/or README.Debian.

	* Copy build.templ to build and edit according to the comments,
	instructions in 'Unix  step-by-step' and INSTALL.notes.

	* Run ./build to build and install the system


Unix step-by-step
-----------------

SWI-Prolog configuration under  Unix  is   driven  by  the  GNU-autoconf
package. Please check INSTALL for the   generic installation options and
INSTALL.notes for some SWI-Prolog specific things. For 99% of the cases,
you just need:

	./configure [--prefix=/path/to/some/dir]
	make
	sodu make install

SWI-Prolog depends on these libraries:

	* libgmp (http://www.swox.com/gmp/)
	Provides large (unbounded) integers and rational numbers.  Some
	of this is used by the constraint libraries.  SWI-Prolog can be
	built without, but it is strongly recommended to get libgmp.

	* libreadline (http://www.gnu.org/software/bash/bash.html)
	Provides line-editing, including Prolog-specific completion.
	Optional, but you'll like it for interactive usage.

SWI-Prolog should compile using any Unix-type   system with 32 or larger
(64) word-length and an ANSI-compliant C-compiler.

Prolog is in part written in  Prolog.   Getting  the  Prolog part of the
system compiled is generally  a  good   test  that  the system functions
properly. A more exhaustive test-suite can be activated using

	make check

After installing the basic system (SWI-Prolog/lite)  you can install the
add-ons. To do this, go to the  packages directory. Edit in Makefile the
PKG macro to define the packages you wish to install. Make sure you have
all required software around.  See README.debian for details.

Now run this in the packages directory:

	./configure
	make
	sudo make install

In anything fails, each package  support the configure/make/make install
cycle, so you can fix problems package-by-package.


MS-Windows
----------

Unless there is a special reason, please  use the binary distribution on
MS-Windows.

Otherwise, get yourself the following tools and resources

	* Windows-NT/2000/XP/Vista
	* MSVC 5.0 or later
	* MIME, JPEG and XPM libraries. You find precompiled versions in

		ftp://gollem.science.uva.nl/xpce/Windows/lib

Now proceed as follows

	* Unpack the sources (anywhere)
	* Edit ...\pl\src\rules.mk following the instructions there
	* Open a command window and switch to ...\pl\src
	* Make sure PATH LIB and INCLUDE are set up properly for the
	  compiler you want to use
	* Compile the system

		nmake /f Makefile.mak

	* Install the system

		nmake /f Makefile.mak install

Thats all. You  can  now  start   swipl-win.exe  or  swipl.exe  from the
$(prefix)\pl\bin\ directory. If you want  you   can  associate  .PL with
swipl-win.exe and/or add swipl-win.exe to your start menu.


GNU-EMACS INTERFACE
===================

The Prolog-mode of GNU-Emacs is rather poor. Personally, I use XPCE (see
Prolog WWW home). For those whishing a proper Prolog mode for GNU-Emacs,
I got the following pointers from Sam Steel:

``Fortunately there seems to be such an  interface: though I suspect you
know it and know of some problem I  have missed. Though I have only used
it for a short while, it seems to work  for me. The only problem is that
the interaction between it  and  the  pager   for  the  online  help  is
imperfect.

It is the prolog.el mode for Emacs-20 at

   http://www.freesoft.cz/~pdm/software/emacs/prolog-mode/

There is also apparently a version for Emacs-19 at

   http://w1.858.telia.com/~u85810764/Prolog-mode/index.html

but I have not used this.

Both appear to be freely redistributable.  SWI Prolog is one of the
flavours of Prolog explicitly handled.''


MODIFYING SWI-Prolog
====================

You are free to modify the  SWI-Prolog   kernel  under  the LGPL and the
Prolog sources under the GPL.


CONTRIBUTING
============

There are a number of ways in which you can contribute to the success of
SWI-Prolog. If you have problems  using   SWI-Prolog  or  think you have
found  a  bug  check   http://www.swi-prolog.org/support.html  for  more
information as well as instructions for   submitting bug-reports. If you
write applications, please acknowledge the  use   of  SWI-Prolog in your
application. If your application has  a   web-page,  please  link to the
SWI-Prolog home page (see the top of   this file). If you write reusable
libraries, consider providing them to the SWI-Prolog user community as a
package (see the SWI-Prolog home page).


COMMERCIAL USAGE
================

SWI-Prolog licensing aims at a large  audience, combining ideas from the
Free Software Foundation and the less  principal Open Source Initiative.
The license aims at:

    * Make SWI-Prolog itself and its libraries are `As free as possible'.
    * Allow for easy integration of contributions.
    * Free software can build on SWI-Prolog without limitations.
    * Non-free (open or proprietary) software can be produced using
      SWI-Prolog, although contributed pure GPL components cannot be
      used.

Please check www.swi-prolog.org for details on   commercial usage of the
system as well as for SUPPORT and SPONSORING options.

