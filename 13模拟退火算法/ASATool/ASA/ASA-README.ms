.AM
.lg 0
.de Co
/******************************************************************
* Adaptive Simulated Annealing (ASA)
* Lester Ingber <ingber@ingber.com>
* Copyright \(co 1987-2015 Lester Ingber.  All Rights Reserved.
* ASA-LICENSE file has the license that must be included with ASA code.
******************************************************************/
.sp
$Id: ASA-README.ms,v 30.18 2015/01/27 22:43:10 ingber Exp ingber $
..
.\"
.\" To avoid creating an extra macro file just for the references,
.\" some macros are inserted here to obtain some minimal formatting.
.\"
.ie \n(.g \{\
.\"		Some macros used in geqn
.if t .char { \fS{
.if t .char } \fS}
.\" 		Some grefer macro changes
.hlm 0
.de R1
.ig R2
..
.R1
accumulate
no-default-database
move-punctuation
bracket-label [ ] ","
sort-adjacent-labels
.R2
.de ]<
.als ref*print ref*end-print
.NH 1
References
.XS
\\*(SN 	References
.XE
.par@reset
..
.de ref*end-print
.ie d [F .IP "[\\*([F]"
.el .XP
\\*[ref*string]
..
.\}
.el \{\
.\"  		Some refer macro changes
.ds [. [
.ds .] ]
.de ]<
.NH 1
References
.XS
\\*(SN 	References
.XE
.LP
.de FP
.IP "[\\\\$1]"
\\..
.rm FS FE
..
.\}
.\"		Header formatting
.ds LF
.ds CF
.ds RF
.ds LH Adaptive Simulated Annealing (ASA)
.ds CH
.ds RH Lester Ingber
.nr PS 11
.nr VS 12
.if t .nr LL 6.5i
.if t .nr LT 6.5i
.if t .ll 6.5i
.if t .lt 6.5i
.if t .po 1i
.if t .nr PO 1i
.if n .nr LL 7i
.if n .nr LT 7i
.if n .ll 7i
.if n .lt 7i
.if n .po 0.5i
.if n .nr PO 0.5i
.\"		Text
.SH
.ce
ADAPTIVE SIMULATED ANNEALING (ASA) \(co
.LP
.FS
.hlm 0
.nf
.Co
.fi
.FE
.ce 99
.sp
.sp
Lester Ingber
.sp
ingber@ingber.com
.br
ingber@alumni.caltech.edu
.ce 0
.if t \{\
.EQ
delim $$
gsize 11
.EN
.\}
.PP
Adaptive Simulated Annealing (ASA) is a C-language code developed
to statistically find the best global fit of a nonlinear constrained
non-convex cost-function over a
.if n D-dimensional
.if t $D$-dimensional
space. This algorithm permits an annealing schedule for \*Qtemperature\*U
.if n T
.if t $T$
decreasing exponentially in annealing-time
.if n k, T = T_0 exp(-c k^1/D).
.if t $k$, $T$ = $T sub 0 ^ exp ( - c k sup {1/D} )$.
The introduction of re-annealing also permits adaptation to changing
sensitivities in the multi-dimensional parameter-space.  This annealing
schedule is faster than fast Cauchy annealing, where
.if n T = T_0/k,
.if t $T$ = $T sub 0 / k$,
and much faster than Boltzmann annealing, where
.if n T = T_0/ln k.
.if t $T$ = $T sub 0 / ln k$.
ASA has over 100 OPTIONS to provide robust tuning over many classes of
nonlinear stochastic systems.
.if t \{\
.EQ
delim off
.EN
.\}
.pn 1
.P1
.bp
.ds CF - \\n(PN -
.af PN 1
.NH 1
ASA\-LICENSE
.XS
\*(SN 	ASA\-LICENSE
.XE
.LP
This Adaptive Simulated Annealing (ASA) code is being made available
under conditions specified in the ASA\-LICENSE file that comes with this
code, and is owned by Lester Ingber.
Reference is properly given to the internet archive that first published
the code.
.[
%A L. Ingber
%R Global optimization C-code
%I Caltech Alumni Association
%C Pasadena, CA
%T Adaptive Simulated Annealing (ASA)
%D 1993
%O URL http://www.ingber.com/#ASA\-CODE
.]
.PP
Please read the copy of the public ASA\-LICENSE contained in
the ASA directory, which is compliant with The Open Source Initiative
BSD 3-Clause License at http://opensource.org/licenses/BSD-3-Clause .
Its intent is to protect the integrity of the algorithm and promote
widespread usage.
.NH 1
Lester Ingber Research Terms of Use
.XS
\*(SN 	Lester Ingber Research Terms of Use
.XE
.LP
Lester Ingber Research (LIR) develops projects in several areas of expertise
documented in the ingber.com InterNet archive, e.g., this ASA code.
Information on terms of use is in the file
http://www.ingber.com/ingber_terms.html under WWW.
.PP
There is no charge for downloading and using codes or files in the
ingber.com archive.  In general, I have retained all rights such as
copyrights to these codes and files, but they may be freely used by any
person or group independent of affiliations, e.g., independent of
academic or commercial affiliation.
.PP
Limited help assisting people with queries on my codes and
papers is available only by electronic mail correspondence.
Sorry, I cannot mail out hardcopies of code or papers.
.NH 1
Documentation
.XS
\*(SN 	Documentation
.XE
.LP
.NH 2
Table of Contents/Index
.XS
\*(SN 		Table of Contents/Index
.XE
.PP
A compilation of the three levels of headers with their page numbers may
be used as a Table of Contents placed after the first title page (as is
done for ASA\-README.ps, ASA\-README.pdf and ASA\-README.html below),
or left at the end for quick reference (as is done for ASA\-README.txt
below).
.NH 2
ASA\-README.ms and ASA\-README
.XS
\*(SN 		ASA\-README.ms and ASA\-README
.XE
.PP
The ASA\-README.ms file is used to prepare other documentation files using
UNIX\(rg MS macros.
.NH 3
ASA\-README.txt and ASA\-README+.txt
.XS
\*(SN 		ASA\-README.txt and ASA\-README+.txt
.XE
.PP
ASA\-README.txt is an ASCII file that can be previewed on your screen
or sent to an ASCII lineprinter.
.PP
ASA\-README+.txt is ASA\-README.txt without any filters to strip off
underlining and bold enhancements.
.NH 3
asa.[13nl] Manpage
.XS
\*(SN 		asa.[13nl] Manpage
.XE
.PP
The ASA\-README.txt or ASA\-README+.txt file can be copied to a file
named asa.[l3], and asa.[13] can be installed as MANPATH/cat1/asa.1 or
MANPATH/cat3/asa.3, where MANPATH is the place your man directory is
located.  If you do not have any cat[13] directories on your system,
then installing a copy of ASA\-README.txt or ASA\-README+.txt as
MANPATH/man[13nl]/asa.[13nl], choosing one of the suffixes in [13nl]
for your choice of directory and asa file name, should work fine on
most machines.  However, passing this asa.[13nl] through man may strip
out additional \*Qback\-slash\*U characters, leading to missing words or
unintended formatting.  If such a file looks strange, compare it to the
raw ASA\-README.ms file to determine the true intended content.  You likely
can avoid some further undesirable formatting by man by placing '.nf'
on the first line of this file.
.NH 3
ASA\-README.ps and ASA\-README.pdf
.XS
\*(SN 		ASA\-README.ps and ASA\-README.pdf
.XE
.PP
ASA\-README.ps is a PostScript\(rg formatted file which may be previewed on
your screen if you have the proper software, or it may be sent to a
PostScript\(rg printer to produce hardcopy.
.PP
A PDF version ASA\-README.pdf is prepared from ASA\-README.ps.
.NH 3
ASA\-README.html
.XS
\*(SN 		ASA\-README.html
.XE
.PP
ASA\-README.html is an HTML version which enables easier access to
subsections of this file.  Cross\-references have been kept local to
this file, so you may view it under a local browser if you download the
HTML source file.
.PP
The background image file asa_back.jpg referenced in ASA\-README.html can
be downloaded as http://www.ingber.com/asa_back.jpg from the ASA archive.
.NH 2
Additional Documentation
.XS
\*(SN 		Additional Documentation
.XE
.PP
ASA\-CHANGES is a terse record of major changes made in the ASA code.  It
has three sections, CHANGES, CONTRIBUTORS, and VERSION DATES.
.PP
ASA\-NOTES is a collection of recommended enhancements, modifications,
comments, caveats, etc., that might be of interest.  There is a
CONTENTS of sections headers that can be used to search on topics in
your browser or editor.
.PP
There are three files in the ASA archive that should be considered as
appendices to the ASA\-NOTES file:
http://www.ingber.com/asa_contrib.txt,
http://www.ingber.com/asa_examples.txt, and
http://www.ingber.com/asa_papers.html under WWW.
.PP
The file http://www.ingber.com/asa_contrib.txt in the ASA archive contains
some code contributed by users.  For example, references are giving to
MATLAB and RLaB gateway routines to ASA (which include many important
parts of the ASA user module), and to function support for ASA_PARALLEL.
There is a CONTENTS of sections headers that can be used to search on
topics in your browser or editor.  In this file I have included the first
1987 VFSR code, the precursor to the ASA code, as used on a specific
project, including the RATFOR vfsr.r and vfsr_com.r code, subsequently
compiled into FORTRAN to run on a Lawrence Livermore supercomputer.
I do not support this old RATFOR code.
.PP
The file http://www.ingber.com/asa_examples.txt in the ASA archive
contains some example problems using ASA and some code to use in ASA.
There is a CONTENTS of sections headers that can be used to search on
topics in your browser or editor.  This file contains some problems
optimized using ASA, which can provide immediate examples on how you
can optimize your own problem.
.PP
The file http://www.ingber.com/asa_papers.html is an addendum to the
ASA\-NOTES file in the ASA code, containing references to some patents
and papers using ASA or its precursor VFSR.
.PP
The file asa_new.txt in the ASA archive is a list of major changes in ASA.
The files ASA\-README.txt, ASA\-README.ps and ASA\-README.pdf included
with the code also are available independently as
http://www.ingber.com/ASA\-README.txt ,
http://www.ingber.com/ASA\-README.ps.gz ,
http://www.ingber.com/ASA\-README.html ,
http://www.ingber.com/ASA\-README.pdf .
.PP
There is a set of ASA_TEMPLATE's available in the ASA\-Makefile and in the
user module (some also in the asa module) to illustrate use of
particular OPTIONS, as listed under ASA_TEMPLATE below.  You can search
on these ASA_TEMPLATE's in your browser or editor to see how these are
implemented.  Note that some OPTIONS require your input, as described
below, and code may fail until you add your own code.  Once you have
determined the most common set of DEFINE_OPTIONS you are likely to use,
you might place these in your own TEMPLATE at the top of asa_usr_asa.h
at the location specified, e.g.,
.nf
.in +3n
#if MY_TEMPLATE                 /* MY_TEMPLATE_asa_user */
  /* you can add your own set of #define here */
#define ... TRUE
#define ... 100
#endif
.in 0
.fi
.PP
See http://www.ingber.com/utils_file_formats.txt for some links to
information on gzip, PostScript, PDF, tar, and shar utilities.  The file
utils_code.txt in that directory gives short statements describing these
files, which may be accessed as http://www.ingber.com/utils_code.html
under WWW.
.NH 2
Use of Documentation for Tuning
.XS
\*(SN 		Use of Documentation for Tuning
.XE
.PP
I am often asked how I can help someone tune their system, and they
send me their cost function or a list of the ASA OPTIONS they are using.
Most often, the best help I can provide is based on my own experience
that nonlinear systems typically are non\-typical.  In practice, that
means that trying to figure out the nature of the cost function under
sampling in order to tune ASA (or likely to similarly tune a hard problem
under any sampling algorithm), by examining just the cost function, likely
will not be as productive as generating more intermediate printout, e.g.,
setting ASA_PRINT_MORE to TRUE, and looking at this output as a \*Qgrey
box\*U of insight into your optimization problem.  Larger files with
more information is provided by setting ASA_PIPE_FILE to TRUE.  Treat the
output of ASA as a simulation in the ASA parameter space, which usually
is quite a different space than the variable space of your system.
.PP
For example, you should be able to see where and how your solution might
be getting stuck in a local minima for a very long time, or where the
last saved state is still fluctuating across a wide portion of your state
space.  These observations should suggest how you might try speeding up
or slowing down annealing/quenching (see more below on modifying ASA with
QUENCH OPTIONS) of the parameter space and/or tightening or loosening
the acceptance criteria at different stages by modifying the OPTIONS,
e.g., starting with the OPTIONS that can be easily adjusted using the
asa_opt file.
.PP
The ASA\-NOTES file that comes with the ASA code provides some
guidelines for tuning that may provide some insights, especially the
section Some Tuning Guidelines.  An especially important guide is
to examine the output of ASA at several stages of sampling, to see
if changes in parameter and temperatures are reasonably correlated to
changes in the cost function.  Examples of useful OPTIONS and code that
often give quick changes in tuning in some problems are in the file
http://www.ingber.com/asa_examples.txt under WWW.  Some of the reprint
files of published papers in the ingber.com provide other examples in
harder systems, and perhaps you might find some examples of harder systems
using ASA similar to your own in http://www.ingber.com/asa_papers.html
under WWW.  This is the best way to add some Art to the Science of
annealing.
.PP
While the upside of using ASA is that it has many OPTIONS available for
tuning, derived in large part from feedback from many users over many
years, making it extremely robust across many systems, the downside is
that the learning curve can be steep especially if the default settings
or simple tweaking in asa_opt do not work very well for your particular
system, and you then must turn to using more ASA OPTIONS.  Most of these
OPTIONS have useful guides in the ASA_TEMPLATEs in asa_usr.c, as well
as being documented here.  If you really get stuck, you may consider
working with someone else who already has climbed this learning curve
and whose experience might offer quick help.
.PP
Tuning is an essential aspect of any sampling algorithm if it is to
be applied to many classes of systems.  It just doesn't make sense to
compare sampling algorithms unless you are prepared to properly tune
each algorithm to each system being optimized or sampled.
.NH 1
Availability of ASA Code
.XS
\*(SN 	Availability of ASA Code
.XE
.LP
.NH 2
ingber.com
.XS
\*(SN 		ingber.com
.XE
.PP
The latest Adaptive Simulated Annealing (ASA) code and some related
papers can be accessed from the home page http://www.ingber.com/ under
WWW.
.PP
The home page http://www.ingber.com/ under WWW, and the
ASCII version 00index.txt, contain an index of the other files.
.PP
The latest version of ASA, ASA\-x.y (x and y are version numbers),
can be obtained in two formats: http://www.ingber.com/ASA.tar.gz and
http://www.ingber.com/ASA.zip.  The tar'd versions is compressed in gzip
format, and ASA.tar.gz.  In the zip'd version, ASA.zip, all files have
been processed for DOS format.
.PP
Patches ASA\-diff\-x1.y1\-x2.y2 up to the present version can be
prepared if a good case for doing so is presented, e.g. to facilitate
updating your own modified codes.  These may be concatenated as
required before applying.  If you require a specific patch, contact
ingber@ingber.com.
.NH 2
Electronic Mail
.XS
\*(SN 		Electronic Mail
.XE
.PP
If you do not have WWW, get the Guide to Offline Internet
Access, returned by sending an e\-mail to mail\-server@rtfm.mit.edu with
only the words \*Qsend
usenet/news.answers/internet\-services/access\-via\-email\*U in the body
of the message.  The guide gives information on using e\-mail to access
just about all InterNet information and documents.  You will receive
the information in utils_access\-via\-email.txt in the ASA
archive.
.NH 1
Background
.XS
\*(SN 	Background
.XE
.LP
.NH 2
Context
.XS
\*(SN 		Context
.XE
.PP
Too often the management of complex systems is ill\-served by not
utilizing the best tools available.
For example, requirements set by decision\-makers often are not formulated
in the same language as constructs formulated by powerful mathematical
formalisms, and so the products of analyses are not properly or maximally
utilized, even if and when they come close to faithfully representing the
powerful intuitions they are supposed to model.
In turn, even powerful mathematical constructs are ill\-served, especially
when dealing with multivariate nonlinear complex systems, when these
formalisms are butchered into quasi\-linear approximations to satisfy
constraints of numerical algorithms familiar to particular analysts,
but which tend to destroy the power of the intuitive constructs developed
by decision\-makers.
.PP
In order to deal with fitting parameters or exploring
sensitivities of variables, as models of systems have become more
sophisticated in describing complex behavior, it has become
increasingly important to retain and respect the nonlinearities
inherent in these models, as they are indeed present in the complex
systems they model.
ASA can help to handle these fits of nonlinear models of real\-world data.
.PP
It helps to visualize the problems presented by such complex systems
as a geographical terrain.
For example, consider a mountain range, with two \*Qparameters,\*U
e.g., along the North\-South and East\-West directions.
We wish to find the lowest valley in this terrain.
ASA approaches this problem similar to using
a bouncing ball that can bounce over mountains from valley to valley.
We start at a high \*Qtemperature,\*U where the temperature is an
ASA parameter that mimics the effect of a fast moving particle in a hot
object like a hot molten metal, thereby permitting the ball to make very
high bounces and being able to bounce over any mountain to access
any valley, given enough bounces.
As the temperature is made relatively colder, the ball cannot bounce so high,
and it also can settle to become trapped in relatively smaller ranges of
valleys.
.PP
We imagine that our mountain range is aptly described by a \*Qcost function.\*U
We define probability distributions of the two directional parameters, called
generating distributions since they generate possible
valleys or states we are to explore.
We define another distribution, called the acceptance distribution, which
depends on the difference of cost functions of the present generated valley
we are to explore and the last saved lowest valley.
The acceptance distribution is used to decide whether to stay
in a new lower valley or to bounce out of it.
All the generating and acceptance distributions depend on temperatures.
.PP
The ASA code was first developed in 1987 as Very Fast Simulated
Reannealing (VFSR) to deal with the necessity of performing adaptive
global optimization on multivariate nonlinear stochastic systems.
.[
%A L. Ingber
%T Very fast simulated re-annealing
%J Mathematical Computer Modelling
%V 12
%P 967-973
%D 1989
%O URL http://www.ingber.com/asa89_vfsr.pdf
.]
The first published use of VFSR for a complex systems was in combat
analysis, using a model of combat first developed in 1986, and then
applied to exercise and simulation data in a series of papers that
spanned 1988-1993.
.[
%A L. Ingber
%T Statistical mechanics of combat and extensions
%B Toward a Science of Command, Control, and Communications
%E C. Jones
%I American Institute of Aeronautics and Astronautics
%C Washington, D.C.
%D 1993
%P 117-149
%O ISBN 1-56347-068-3.  URL http://www.ingber.com/combat93_c3sci.pdf
.]
The first applications to combat analysis used code written in RATFOR
and converted into FORTRAN.  Other applications since then have used
new code written in C.  (The ASA\-NOTES file contains some comments on
interfacing ASA with FORTRAN codes.)
.PP
In November 1992, the VFSR C\-code was rewritten, e.g., changing to the
use of long descriptive names, and made publicly available as version
6.35 under a \*Qcopyleft\*U GNU General Public License (GPL),
.[
%A L. Ingber
%A B. Rosen
%R Global optimization C-code
%I University of Texas
%C San Antonio, TX
%T Very Fast Simulated Reannealing (VFSR)
%D 1992
.]
and copies were placed in NETLIB and STATLIB.
.PP
Beginning in January 93, many adaptive features were developed, largely
in response to users' requests, leading to this ASA code.  Until 1996,
ASA was located at http://www.alumni.caltech.edu/~ingber/.  Pointers
were placed in NETLIB and STATLIB to this location.  ASA versions 1.1
through 5.13 retained the GPL, but subsequent versions through this one
have incorporated a simpler ASA\-LICENSE, based in part on a University
of California license, that protects the integrity of the algorithm,
promotes widespread usage, and requires reference to current source
code.
Beginning with version 29.1 the ASA\-LICENSE was replaced with
The Open Source Initiative BSD 3-Clause License.
.PP
As the archive grew, more room and maintenance was required,
and in February 1996 the site was moved to the present ingber.com
location.  Pointers were placed in the Caltech site to this location.
http://alumni.caltech.edu/~ingber is the mirror homepage for the ASA
site.
.PP
Mirrors of ASA (which may not always be current) are listed at
http://asa-caltech.sourceforge.net or http://asa-caltech.sf.net
since January 2007,
and at
https://code.google.com/p/adaptive-simulated-annealing
since in March 2001.
FTP access to all archives was discontinued in July 2010.
.PP
In February 2011, beginning with Version 28.1, the License
was simplified and brought into the framework described on
http://en.wikipedia.org/wiki/BSD_License as the New BSD License.
.PP
ASA has been examined in the context of a review of methods of simulated
annealing using annealing versus quenching (faster temperature schedules
than permitted by basic heuristic proof of ergodicity -- see more below
on modifying ASA with QUENCH OPTIONS).
.[
%A L. Ingber
%T Simulated annealing: Practice versus theory
%J Mathematical Computer Modelling
%V 18
%D 1993
%P 29-57
%O URL http://www.ingber.com/asa93_sapvt.pdf
.]
A paper has indicated how this technique can be enhanced by combining
it with some other powerful algorithms, e.g., to produce an algorithm
for parallel computation.
.[
%A L. Ingber
%T Generic mesoscopic neural networks based on statistical mechanics
of neocortical interactions
%J Physical Review A
%V 45
%P R2183-R2186
%D 1992
%O URL http://www.ingber.com/smni92_mnn.pdf
.]
ASA is now used world\-wide across many disciplines,
.[
%A M. Wofsey
%T Technology: Shortcut tests validity of complicated formulas
%J The Wall Street Journal
%V CCXXII
%P B1
%D 24 September 1993
.]
.[
%A L. Ingber
%T Adaptive simulated annealing (ASA): Lessons learned
%J Control and Cybernetics
%V 25
%P 33-54
%D 1996
%O This was an invited paper to a special issue of the Polish journal
Control and Cybernetics on \*QSimulated Annealing Applied to Combinatorial
Optimization.\*U  URL http://www.ingber.com/asa96_lessons.pdf
.]
.[
%A L. Ingber
%T Data mining and knowledge discovery via statistical mechanics
in nonlinear stochastic systems
%J Mathl. Computer Modelling
%V 27
%P 9-31
%D 1998
%O URL http://www.ingber.com/path98_datamining.pdf
.]
.[
%A L. Ingber
%T Adaptive Simulated Annealing (ASA) and Path-Integral
(PATHINT) Algorithms: Generic Tools for Complex Systems
%R ASA-PATHINT Lecture Plates
%I Lester Ingber Research
%D 2001
%O Invited talk U Calgary, Canada, April 2001.
URL http://www.ingber.com/asa01_lecture.pdf
.]
including specific disciplines such as finance,
.[
%A L. Ingber
%T Statistical mechanical aids to calculating term structure models
%J Physical Review A
%V 42
%D 1990
%P 7057-7064
%O URL http://www.ingber.com/markets90_interest.pdf
.]
.[
%A L. Ingber
%T Statistical mechanics of nonlinear nonequilibrium financial markets:
Applications to optimized trading
%J Mathematical Computer Modelling
%V 23
%P 101-121
%D 1996
%O URL http://www.ingber.com/markets96_trading.pdf
.]
.[
%A L. Ingber
%T Canonical momenta indicators of financial markets and neocortical EEG
%B Progress in Neural Information Processing
%E S.-I. Amari
%E L. Xu
%E I. King
%E K.-S. Leung
%I Springer
%C New York
%P 777-784
%D 1996
%O Invited paper to the 1996 International Conference on Neural Information
Processing (ICONIP'96), Hong Kong, 24-27 September 1996.
ISBN 981 3083-05-0.  URL http://www.ingber.com/markets96_momenta.pdf
.]
.[
%A L. Ingber
%A R.P. Mondescu
%T Optimization of Trading Physics Models of Markets
%D 2001
%V 12
%N 4
%P 776-790
%J IEEE Trans. Neural Networks
%O Invited paper for special issue on Neural Networks in
Financial Engineering. URL http://www.ingber.com/markets01_optim_trading.pdf
.]
.[
%A L. Ingber
%A R.P. Mondescu
%B Intelligent Internet-Based Information Processing Systems
%T Automated internet trading based on optimized physics models
of markets
%E R.J. Howlett
%E N.S. Ichalkaranje
%E L.C. Jain
%E G. Tonfoni
%I World Scientific
%C Singapore
%D 2003
%P 305-356
%O Invited paper. URL http://www.ingber.com/markets03_automated.pdf
.]
.[
%A A.F. Atiya
%A A.G. Parlos
%A L. Ingber
%T A reinforcement learning method based on adaptive simulated annealing
%B Proceedings International Midwest Symposium on Circuits and Systems (MWCAS), December 2003
%I IEEE CAS
%C Cairo, Egypt
%D 2003
%O URL http://www.ingber.com/asa03_reinforce.pdf
.]
.[
%A L. Ingber
%T Statistical Mechanics of Financial Markets (SMFM):
Applications to Trading Indicators and Options
%R SMFM Lecture Plates
%I Lester Ingber Research
%D 2001
%O Invited talk U Calgary, Canada, April 2001. Invited talk U
Florida, Gainesville, April 2002. Invited talk Tulane U, New
Orleans, January 2003. URL http://www.ingber.com/markets01_lecture.pdf
.]
neuroscience,
.[
%A L. Ingber
%T Statistical mechanics of neocortical interactions:
A scaling paradigm applied to electroencephalography
%J Physical Review A
%V 44
%P 4017-4060
%D 1991
%O URL http://www.ingber.com/smni91_eeg.pdf
.]
.[
%A L. Ingber
%T Statistical mechanics of neocortical interactions:
Canonical momenta indicators of EEG
%J Physical Review E
%V 55
%P 4578-4593
%D 1997
%O URL http://www.ingber.com/smni97_cmi.pdf
.]
.[
%A L. Ingber
%T Statistical mechanics of neocortical interactions:
Training and testing canonical momenta indicators of EEG
%J Mathl. Computer Modelling
%V 27
%P 33-64
%D 1998
%O URL http://www.ingber.com/smni98_cmi_test.pdf
.]
.[
%A L. Ingber
%T Statistical Mechanics of Neocortical Interactions (SMNI):
Multiple Scales of Short-Term Memory and EEG Phenomena
%R SMNI Lecture Plates
%I Lester Ingber Research
%D 2001
%O Invited talk U Calgary, Canada, April 2001.
URL http://www.ingber.com/smni01_lecture.pdf
.]
.[
%A L. Ingber
%T Statistical mechanics of neocortical interactions (SMNI): Testing theories with multiple imaging data
%J NeuroQuantology Journal
%D 2008
%O Invited paper. http://www.ingber.com/smni08_tt.pdf
.]
.[
%A L. Ingber
%T Statistical mechanics of neocortical interactions: Nonlinear columnar electroencephalography
%J NeuroQuantology Journal
%V 7
%N 4
%P 500-529
%D 2009
%O URL http://www.ingber.com/smni09_nonlin_column_eeg.pdf
.]
.[
%A L. Ingber
%A M. Pappalepore
%A R.R. Stesiak
%J Journal of Theoretical Biology
%T Electroencephalographic field influence on calcium momentum waves
%D 2014
%O URL http://www.ingber.com/smni14_eeg_ca.pdf and http://dx.doi.org/10.1016/j.jtbi.2013.11.002
.]
.[
%A L. Ingber
%T Calculating consciousness correlates at multiple scales of neocortical interactions
%B Horizons in Neuroscience Research
%I Nova
%C Hauppauge, NY
%D 2015
%O Invited paper. URL http://www.ingber.com/smni15_calc_conscious.pdf
.]
and combat analyses.
.[
%A L. Ingber
%A H. Fujio
%A M.F. Wehner
%T Mathematical comparison of combat computer models to
exercise data
%J Mathematical Computer Modelling
%V 15
%N 1
%P 65-90
%D 1991
%O URL http://www.ingber.com/combat91_data.pdf
.]
.[
%A L. Ingber
%A D.D. Sworder
%T Statistical mechanics of combat with human factors
%J Mathematical Computer Modelling
%V 15
%N 11
%D 1991
%P 99-127
%O URL http://www.ingber.com/combat91_human.pdf
.]
.[
%A L. Ingber
%T Statistical mechanics of combat and extensions
%B Toward a Science of Command, Control, and Communications
%E C. Jones
%I American Institute of Aeronautics and Astronautics
%C Washington, D.C.
%D 1993
%P 117-149
%O ISBN 1-56347-068-3. URL http://www.ingber.com/combat93_c3sci.pdf
.]
.[
%A M. Bowman
%A L. Ingber
%T Canonical momenta of nonlinear combat
%B Proceedings of the 1997 Simulation Multi-Conference, 6-10 April 1997,
Atlanta, GA
%I Society for Computer Simulation
%C San Diego, CA
%D 1997
%O URL http://www.ingber.com/combat97_cmi.pdf
.]
.[
%A L. Ingber
%T Statistical Mechanics of Combat (SMC): Mathematical
Comparison of Computer Models to Exercise Data
%R SMC Lecture Plates
%I Lester Ingber Research
%D 2001
%O URL http://www.ingber.com/combat01_lecture.pdf
.]
.[
%A L. Ingber
%T Real Options for Project Schedules (ROPS)
%R Report 2007:ROPS
%D 2007
%I Lester Ingber Research
%C Ashland, OR
%O URL http://www.ingber.com/markets07_rops.pdf
.]
.[
%A L. Ingber
%T Real Options for Project Schedules (ROPS)
%J International Journal of Science, Technology & Management
%V
%D 2010
.]
Some papers illustrate the combined use of ASA for optimization and
sampling.
.[
%A L. Ingber
%T Trading in Risk Dimensions (TRD)
%R Report 2005:TRD
%D 2005
%I Lester Ingber Research
%C Ashland, OR
%O URL http://www.ingber.com/markets05_trd.pdf
.]
.[
%A L. Ingber
%E G.N. Gregoriou
%T Trading in Risk Dimensions
%B The Handbook of Trading: Strategies for Navigating and Profiting from Currency, Bond, and Stock Markets
%I McGraw-Hill
%C New York
%D 2010
%P 287-300
.]
.[
%A L. Ingber
%T Ideas by Statistical Mechanics (ISM)
%R Report 2006:ISM
%D 2006
%I Lester Ingber Research
%C Ashland, OR
%O URL http://www.ingber.com/smni06_ism.pdf
.]
.[
%A L. Ingber
%T Ideas by Statistical Mechanics (ISM)
%J J Integrated Systems Design and Process Science 
%V 11
%N 3
%P 22-45
%D 2007
%O Special Issue: Biologically Inspired Computing
.]
.[
%A L. Ingber
%E J.R. Rabuñal
%E J. Dorado
%E A.P. Pazos
%T AI and Ideas by Statistical Mechanics (ISM)
%B Encyclopedia of Artificial Intelligence
%D 2008
%P 58-64
%I Information Science Reference
%C New York
%O ISBN 978-1-59904-849-9
.]
.[
%A L. Ingber
%T Adaptive Simulated Annealing
%B Stochastic global optimization and its applications with fuzzy adaptive simulated annealing
%E H.A. Oliveira, Jr.
%E A. Petraglia
%E L. Ingber
%E M.A.S. Machado
%E M.R. Petraglia
%I Springer
%C New York
%D 2012
%P 33-61
%O Invited Paper. URL http://www.ingber.com/asa11_options.pdf
.]
The http://www.ingber.com/asa_papers.html file in the ASA archive
contains references to some patents and papers using ASA and VFSR.
.in 0
.\"             Equations set only in PostScript\(rg ([g]troff)
.if t \{\
.EQ
delim $$
gsize 11
.EN
.\}
.NH 2
Outline of ASA Algorithm
.XS
\*(SN 		Outline of ASA Algorithm
.XE
.PP
Details of the ASA algorithm are best obtained from the published papers.
There are three parts to its basic structure: Generating Probability
Density Functions, Acceptance Probability Density Functions, and
Temperature Schedules.
.NH 3
Simulated Annealing is NOT Simulated Quenching
.XS
\*(SN 			Simulated Annealing is NOT Simulated Quenching
.XE
.PP
As an aside, it is very important to understand that Simulated Annealing
(SA) is NOT Simulated Quenching (SQ).  The issue is that SA is not just
one algorithm -- it is a class of approaches to importance sampling.
.PP
Different SA algorithms may have different probability distributions they
use to generate new states for consideration by the acceptance criteria.
The often-cited SA proof of convergence depends on this generating
probability distribution, which leads to different temperature schedules
for different  distributions.
.PP
If a schedule-1 derived for one SA-1 is faster than a schedule-2 derived
for a different SA-2, but one uses schedule-1 with the SA-2 algorithm,
then SQ-2 is being used and not SA-2.  The proof for SA-2 will fail
using schedule-1 (although the mixed algorithm might work just fine).
.PP
SQ is not a \*Qbad\*U thing.  It's just that one cannot cite the SA proof
of convergence, although the SQ being used might be really among the best
algorithms being used for a given system.  For example, there is no doubt
that Newton's method is superior to SA for parabolic objective functions.
The point is that there are proofs that SA likely can do more for more
complex problems, although it might not be the most efficient algorithm
for a specific system.
.PP
See more below on how to modify ASA with QUENCH OPTIONS, easily permitting
various degrees of quenching.  This is especially useful if you determine
that your optimal state(s) can be reached using SQ.
.NH 3
Generating Probability Density Function
.XS
\*(SN 			Generating Probability Density Function
.XE
.PP
In a
.if t $D$-dimensional
.if n D\-dimensional
parameter space with parameters
.if t $p sup i$
.if n p^i
having ranges
.if t $[ A sub i ,~ B sub i ]$,
.if n [A_i, B_i],
about the
.if t $k$'th
.if n k'th
last saved point (e.g., a local optima),
.if t $p sub k sup i$,
.if n p_k^i,
a new point is generated using a distribution defined by the product
of distributions for each parameter,
.if t $g sup i ( y sup i ;^ T sub i )$
.if n g^i(y^i; T_i),
in terms of random variables
.if t $y sup i \(mo [ -1 ,~ 1]$,
.if n y^i in [-1, 1],
where
.if t $p sub k+1 sup i$ = $p sub k sup i + y sup i ( B sub i - A sub i )$,
.if n p_k+1^i = p_k^i + y^i(B_i - A_i),
and \*Qtemperatures\*U
.if t $T sub i$,
.if n T_i,
.ie t \{\
.EQ I
g sup i ( y sup i ;^ T sub i ) = 1 over { 2 ( | y sup i | + T sub i )
ln ( 1 + 1 / T sub i ) } ~.
.EN
.\}
.el \{\
.in +8n
g^i(y^i; T_i) = 1/[2(|y^i| + T_i)(1 + 1/T_i)].
.in 0
.\}
The DEFINE_OPTIONS USER_GENERATING_FUNCTION permits using an
alternative to this ASA distribution function.
.NH 3
Acceptance Probability Density Function
.XS
\*(SN 			Acceptance Probability Density Function
.XE
.PP
The cost functions,
.if t $C ( p sub k+1 ) - C ( p sub k )$,
.if n C(p_k+1) - C(p_k),
are compared using a uniform random generator,
.if t $U \(mo [ 0 ,~ 1 )$,
.if n U in [0, 1),
in a \*QBoltzmann\*U test: If
.ie t \{\
.EQ I
exp [ - fat ( C (p sub k+1 )  - C ( p sub k ) fat ) /
T sub {roman cost} ] > U ~,
.EN
.\}
.el \{\
.in +8n
exp[-(C(p_k+1) - C(p_k))/T_cost] > U,
.in 0
.\}
where
.if t $T sub {roman cost}$
.if n T_cost
is the \*Qtemperature\*U used for this test, then the new point is
accepted as the new saved point for the next iteration.  Otherwise, the
last saved point is retained.  The DEFINE_OPTIONS USER_ACCEPT_ASYMP_EXP
or USER_ACCEPT_THRESHOLD permit using alternatives to this Boltzmann
distribution function.
.NH 3
Reannealing Temperature Schedule
.XS
\*(SN 			Reannealing Temperature Schedule
.XE
.PP
The annealing schedule for each parameter temperature,
.if t $T sub i$
.if n T_i,
from a starting temperature
.if t $T sub i0$,
.if n T_i0,
is
.ie t \{\
.EQ I
T sub i ( k sub i ) = T sub 0i exp ( - c sub i k sub i sup 1/D ) ~.
.EN
.\}
.el \{\
.in +8n
T_i(k_i) = T_0i exp(-c_i k_i^(1/D)).
.in 0
.\}
This is discussed further below.
.PP
The annealing schedule for the cost temperature is developed similarly
to the parameter temperatures.  However, the index for reannealing the
cost function,
.if t $k sub {roman cost}$,
.if n k_cost,
is determined by the number of accepted points, instead of the number
of generated points as used for the parameters.  This choice was made
because the Boltzmann acceptance criteria uses an exponential
distribution which is not as fat\-tailed as the ASA distribution used
for the parameters.  This schedule can be modified using several
OPTIONS.  In particular, the Pre\-Compile DEFINE_OPTIONS
USER_COST_SCHEDULE permits quite arbitrary functional modifications for
this annealing schedule, and the Pre\-Compile DEFINE_OPTIONS
.PP
As determined by the Program Options selected, the parameter
\*Qtemperatures\*U may be periodically adaptively reannealed, or
increased relative to their previous values, using their relative first
derivatives with respect to the cost function, to guide the search
\*Qfairly\*U among the parameters.
.PP
As determined by the Program Options selected,
the reannealing of the cost temperature resets the scale of
the annealing of the cost acceptance criteria as
.ie t \{\
.EQ I
T sub {roman cost} ( k sub {roman cost} ) = T sub {0 ~ roman cost}
exp ( - c sub {roman cost} k sub {roman cost} sup 1/D ) ~.
.EN
.\}
.el \{\
.in +8n
T_cost(k_cost) = T_0cost exp(-c_cost k_cost^(1/D)).
.in 0
.\}
The new
.if t $T sub {0 ~ roman cost}$
.if n T_0cost
is taken to be the minimum of the current initial cost temperature and
the maximum of the absolute values of the best and last cost functions
and their difference.  The new
.if t $k sub {roman cost}$
.if n k_cost
is calculated taking
.if t $T sub { roman cost}$
.if n T_cost
as the maximum of the current value and the absolute value of the
difference between the last and best saved minima of the cost function,
constrained not to exceed the current initial cost temperature.  This
procedure essentially resets the scale of the annealing of the cost
temperature within the scale of the current best or last saved
minimum.
.PP
This default algorithm for reannealing the cost temperature, taking
advantage of the ASA importance sampling that relates most specifically
to the parameter temperatures, while often is quite efficient for some
systems, may lead to problems in dwelling too long in local minima for
other systems.  In such case, the user may also experiment with
alternative algorithms effected using the Reanneal_Cost OPTIONS,
discussed below.  For example, ASA provides an alternative calculation
for the cost temperature, when Reanneal_Cost < -1 or > 1, that
periodically calculates the initial and current cost temperatures or
just the initial cost temperature, resp., as a deviation over a sample
of cost functions.
.PP
These reannealing algorithms can be changed adaptively by the user as
described below in the sections USER_REANNEAL_COST and
USER_REANNEAL_PARAMETERS.
.NH 2
Efficiency Versus Necessity
.XS
\*(SN 		Efficiency Versus Necessity
.XE
.PP
ASA is not necessarily an \*Qefficient\*U code.  For example, if you
know that your cost function to be optimized is something close to a
parabola, then a simple gradient Newton search method most likely would
be faster than ASA.  ASA is believed to be faster and more robust than
other simulated annealing techniques for \f2most\f1 complex problems
with multiple local optima; again, be careful to note that some
problems are best treated by other algorithms.  If you do not know much
about the structure of your system, and especially if it has complex
constraints, and you need to search for a global optimum, then this ASA
code is heartily recommended to you.
.PP
In the context of efficiency and necessity, the user should be alert to
recognize that any sampling or optimization program generally should be
considered as complementary, not as a substitute, to gaining knowledge
of a particular system.  Unlike relatively \*Qcanned\*U codes that
exist for (quasi\-)linear systems, nonlinear systems typically are
non\-typical.  Often some homework must be done to understand the
system, and tuning often is required of numerical algorithms such as
ASA.  For example, while principal component analyses (PCA) often
suffices to generate good (quasi\-)orthogonal or (quasi\-)independent
sets of parameters, this is not true for general nonlinear systems.
While such innovations as reannealing take good advantage of ASA which
offers independent distributions for each parameter, this generally may
not be a good substitute for a user\-defined front\-end, e.g., before the
call to asa\ () or even embedded within the cost_function (), to interpret
and define relevant parameters.
.PP
The ASA\-NOTES file contains the sections @@Number of Generated States
Required and @@Judging Importance\-Sampling, recommending use of log\-log
plots to extrapolate the number of generated states required to attain
a global minimum, possibly as a function of selected OPTIONS.
.NH 1
Outline of Use
.XS
\*(SN 	Outline of Use
.XE
.LP
Set up the ASA interface: Your program should be divided into two basic
modules.  (1) The user calling procedure, containing the cost function
to be minimized (or its negative if you require a global maximum), is
contained in asa_usr.c, asa_usr.h and asa_usr_cst.c.  (2) The ASA optimization
procedure, is contained in asa.c and asa.h.  The file asa_usr_asa.h
contains definitions and macros common to both asa.h and asa_usr.h.
Furthermore, there are some options to explore/read below.  It is
assumed there will be no confusion over the standard uses of the term
\*Qparameter\*U in different contexts, e.g., as an element passed by a
subroutine or as a physical coefficient in a cost function.
.PP
ASA has been run successfully on many machines under many compilers.
To check out your own system, you can run `make` (or the equivalent set
of commands in the ASA\-Makefile), and compare your asa_out and asa_usr_out
files to the asa_test_asa and asa_test_usr files, respectively, provided with
this code.  No attempt was made to optimize any compiler, so that the
test runs do not really signify any testing of compilers or
architectures; rather they are meant to be used as a guide to determine
what you might expect on your own machine.
.PP
The major sections below describe the compilation procedures, the
Program Options available to you to control the code, the use of
templates to set up your user module and interface to the asa module,
and how to submit bug reports.
.PP
If you already have your own cost function defined, you can insert it
into asa_usr_cst.c.  If you wish to insert more OPTIONS, as a quick guide
to get started, you can search through asa_usr.c and the ASA\-Makefile for all
occurrences of \*QMY_TEMPLATE_\*U to insert the necessary definitions
required to run ASA.  If you use both OPTIONS_FILE and
OPTIONS_FILE_DATA set to TRUE, then usually most such information can
be placed in the asa_opt file, and then only the cost_function () must
be inserted.  The place to insert the cost_function () is marked by
\*QMY_TEMPLATE_cost.\*U
.NH 1
ASA\-Makefile/Compilation Procedures
.XS
\*(SN 	ASA\-Makefile/Compilation Procedures
.nr Mc \*(SN
.XE
.LP
The ASA\-Makefile is intended to be a template for your own Makefile.
For quick use, just copy this file to Makefile, which will be recognized
by any standard make tool.
.PP
The PostScript\(rg ASA\-README.ps and ASCII ASA\-README.txt and
ASA\-README+.txt files were generated using `make doc`.  The ASA\-Makefile
describes some options for formatting these files differently.  Use `make`
or `make all` to compile and run asa_run, the executable prepared for
the test function.  Examine the ASA\-Makefile to determine the \*Qclean\*U
options available.
.PP
Since complex problems by their nature are often quite unique, it is
unlikely that the default parameters are just right for your problem.
However, experience has shown that if you \f2a priori\f1 do not have
any reason to determine your own parameters, then you might do just
fine using these defaults, and these are recommended as a first\-order
guess.  These defaults can be changed simply by adding to the
DEFINE_OPTIONS line in the ASA\-Makefile, by passing options on your command
line, and by changing structure elements in the user or asa module as
described below.  Depending on how you integrate ASA into your own user
modules, you may wish to modify this ASA\-Makefile or at least use some of
these options in your own compilation procedures.
.PP
Note that the ASA\-Makefile is just a convenience, not a necessity, to use
ASA.  E.g., on systems which do not support this utility, you may
simply compile the files following the guidelines in the ASA\-Makefile,
taking care to pass the correct DEFINE_OPTIONS to your compilation
commands at your shell prompt.  Still another way, albeit not as
convenient, is to make the desired changes in the asa_usr_asa.h, and asa.h
or asa_usr.h files as required.
.PP
Since the ASA\-Makefile contains comments giving short descriptions of some
options, it should be considered as an extension of this documentation
file.  For convenience, most of this information is repeated below.
However, to see how they can be used in compilations, please read
through the ASA\-Makefile.
.PP
For example, to run the ASA test problem using the gcc compiler, you
could just type at your \*Q%\*U prompt:
.nf
.in +8n
% cp ASA-Makefile Makefile
% gcc -g -DASA_TEST=TRUE -o asa_run asa_usr.c asa_usr_cst.c asa.c -lm
% asa_run
.in 0
.fi
Note that if you use gcc across different levels of compiler optimization
on different platforms, you may wish to invoke -ffloat-store to be sure
to get the same precision in your results.
.PP
If you have defined your own cost function in asa_usr_cst.c or within the
\*QMY_TEMPLATE_\*U guides in asa_usr.c, then ASA_TEST should be set to
FALSE (the default if ASA_TEST is not defined in your compilation lines
or in the ASA\-Makefile).  The code for ASA_TEST=TRUE is given just above
these guides as a template to use for your own cost function.
.PP
The easiest way for many users to quickly use ASA likely is to invoke the
COST_FILE, OPTIONS_FILE, and OPTIONS_FILE_DATA OPTIONS (the default),
using the files asa_usr_cst.c and asa_opt as templates.  This is further
described below and illustrated in the http://www.ingber.com/asa_examples.txt
file in the section Use of COST_FILE on Shubert Problem.
.NH 2
DLL ASA\-Makefile
.XS
\*(SN 		DLL ASA\-Makefile
.XE
.nr Md \*(SN
.PP
Under Cygwin (cygwin.com), set ASA_LIB to TRUE and INCL_STDOUT to FALSE
(OPTIONS described below), with the command
.in +8n
% make asadll
.in 0
to produce a DLL to call asa_main() as a DLL function under windows.
(Ignore any undefined references to _WinMain.)  Note that per instructions
given in the ASA\-Makefile, i686-pc-mingw32-gcc.exe should be used.
.PP
If paths are used to access files in code, under Windows use absolute
paths with \*Q\\\\\*U (double back slash) to separate folders/directories,
instead of relative paths with \*Q/\*U (single forward slash) separators
as on other Unix platforms.
.NH 1
Generic ASA Interfaces
.XS
\*(SN 	Generic ASA Interfaces
.XE
.LP
The sections above describe how to quickly adapt ASA for use in many
problems.  However, complex projects often require sophisticated use of
multiple languages to handle data and multiple algorithms.  ASA has many
OPTIONS that enable users to interface ASA with such complex projects.
.PP
ASA should compile under C++ as well as under C compilers.  For example,
I regularly test this by running projects under both gcc and g++.
This can be very useful when ASA is called from other C++ programs,
e.g., when using ASA_LIB set to TRUE.  The ASA-NOTES file has additional
information, e.g., when using SUNPRO CC, etc.
.PP
I have led many projects that required ASA to interface with
Java, Maple, Matlab, MySQL, etc.  The approach briefly described below
can be applied to any language that permits a simple interface to C code.
This definitely requires some expert experience in C, so you may have to
find a local C guru, since I cannot help you with your specific project.
.PP
Some specific interfaces have been prepared by other people, and I have
included some of them in the asa_contrib.txt file.  The tradeoff for
their simple use is that these approaches are limited to using just a
few ASA OPTIONS as they typically have trimmed down the ASA code.
.PP
The generic approach is to utilize at least the OPTIONS ASA_LIB and
OPTIONAL_DATA_PTR, setting them to TRUE.  ASA_LIB permits the entire
ASA code to be called as a simple function.  Its sole parameter can be
a struct defined by OPTIONAL_PTR_TYPE, e.g., OPTIONAL_PTR_TYPE PROJECT,
defined in asa_usr_asa.h.  A small include file common to asa_usr_asa.h
and to the larger complex project, e.g., project.h, is used to define
the constituents of the the PROJECT struct.  As described above in the
DLL ASA\-Makefile sub-Section of Section \n(Md, ASA_LIB can be used to create
a DLL to be called by Windows programs.
.PP
A small C function, e.g., project.c, is to be used for the interface
between ASA and the other language.  Similarly, another small function
also may be used to interface the project to handle the interface, e.g.,
project.m, project.java, project.mpl, etc.  Inversely, the interface
may (also) be between the cost function, e.g., in asa_usr_cst.c or asa_usr.c,
and the project.  Then the application below is used to pass information
between the cost function and the other language.
.PP
The other language passes information and data to project.c required by
ASA, where it is packed into the struct defined by OPTIONAL_PTR_TYPE.
Multiple or recursive calls to ASA can be handled by including a flag
in this struct, e.g., to turn on different cost functions.  Also added
to this struct are placeholders for the output of ASA required by the
project.  This struct is passed to the ASA code by calling asa_main ()
defined in asa_usr.c with a parameter PROJECT *Project.  In asa_main (),
in the section defining properties of OPTIONAL_DATA_PTR, the pointer to
Project struct is set to the pointer path to Asa_Data_Ptr.  Asa_Data_Ptr
is now passed throughout the entire ASA code via the OPTIONS pointer,
project parameters can be adaptively changed, etc.  See the discussion
under Asa_Data_Ptr.
.PP
After the call to asa\ () in asa_usr.c, its output can be packed into the
project struct, before memory is freed.  The pointer Asa_Data_Ptr should
be set to NULL instead of freed; see the comment in asa_usr.c at the place
Asa_Data_Ptr is freed in the default code.
.PP
It is wise to create #define PROJECT and #endif pairs wherever changes
to any ASA code are made, define PROJECT to TRUE in asa_usr_asa.h, so that
it will be easy to modify updated ASA code, etc.  Probably several such
changes will have to be made in asa_usr.c.  Control of OPTIONS likely will
best be handled in asa_usr_asa.h than in the ASA\-Makefile.
.NH 1
User Options
.XS
\*(SN 	User Options
.XE
.LP
Program Options, i.e., the USER_DEFINES typedef on the OPTIONS,
USER_OPTIONS, RECUR_USER_OPTIONS, etc., are turned on during the
running of asa\ ().  The DEFINE_OPTIONS are compiled in by the use of
arguments to the compilation or by setting them in the asa_usr_asa.h
file.  An example of the former is Reanneal_Parameters, and an example
of the latter is ASA_SAMPLE.  The basic code is kept small for most
users by using the Pre\-Compile DEFINE_OPTIONS to pull in additional
DEFINE_OPTIONS only if required.  The Program Options are intended to
be used adaptively and/or to pull in additional code for cases where
repeated or recursive use, e.g., when using SELF_OPTIMIZE, might be
facilitated by having control of some Program Options at separate
levels.
.PP
Note that even when the DEFINE_OPTIONS or Program Options are used to
pull in new code, separate levels of control also can be achieved,
albeit usually at the price of incurring some overhead in setting
values at some levels of recursion or repeated calls.  For example, in
cases where new arrays or functions come into play, enough parameters
are passed between the asa and user modules to calculate the defaults
as well as different values adaptively.  In some often used cases,
separate DEFINE_OPTIONS are given, e.g., both OPTIONS_FILE and
RECUR_OPTIONS_FILE exist.  I have tried to strike some reasonable
balance between these goals and constraints.
.PP
The DEFINE_OPTIONS are organized into two groups: Pre\-Compile Options
and (Pre\-Compile) Printing Options.  In addition, there are some
alternatives to explore under Compiler Choices and Document
Formatting.  Below are the DEFINE_OPTIONS with their defaults.  The
Program Options are further discussed in other sections in this
document.
.PP
Note that the Pre\-Compile DEFINE_OPTIONS are all in capital letters,
and the adaptive Program Options (under structure USER_OPTIONS in the
user module and under structure OPTIONS in the asa module) are in
capital and lower-case letters.  In this file, often just the term
OPTIONS may refer to the set of all options when the context is
clear.
.NH 2
Pre-Compile DEFINE_OPTIONS
.XS
\*(SN 		Pre-Compile DEFINE_OPTIONS
.XE
.PP
.NH 3
USER_COST_FUNCTION=cost_function
.XS
\*(SN 			USER_COST_FUNCTION=cost_function
.XE
.PP
The default name of the cost function is cost_function.  This can be
changed in asa_usr_asa.h (or the ASA\-Makefile) by defining USER_COST_FUNCTION.
This of course requires compiling in the new cost function and its
prototype.
.NH 3
RECUR_USER_COST_FUNCTION=recur_cost_function
.XS
\*(SN 			RECUR_USER_COST_FUNCTION=recur_cost_function
.XE
.PP
When SELF_OPTIMIZE is TRUE, the default name of the recur cost function is
recur_cost_function.  This can be changed in asa_usr_asa.h (or the ASA\-Makefile)
by defining RECUR_USER_COST_FUNCTION.  This of course requires compiling
in the new cost function and its prototype.
.NH 3
OPTIONS_FILE=TRUE
.XS
\*(SN 			OPTIONS_FILE=TRUE
.XE
.PP
You can elect to read in many of the Program Options from asa_opt
by setting OPTIONS_FILE=TRUE.  OPTIONS_FILE=TRUE can be set in the
ASA\-Makefile in compilation commands or in asa_usr_asa.h.
.NH 3
OPTIONS_FILE_DATA=TRUE
.XS
\*(SN 			OPTIONS_FILE_DATA=TRUE
.XE
.PP
If OPTIONS_FILE is set to TRUE, then setting OPTIONS_FILE_DATA to TRUE
permits reading most initialization data from asa_opt, i.e., number of
parameters, minimum and maximum ranges, initial values, and integer or
real types.  This should suffice for most applications, just requiring
insertion of the user's cost_function into asa_usr_cst.c or asa_usr.c.
.PP
If OPTIONS_FILE, OPTIONS_FILE_DATA and QUENCH_COST are TRUE, then
*User_Quench_Cost_Scale is read in from asa_opt.  If OPTIONS_FILE,
OPTIONS_FILE_DATA, QUENCH_COST, and QUENCH_PARAMETERS are TRUE, then
*User_Quench_Cost_Scale and User_Quench_Param_Scale [] all are read in
from asa_opt.
.NH 3
RECUR_OPTIONS_FILE=FALSE
.XS
\*(SN 			RECUR_OPTIONS_FILE=FALSE
.XE
.PP
When SELF_OPTIMIZE is TRUE, you can elect to read in many of the
Program Options for the top\-level program from asa_opt_recur (which you
will have to create in the style of asa_opt), by setting
RECUR_OPTIONS_FILE=TRUE.
.NH 3
RECUR_OPTIONS_FILE_DATA=FALSE
.XS
\*(SN 			RECUR_OPTIONS_FILE_DATA=FALSE
.XE
.PP
When SELF_OPTIMIZE is TRUE, if RECUR_OPTIONS_FILE is set to TRUE, then
setting RECUR_OPTIONS_FILE_DATA to TRUE permits reading most
initialization data from asa_opt_recur (which you will have to create
in the style of asa_opt), i.e., number of parameters, minimum and
maximum ranges, initial values, and integer or real types.
.PP
If RECUR_OPTIONS_FILE, RECUR_OPTIONS_FILE_DATA and QUENCH_COST are
TRUE, then *User_Quench_Cost_Scale is read in from asa_opt_recur.  If
RECUR_OPTIONS_FILE, RECUR_OPTIONS_FILE_DATA, QUENCH_COST, and
QUENCH_PARAMETERS are TRUE, then *User_Quench_Cost_Scale and
User_Quench_Param_Scale [] all are read in from asa_opt_recur.
.NH 3
COST_FILE=TRUE
.XS
\*(SN 			COST_FILE=TRUE
.XE
.PP
If COST_FILE is set to TRUE, then you can use a separate file to define
your cost function.  When used together with OPTIONS_FILE and
OPTIONS_FILE_DATA both set to TRUE, most users may be able to just use
their own asa_usr_cst.c file for their cost_function () together with the
asa_opt data file, and not have to work through some of the examples
and templates contained in asa_usr.c.
.PP
When COST_FILE is set to TRUE, the file asa_usr_cst.c contains cost_function
().  If you wish to change the name of cost_function () in asa_usr_cst.c,
then you must also change this name in the call to asa\ () in asa_usr.c
(search under \*Qasa (\*U) and in the prototype listing in asa_usr.h (in the
HAVE_ANSI set to TRUE or FALSE section as appropriate).  You may wish
to copy the appropriate parameter list in asa_usr_cst.c just before the
ASA_TEST problem to be sure of using the proper format expected by asa\ ()
in asa.c.
.PP
The http://www.ingber.com/asa_examples.txt file contains a section
Use of COST_FILE on Shubert Problem which illustrates the simple
modifications of ASA required to use COST_FILE.
.NH 3
ASA_LIB=FALSE
.XS
\*(SN 			ASA_LIB=FALSE
.XE
.PP
Setting ASA_LIB=TRUE will facilitate your running asa\ () as a library
call from another program, calling asa_main () in asa_usr.c.  In the
templates provided, all initializations and cost function definitions
are set up in the user module.  For example, you may wish to have some
data read in to a module that calls asa_main (), then parses out this
information to the arrays in asa_main () and initialize_parameters (and
possibly recur_initialize_parameters).  In conjunction with setting
printout to stdout (see ASA_OUT and USER_ASA_OUT), this can be a
convenient way of using the same asa_run executable for many runs.
.PP
When ASA_LIB is TRUE, another function becomes available in asa_usr.c,
asa_seed (), which can be used to change the initial seed used in runs
made by asa_main ().  If this routine is not called, then the default
initial seed is used.  An example of using this routine when calling
asa_main () is given with ASA_TEMPLATE_LIB, using a main () at the end of
the asa_usr.c file.
.PP
As described in the DLL ASA\-Makefile sub-Section of Section \n(Md, the
ASA\-Makefile and ASA_LIB can be used to create a DLL for Windows programs.
.NH 3
HAVE_ANSI=TRUE
.XS
\*(SN 			HAVE_ANSI=TRUE
.XE
.PP
Setting HAVE_ANSI=FALSE will permit you to use an older K&R C
compiler.  This option can be used if you do not have an ANSI compiler,
overriding the default HAVE_ANSI=TRUE.  If you use HAVE_ANSI=FALSE,
change CC and CDEBUGFLAGS as described in the ASA\-Makefile.
.NH 3
IO_PROTOTYPES=FALSE
.XS
\*(SN 			IO_PROTOTYPES=FALSE
.XE
.PP
Most newer operating systems do not like any other I/O prototyping
other than those in their own include files.  Other machines, like a
Dec\-3100 under Ultrix complain that the ANSI I/O prototypes were
inconsistent.  A Sun under 4.1.x gcc gave warnings if no I/O prototypes
were present.  The defaults in asa_usr_asa.h use newer system prototypes.
IO_PROTOTYPES=TRUE will uncomment out declarations for such items as
fprintf, fflush, fclose, exit, and fscanf.
.NH 3
TIME_CALC=FALSE
.XS
\*(SN 			TIME_CALC=FALSE
.XE
.PP
Some systems do not have the time include files used here; others have
different scales for time.  Setting TIME_CALC=TRUE will permit use of
the time routines.
.NH 3
TIME_STD=FALSE
.XS
\*(SN 			TIME_STD=FALSE
.XE
.PP
Some systems, e.g., hpux and Cygwin (with i686-pc-mingw32-gcc.exe),
use other Unix\-standard macros to access time.  Setting TIME_STD=TRUE
when using TIME_CALC=TRUE will use these time routines instead.
.NH 3
TIME_GETRUSAGE=TRUE
.XS
\*(SN 			TIME_GETRUSAGE=TRUE
.XE
.PP
An additional module for using TIME_CALC set to TRUE, setting
TIME_GETRUSAGE to FALSE, is more portable to compile across some
platforms, e.g., Cygwin (with i686-pc-mingw32-gcc.exe), but it can
require different parameters for timing results.  Comments have been
placed in the code in asa.c.
.NH 3
INT_LONG=TRUE
.XS
\*(SN 			INT_LONG=TRUE
.XE
.PP
Some smaller systems choke on 'long int' and this option can be set to
INT_LONG=FALSE to turn off warnings and possibly some errors.  The cast
LONG_INT is used to define 'int' or 'long int' appropriately.
.NH 3
INT_ALLOC=FALSE
.XS
\*(SN 			INT_ALLOC=FALSE
.XE
.PP
The cast on *number_parameters is set to ALLOC_INT which defaults to
LONG_INT.  On some machines, ALLOC_INT might have to be set to int if
there is a strict requirement to use an (unsigned) int for calloc,
while 'long int' still can be used for other aspects of ASA.  If
ALLOC_INT is to be set to int, set INT_ALLOC to TRUE.
.NH 3
SMALL_FLOAT=1.0E-18
.XS
\*(SN 			SMALL_FLOAT=1.0E-18
.XE
.PP
SMALL_FLOAT is a measure of accuracy permitted in log and divide
operations in asa, i.e., which is not precisely equivalent to a given
machine's precision.  There also are Pre\-Compile DEFINE_OPTIONS to
separately set constants for minimum and maximum doubles and precision
permitted by your machine.  Experts who require the very best precision
can fine\-tune these parameters in the code.
.PP
Such issues arise because the fat tail of ASA, associated with high
parameter temperatures, is very important for searching the breadth of
the ranges especially in the initial stages of search.  However, the
parameter temperatures require small values at the final stages of the
search to converge to the best solution, albeit this is reached very
quickly given the exponential schedule proven in the referenced
publications to be permissible with ASA.  Note that the test problem in
asa_usr_cst.c and asa_usr.c is a particularly nasty one, with 1E20 local
minima and requiring ASA to search over 12 orders of magnitude of the
cost function before correctly finding the global minimum.  Thus,
intermediate values disagree somewhat for SMALL_FLOAT=1.0E\-12 from the
settings using SMALL_FLOAT=1.0E\-18 (the default);  they agree if
SMALL_FLOAT=1.0E\-12 while also setting MIN_DOUBLE=1.0E\-18.  The results
diverge when the parameter temperatures get down to the range of E\-12,
limiting the accuracy of the SMALL_FLOAT=1.0E\-12 run.
.PP
On some machines that have register variables assigned
inconsistently with other doubles, there can arise some numerical
differences in some systems.  There has been no such problem found on
Sun/Solaris 2.x using gcc, but some problems have been noticed on some
Intel chips using different gcc optimizations.
.PP
As mentioned above, note that
the use of -ffloat-store with gcc/g++ is to maintain the same level of
precision across levels of compiler optimization on different platforms.
.NH 3
MIN_DOUBLE=SMALL_FLOAT
.XS
\*(SN 			MIN_DOUBLE=SMALL_FLOAT
.XE
.PP
You can define your own machine's minimum positive double here if you
know it.
.NH 3
MAX_DOUBLE=1.0/SMALL_FLOAT
.XS
\*(SN 			MAX_DOUBLE=1.0/SMALL_FLOAT
.XE
.PP
You can define your own machine's maximum double here if you know it.
.NH 3
EPS_DOUBLE=SMALL_FLOAT
.XS
\*(SN 			EPS_DOUBLE=SMALL_FLOAT
.XE
.PP
You can define your own machine's maximum precision here if you know
it.
.NH 3
CHECK_EXPONENT=FALSE
.XS
\*(SN 			CHECK_EXPONENT=FALSE
.XE
.PP
When CHECK_EXPONENT is set to TRUE, the macro EXPONENT_CHECK(x),
defined in asa.h in terms of MIN_DOUBLE and MAX_DOUBLE, checks that an
exponent x is within a valid range and, if not, adjusts its magnitude
to fit in the range.
.NH 3
NO_PARAM_TEMP_TEST=FALSE
.XS
\*(SN 			NO_PARAM_TEMP_TEST=FALSE
.XE
.PP
If NO_PARAM_TEMP_TEST is set to TRUE, then all parameter temperatures
less than EPS_DOUBLE are set to EPS_DOUBLE, and no exit is called.
.NH 3
NO_COST_TEMP_TEST=FALSE
.XS
\*(SN 			NO_COST_TEMP_TEST=FALSE
.XE
.PP
If NO_COST_TEMP_TEST is set to TRUE, then a cost temperature less than
EPS_DOUBLE is set to EPS_DOUBLE, and no exit is called.
.NH 3
SELF_OPTIMIZE=FALSE
.XS
\*(SN 			SELF_OPTIMIZE=FALSE
.XE
.PP
The user module contains a template to illustrate how ASA may be used
to self\-optimize its Program Options.  This can be very CPU\-expensive
and is of course dependent on how you define your recursive cost
function (recur_cost_function in the user module).  The example given
returns from recur_cost_function the number of function evaluations
taken to optimization the test cost_function, with the constraint to
only accept optimizations of the cost_function that are lower than a
specified value.  A few lines of code can be uncommented in asa_usr.c to
force a fast exit for this demo; search for FAST EXIT.  (Note that this
also could achieved by using OPTIONS\->Immediate_Exit discussed below.)
.PP
The ASA_TEMPLATE_SELFOPT example uses OPTIONS_FILE=FALSE in the
Pre\-Compile Options.  Note that DEFINE_OPTIONS OPTIONS_FILE=TRUE and
OPTIONS_FILE_DATA=TRUE here would take data from asa_opt for the
lower\-level program using the cost_function ().  Both DEFINE_OPTIONS
RECUR_OPTIONS_FILE and RECUR_OPTIONS_FILE_DATA would have to be set to
TRUE to use asa_opt_recur to read in both the OPTIONS and the
recur_cost_parameters data (which you would have to write in the style
of asa_opt) for the top\-level recur_cost_function ().
.PP
This can be useful when approaching a new system, and it is suspected
that the default ASA Program Options are not at all efficient for this
system.  It is suggested that a trimmed cost function or data set be
used to get a reasonable guess for a good set of Program Options.  ASA
has demonstrated that it typically is quite robust under a given set of
Program Options, so it might not make too much sense to spend lots of
resources performing additional fine tuning of the these options.
Also, it is possible you might crash the code by permitting ranges of
Program Options that cause your particular cost_function to return
garbage to asa\ ().
.NH 3
ASA_TEST=FALSE
.XS
\*(SN 			ASA_TEST=FALSE
.XE
.PP
Setting ASA_TEST to TRUE will permit running the ASA test problem.
This has been added to the DEFINE_OPTIONS in the ASA\-Makefile so that just
running make will run the test problem for the new user.  No attempt
was made to optimize any OPTIONS for the ASA_TEST problem as it appears
in the standard code.
.NH 3
ASA_TEST_POINT=FALSE
.XS
\*(SN 			ASA_TEST_POINT=FALSE
.XE
.PP
The code used for the ASA_TEST problem closely follows the reference
given in asa_usr.c, and was rewritten from code given to the author in
1992.  Other researchers have sent the author different code for this
system, and all results agree within round\-off errors.
.PP
However, note that the actual problem stated in the reference in asa_usr.c
is harder, requiring the finding of an optimal point and not an optimal
region.  The code for that problem is given in asa_usr.c when
ASA_TEST_POINT is set to TRUE (having the effect of setting COST_FILE
to FALSE in asa_usr_asa.h).  The
http://www.ingber.com/asa_examples.txt file illustrates how that
global minimum can be attained.
.NH 3
MY_TEMPLATE=TRUE
.XS
\*(SN 			MY_TEMPLATE=TRUE
.XE
.PP
When MY_TEMPLATE is set to TRUE (the default), locations in asa_usr.c and
asa_usr_asa.h become active sites for your own code.  Searching asa_usr.c for
\*QMY_TEMPLATE_\*U provides a guide for additional code to add for your
own system.  For example, just above the occurrence of the guides for
MY_TEMPLATE_cost is the corresponding code for ASA_TEST=TRUE.  Keeping
the default of ASA_TEST set to FALSE permits such changes without
overwriting the test example.
.NH 3
USER_INITIAL_COST_TEMP=FALSE
.XS
\*(SN 			USER_INITIAL_COST_TEMP=FALSE
.XE
.PP
Setting USER_INITIAL_COST_TEMP to TRUE permits you to specify the initial
cost temperature in the User_Cost_Temperature [] array.  This can be
useful in problems where you want to start the search at a specific scale.
.NH 3
RATIO_TEMPERATURE_SCALES=FALSE
.XS
\*(SN 			RATIO_TEMPERATURE_SCALES=FALSE
.XE
.PP
Different rates of parameter annealing can be set with
RATIO_TEMPERATURE_SCALES set to TRUE.  This requires initializing the
User_Temperature_Ratio [] array in the user module as discussed below.
.NH 3
USER_INITIAL_PARAMETERS_TEMPS=FALSE
.XS
\*(SN 			USER_INITIAL_PARAMETERS_TEMPS=FALSE
.XE
.PP
Setting USER_INITIAL_PARAMETERS_TEMPS to TRUE permits you to specify the
initial parameter temperatures in the User_Parameter_Temperature [] array.
This can be useful in constrained problems, where greater efficiency
can be achieved in focussing the search than might be permitted just by
setting upper and lower bounds.
.NH 3
DELTA_PARAMETERS=FALSE
.XS
\*(SN 			DELTA_PARAMETERS=FALSE
.XE
.PP
Different increments, used during reannealing to set each parameter's
numerical derivatives, can be set with DELTA_PARAMETERS set to TRUE.
This requires initializing the User_Delta_Parameter [] array in the user
module as discussed below.
.NH 3
QUENCH_PARAMETERS=FALSE
.XS
\*(SN 			QUENCH_PARAMETERS=FALSE
.XE
.PP
This DEFINE_OPTIONS permits you to alter the basic algorithm to perform
selective \*Qquenching,\*U i.e., faster temperature cooling than
permitted by the ASA algorithm.  This can be very useful, e.g., to
quench the system down to some region of interest, and then to perform
proper annealing for the rest of the run.  However, note that once you
decide to quench rather than to truly anneal, there no longer is any
statistical guarantee of finding a global optimum.
.PP
Once you decide you can quench, there are many more alternative
algorithms you might wish to choose for your system, e.g., creating a
hybrid global\-local adaptive quenching search algorithm, e.g., using
USER_REANNEAL_PARAMETERS described below.  Note that just using the
quenching OPTIONS provided with ASA can be quite powerful, as
demonstrated in the http://www.ingber.com/asa_examples.txt file.
.PP
Setting QUENCH_PARAMETERS to TRUE can be extremely useful in very large
parameter dimensions; see the ASA\-NOTES file under the section on Quenching.
As discussed in the first 1989 VFSR paper, the heuristic statistical
proof of finding the global optimum reduces to the following: The
parameter temperature schedules must suffice to insure that the product
of individual generating distributions,
.ie t \{\
.EQ I
g  = prod from i g sup i ~,
.EN
.\}
.el \{\
.in +8n
g = PROD_i g^i,
.in 0
.\}
taken at all annealing times, indexed by
.if t $k$,
.if n k,
of not generating a global optimum, given infinite time, is such that
.ie t \{\
.EQ I
prod from k ^ ( 1 - g sub k ) = 0 ~,
.EN
.\}
.el \{\
.in +8n
PROD_k (1-g_k) = 0,
.in 0
.\}
which is equivalent to
.ie t \{\
.EQ I
sum from k g sub k = inf ~.
.EN
.\}
.el \{\
.in +8n
SUM_k g_k = infinity.
.in 0
.\}
For the ASA temperature schedule, this is satisfied as
.ie t \{\
.EQ I
sum from k prod to D  1 / k sup -1/D = sum from k 1 / k = inf ~.
.EN
.\}
.el \{\
.in +8n
SUM_k PROD^D 1/k^(1/D) = SUM_k 1/k = infinity.
.in 0
.\}
Now, if the temperature schedule above is redefined as
.ie t \{\
.EQ I
T sub i ( k sub i ) = T sub 0i exp ( - c sub i k sub i sup Q/D ) ~,
.EN
.\}
.el \{\
.in +8n
T_i(k_i) = T_0i exp(-c_i k_i^(Q/D)),
.in 0
.\}
.ie t \{\
.EQ I
c sub i = m sub i exp ( - n sub i Q / D ) ~,
.EN
.\}
.el \{\
.in +8n
c_i = m_i exp(-n_i Q/D),
.in 0
.\}
in terms of the \*Qquenching factor\*U
.if t $Q$,
.if n Q,
then the above proof fails if
.if t $Q > 1$
.if n Q > 1
as
.ie t \{\
.EQ I
sum from k prod to D 1 / k sup -Q/D = sum from k 1 / k sup Q < inf ~.
.EN
.\}
.el \{\
.in +8n
SUM_k PROD^D 1/k^(Q/D) = SUM_k 1/k^Q < infinity
.in 0
.\}
.PP
This simple calculation shows how the \*Qcurse of dimensionality\*U
arises, and also gives a possible way of living with this disease which
will be present in any algorithm that substantially samples the
parameter space.  In ASA, the influence of large dimensions becomes
clearly focused on the exponential of the power of
.if t $k$
.if n k
being
.if t $1/D$,
.if n 1/D,
as the annealing required to properly sample the space becomes
prohibitively slow.  So, if we cannot commit resources to properly
sample the space ergodically, then for some systems perhaps the next
best procedure would be to turn on quenching, whereby
.if t $Q$
.if n Q
can become on the order of the size of number of dimensions.  In some
cases tried, a small system of only a few parameters can be used to
determine some reasonable Program Options, and then these can be used
for a much larger space scaled up to many parameters.  This can work in
some cases because of the independence of dimension of the generating
functions.
.PP
If QUENCH_PARAMETERS is TRUE, then User_Quench_Param_Scale [] must be
defined as described below.
.PP
If OPTIONS_FILE_DATA, QUENCH_COST, and QUENCH_PARAMETERS are TRUE,
then *User_Quench_Cost_Scale and User_Quench_Param_Scale [] all are
read in from asa_opt.  If RECUR_OPTIONS_FILE_DATA, QUENCH_COST,
and QUENCH_PARAMETERS are TRUE, then *User_Quench_Cost_Scale and
User_Quench_Param_Scale [] all are read in from asa_opt_recur.
.NH 3
QUENCH_COST=FALSE
.XS
\*(SN 			QUENCH_COST=FALSE
.XE
.PP
If QUENCH_COST is set to TRUE, the scale of the power of
.if t $1/D$
.if n 1/D
temperature schedule used for the acceptance function can be altered in
a similar fashion to that described above when QUENCH_PARAMETERS is set
to TRUE.  However, note that this OPTIONS does not affect the annealing
proof of ASA, and so this may be used without damaging the statistical
ergodicity of the algorithm.  Even greater functional changes can be
made using the Pre\-Compile DEFINE_OPTIONS USER_COST_SCHEDULE,
USER_ACCEPT_ASYMP_EXP, USER_ACCEPT_THRESHOLD, or USER_ACCEPTANCE_TEST.
.PP
If QUENCH_COST is TRUE, then User_Quench_Cost_Scale [0] must be defined
as described below.
.PP
If OPTIONS_FILE_DATA and QUENCH_COST are TRUE, then
User_Quench_Cost_Scale [] is read in from asa_opt.
If RECUR_OPTIONS_FILE_DATA and QUENCH_COST are TRUE, then
*User_Quench_Cost_Scale is read in from asa_opt_recur.
.PP
Similarly as noted above for QUENCH_PARAMETERS, setting QUENCH_COST
to TRUE can be extremely useful in very large parameter dimensions;
see the ASA\-NOTES file under the section on Quenching.
.NH 3
QUENCH_PARAMETERS_SCALE=TRUE
.XS
\*(SN 			QUENCH_PARAMETERS_SCALE=TRUE
.XE
.PP
When QUENCH_PARAMETERS is TRUE, if QUENCH_PARAMETERS_SCALE is TRUE,
then the temperature scales and the temperature indexes are affected by
User_Quench_Param_Scale [].  This can have the effects of
User_Quench_Param_Scale [] appear contrary, as the effects on the
temperatures from the temperature scales and the temperature indexes
can have opposing effects.  However, these defaults are perhaps most
intuitive when the User_Quench_Param_Scale [] are on the order of the
parameter dimension.
.PP
When QUENCH_PARAMETERS is TRUE, if QUENCH_PARAMETERS_SCALE is FALSE,
only the temperature indexes are affected by
User_Quench_Param_Scale [].  The same effect could be managed by raising
Temperature_Anneal_Scale to the appropriate power, but this may not be
as convenient.
.NH 3
QUENCH_COST_SCALE=TRUE
.XS
\*(SN 			QUENCH_COST_SCALE=TRUE
.XE
.PP
When QUENCH_COST is TRUE, if QUENCH_COST_SCALE is TRUE, then the
temperature scale and the temperature index are affected by
User_Quench_Cost_Scale [0].  This can have the effects of
User_Quench_Cost_Scale [0] appear contrary, as the effects on the
temperature from the temperature scale and the temperature index can
have opposing effects.  However, these defaults are perhaps most
intuitive when User_Quench_Cost_Scale [0] is on the order of the
parameter dimension.
.PP
When QUENCH_COST is TRUE, if QUENCH_COST_SCALE is FALSE, only the
temperature index is affected by User_Quench_Cost_Scale [0].  The same
effect could be managed by raising Temperature_Anneal_Scale to the
appropriate power, but this may not be as convenient.
.NH 3
ASA_TEMPLATE=FALSE
.XS
\*(SN 			ASA_TEMPLATE=FALSE
.XE
.PP
There are several templates that come with the ASA code.  To permit use
of these OPTIONS without having to delete these extra tests, these
templates are wrapped with ASA_TEMPLATE's.  To use your own cost
function, you likely will only have to write cost_function () in
asa_usr_cst.c, and use the asa_opt file.  If you wish to add more OPTIONS
or code, you may need to write relevant portions of cost_function () and
initialize_parameters () in asa_usr.c and asa_usr.h.
.PP
The ASA\-Makefile has several examples of DEFINE_OPTIONS that will generate
test examples using special ASA_TEMPLATE's set to TRUE.  These are
{ASA_TEMPLATE_LIB, ASA_TEMPLATE_ASA_OUT_PID, ASA_TEMPLATE_MULTIPLE,
ASA_TEMPLATE_SELFOPT, ASA_TEMPLATE_SAMPLE, ASA_TEMPLATE_QUEUE,
ASA_TEMPLATE_PARALLEL, ASA_TEMPLATE_SAVE}; the sets of Pre\-Compile
OPTIONS these use are defined in asa_usr_asa.h.
.PP
Lines marked off by ASA_TEMPLATE, with no additional suffix, are for
specific examples only.  ASA_TEMPLATE, with no suffix, should not be
set to TRUE, else all groups of these examples will be brought into the
code, likely not what is wanted.
.NH 3
OPTIONAL_DATA_DBL=FALSE
.XS
\*(SN 			OPTIONAL_DATA_DBL=FALSE
.XE
.PP
It can be useful to return/pass additional information to the user
module from/through the asa module.  When OPTIONAL_DATA_DBL is set to
TRUE, an additional Program Option pointer, *Asa_Data_Dbl, and its
dimension, Asa_Data_Dim_Dbl, are available in USER_DEFINES
*USER_OPTIONS to gather such data.
.PP
In the ASA_TEMPLATE_SELFOPT example provided (see the set of
DEFINE_OPTIONS used in asa_usr_asa.h), OPTIONAL_DATA_DBL is used together
with SELF_OPTIMIZE to find the set of ASA parameters giving the
(statistically) smallest number of generated points to solve the ASA
test problem, assuming this were run several times with different
random seeds for randflt in asa_usr.c.  Here, Asa_Data_Dbl [0] is used as
a flag to print out Asa_Data_Dbl [1] in asa_usr.c, set to
*best_number_generated_saved in asa.c.
.PP
If ASA_PARALLEL is TRUE, then N_Generated and *best_number_generated_saved
will only be accurate within the scale of OPTIONS\->Gener_Block, as
these are updated in the acceptance function.
.NH 3
OPTIONAL_DATA_INT=FALSE
.XS
\*(SN 			OPTIONAL_DATA_INT=FALSE
.XE
.PP
It can be useful to return/pass additional integer information to the
user module from/through the asa module.  When OPTIONAL_DATA_INT is set
to TRUE, an additional Program Option pointer, *Asa_Data_Int, and its
dimension, Asa_Data_Dim_Int, are available in USER_DEFINES
*USER_OPTIONS to gather such data.
.NH 3
OPTIONAL_DATA_PTR=FALSE
.XS
\*(SN 			OPTIONAL_DATA_PTR=FALSE
.XE
.PP
It can be useful to return/pass additional array or structure
information to the user module from/through the asa module (possibly
containing other structures, e.g., useful when SELF_OPTIMIZE is TRUE).
When OPTIONAL_DATA_PTR is set to TRUE, an additional Program Option
pointer, *Asa_Data_Ptr, and its dimension, Asa_Data_Dim_Ptr, are
available in USER_DEFINES *USER_OPTIONS to gather such data.  The type
of *Asa_Data_Dim_Ptr is a pre-compile OPTIONS set by OPTIONAL_PTR_TYPE.
See examples under Asa_Data_Dim_Ptr and Asa_Data_Ptr.
.PP
If OPTIONAL_DATA_PTR is being used for RECUR_USER_OPTIONS as well
as for USER_OPTIONS, you need not create (or free) additional memory
in recur_cost_function() for Asa_Data_Dim_Ptr and Asa_Data_Ptr to be
passed to the inner cost_function(), but rather link pointers to those
in RECUR_USER_OPTIONS.  In asa_usr.c, there are guidelines to set \*Q#if
TRUE\*U to \*Q#if FALSE\*U at these points of the code.  This is the
proper technique to use if ASA_SAVE, ASA_SAVE_OPT, or ASA_SAVE_BACKUP
is set to TRUE (since data is saved by asa() depending on the level
of recursion)..
.PP
If ASA_SAVE, ASA_SAVE_OPT, and ASA_SAVE_BACKUP are not set to TRUE,
then multiple levels of recursion can each have their own defined
information indexed to different elements of the array of structures of
size Asa_Data_Dim_Ptr.
.PP
The http://www.ingber.com/asa_examples.txt file contains some guidance
of the use of OPTIONAL_DATA_PTR and Asa_Data_Ptr.
.NH 3
OPTIONAL_PTR_TYPE=USER_TYPE
.XS
\*(SN 			OPTIONAL_PTR_TYPE=USER_TYPE
.XE
.PP
When OPTIONAL_DATA_PTR is set to TRUE, the type of *Asa_Data_Ptr is a
pre-compile OPTIONS set by OPTIONAL_PTR_TYPE, e.g., changing the label
USER_TYPE in asa_usr_asa.h.  Be sure to place any non-standard types, like
your own typedef struct, before the #define OPTIONAL_PTR_TYPE at the top
of asa_usr_asa.h, e.g., under #if MY_TEMPLATE (since OPTIONAL_PTR_TYPE
is tested below in asa_usr_asa.h).  See the discussion under Asa_Data_Ptr.
.NH 3
USER_COST_SCHEDULE=FALSE
.XS
\*(SN 			USER_COST_SCHEDULE=FALSE
.XE
.PP
The function used to control the cost_function temperature schedule is
of the form test_temperature in asa.c.  If the user sets the
Pre\-Compile DEFINE_OPTIONS USER_COST_SCHEDULE to TRUE, then this
function of test_temperature can be controlled, adaptively if desired,
in asa_usr.c in Cost_Schedule () (and in recur_Cost_Schedule () if
SELF_OPTIMIZE is TRUE) by setting USER_COST_SCHEDULE to TRUE.  The
names of these functions are set to the relevant pointer in asa_usr.c, and
can be changed if desired, i.e.,
.in +3n
USER_OPTIONS->Cost_Schedule = user_cost_schedule;
.br
RECUR_USER_OPTIONS->Cost_Schedule = recur_user_cost_schedule;
.in 0
.NH 3
USER_ACCEPT_ASYMP_EXP=FALSE
.XS
\*(SN 			USER_ACCEPT_ASYMP_EXP=FALSE
.XE
.PP
When USER_ACCEPT_ASYMP_EXP is TRUE, an asymptotic form of the
exponential function as an alternative to the Boltzmann function becomes
available for the acceptance test.  A parameter OPTIONS\->Asymp_Exp_Param
becomes available, with a default of 1.0 in asa_usr.c giving the standard
Boltzmann function.  If you require a more moderate acceptance test,
then negative Asymp_Exp_Param may be helpful.
.NH 3
USER_ACCEPT_THRESHOLD=FALSE
.XS
\*(SN 			USER_ACCEPT_THRESHOLD=FALSE
.XE
.PP
When USER_ACCEPT_THRESHOLD is TRUE, a  simple alternative to the Boltzmann
function becomes available for the acceptance test, simply defining the
probability of acceptance to be 1 if
.ie t \{\
.EQ I
C (p sub k+1 )  - C ( p sub k ) <= T sub {roman cost} ~,
.EN
.\}
.el \{\
.in +8n
C(p_k+1) - C(p_k) <= T_cost,
.in 0
.\}
and 0 otherwise.
.NH 3
USER_ACCEPTANCE_TEST=FALSE
.XS
\*(SN 			USER_ACCEPTANCE_TEST=FALSE
.XE
.PP
If the Pre\-Compile DEFINE_OPTIONS USER_ACCEPTANCE_TEST is set to TRUE,
the Boltzmann test probability function used in the acceptance criteria
in asa.c can be changed, adaptively if desired, in asa_usr.c in
user_acceptance_test () (and in recur_user_acceptance_test () if
SELF_OPTIMIZE is TRUE).  The names of these functions are set to the
relevant pointer in asa_usr.c, and can be changed if desired, i.e.,
.PP
If both USER_ACCEPTANCE_TEST and USER_ACCEPT_ASYMP_EXP are set to TRUE,
then the default OPTIONS\->Asymp_Exp_Param = 1 can be used in asa_usr.c to
duplicate the Boltzmann test in asa.c, e.g., as a template to further
develop a new acceptance test.
.in +3n
USER_OPTIONS->Acceptance_Test = user_acceptance_test;
.br
RECUR_USER_OPTIONS->Acceptance_Test = recur_user_acceptance_test;
.in 0
When USER_ACCEPTANCE_TEST is TRUE, then any random numbers needed for
the acceptance criteria are generated in the user module instead of in
the asa module.
.PP
When USER_ACCEPTANCE_TEST is TRUE, additional OPTIONS are available to
modify the acceptance criteria, either after the cost function
is calculated or during its calculation:
.in +3n
USER_OPTIONS->User_Acceptance_Flag
.br
USER_OPTIONS->Cost_Acceptance_Flag
.br
USER_OPTIONS->Last_Cost
.br
USER_OPTIONS->Cost_Temp_Curr
.br
USER_OPTIONS->Cost_Temp_Init
.br
USER_OPTIONS->Cost_Temp_Scale
.br
USER_OPTIONS->Prob_Bias
.br
USER_OPTIONS->Random_Seed
.in 0
.PP
Failing the acceptance test is not equivalent to dropping generated
states from consideration for testing with the acceptance criteria,
e.g., if they fail some regional constraints.  asa\ () is designed so
that User_Acceptance_Flag is set to TRUE prior to calling the cost
function whenever acceptance tests need not be performed, i.e., when
using the cost function to generate initial conditions, when being used
to calculate derivatives, or when samples are being generated to
calculate the cost temperature; otherwise it is set to FALSE.  The
value of Cost_Acceptance_Flag always is set to FALSE before entering
the cost function.
.PP
When entering the acceptance function, if Cost_Acceptance_Flag is TRUE,
then the value of USER_OPTIONS\->User_Acceptance_Flag (assuming
*valid_state_generated_flag is TRUE) calculated in user_cost_function ()
determines the value of the acceptance test.  Otherwise,
USER_OPTIONS\->Acceptance_Test () is called to calculate the value of
USER_OPTIONS\->User_Acceptance_Flag.  Note that if the cost function is
used to calculate the acceptance criteria, and it is acceptable (e.g.,
also *valid_state_generated_flag is TRUE), then both
USER_OPTIONS\->User_Acceptance_Flag and
USER_OPTIONS\->Cost_Acceptance_Flag must be set to TRUE.
.PP
For example, this can be useful if during the calculation of the cost
function, without having to proceed to the final evaluation, it becomes
clear that the acceptance criteria will not be passed.  This might
occur if the cost function is increasing during its calculation and an
acceptance test is carried out using the uniform random number
calculated at the top of the cost function.  The partially evaluated
cost function can be compared to the Last_Cost, using the Boltzmann
criteria or whatever criteria is established in
USER_OPTIONS\->user_acceptance_test ().  Then it is clear that the
acceptance criteria will not be met (of course after checking that any
constraints are met and setting *valid_state_generated_flag to TRUE if
so), then USER_OPTIONS\->User_Acceptance_Flag can be set to or left at
FALSE, and then proceed to return to asa\ ().  However, other information
registered in the acceptance function still should be calculated, e.g.,
updating indices, information used for ASA_SAMPLE and ASA_PARALLEL,
etc.
.NH 3
USER_GENERATING_FUNCTION=FALSE
.XS
\*(SN 			USER_GENERATING_FUNCTION=FALSE
.XE
.PP
The ASA generating probability function in asa.c can be changed if the
user sets the Pre\-Compile DEFINE_OPTIONS USER_GENERATING_FUNCTION to
TRUE; then this function can be changed, adaptively if desired, in
asa_usr.c in user_generating_distrib () (and in
recur_user_generating_distrib () if SELF_OPTIMIZE is TRUE) by setting
USER_GENERATING_FUNCTION to TRUE.  The names of these functions are set
to the relevant pointer in asa_usr.c, and can be changed if desired, i.e.,
.in +3n
USER_OPTIONS->Generating_Distrib = user_generating_distrib;
.br
RECUR_USER_OPTIONS\->Generating_Distrib = recur_user_generating_distrib;
.in 0
The parameters passed to these functions are further described below.
.PP
Several parameters additional to those required for the ASA distribution
are passed to make it easier to install other common distributions.
Note that range checks take place at multiple stages of search, so be
sure your chosen ranges can take this into account.
.NH 3
USER_REANNEAL_COST=FALSE
.XS
\*(SN 			USER_REANNEAL_COST=FALSE
.XE
.PP
In asa.c reannealing of the cost temperature is determined by the
algorithm described above in the section Reannealing Temperature
Schedule.
.PP
If the user sets the Pre\-Compile DEFINE_OPTIONS USER_REANNEAL_COST to
TRUE, while Reanneal_Cost is not 0 or -1, then the function controlling
the new reannealed cost temperature can be controlled, adaptively if
desired using USER_OPTIONS, in asa_usr.c in user_reanneal_cost (), and in
recur_user_reanneal_cost () if SELF_OPTIMIZE is TRUE.  The names of
these functions are set to the relevant pointer in asa_usr.c, and can be
changed if desired, i.e.,
.in +3n
USER_OPTIONS->Reanneal_Cost_Function = user_reanneal_cost;
.br
RECUR_USER_OPTIONS->Reanneal_Cost_Function = recur_user_reanneal_cost;
.in 0
In these functions, the variables *current_cost_temperature,
*initial_cost_temperature, and the best and last saved cost function
can be altered, and the returned integer value of TRUE or FALSE
determines whether to use the best saved cost function as the current
cost temperature.
.PP
Since these functions can be called every value of
Acceptance_Frequency_Modulus, Generated_Frequency_Modulus, or when the
ratio of accepted to generated points is less than
Accepted_To_Generated_Ratio, this opportunity also can be used to
adaptively change other OPTIONS.  This can be very useful for systems
where the scales of the acceptance criteria do not simply correlate the
cost temperature with the current best value of the cost function.
.PP
For example, this function could be used when the last saved cost
function is so close to zero that the effect would be to set the
*initial_cost_temperature to that value, but the best value for the
cost function is known to be less than zero.  (An alternative moving
average example is given in asa_usr.c.)  Other alternatives are to use
USER_REANNEAL_COST with default FALSE and Reanneal_Cost > 1 or < -1, as
described below.
.NH 3
USER_REANNEAL_PARAMETERS=FALSE
.XS
\*(SN 			USER_REANNEAL_PARAMETERS=FALSE
.XE
.PP
In asa.h, the macro
.nf
.in +3n
#define \\
.in +2n
FUNCTION_REANNEAL_PARAMS(temperature, tangent, max_tangent) \\
.in +1n
(temperature * (max_tangent / tangent))
.in 0
.fi
is used to determine the new temperature, subject to further tests in
reanneal ().  This is the default if USER_REANNEAL_PARAMETERS is FALSE.
.PP
If the user sets the Pre\-Compile DEFINE_OPTIONS
USER_REANNEAL_PARAMETERS to TRUE, then the function controlling the new
reannealed temperature can be controlled, adaptively if desired using
USER_OPTIONS, in asa_usr.c in user_reanneal_params (), and in
recur_user_reanneal_params () if SELF_OPTIMIZE is TRUE.  The names of
these functions are set to the relevant pointer in asa_usr.c, and can be
changed if desired, i.e.,
.in +3n
USER_OPTIONS->Reanneal_Params_Function = user_reanneal_params;
.br
RECUR_USER_OPTIONS->Reanneal_Params_Function = recur_user_reanneal_params;
.in 0
.PP
Since FUNCTION_REANNEAL_PARAMS () can be called every value of
Acceptance_Frequency_Modulus, Generated_Frequency_Modulus, or when the
ratio of accepted to generated points is less than
Accepted_To_Generated_Ratio, this opportunity also can be used to
adaptively change other OPTIONS.  For example, if the QUENCH_PARAMETERS
OPTIONS is set to TRUE, as discussed above, it may useful to create a
hybrid global\-local adaptive quenching search algorithm.
.NH 3
MAXIMUM_REANNEAL_INDEX=50000
.XS
\*(SN 			MAXIMUM_REANNEAL_INDEX=50000
.XE
.PP
The maximum index (number of steps) at which the initial temperature
and the index of the temperature are rescaled to avoid losing machine
precision.  ASA typically is quite insensitive to the value used due to
the dual rescaling.
.NH 3
REANNEAL_SCALE=10.0
.XS
\*(SN 			REANNEAL_SCALE=10.0
.XE
.PP
The reannealing scale used when MAXIMUM_REANNEAL_INDEX is exceeded.
.NH 3
ASA_SAMPLE=FALSE
.XS
\*(SN 			ASA_SAMPLE=FALSE
.XE
.PP
When ASA_SAMPLE is set to TRUE, data is collected by ASA during its
global optimization process to importance\-sample the user's variables.
Four OPTIONS become available to monitor the sampling: Bias_Acceptance,
*Bias_Generated, Average_Weights, and Limit_Weights.
.PP
If Average_Weights exceeds the user's choice of Limit_Weights, then the
ASA_OUT file will contain additional detailed information, including
temperatures and biases for each current parameter.  To facilitate
extracting importance\-sampled information from the file printed out by
the asa module, all relevant lines start with :SAMPLE[ |:|#|+].  A
sample () function in asa_usr.c illustrates the use of these tags.
.PP
Many Monte Carlo sampling techniques require the user to guess an
appropriately decreasing \*Qwindow\*U to sample the variable space.
The fat tail of the ASA generating function, and the decreasing
effective range of newly accepted points driven by exponentially
decreasing temperature schedules, removes this arbitrary aspect of such
sampling.
.PP
However, note that, albeit local optima are sampled, the efficiency of
ASA optimization most often leads to poor sampling in regions whose
cost function is far from the optimal point; many such points may be
important contributions to algorithms like integrals.  Accordingly,
ASA_SAMPLE likely is best used to explore new regions and new systems.
.PP
To increase the sampling rate and thereby to possibly increase the
accuracy of this algorithm, use one or a combination of the various
OPTIONS available for slowing down the annealing performed by ASA.
However, the selected OPTIONS still must yield good convergence if the
optimal region is to be properly sampled.
.NH 3
ADAPTIVE_OPTIONS=FALSE
.XS
\*(SN 			ADAPTIVE_OPTIONS=FALSE
.XE
.PP
When ADAPTIVE_OPTIONS is set to TRUE, it is possible to change relevant
OPTIONS in the USER_DEFINES struct in asa_usr_asa.h during run time,
by including an asa_adaptive_options file.  This can be very useful to
efficiently determine how to tune long runs.
.PP
The function call to adaptive_options(USER_OPTIONS) should be placed at
the top of your cost function.  Some examples of the format of lines in
the comma-delimited asa_adaptive_options file are given just above the
adaptive_options function in asa_usr.c.
.NH 3
ASA_QUEUE=FALSE
.XS
\*(SN 			ASA_QUEUE=FALSE
.XE
.PP
When ASA_QUEUE is set to TRUE, a first\-in first\-out (FIFO) queue, of
size USER_OPTIONS\->Queue_Size, is used to collect generated states.
When a new state is generated, its parameters are tested, within
specified resolutions of USER_OPTIONS\->Queue_Resolution [] (the absolute
values of each of the differences between the parameters of the current
generated state and those in the queue).  If a previous state is
already represented, then the stored values of the cost function and
the cost flag are returned, instead of calling the cost function
again.  Note that the size of the array required to store the queued
parameters is Queue_Size times the number of parameters, and this can
consume a lot of CPU time as well as storage, so this OPTIONS is only
useful for cost functions that are themselves very costly to evaluate.
Setting ASA_TEMPLATE_QUEUE to TRUE will run an example using the
ASA_TEST problem.
.PP
The ASA_QUEUE DEFINE_OPTIONS also can be used to coarse\-grain a fit, by
setting high values of Queue_Resolution [].  Note the difference between
the operations of this DEFINE_OPTIONS and ASA_RESOLUTION.
.PP
If ASA_QUEUE is TRUE and ASA_RESOLUTION is FALSE, machine precision is
used for type double variables, the queue is created and subsequent
variables are tested against this queue.  If ASA_RESOLUTION and
ASA_QUEUE are both TRUE, then the Coarse_Resolution [] array is used
for Queue_Resolution [], ASA_RESOLUTION is enforced from the very first
call to the cost function, and the queue is created using these coarse
variables.
.PP
The default in asa.c for the FIFO queue uses a simple search among
stored parameter values, under the assumption that for most complex
systems for which ASA_QUEUE=TRUE is useful, the bottleneck is in the
evaluation of the cost functions.  If you think this is not true for
you, and you need to conserve CPU time in using lists, the
http://www.ingber.com/asa_contrib.txt file gives code that uses
doubly\-linked and hashed lists.
.PP
If ASA_QUEUE and ASA_PRINT_MORE are TRUE then, whenever a queued cost
function is used, this is recorded in asa_out.
.PP
When ASA_QUEUE is TRUE, then the value of *cost_flag is tested for FALSE
in previous states in queue and an invalid statement is available in
the printout.
.NH 3
ASA_RESOLUTION=FALSE
.XS
\*(SN 			ASA_RESOLUTION=FALSE
.XE
.PP
When ASA_RESOLUTION is set to TRUE, parameters are resolved to a
user\-defined resolution set in USER_OPTIONS\->Coarse_Resolution [], i.e.,
within plus or minus the values of Coarse_Resolution [].  This is
performed as soon as candidate values are generated, for each parameter
for which Coarse_Resolution [] is greater than zero.  Note the
difference between the operations of this OPTIONS and ASA_QUEUE.
.PP
If ASA_QUEUE is TRUE and ASA_RESOLUTION is FALSE, machine precision is
used for type double variables, the queue is created and subsequent
variables are tested against this queue.  If ASA_RESOLUTION and
ASA_QUEUE are both TRUE, then the Coarse_Resolution [] array is used
for Queue_Resolution [], ASA_RESOLUTION is enforced from the very first
call to the cost function, and the queue is created using these coarse
variables.
.PP
When USER_OPTIONS\->Coarse_Resolution [] is > 0 and parameter_type []
is > 0 (specifying an integer parameter), ASA_RESOLUTION takes
precedence over parameter_type [] when calculating new generated
parameters.
.NH 3
ASA_FUZZY=FALSE
.XS
\*(SN 			ASA_FUZZY=FALSE
.XE
.PP
When ASA_FUZZY is set to TRUE, a modified fuzzy-logic algorithm
originally developed by Hime Junior performs an adaptive tuning of
selected ASA OPTIONS.  ASA_FUZZY has several adaptive parameters
defined in asa_usr_asa.h, and some fixed #define parameters in the
several subroutines at the bottom of asa_usr.c.  The default functions
are set to tune QUENCH_COST and QUENCH_PARAMETERS parameters, so these
are tested to be TRUE in the default asa_usr_asa.h.  If you change
any defaults, pay attention to sections labeled ASA_FUZZY at top
and bottom sections of asa_usr.c and asa_usr.h.
.PP
Initial QUENCH settings are saved in
*ASA_FUZZY_Init_User_Quench_Param_Scale and
*ASA_FUZZY_Init_User_Quench_Cost_Scale which may be used to restore
regular annealing schedules under some conditions. In asa_usr.c they
can be reset by the user, e.g., to 1.0, etc.
.PP
Often ASA_FUZZY will turn on QUENCHing > 1, violating the proof of ASA,
as discussed above.  For many systems, this speeding up of the sampling
process can be a welcome efficiency, but in some systems global minima
may be missed, e.g., in systems with multiple scales.
.NH 3
ASA_FUZZY_PRINT=FALSE
.XS
\*(SN 			ASA_FUZZY_PRINT=FALSE
.XE
.PP
When ASA_FUZZY is set to TRUE, if ASA_FUZZY_PRINT is TRUE, then
notifications will be printed out from FuzzyControl () and/or AlterQuench
() in the user module.
.NH 3
FITLOC=FALSE
.XS
\*(SN 			FITLOC=FALSE
.XE
.PP
When FITLOC is set to TRUE, three subroutines become active to perform
a local fit after leaving asa ().  This can be useful to shunt asa ()
to a local code after the region of the global fit is known with some
confidence, which many times is an efficient procedure.
.PP
Any robust quasi-linear optimization code may work well for this purpose.
To illustrate this procedure, the user module contains fitloc () which
sets up the calls to simplex ().  simplex () calls calcf () which calls
cost_function (), and adds USER_OPTIONS\->Penalty whenever simplex
() asks for parameters out of ranges of the parameters or whenever a
constraint in cost_function () is violated.
.PP
ASA parameters, the OPTIONS, are raised to a high level of view for
direct control by the user.  However, most optimization codes have
their own parameters that may not be apparent to the user.  For example,
fitloc () calls simplex () which contains parameters such as {tol1, tol2,
no_progress, alpha, beta1, beta2, gamma, delta, iters}.  Many problems
will require tuning of these parameters to achieve good results just
from this simplex () algorithm.
.PP
USER_OPTIONS\->Fit_Local is passed to cost_function ().  This provides
additional flexibility in deciding when to shunt asa () over to fitloc
(), e.g., during multiple or recursive optimizations.
USER_OPTIONS\->Iter_Max determines the maximum iterations of the
cost_function () by simplex ().  USER_OPTIONS\->Penalty determines how
to weight violation of constraints, exceeding boundaries, etc.
.NH 3
FITLOC_ROUND=TRUE
.XS
\*(SN 			FITLOC_ROUND=TRUE
.XE
.PP
If FITLOC is set to TRUE and FITLOC_ROUND is TRUE, then each time
parameters are passed to or between the local routines, simplex (),
calcf (), and fitloc (), they are first processed by rounding integers
or respecting rounding according to ASA_RESOLUTION constraints prior to
any further calculations.  I.e., all values of a parameter within a
given resolution are considered to be equivalent for calculating the
cost function.
.NH 3
FITLOC_PRINT=TRUE
.XS
\*(SN 			FITLOC_PRINT=TRUE
.XE
.PP
When FITLOC is set to TRUE, if FITLOC_PRINT is TRUE, then intermediate
calculations will be printed out from fitloc () and simplex () in the
user module.
.NH 3
MULTI_MIN=FALSE
.XS
\*(SN 			MULTI_MIN=FALSE
.XE
.PP
When MULTI_MIN is set to TRUE, the lowest USER_OPTIONS\->Multi_Number
values of the cost function, determined to be the best-generated
during the sampling process, of the cost function and their parameters
are saved.  These can be read out just after asa () returns after its
fit.  The pre-compile number USER_OPTIONS\->Multi_Number and OPTIONS
*Multi_Cost, **Multi_Params, *Multi_Grid, and Multi_Specify become
available.  In asa_usr.c, memory for the arrays USER_OPTIONS\->Multi_Cost
[USER_OPTIONS\->Multi_Number][*parameter_dimension],
USER_OPTIONS\->Multi_Params
[USER_OPTIONS\->Multi_Number][*parameter_dimension], and
USER_OPTIONS\->Multi_Grid [*parameter_dimension] are set.  Multi_Grid
values must be set by the user, but may be overridden as explained below
under USER_OPTIONS\->Multi_Grid.
.PP
If OPTIONS\->Curvature_0 is FALSE, all USER_OPTIONS\->Multi_Number
tangents and curvatures are calculated.  This can be useful for some
calculations requiring the shapes of the local minima.
.PP
This procedure selects local minima that statistically have maintained
some quasi-stability during sampling.  Note that this procedure does
not guarantee that the USER_OPTIONS\->Multi_Number lowest sampled values
of the cost function will be saved, only those that were selected to be
the best-generated during the sampling process.
.PP
If OPTIONS\->Multi_Specify is set to 0, the selection of best-generated
states includes all sampled instances of the cost functions.
If OPTIONS\->Multi_Specify is set to 1, the selection of best-generated
states is constrained to include only those with different values of
the cost function.
.PP
The http://www.ingber.com/asa_examples.txt file contains some guidance
of the use of MULTI_MIN (and Multi_[] OPTIONS).
.NH 3
ASA_PARALLEL=FALSE
.XS
\*(SN 			ASA_PARALLEL=FALSE
.XE
.PP
The parallelization procedure employed here does \f2not\f1 destroy the
sampling properties of ASA.  When ASA_PARALLEL is set to TRUE, parallel
blocks of generated states are calculated of number equal to the
minimum of USER_OPTIONS\->Gener_Block and
USER_OPTIONS\->Gener_Block_Max.  For most systems with complex nonlinear
cost functions that require the fat tail of the ASA distribution,
leading to high generated to acceptance ratios, this is the most CPU
intensive part of ASA that can benefit from parallelization.
.PP
USER_OPTIONS\->Gener_Block is calculated as a moving average over
a sample of USER_OPTIONS\->Gener_Mov_Avr, of the previous numbers of
generated states required to find a new best accepted state.  If and when
USER_OPTIONS\->Gener_Mov_Avr is set to 0, then USER_OPTIONS\->Gener_Block
is not changed thereafter.
.PP
Each block of generated states is sorted to permit the lowest cost
functions to pass first through the acceptance test.
.PP
There are hooks in asa.c to spawn off multiple processors.  Parallel
code should be inserted in asa.c between the lines:
.nf
.in +3n
/* *** ENTER CODE TO SPAWN OFF PARALLEL GENERATED STATES *** */
\&...
/* *** EXIT CODE SPAWNING OFF PARALLEL GENERATED STATES *** */
.in 0
.fi
.PP
The ASA_TEMPLATE_PARALLEL example given in asa_usr.c illustrates how the
the USER_OPTIONS are set.  Note that since the random number generator is
called differently, generating some extra states as described above,
the results are not identical to the serial ASA_TEST calculation.
.PP
When ASA_PARALLEL is set to TRUE, the do loop around generated states that
tests for invalid states is taken over, not within, blocks of parallel
calculated cost functions for these generated states.
.PP
When ASA_PARALLEL is set to TRUE, code in ASA\-MAKEFILE, asa.c,
asa_usr.c, and asa_usr_asa.h is set to run under OpenMP using the gcc
compiler; search for instances of _OPENMP.  Change/add lines of code to
correspond to your choice of parallel algorithm and compiler. The entire
ASA_PARALLEL section makes assignments to indexed variables to afford
flexibility for other such algorithms.
.LP
When ASA_PARALLEL is TRUE, OPTIONS\->parallel_id is available just before
the call to each user_cost_function(), e.g., in case it is needed by
the cost function or its own calls to other user functions.  The default
before any calls within the SPAWN block in asa.c is parallel_id = -1.
.NH 3
FDLIBM_POW=FALSE
.XS
\*(SN 			FDLIBM_POW=FALSE
.XE
.PP
When FDLIBM_POW is set to TRUE, a user\-defined function s_pow () is
used instead of pow ().  This may be desirable on some machines when a
speed\-up can be realized.  Some code in
http://www.ingber.com/asa_contrib.txt should first be tested with
the standard ASA_TEST OPTIONS to see if the resulting asa_out file
agrees with the asa_test_asa file.
.NH 3
FDLIBM_LOG=FALSE
.XS
\*(SN 			FDLIBM_LOG=FALSE
.XE
.PP
When FDLIBM_LOG is set to TRUE, a user\-defined function s_log () is used
instead of log ().  This may be desirable on some machines when a
speed\-up can be realized.  Some code in
http://www.ingber.com/asa_contrib.txt should first be tested with
the standard ASA_TEST OPTIONS to see if the resulting asa_out file
agrees with the asa_test_asa file.
.NH 3
FDLIBM_EXP=FALSE
.XS
\*(SN 			FDLIBM_EXP=FALSE
.XE
.PP
When FDLIBM_EXP is set to TRUE, a user\-defined function s_exp () is
used instead of exp ().  This may be desirable on some machines when a
speed\-up can be realized.  Some code in
http://www.ingber.com/asa_contrib.txt should first be tested with
the standard ASA_TEST OPTIONS to see if the resulting asa_out file
agrees with the asa_test_asa file.
.NH 2
Printing DEFINE_OPTIONS
.XS
\*(SN 		Printing DEFINE_OPTIONS
.XE
.PP
.NH 3
USER_OUT=\\"asa_usr_out\\"
.XS
\*(SN 			USER_OUT=\\"asa_usr_out\\"
.XE
.PP
The name of the output file containing all printing from asa_usr.c.  If
you wish to attach a process number use USER_OUT=\\"asa_usr_out_$$\\".
(Use USER_OUT=\\"asa_usr_out_$$$$\\" if this is set in the ASA\-Makefile.) If
USER_OUT=\\"STDOUT\\" then asa_usr.c will print to stdout.
.NH 3
USER_ASA_USR_OUT=FALSE
.XS
\*(SN 			USER_ASA_USR_OUT=FALSE
.XE
.PP
When USER_ASA_USR_OUT is set to TRUE, an additional Program Option pointer,
*Asa_Usr_Out_File, must be used to dynamically set the name(s) of the file(s)
printed out by the user module.  (This overrides any USER_OUT settings.)
.NH 3
INCL_STDOUT=TRUE
.XS
\*(SN 			INCL_STDOUT=TRUE
.XE
.PP
Some compilers on some systems under some levels of optimization will
not compile if \*Qstdout\*U is present in the code.  All instances of
\*Qstdout\*U and \*Qprintf\*U in the user and the asa modules can be
commented out by setting INCL_STDOUT to FALSE.  Note that this also will
suppress some output from such OPTIONS as ASA_PIPE, TIME_CALC, etc.
.PP
The use of INCL_STDOUT set to FALSE is recommended for creating a DLL
as described in the DLL ASA\-Makefile sub-Section of Section \n(Md.
.NH 3
ASA_PRINT=TRUE
.XS
\*(SN 			ASA_PRINT=TRUE
.XE
.PP
Setting this to FALSE will suppress all printing within asa.
.if t \{\
.EQ
delim off
.EN
.\}
.NH 3
ASA_OUT=\\"asa_out\\"
.XS
\*(SN 			ASA_OUT=\\"asa_out\\"
.XE
.PP
The name of the output file containing all printing from asa.  If you
wish to attach a process number use ASA_OUT=\\"asa_out_$$\\".  (Use
ASA_OUT=\\"asa_out_$$$$\\" if this is set in the ASA\-Makefile.) If
ASA_OUT=\\"STDOUT\\" then ASA will print to stdout.  See the discussion
of the use of ASA_TEMPLATE_ASA_OUT_PID in the section USER_ASA_OUT
below to obtain multiple output files numbered according to the system
pid.
.NH 3
USER_ASA_OUT=FALSE
.XS
\*(SN 			USER_ASA_OUT=FALSE
.XE
.PP
When USER_ASA_OUT is set to TRUE, an additional Program Option pointer,
*Asa_Out_File, is used to dynamically set the name(s) of the file(s)
printed out by the asa module.  (This overrides any ASA_OUT settings.)
In asa_usr.c, if USER_OPTIONS\->Asa_Out_File = "STDOUT";, then ASA will
print to stdout.
.PP
In the ASA_TEMPLATE_MULTIPLE example provided (see the set of
DEFINE_OPTIONS used in asa_usr_asa.h), USER_ASA_OUT is used to generate
multiple files of separate ASA runs.  (If QUENCH_PARAMETERS and/or
QUENCH_COST is set to TRUE, then this example will separate runs with
different quenching values.)
.PP
In the ASA_TEMPLATE_ASA_OUT_PID example provided (see the set of
DEFINE_OPTIONS used in asa_usr_asa.h), USER_ASA_OUT is used to generate
ASA_OUT files of the form asa_out__x and asa_usr_out_x, where x is the
system pid.  This can be useful for a series of runs just changing
parameters in asa_opt, getting different output files without
recompiling.  Depending on your system, you may have to change the
include file and the prototype of getpid () in asa_usr.h under
ASA_TEMPLATE_ASA_OUT_PID, and possibly the int declaration of pid_int
in asa_usr.c.
.NH 3
ASA_PRINT_INTERMED=TRUE
.XS
\*(SN 			ASA_PRINT_INTERMED=TRUE
.XE
.PP
This option is only effective if ASA_PRINT is TRUE.  Setting
ASA_PRINT_INTERMED to FALSE will suppress much intermediate printing
within asa, especially arrays which can be large when the number of
parameters is large.  Printing at intermediate stages of
testing/reannealing has been turned off when SELF_OPTIMIZE is set to
TRUE, since there likely can be quite a bit of data generated; this can
be changed by explicitly setting ASA_PRINT_INTERMED to TRUE in the
ASA\-Makefile or on your compilation command lines.
.NH 3
ASA_PRINT_MORE=FALSE
.XS
\*(SN 			ASA_PRINT_MORE=FALSE
.XE
.PP
Setting ASA_PRINT_MORE to TRUE will print out more intermediate
information, e.g., new parameters whenever a new minimum is reported.
As is the case whenever tangents are not calculated by choosing some
ASA options, normally the intermediate values of tangents will not be
up to date.
.PP
The section above, Use of Documentation for Tuning, emphasizes the
importance of using ASA_PRINT_MORE set to TRUE to help determine
optimal tuning of ASA on specific problems.
.NH 3
G_FIELD=12 & G_PRECISION=7
.XS
\*(SN 			G_FIELD=12 & G_PRECISION=7
.XE
.PP
The field width and precision of doubles is specified in asa.c as
G_FIELD.G_PRECISION, e.g., as %gG_FIELD.G_PRECISION or
%g\-G_FIELD.G_PRECISION.  These two Printing DEFINE_OPTIONS are
available to change the default of 12.7.
.NH 3
ASA_SAVE=FALSE
.XS
\*(SN 			ASA_SAVE=FALSE
.XE
.PP
When ASA_SAVE is set to TRUE, asa saves enough information in file
asa_save after each newly best accepted state, to restart from the
point entering the main annealing loop, continue thereafter from the
best accepted state in asa_save.  Of course, this use of I/O takes CPU
resources, and can appreciably slow down your runs.  When SYSTEM_CALL
is set to TRUE, for extra protection, e.g., in case the run aborts
during a write of asa_save, each time a file asa_save is written, it
also is copied to a new file asa_save.old.
.PP
In order to store the whole block of random numbers used at any
time, the number USER USER_OPTIONS\->Random_Array_Dim and array
USER_OPTIONS\->Random_Array are required.  These may be changed by the
user in asa_usr.c for different random number generators and shuffling
algorithms.  The default is to use SHUFFLE defined in asa_usr.h for
Random_Array_Dim in the default random number generator in asa_usr.c,
and the pointer Random_Array is set to the pointer of the static array
random_array at the top of asa_usr.c.
.PP
Just restart the run by executing asa_run.  When ASA_SAVE is set to
TRUE, the existence of file asa_save is used to determine whether a new
run or a rerun is to proceed.  Therefore, be sure your ASA directory
does not have any old asa_save file present if a new run is to start.
.PP
The asa_opt file is included just after asa_save files are read into the
code.  Therefore, any new C code you wish to have override information
read in from asa_save can be simply added to the bottom of asa_opt.
Be sure you write the names of these variables as they are used in the
asa.c file, which can differ from their counterparts in asa_usr.c file.
Some example are given at the end of asa_opt before the #endif statement.
Each time you add new information to be compiled, be sure to enforce a new
recompile of asa.c and asa_run.  In most cases this can be done simply
by removing asa.o before using a make or recompiling the executable.
However, see ASA_SAVE_OPT for changes that may be made without any
recompilation.
.PP
When ASA is run at several levels of recursion, if
USER_OPTIONS\->Asa_Recursive_Level is properly incremented from 0 at
the innermost shell, the outermost shell at level n will create files
asa_save_{n}.
.NH 3
ASA_SAVE_OPT=FALSE
.XS
\*(SN 			ASA_SAVE_OPT=FALSE
.XE
.PP
.PP
When ASA_SAVE_OPT is set to TRUE, when asa is restarted, if the file
asa_opt_save is present in the same directory as asa_opt, then new
values of ASA parameters and OPTIONS are read in after initializing to
the point of the last writing of asa_save.
.PP
No recompilation of the code is necessary, and only warnings are issued
if asa_save_opt is not present.  The file asa_save_opt should be created
as an exact copy of asa_opt before changes in values of parameters and
OPTIONS are made.  When ASA_SAVE_OPT is TRUE, ASA_SAVE is automatically
set to TRUE in asa_usr_asa.h.
.NH 3
ASA_SAVE_BACKUP=FALSE
.XS
\*(SN 			ASA_SAVE_BACKUP=FALSE
.XE
.PP
When ASA_SAVE_BACKUP is set to TRUE, asa saves enough information after
each newly best accepted state, creating a file asa_save.{N_Accepted},
to enable the user to restart from any previous best accepted state when
that asa_save.{best_state} is copied to asa_save.
.PP
When used with ASA_PIPE and/or ASA_PIPE_FILE, ASA_SAVE_BACKUP permits
the user to interactively tune the optimization process without having
to start new runs.  Read the above ASA_SAVE section on the use of the
asa_opt file to modify code before reading in the asa_save file.
.PP
When ASA_SAVE_BACKUP is TRUE, ASA_SAVE is automatically set to TRUE
in asa_usr_asa.h.
.PP
When ASA is run at several levels of recursion, if
USER_OPTIONS\->Asa_Recursive_Level is properly incremented from 0 at
the innermost shell, the outermost shell at level n will create files
asa_save_{n}.{N_Accepted}.
.NH 3
ASA_PIPE=FALSE
.XS
\*(SN 			ASA_PIPE=FALSE
.XE
.PP
When ASA_PIPE is set to TRUE, asa prints to STDOUT lines of data after
calls to the cost function, which can be used to update databases or
graphs in real time.  This information is {number of valid generated
states, number of accepted states, best cost function, best parameter
values, current cost temperature, current parameter temperatures, last
cost function}.
.NH 3
ASA_PIPE_FILE=FALSE
.XS
\*(SN 			ASA_PIPE_FILE=FALSE
.XE
.PP
When ASA_PIPE_FILE is set to TRUE, asa prints to asa_pipe lines of data
that can be used to examine run data.  This can be used complementary
to ASA_PIPE.
.NH 3
ASA_EXIT_ANYTIME=FALSE
.XS
\*(SN 			ASA_EXIT_ANYTIME=FALSE
.XE
.PP
When ASA_EXIT_ANYTIME is set to TRUE, the first call to asa() creates the
file asa_exit_anytime.  To  permit IMMEDIATE_EXIT before calculating the
next generated state, simply delete the file asa_exit_anytime, and asa()
will exit with code IMMEDIATE_EXIT.  This can be useful on long runs.
.NH 3
SYSTEM_CALL=TRUE
.XS
\*(SN 			SYSTEM_CALL=TRUE
.XE
.PP
When SYSTEM_CALL is set to FALSE, asa avoids popen () commands.  This is
useful on machines that do not permit these commands.  For example,
when ASA_SAVE is set to TRUE, asa uses a popen call in asa.c, to copy
asa_save to asa_save.old.  This also is required to use ASA_SAVE_BACKUP
set to TRUE.
.NH 2
Program OPTIONS
.XS
\*(SN 		Program OPTIONS
.XE
.nf
.in 0
typedef struct
.in +3n
{
.in 0
.in +10n
LONG_INT Limit_Acceptances;
LONG_INT Limit_Generated;
int Limit_Invalid_Generated_States;
double Accepted_To_Generated_Ratio;
.sp
double Cost_Precision;
int Maximum_Cost_Repeat;
int Number_Cost_Samples;
double Temperature_Ratio_Scale;
double Cost_Parameter_Scale_Ratio;
double Temperature_Anneal_Scale;
.in 0
#if USER_INITIAL_COST_TEMP
.in +10n
double *User_Cost_Temperature;
.in 0
#endif
.in +10n
.sp
int Include_Integer_Parameters;
int User_Initial_Parameters;
ALLOC_INT Sequential_Parameters;
double Initial_Parameter_Temperature;
.in 0
#if RATIO_TEMPERATURE_SCALES
.in +10n
double *User_Temperature_Ratio;
.in 0
#endif
#if USER_INITIAL_PARAMETERS_TEMPS
.in +10n
double *User_Parameter_Temperature;
.in 0
#endif
.in +10n
.sp
int Acceptance_Frequency_Modulus;
int Generated_Frequency_Modulus;
int Reanneal_Cost;
int Reanneal_Parameters;
.sp
double Delta_X;
.in 0
#if DELTA_PARAMETERS
.in +10n
double *User_Delta_Parameter;
.in 0
#endif
.in +10n
int User_Tangents;
int Curvature_0;
.sp
.in 0
#if QUENCH_PARAMETERS
.in +10n
double *User_Quench_Param_Scale;
.in 0
#endif
#if QUENCH_COST
.in +10n
double *User_Quench_Cost_Scale;
.in 0
#endif
.in +10n
.sp
LONG_INT N_Accepted;
LONG_INT N_Generated;
int Locate_Cost;
int Immediate_Exit;
.sp
double *Best_Cost;
double *Best_Parameters;
double *Last_Cost;
double *Last_Parameters;
.sp
.in 0
#if OPTIONAL_DATA_DBL
.in +10n
ALLOC_INT Asa_Data_Dim_Dbl;
double *Asa_Data_Dbl;
.in 0
#endif
#if OPTIONAL_DATA_INT
.in +10n
ALLOC_INT Asa_Data_Dim_Int;
double *Asa_Data_Int;
.in 0
#endif
#if OPTIONAL_DATA_PTR
.in +10n
ALLOC_INT Asa_Data_Dim_Ptr;
OPTIONAL_PTR_TYPE *Asa_Data_Ptr;
.in 0
#endif
#if USER_ASA_OUT
.in +10n
char *Asa_Out_File;
.in 0
#endif
#if USER_ASA_USR_OUT
.in +10n
char *Asa_Out_Usr_File;
.in 0
#endif
#if USER_COST_SCHEDULE
.in +10n
double ( *Cost_Schedule ) ();
.in 0
#endif
#if USER_ACCEPT_ASYMP_EXP
.in +10n
double Asymp_Exp_Param;
.in 0
#endif
#if USER_ACCEPTANCE_TEST
.in +10n
void ( *Acceptance_Test ) ();
int User_Acceptance_Flag;
int Cost_Acceptance_Flag;
double Last_Cost;
double Cost_Temp_Curr;
double Cost_Temp_Init;
double Cost_Temp_Scale;
double Prob_Bias;
LONG_INT *Random_Seed;
.in 0
#endif
#if USER_GENERATING_FUNCTION
.in +10n
double ( *Generating_Distrib ) ();
.in 0
#endif
#if USER_REANNEAL_COST
.in +10n
int ( *Reanneal_Cost_Function ) ();
.in 0
#endif
#if USER_REANNEAL_PARAMETERS
.in +10n
double ( *Reanneal_Params_Function ) ();
.in 0
#endif
#if ASA_SAMPLE
.in +10n
double Bias_Acceptance;
double *Bias_Generated;
double Average_Weights;
double Limit_Weights;
.in 0
#endif
#if ASA_QUEUE
.in +10n
ALLOC_INT Queue_Size;
double *Queue_Resolution;
.in 0
#endif
#if ASA_RESOLUTION
.in +10n
double *Coarse_Resolution;
.in 0
#endif
#if FITLOC
.in +10n
int Fit_Local;
int Iter_Max;
double Penalty;
.in 0
#endif
#if MULTI_MIN
.in +10n
double *Multi_Cost;
double **Multi_Params;
double *Multi_Grid;
int Multi_Specify;
.in 0
#endif
#if ASA_PARALLEL
.in +10n
int parallel_id;
int Gener_Mov_Avr;
LONG_INT Gener_Block;
LONG_INT Gener_Block_Max;
.in 0
#endif
#if ASA_SAVE
.in +10n
ALLOC_INT Random_Array_Dim;
LONG_INT *Random_Array;
.in 0
#endif
.in +10n
int Asa_Recursive_Level;
.in 0
.in +3n
}
.in 0
.fi
USER_DEFINES;
.PP
Note that two ways are maintained for passing the Program Options.
Check the comments in the ASA\-NOTES file.  It may be necessary to change
some of the options for some systems.  Read the
http://www.ingber.com/asa_examples.txt file for some ongoing
discussions and suggestions on how to try to optimally set these
options.  Note the distinction between trying to speed up
annealing/quenching versus trying to slow down annealing (which
sometimes can speed up the search by avoiding spending too much time in
some local optimal regions).  Templates are set up in ASA to
accommodate all alternatives.  Below, the defaults are given in square
brackets [].
.IP (A)
asa_usr.c file
.br
When using ASA as part of a large library, it likely is easiest to make
these changes within the user module, e.g., using the template placed
in asa_usr.c.  In the user module, the Program Options are stored in the
structure USER_DEFINES *USER_OPTIONS (and in USER_DEFINES
*RECUR_USER_OPTIONS if SELF_OPTIMIZE is TRUE).
.IP (B)
asa_opt file
.br
It likely is most efficient to use a separate data file avoiding
repeated compilations of the code, to test various combinations of
Program Options, e.g., using the file asa_opt when OPTIONS_FILE and
OPTIONS_FILE_DATA are set to TRUE in the ASA\-Makefile or on your
compilation command lines.
.PP
In the asa module (which can be called recursively) the structure is
called USER_DEFINES *OPTIONS.  For the rest of this file, where no
confusion can reasonably arise, the Program Options will be referred to
as USER_DEFINES *OPTIONS.
.NH 3
OPTIONS->Limit_Acceptances[10000]
.XS
\*(SN 			OPTIONS->Limit_Acceptances[10000]
.XE
.PP
The maximum number of states accepted before quitting.  All the
templates in ASA have been set to use Limit_Acceptances=1000 to
illustrate the way these options can be changed.  If Limit_Acceptances
is set to 0, then no limit is observed.  This can be useful for some
systems that cannot handle large integers.
.NH 3
OPTIONS->Limit_Generated[99999]
.XS
\*(SN 			OPTIONS->Limit_Generated[99999]
.XE
.PP
The maximum number of states generated before quitting.  If
Limit_Generated is set to 0, then no limit is observed.  This can be
useful for some systems that cannot handle large integers.
.NH 3
OPTIONS->Limit_Invalid_Generated_States[1000]
.XS
\*(SN 			OPTIONS->Limit_Invalid_Generated_States[1000]
.XE
.PP
This sets limits of repetitive invalid generated states, e.g., when
using this method to include constraints.  This also can be useful to
quickly exit asa\ () if this is requested by your cost function:  Setting
the value of Limit_Invalid_Generated_States to 0 will exit at the next
calculation of the cost function (possibly after a few more exiting
calls to calculate tangents and curvatures).  For example, to exit
asa\ () at a specific number of generated points, set up a counter in
your cost function, e.g., similar to the one in the test function in
asa_usr.c.  For all calls >= the limit of the number of calls to the cost
function, terminate by setting OPTIONS\->Limit_Invalid_Generated_States
= 0 and setting *cost_flag = FALSE.  (Note that a quick exit also can
be achieved using OPTIONS\->Immediate_Exit.)
.NH 3
OPTIONS->Accepted_To_Generated_Ratio[1.0E-6]
.XS
\*(SN 			OPTIONS->Accepted_To_Generated_Ratio[1.0E-6]
.XE
.PP
The least ratio of accepted to generated states.  If this value is
encountered, then the usual tests, including possible reannealing, are
initiated even if the timing does not coincide with
Acceptance_Frequency_Modulus or Generated_Frequency_Modulus (defined
below).  All the templates in ASA have been set to use
Accepted_To_Generated_Ratio=1.0E\-4 to illustrate the way these options
can be changed.
.NH 3
OPTIONS->Cost_Precision[1.0E-18]
.XS
\*(SN 			OPTIONS->Cost_Precision[1.0E-18]
.XE
.PP
This sets the precision required of the cost function if exiting
because of reaching Maximum_Cost_Repeat, which is effective as long as
Maximum_Cost_Repeat > 0.
.NH 3
OPTIONS->Maximum_Cost_Repeat[5]
.XS
\*(SN 			OPTIONS->Maximum_Cost_Repeat[5]
.XE
.PP
The maximum number of times that the cost function repeats itself,
within limits set by Cost_Precision, before quitting.  This test is
performed only when Acceptance_Frequency_Modulus or
Generated_Frequency_Modulus is invoked, or when the ratio of accepted
to generated points is less than Accepted_To_Generated_Ratio, in order
to help prevent exiting prematurely in a local minimum.  If
Maximum_Cost_Repeat is 0, this test is bypassed.
.NH 3
OPTIONS->Number_Cost_Samples[5]
.XS
\*(SN 			OPTIONS->Number_Cost_Samples[5]
.XE
.PP
When Number_Cost_Samples > 0, the initial cost temperature is
calculated as the average of the absolute values of Number_Cost_Samples
sampled cost functions.
.PP
When Number_Cost_Samples < -1, the initial cost temperature is
calculated as the deviation over a sample of -Number_Cost_Samples
number of cost functions, i.e., the square\-root of the difference of
the second moment and the square of the first moment, normalized by the
ratio of -Number_Cost_Samples to -Number_Cost_Samples - 1.
.PP
When ASA_SAVE is set to TRUE, Number_Cost_Samples is set to 1 after
the initial run since all the required information for subsequent runs
already has been collected.
.PP
If the calculated initial cost temperature is not set using
USER_INITIAL_COST_TEMP, and if it is essentially zero (using a test with
SMALL_FLOAT), then it is reset to e = 2.718.  If ASA_PRINT is TRUE a
warning is printed.
.PP
See Reanneal_Cost for similar treatment of the reannealed cost
temperature.
.NH 3
OPTIONS->Temperature_Ratio_Scale[1.0E-5]
.XS
\*(SN 			OPTIONS->Temperature_Ratio_Scale[1.0E-5]
.XE
.PP
This scale is a guide to the expected cost temperature of convergence
within a small range of the global minimum.  As explained in the ASA
papers, and as outlined in the ASA\-NOTES, this is used to set the rates of
annealing.  Here is a brief description in terms of the temperature
schedule outlined above.
.\"		Equations set only in PostScript\(rg ([g]troff)
.if t \{\
.EQ
delim $$
gsize 11
.EN
.\}
.PP
As a useful physical guide, the temperature is further parameterized in
terms of quantities
.if t $m sub i$ and $n sub i$,
.if n m_i and n_i,
derived from an \*Qexpected\*U final temperature (which is not enforced
in ASA),
.if t $T sub fi$,
.if n T_fi,
.ie t \{\
.EQ I
T sub fi = T sub 0i exp ( - m sub i ) ~
roman when ~ k sub fi = exp n sub i ~,
.EN
.\}
.el \{\
.in +8n
T_fi = T_0i exp(-m_i) when k_fi = exp(n_i),
.in 0
.\}
.ie t \{\
.EQ I
c sub i = m sub i exp ( - n sub i / D ) ~.
.EN
.\}
.el \{\
.in +8n
c_i = m_i exp(-n_i/D).
.in 0
.\}
However, note that since the initial temperatures and generating
indices,
.if t $T sub 0i$ and $k sub i$,
.if n T_0i and k_i,
are independently scaled for each parameter, it usually is reasonable
to simply take
.if t $"{" c sub i , ~ m sub i , ~ n sub i "}"$
.if n {c_i, m_i, n_i}
to be independent of the index
.if t $i$,
.if n i,
i.e., to be
.if t $"{" c , ~ m , ~ n "}"$ for all $i$.
.if n {c, m, n} for all i.
.PP
In asa.c,
.ie t \{\
.EQ I
m = - log ( roman Temperature_Ratio_Scale ) ~.
.EN
.\}
.el \{\
.in +8n
m = -log(Temperature_Ratio_Scale).
.in 0
.\}
This can be overridden if RATIO_TEMPERATURE_SCALES (further discussed
below) is set to TRUE, and then values of multipliers of
.if t $- log ( roman Temperature_Ratio_Scale )$
.if n -log(Temperature_Ratio_Scale)
are used in asa.c.  These multipliers are calculated in the user module
as OPTIONS\->User_Temperature_Ratio [].  Then,
.ie t \{\
.EQ I
m sub i = m ^ roman {OPTIONS\->User_Temperature_Ratio[i]} ~.
.EN
.\}
.el \{\
.in +8n
m_i = m OPTIONS\->User_Temperature_Ratio[i].
.in 0
.\}
.PP
For large numbers of parameters, Temperature_Ratio_Scale is a very
influential Program Option in determining the scale of parameter
annealing.  It likely would be best to start with a larger value than
the default, to slow down the annealing.
.PP
The ASA\-NOTES contain a section giving a little more explanation on the use
of Temperature_Ratio_Scale.
.NH 3
OPTIONS->Cost_Parameter_Scale_Ratio[1.0]
.XS
\*(SN 			OPTIONS->Cost_Parameter_Scale_Ratio[1.0]
.XE
.PP
This is the ratio of cost:parameter temperature annealing scales.  As
explained in the ASA papers, and as outlined in the ASA\-NOTES, this is used
to set the rates of annealing.
.PP
In terms of the algebraic development given above for the
Temperature_Ratio_Scale, in asa.c,
.ie t \{\
.EQ I
c sub {roman cost} = c ^ roman Cost_Parameter_Scale_Ratio ~.
.EN
.\}
.el \{\
.in +8n
c_cost = c Cost_Parameter_Scale_Ratio.
.in 0
.\}
.\"		Equations set only in PostScript\(rg ([g]troff)
.PP
Cost_Parameter_Scale_Ratio is a very influential Program Option in
determining the scale of annealing of the cost function.
.NH 3
OPTIONS->Temperature_Anneal_Scale[100.0]
.XS
\*(SN 			OPTIONS->Temperature_Anneal_Scale[100.0]
.XE
.PP
This scale is a guide to achieve the expected cost temperature sought
by Temperature_Ratio_Scale within the limits expected by
Limit_Acceptances.  As explained in the ASA papers, and as outlined in
the ASA\-NOTES, this is used to set the rates of annealing.
.PP
In terms of the algebraic development given above for the
Temperature_Ratio_Scale, in asa.c,
.ie t \{\
.EQ I
n = log ( roman Temperature_Anneal_Scale )~.
.EN
.\}
.el \{\
.in +8n
n = log(Temperature_Anneal_Scale).
.in 0
.\}
.PP
For large numbers of parameters, Temperature_Anneal_Scale probably
should at least initially be set to values greater than
*number_parameters, although it will not be as influential as
Temperature_Ratio_Scale.
.NH 3
OPTIONS->User_Cost_Temperature
.XS
\*(SN 			OPTIONS->User_Cost_Temperature
.XE
.PP
If USER_INITIAL_COST_TEMP is TRUE, a pointer,
OPTIONS\->User_Cost_Temperature, is used to adaptively initialize the
cost temperature.  If this choice is elected, then
User_Cost_Temperature [] must be initialized.
.NH 3
OPTIONS->Include_Integer_Parameters[FALSE]
.XS
\*(SN 			OPTIONS->Include_Integer_Parameters[FALSE]
.XE
.PP
If Include_Integer_Parameters is TRUE, include integer parameters in
derivative and reannealing calculations, except those with INTEGER_TYPE
(2).  This is useful when the parameters can be analytically continued
between their integer values, or if you set the parameter increments to
integral values by setting ASA_RESOLUTION to TRUE, as discussed further
below.
.NH 3
OPTIONS->User_Initial_Parameters[FALSE]
.XS
\*(SN 			OPTIONS->User_Initial_Parameters[FALSE]
.XE
.PP
ASA always requests that the user guess initial values of starting
parameters, since that guess is as good as any random guess the code
might make.  The default is to use the ASA distribution about this
point to generate an initial state of parameters and value of the cost
function that satisfy the user's constraints.  If
User_Initial_Parameters is set to TRUE, then the first user's guess is
used to calculate this first state.
.NH 3
OPTIONS->Sequential_Parameters[-1]
.XS
\*(SN 			OPTIONS->Sequential_Parameters[-1]
.XE
.PP
The ASA default for generating new points in parameter space is to find
a new point in the full space, rather than to sample the space one
parameter at a time as do most other algorithms.  This is in accord
with the general philosophy of sampling the space without any prior
knowledge of ordering of the parameters.  However, if you have reason
to believe that at some stage(s) of search there might be some benefit
to sampling the parameters sequentially, then set Sequential_Parameters
to the parameter number you wish to start your annealing cycle, i.e.,
ranging from 0 to (*parameter_dimension - 1).  Then, ASA will cycle
through your parameters in the order you have placed them in all arrays
defining their properties, keeping track of which parameter is actively
being modified in OPTIONS\->Sequential_Parameters, thereby permitting
adaptive changes.  Any negative value for Sequential_Parameters will
use the default ASA algorithm.  Upon exiting asa\ (),
Sequential_Parameters is reset back to its initial value.
.NH 3
OPTIONS->Initial_Parameter_Temperature[1.0]
.XS
\*(SN 			OPTIONS->Initial_Parameter_Temperature[1.0]
.XE
.PP
The initial temperature for all parameters.  This is overridden by use
of the USER_INITIAL_PARAMETERS_TEMPS option.
.NH 3
OPTIONS->User_Temperature_Ratio
.XS
\*(SN 			OPTIONS->User_Temperature_Ratio
.XE
.PP
If RATIO_TEMPERATURE_SCALES is TRUE, a pointer,
OPTIONS\->User_Temperature_Ratio, is used to adaptively set ratios of
scales used to anneal the parameters in the cost function.  This can be
useful when some parameters are not being reannealed, or when setting
the initial temperatures (using USER_INITIAL_PARAMETERS_TEMPS set to
TRUE) is not sufficient to handle all your parameters properly.  This
typically is not encountered, so it is advised to look elsewhere at
first to improve your search.  If this choice is elected, then
User_Temperature_Ratio [] must be initialized.
.NH 3
OPTIONS->User_Parameter_Temperature
.XS
\*(SN 			OPTIONS->User_Parameter_Temperature
.XE
.PP
If USER_INITIAL_PARAMETERS_TEMPS is TRUE, a pointer,
OPTIONS\->User_Parameter_Temperature, is used to adaptively initialize
parameters temperatures.  If this choice is elected, then
User_Parameter_Temperature [] must be initialized.
.NH 3
OPTIONS->Acceptance_Frequency_Modulus[100]
.XS
\*(SN 			OPTIONS->Acceptance_Frequency_Modulus[100]
.XE
.PP
The frequency of testing for periodic testing and reannealing,
dependent on the number of accepted states.  If
Acceptance_Frequency_Modulus is set to 0, then this test is not
performed.
.NH 3
OPTIONS->Generated_Frequency_Modulus[10000]
.XS
\*(SN 			OPTIONS->Generated_Frequency_Modulus[10000]
.XE
.PP
The frequency of testing for periodic testing and reannealing,
dependent on the number of generated states.  If
Generated_Frequency_Modulus is set to 0, then this test is not
performed.
.NH 3
OPTIONS->Reanneal_Cost[1]
.XS
\*(SN 			OPTIONS->Reanneal_Cost[1]
.XE
.PP
A value of Reanneal_Cost set to FALSE=0 bypasses reannealing of the
cost temperature.  This might be done for systems where such
reannealing is not useful.  Note that the use of USER_REANNEAL_COST
permits users to define their own cost temperature reannealing
algorithm when Reanneal_Cost is not 0 or -1.
.PP
A value of Reanneal_Cost = 1 permits the default reannealing of the
cost temperature to be part of the fitting process, correlating the
cost temperature with the current last and best values of the cost
function as described above.
.PP
If Reanneal_Cost > 1, then the reannealed initial cost temperature is
calculated as the deviation over a sample of -Reanneal_Cost number of
cost functions, i.e., the square\-root of the difference of the second
moment and the square of the first moment, normalized by the ratio of
Reanneal_Cost to Reanneal_Cost - 1.  For example, if the initial cost
temperature is reannealed to a larger value, this increases the
effective index of the current cost temperature, effectively slowing
down the rate of decrease of future current cost temperatures as this
index is increased for each acceptance test.
.PP
If Reanneal_Cost < -1, then the cost index is reset to 1, and the
initial and current cost temperatures are calculated as the deviation
over a sample of -Reanneal_Cost number of cost functions, i.e., the
square\-root of the difference of the second moment and the square of
the first moment, normalized by the ratio of -Reanneal_Cost to
-Reanneal_Cost - 1.  This often gives rise to fluctuating current cost
temperatures, sometimes diminishing the value of the acceptance test.
However, for some systems that have different behavior at different
scales, this can be a very useful OPTIONS.
.PP
The algorithms with Reanneal_Cost > 1 or < -1 typically require more
calls to the cost function than the default of Reanneal_Cost = 1.  This
typically is even more so when Reanneal_Cost < -1 than when
Reanneal_Cost > 1 due to the resetting of the current cost temperature
as well as the initial cost temperature.  Because of the fat tail of
the parameter distributions, quite often relatively large values of the
cost function will be included in the periodic sampling.  However, of
course the parameter temperatures continue to diminish, focusing the
fit towards the global optimal value.
.PP
Note that Number_Cost_Samples can be used similarly for calculating the
initial cost temperature.
.NH 3
OPTIONS->Reanneal_Parameters[TRUE]
.XS
\*(SN 			OPTIONS->Reanneal_Parameters[TRUE]
.XE
.PP
This permits reannealing of the parameter temperatures to be part of
the fitting process.  This might have to be set to FALSE for systems
with very large numbers of parameters just to decrease the number of
function calls.
.NH 3
OPTIONS->Delta_X[0.001]
.XS
\*(SN 			OPTIONS->Delta_X[0.001]
.XE
.PP
The fractional increment of parameters used to take numerical derivatives
when calculating tangents for reannealing, for each parameter chosen to
be reannealed.  This is overridden when DELTA_PARAMETERS is set to TRUE.
If Delta_X is set to 0, then no tangents are calculated.
.PP
Note, that for second\-derivative off\-diagonal curvature calculations,
the algorithm used may cause evaluations of your cost function outside
a range when a parameter being sampled is at the boundary.  However,
only values of parameters within the ranges set by the user are
actually used for acceptance tests.  Note that the user may set
User_Tangents to TRUE, as discussed below, to choose any other
algorithm to calculate derivatives or other indicators to be used for
reannealing.
.PP
When calculating derivatives, an invalid cost function, i.e., returning
*cost_flag = FALSE from the cost function, will exit asa() with *exit_code
INVALID_COST_FUNCTION_DERIV.  Also, when calculating derivatives, no
extra test is performed to check that parameters are within their lower
and upper bounds (since meshes for derivatives may exceed these bounds).
If this is not desired, then within the cost function, within a test
for USER_OPTIONS->Locate_Cost == 3, a decision may be made whether to
return this *exit_code.
.NH 3
OPTIONS->User_Delta_Parameter
.XS
\*(SN 			OPTIONS->User_Delta_Parameter
.XE
.PP
If DELTA_PARAMETERS is TRUE, a pointer, OPTIONS\->User_Delta_Parameter,
is used to adaptively set increments of parameters used to take
pseudo\-derivatives (numerical derivatives), for each parameter chosen
to be reannealed.  For example, this can be useful to reanneal integer
parameters when a choice is made to permit their derivatives to be taken.
If this choice is elected, then OPTIONS\->User_Delta_Parameter []
must be initialized.  No tangents are calculated for any parameter if
User_Delta_Parameter[] is 0.
.NH 3
OPTIONS->User_Tangents[FALSE]
.XS
\*(SN 			OPTIONS->User_Tangents[FALSE]
.XE
.PP
By default, asa\ () calculates numerical tangents (first derivatives) of
the cost function for use in reannealing and to provide this
information to the user.  However, if User_Tangents is set to TRUE,
then when asa\ () requires tangents to be calculated, a value of
*valid_state_generated_flag (called *cost_flag in ASA_TEST in asa_usr.c
and asa_usr_cst.c) of -1 is set and the cost function is called.  The
user is expected to set up a test in the beginning of the cost function
to sense this value, and then calculate the tangents [] array
(containing the derivatives of the cost function, or whatever
sensitivity measure is desired to be used for reannealing) to be
returned to asa\ ().  An example is provided with a ASA_TEMPLATE_SAMPLE.
.NH 3
OPTIONS->Curvature_0[FALSE]
.XS
\*(SN 			OPTIONS->Curvature_0[FALSE]
.XE
.PP
If the curvature array is quite large for your system, and you really
do not use this information, you can set Curvature_0 to TRUE which just
requires a one\-dimensional curvature [0] to be defined to pass to the
asa module (to avoid problems with some systems).  This is most useful,
and typically is necessary, when minimizing systems with large numbers
of parameters since the curvature array is of size number of parameters
squared.
.PP
If you wish to calculate the curvature array periodically, every
reannealing cycle determined by Acceptance_Frequency_Modulus,
Generated_Frequency_Modulus, or Accepted_To_Generated_Ratio, then set
OPTIONS\->Curvature_0 to -1.
.NH 3
OPTIONS->User_Quench_Param_Scale
.XS
\*(SN 			OPTIONS->User_Quench_Param_Scale
.XE
.PP
If QUENCH_PARAMETERS is TRUE, a pointer,
OPTIONS\->User_Quench_Param_Scale, is used to adaptively set the
scale of the temperature schedule.  If this choice is elected, then
OPTIONS\->User_Quench_Param_Scale [] must be initialized, and values
defined for each dimension.  The default in the asa module is to assign
the annealing value of 1 to all elements that might be defined otherwise.
If values are selected greater than 1 using this Program Option, then
quenching is enforced.
.PP
Note that you can use this control quite differently, to slow down the
annealing process by setting OPTIONS->User_Quench_Param_Scale [] to
values less than 1.  This can be useful in problems where the global
optimal point is at a quite different scale from other local optima,
masking its presence.
.PP
If OPTIONS_FILE_DATA, QUENCH_COST, and QUENCH_PARAMETERS are TRUE, then
*User_Quench_Cost_Scale and User_Quench_Param_Scale [] all are read in
from asa_opt.  If RECUR_OPTIONS_FILE_DATA, QUENCH_COST, and
QUENCH_PARAMETERS are TRUE, then *User_Quench_Cost_Scale and
User_Quench_Param_Scale [] all are read in from asa_opt_recur.
.NH 3
OPTIONS\->User_Quench_Cost_Scale
.XS
\*(SN 			OPTIONS->User_Quench_Cost_Scale
.XE
.PP
If QUENCH_COST is TRUE, a pointer, OPTIONS\->User_Quench_Cost_Scale, is
used to adaptively set the scale of the temperature schedule.  If this
choice is elected, then OPTIONS\->User_Quench_Cost_Scale [0] must be
initialized.  The default in the asa module is to assign the annealing
value of 1 to this element that might be defined otherwise.
.PP
OPTIONS\->User_Quench_Cost_Scale may be changed adaptively without
affecting the ergodicity of the algorithm, within reason of course.
This might be useful for some systems that require different approaches
to the cost function in different ranges of its parameters.  Note that
increasing this parameter beyond its default of 1.0 can result in
rapidly locking in the search to a small region of the cost function,
severely handicapping the algorithm.  On the contrary, you may find
that slowing the cost temperature schedule, by setting this parameter
to a value less than 1.0, may work better for your system.
.PP
If OPTIONS_FILE_DATA and QUENCH_COST are TRUE, then
*User_Quench_Cost_Scale is read in from asa_opt.  If
RECUR_OPTIONS_FILE_DATA and QUENCH_COST are TRUE, then
*User_Quench_Cost_Scale is read in from asa_opt_recur.
.NH 3
OPTIONS->N_Accepted
.XS
\*(SN 			OPTIONS->N_Accepted
.XE
.PP
N_Accepted contains the current number of points saved by the acceptance
criteria.  This can be used to monitor the fit.  On exiting from asa\ ()
N_Accepted contains the value of *best_number_accepted_saved in asa.c.
Note that the value of N_Accepted typically will be less in the cost
function than in ASA_OUT, as the value of the returned cost must be
tested back in asa\ () to see if N_Accepted should be incremented.
.NH 3
OPTIONS->N_Generated
.XS
\*(SN 			OPTIONS->N_Generated
.XE
.PP
N_Generated contains the current number of generated states.  This can be
used to monitor the fit.  On exiting from asa\ () N_Generated contains
the value of *best_number_generated_saved in asa.c.  Note that the
value of N_Generated typically will be less in the cost function than
in ASA_OUT, as this value is only incremented upon returning to asa\
() if some tests are passed.
.PP
If ASA_PARALLEL is TRUE, then N_Generated and *best_number_generated_saved
will only be accurate within the scale of OPTIONS\->Gener_Block, as
these are updated in the acceptance function.
.NH 3
OPTIONS->Locate_Cost
.XS
\*(SN 			OPTIONS->Locate_Cost
.XE
.PP
Locate_Cost is a flag set in asa\ (), telling at what point the cost
function is being called.  This can be useful for determining when to
perform tests while in your cost function.  When ASA_PRINT is TRUE, the
value is printed out upon exiting asa\ ().  Note that there are several
possible values that be reasonable, depending on from where the final
exit was called.
.QS
.LP
Locate_Cost = 0.  The cost function is being used for the initial cost
temperature.
.LP
Locate_Cost = 1.  The cost function is being used for the initial cost
value.
.LP
Locate_Cost = 2.  The cost function is being used for a new generated
state.
.LP
Locate_Cost = 12.  The cost function is being used for a new generated
state just after a new best state was achieved.
.LP
Locate_Cost = 3.  The cost function is being used for the cost
derivatives to reanneal the parameters.
.LP
Locate_Cost = 4.  The cost function is being used for reannealing the
cost temperature.
.LP
Locate_Cost = 5.  The cost function is being used for the exiting of
asa\ () to calculate final curvatures.
.LP
Locate_Cost = -1.  Exited main loop of asa () because of user-defined
constraints in OPTIONS, e.g., Acceptance_Frequency_Modulus,
Generated_Frequency_Modulus, or Accepted_To_Generated_Ratio.
.QE
.PP
When calculating derivatives, an invalid cost function, i.e., returning
*cost_flag = FALSE from the cost function, will exit asa() with *exit_code
INVALID_COST_FUNCTION_DERIV.  Also, when calculating derivatives, no
extra test is performed to check that parameters are within their lower
and upper bounds (since meshes for derivatives may exceed these bounds).
If this is not desired, then within the cost function, within a test
for USER_OPTIONS->Locate_Cost == 3, a decision may be made whether to
return this *exit_code.
.NH 3
OPTIONS->Immediate_Exit[FALSE]
.XS
\*(SN 			OPTIONS->Immediate_Exit[FALSE]
.XE
.PP
OPTIONS\->Immediate_Exit is initialized to FALSE when entering asa\ ().
At any time during the fit, except while the call to cost_function ()
from asa\ () is being used simply to calculate derivatives or the cost
temperature, if the user sets Immediate_Exit to TRUE, then just after
bookkeeping is performed by the acceptance test, asa\ () will exit with
code IMMEDIATE_EXIT.  All closing calculations of current
cost_tangents [] and cost_curvature [] are bypassed.
.NH 3
OPTIONS->Best_Cost
.XS
\*(SN 			OPTIONS->Best_Cost
.XE
.PP
In asa_usr_asa.h, the OPTIONS *Best_Cost is a pointer to the value of the
cost function of the saved best state calculated in asa\ ().  E.g.,
together with *Best_Parameters and Locate_Cost, these OPTIONS can aid
several adaptive features of ASA, e.g., automating the diminishing of
ranges each time a new best state is achieved, as illustrated in the
ASA_TEMPLATE just after the comment MY_TEMPLATE_diminishing_ranges in
asa_usr.c.  This OPTIONS is to be used read\-only by the cost function, as
calculated in asa\ (); do not change it in the user module unless you so
wish to modify the sampling.
.NH 3
OPTIONS->Best_Parameters
.XS
\*(SN 			OPTIONS->Best_Parameters
.XE
.PP
In asa_usr_asa.h, the OPTIONS *Best_Parameters is a pointer to the values
of the parameters of the saved best state calculated in asa\ ().  E.g.,
together with *Best_Cost and Locate_Cost, these OPTIONS can aid several
adaptive features of ASA, e.g., automating the diminishing of ranges
each time a new best state is achieved, as illustrated in the
ASA_TEMPLATE just after the comment MY_TEMPLATE_diminishing_ranges in
asa_usr.c.  This OPTIONS is to be used read\-only by the cost function, as
calculated in asa\ (); do not change it in the user module unless you so
wish to modify the sampling.
.NH 3
OPTIONS->Last_Cost
.XS
\*(SN 			OPTIONS->Last_Cost
.XE
.PP
In asa_usr_asa.h, the OPTIONS *Last_Cost is a pointer to the value of the
cost function of the last saved state calculated in asa\ ().  This can be
compared to *Best_Cost as a measure of fluctuations among local
minima.  An example of use in a user\-defined acceptance test is in
asa_usr.c when USER_ACCEPTANCE_TEST is TRUE.  This OPTIONS is to be used
read\-only by the cost function, as calculated in asa\ (); do not change
it in the user module unless you so wish to modify the sampling.
.NH 3
OPTIONS->Last_Parameters
.XS
\*(SN 			OPTIONS->Last_Parameters
.XE
.PP
In asa_usr_asa.h, the OPTIONS *Last_Parameters is a pointer to the values
of the parameters of the last saved state calculated in asa\ ().  This
can be compared to *Best_Parameters as a measure of fluctuations among
local minima.  This OPTIONS is to be used read\-only by the cost
function, as calculated in asa\ (); do not change it in the user module
unless you so wish to modify the sampling.
.NH 3
OPTIONS->Asa_Data_Dim_Dbl
.XS
\*(SN 			OPTIONS->Asa_Data_Dim_Dbl
.XE
.PP
If the Pre\-Compile Option OPTIONAL_DATA_DBL [FALSE] is set to TRUE, an
additional Program Option, OPTIONS\->Asa_Data_Dim_Dbl, becomes
available to define the dimension of OPTIONS\->Asa_Data_Dbl [].
.NH 3
OPTIONS->Asa_Data_Dbl
.XS
\*(SN 			OPTIONS->Asa_Data_Dbl
.XE
.PP
If the Pre\-Compile Option OPTIONAL_DATA_DBL [FALSE] is set to TRUE, an
additional Program Option pointer, OPTIONS\->Asa_Data_Dbl, becomes
available to return additional information to the user module from the
asa module.  This information communicates with the asa module, and
memory must be allocated for it in the user module.  An example is
given in asa_usr.c when SELF_OPTIMIZE is TRUE.
.NH 3
OPTIONS->Asa_Data_Dim_Int
.XS
\*(SN 			OPTIONS->Asa_Data_Dim_Int
.XE
.PP
If the Pre\-Compile Option OPTIONAL_DATA_INT [FALSE] is set to TRUE, an
additional Program Option, OPTIONS\->Asa_Data_Dim_Int, becomes available
to define the dimension of OPTIONS\->Asa_Data_Int [].
.NH 3
OPTIONS->Asa_Data_Int
.XS
\*(SN 			OPTIONS->Asa_Data_Int
.XE
.PP
If the Pre\-Compile Option OPTIONAL_DATA_INT [FALSE] is set to TRUE, an
additional Program Option pointer, OPTIONS\->Asa_Data_Int, becomes
available to return additional integer information to the user module
from the asa module.  This information communicates with the asa
module, and memory must be allocated for it in the user module.
.NH 3
OPTIONS->Asa_Data_Dim_Ptr
.XS
\*(SN 			OPTIONS->Asa_Data_Dim_Ptr
.XE
.PP
If the Pre\-Compile Option OPTIONAL_DATA_PTR [FALSE] is set to TRUE, an
additional Program Option, OPTIONS\->Asa_Data_Dim_Ptr, becomes
available to define the dimension of OPTIONS\->Asa_Data_Ptr.
.PP
For example, a value of Asa_Data_Dim_Ptr = 2 might be used to set
different entries in data arrays at two levels of recursion.  See the
discussion under OPTIONAL_DATA_PTR and Asa_Data_Ptr for use in multiple
recursion.
.NH 3
OPTIONS->Asa_Data_Ptr
.XS
\*(SN 			OPTIONS->Asa_Data_Ptr
.XE
.PP
If the Pre\-Compile Option OPTIONAL_DATA_PTR [FALSE] is set to TRUE,
an additional Program Option pointer, OPTIONS\->Asa_Data_Ptr, becomes
available to define an array, of type OPTIONAL_PTR_TYPE defined by the
user, which can be used to pass arbitrary arrays or structures to the
user module from the asa module.  This information communicates with
the asa module, and memory must be allocated for it in the user module.
.PP
For example, struct DATA might contain an array data[10] to be used in
the cost_function.  Asa_Data_Dim_Ptr might have a value 2.  Set #define
OPTIONAL_PTR_TYPE DATA.  Then, data[3] in struct Asa_Data_Ptr[1] could
be set and accessed as USER_OPTIONS->Asa_Data_Ptr[1].data[3] in the
cost function.
.PP
For example, your main program that calls asa_main() would have
developed a struct SelectedType *SelectedPointer, and you can call
asa_main(SelectedPointer, ...).  In asa_usr_asa.h, you would have
.in +5n
#define OPTIONAL_PTR_TYPE SelectedType
.in 0
In asa_usr.c (and asa_usr.h) you would develop int
asa_main(OPTIONAL_PTR_TYPE *OptionalPointer, ...) and, close to the
appropriate ASA_TEMPLATE, you would set
.in +5n
USER_OPTIONS->Asa_Data_Ptr = OptionalPointer;
.in 0
if Asa_Data_Dim_Ptr = 1 were being passed to ASA; otherwise, if
Asa_Data_Dim_Ptr > 1, as illustrated in the ASA_TEMPLATE in asa_usr.c,
memory must be allocated (and then freed) for Asa_Data_Ptr, and each
dimension must be properly aligned with the structs being passed from
the main program.
.PP
Note that the typedef of the SelectedType struct (whether or not you
explicitly use the term typedef), developed in your main program, cannot
be passed by its name to asa_main(), and so it must be declared as well
in the asa module.  In asa_usr_asa.h, the SelectedType struct can be
included with the use of an #include SelectedStruct.h common to your
main program and asa_usr_asa.h.
.PP
As noted in asa_usr.c, before exiting asa_main(), instead of freeing
Asa_Data_Ptr, if memory has been allocated outside ASA, e.g., by the
use of ASA_LIB, use
.in +5n
USER_OPTIONS->Asa_Data_Ptr = NULL;
.in 0
.PP
The http://www.ingber.com/asa_examples.txt file contains some guidance
of the use of OPTIONAL_DATA_PTR and Asa_Data_Ptr.
.NH 3
OPTIONS->Asa_Out_File
.XS
\*(SN 			OPTIONS->Asa_Out_File
.XE
.PP
If you wish to have the printing from the asa module be sent to a file
determined dynamically from the user module, set the Pre\-Compile
Printing Option USER_ASA_OUT [FALSE] to TRUE, and define the Program
Option *Asa_Out_File in the user module.  (This overrides any ASA_OUT
settings.)  An example of this use for multiple asa\ () runs is given in
the user module.
.NH 3
OPTIONS->Asa_Usr_Out_File
.XS
\*(SN 			OPTIONS->Asa_Usr_Out_File
.XE
.PP
If you wish to have the printing from the user module be sent to a file
determined dynamically from the user module, set the Pre\-Compile
Printing Option USER_ASA_USR_OUT [FALSE] to TRUE, and define the Program
Option *Asa_Usr_Out_File in the user module.  (This overrides any USER_OUT
settings.)
.NH 3
OPTIONS->Cost_Schedule
.XS
\*(SN 			OPTIONS->Cost_Schedule
.XE
.PP
If USER_COST_SCHEDULE [FALSE] is set to TRUE, then (*Cost_Schedule) ()
is created as a pointer to the function user_cost_schedule () in asa_usr.c,
and to recur_user_cost_schedule () if SELF_OPTIMIZE is set to TRUE.
.NH 3
OPTIONS->Asymp_Exp_Param
.XS
\*(SN 			OPTIONS->Asymp_Exp_Param
.XE
.PP
When USER_ACCEPT_ASYMP_EXP [FALSE] is TRUE, an asymptotic form of the
exponential function as an alternative to the Boltzmann function
becomes available for the acceptance test.  A parameter
OPTIONS\->Asymp_Exp_Param becomes available, with a default of 1.0 in
asa_usr.c giving the standard Boltzmann function.  The asymptotic
approximation to the exp function used for the acceptance distribution
is
.ie t \{\
.EQ I
exp ( - x ) -> [ 1 - ( 1 - q ) x ] sup {1 / ( 1 - q )} ~ .
.EN
.\}
.el \{\
.in +8n
exp(-x) -> [1-(1-q)x]^[1/(1-q)].
.in 0
.\}
If you require a more moderate acceptance test, then negative
Asymp_Exp_Param may be helpful.
.NH 3
OPTIONS->Acceptance_Test
.XS
\*(SN 			OPTIONS->Acceptance_Test
.XE
.PP
If USER_ACCEPTANCE_TEST [FALSE] is set to TRUE, then ( *Acceptance_Test )
() is created as a pointer to the function user_acceptance_test () in
asa_usr.c, and to recur_user_acceptance_test () if SELF_OPTIMIZE is set to
TRUE.
.NH 3
OPTIONS->User_Acceptance_Flag
.XS
\*(SN 			OPTIONS->User_Acceptance_Flag
.XE
.PP
If USER_ACCEPTANCE_TEST [FALSE] is set to TRUE, then
User_Acceptance_Flag is created.  In asa\ (), User_Acceptance_Flag is set
to TRUE prior to calling the cost function whenever acceptance tests
need not be performed, i.e., when using the cost function to generate
initial conditions, when being used to calculate derivatives, or when
samples are being generated to calculate the cost temperature;
otherwise it is set to FALSE.  If User_Acceptance_Flag is returned from
the cost function as FALSE, then it is assumed that the cost function
will fail the acceptance criteria, but other data is still collected in
the acceptance function.  When entering the acceptance test in asa, a
test is done to see if the acceptance test has already been determined
by the cost function; if not, then OPTIONS\->Acceptance_Test () is called
to calculate the acceptance test to determine the resulting value of
User_Acceptance_Flag.
.NH 3
OPTIONS->Cost_Acceptance_Flag
.XS
\*(SN 			OPTIONS->Cost_Acceptance_Flag
.XE
.PP
If USER_ACCEPTANCE_TEST [FALSE] is set to TRUE, then
Cost_Acceptance_Flag is created.  In asa\ (), Cost_Acceptance_Flag is set
to a default of FALSE before entering the cost function.  If both
Cost_Acceptance_Flag and User_Acceptance_Flag are returned from the
cost function as TRUE, then it is assumed that the cost function has
decided that the acceptance criteria is passed, and other data is
collected in the acceptance function.
.NH 3
OPTIONS->Cost_Temp_Curr
.XS
\*(SN 			OPTIONS->Cost_Temp_Curr
.XE
.PP
If USER_ACCEPTANCE_TEST [FALSE] is set to TRUE, then Cost_Temp_Curr is
available to user_cost_function and/or to OPTIONS\->Acceptance_Test to
calculate the acceptance criteria.
.NH 3
OPTIONS->Cost_Temp_Init
.XS
\*(SN 			OPTIONS->Cost_Temp_Init
.XE
.PP
If USER_ACCEPTANCE_TEST [FALSE] is set to TRUE, then Cost_Temp_Init is
available to user_cost_function and/or to OPTIONS\->Acceptance_Test to
calculate the acceptance criteria.
.NH 3
OPTIONS->Cost_Temp_Scale
.XS
\*(SN 			OPTIONS->Cost_Temp_Scale
.XE
.PP
If USER_ACCEPTANCE_TEST [FALSE] is set to TRUE, then Cost_Temp_Scale is
available to user_cost_function and/or to OPTIONS\->Acceptance_Test to
calculate the acceptance criteria.
.NH 3
OPTIONS->Prob_Bias
.XS
\*(SN 			OPTIONS->Prob_Bias
.XE
.PP
If USER_ACCEPTANCE_TEST [FALSE] is set to TRUE, then Prob_Bias is
returned by the user module to the asa module.  This usually is the
Boltzmann test term which is compared with a uniform random number to
determine acceptance, and its value can be required for other OPTIONS
such as ASA_SAMPLE.
.NH 3
OPTIONS->Random_Seed
.XS
\*(SN 			OPTIONS->Random_Seed
.XE
.PP
If USER_ACCEPTANCE_TEST [FALSE] is set to TRUE, then in asa\ ()
OPTIONS\->Random_Seed is set to the address of the random seed
throughout asa, to synchronize the random number generator with the
rest of the run, e.g., permitting *Random_Seed to be used in
user_cost_function ().
.NH 3
OPTIONS->Generating_Distrib
.XS
\*(SN 			OPTIONS->Generating_Distrib
.XE
.PP
If USER_GENERATING_FUNCTION [FALSE] is set to TRUE, then
(*Generating_Distrib) () is created as a pointer to the function
user_generating_distrib () in asa_usr.c, and to
recur_user_generating_distrib () if SELF_OPTIMIZE is set to TRUE.  The
parameters passed to these functions are further described below.
.NH 3
OPTIONS->Reanneal_Cost_Function
.XS
\*(SN 			OPTIONS->Reanneal_Cost_Function
.XE
.PP
If USER_REANNEAL_COST [FALSE] is set to TRUE, then
(*Reanneal_Cost_Function) () is created as a pointer to the function
user_reanneal_cost () in asa_usr.c, and to recur_user_reanneal_cost () if
SELF_OPTIMIZE is set to TRUE.
.NH 3
OPTIONS->Reanneal_Params_Function
.XS
\*(SN 			OPTIONS->Reanneal_Params_Function
.XE
.PP
If USER_REANNEAL_PARAMETERS [FALSE] is set to TRUE, then
(*Reanneal_Params_Function) () is created as a pointer to the function
user_reanneal_params () in asa_usr.c, and to recur_user_reanneal_params ()
if SELF_OPTIMIZE is set to TRUE.
.NH 3
OPTIONS->Bias_Acceptance
.XS
\*(SN 			OPTIONS->Bias_Acceptance
.XE
.PP
If ASA_SAMPLE is TRUE, this is the bias of the current state from the
Boltzmann acceptance test described above, taken to be the minimum of
one and the Boltzmann factor if the new point is accepted, and one
minus this number if it is rejected.
.NH 3
OPTIONS->Bias_Generated
.XS
\*(SN 			OPTIONS->Bias_Generated
.XE
.PP
If ASA_SAMPLE is TRUE, a pointer, OPTIONS\->Bias_Generated, contains the
the biases of the current state from the generating distributions of
all active parameters, described above.  Memory for
OPTIONS\->Bias_Generated [] must be created in the user module.
.NH 3
OPTIONS->Average_Weights
.XS
\*(SN 			OPTIONS->Average_Weights
.XE
.PP
IF ASA_SAMPLE is TRUE, this is the average of the weight array holding
the products of the inverse asa generating distributions of all active
parameters.
.PP
For example, OPTIONS\->N_Accepted can be used to monitor changes in a
new saved point in the cost function, and when OPTIONS\->Average_Weights
reaches a specified number (perhaps repeated several times), the cost
function could return an invalid flag from the cost function to
terminate the run.  When the Average_Weights is very small, then
additional sampled points likely will not substantially contribute more
information.
.NH 3
OPTIONS->Limit_Weights
.XS
\*(SN 			OPTIONS->Limit_Weights
.XE
.PP
If ASA_SAMPLE is set to TRUE, Limit_Weights is a limit on the value of
the average of the weight array holding the inverse asa generating
distribution.  When this lower limit is crossed, asa will no longer
send sampling output to be printed out, although it still will be
calculated.  As the run progresses, this average will decrease until
contributions from further sampling become relatively unimportant.
.NH 3
OPTIONS->Queue_Size
.XS
\*(SN 			OPTIONS->Queue_Size
.XE
.PP
If ASA_QUEUE is set to TRUE, Queue_Size is a limit on the size of the
FIFO queue used to store generated states.  This array must be defined
in the user module.
.PP
After Queue_Size has been set, and memory created in asa (), it may be
changed adaptively to any number less than this.  If Queue_Size is 0,
then no queue is used.
.NH 3
OPTIONS->Queue_Resolution
.XS
\*(SN 			OPTIONS->Queue_Resolution
.XE
.PP
If ASA_QUEUE is set to TRUE, Queue_Resolution is a pointer to an array
of resolutions used to compare the currently generated parameters to
those in the queue.  This array must have space allocated and be
defined in the user module.  See the discussions on ASA_QUEUE and
ASA_RESOLUTION on the differences in operations of these two OPTIONS.
.PP
The ASA_QUEUE OPTIONS also can be used to coarse\-grain a fit, by
setting high values of Queue_Resolution [].
.NH 3
OPTIONS->Coarse_Resolution
.XS
\*(SN 			OPTIONS->Coarse_Resolution
.XE
.PP
If ASA_RESOLUTION is set to TRUE, Coarse_Resolution is a pointer to an
array of resolutions used to resolve the values of generated
parameters.  This array must have space allocated and be defined in the
user module.  See the discussions on ASA_QUEUE and ASA_RESOLUTION on
the differences in operations of these two OPTIONS.
.NH 3
OPTIONS->Fit_Local
.XS
\*(SN 			OPTIONS->Fit_Local
.XE
.PP
If FITLOC is TRUE, OPTIONS\->Fit_Local is passed to cost_function ().
This provides additional flexibility in deciding when to shunt asa ()
over to fitloc (), e.g., during multiple or recursive optimizations.
As used in asa_usr.c, a value of Fit_Local set >= 1 is required to enter
the local code.
.PP
If Fit_Local is set to 2, any better fit found by the local code better
than asa\ () is ignored if that local fit is achieved by violating the
ranges of the parameters.  This additional test is much stricter than
that imposed by OPTIONS\->Penalty,
.NH 3
OPTIONS->Iter_Max
.XS
\*(SN 			OPTIONS->Iter_Max
.XE
.PP
When FITLOC is TRUE, OPTIONS->Iter_Max determines the maximum
iterations of the cost_function () by simplex ().
.NH 3
OPTIONS->Penalty
.XS
\*(SN 			OPTIONS->Penalty
.XE
.PP
If FITLOC is TRUE, OPTIONS\->Penalty determines how to weight violation
of constraints, exceeding boundaries, etc.
.NH 3
Multi_Number
.XS
\*(SN 			OPTIONS->Multi_Number
.XE
.PP
If MULTI_MIN is set to TRUE, then OPTIONS\->Multi_Number, the number of
best-generated states of the lowest sampled values of the cost function,
must be set by the user.  Of course this can be changed adaptively.
.PP
Note that OPTIONS\->Multi_Cost and OPTIONS\->Multi_Params are seeded with
the highest cost function state just before entering the main annealing
loop.  Therefore, if OPTIONS\->Multi_Number is larger than the actual
number of accepted best states (new lowest values), or if a set of states
are identical within the precision reported, then there will be a set
of duplicate states returned which should be filtered via a unique macro.
.NH 3
OPTIONS->Multi_Cost
.XS
\*(SN 			OPTIONS->Multi_Cost
.XE
.PP
If MULTI_MIN is TRUE, OPTIONS\->Multi_Cost save the lowest
OPTIONS\->Multi_Number values of the cost function.
.NH 3
OPTIONS->Multi_Params
.XS
\*(SN 			OPTIONS->Multi_Params
.XE
.PP
If MULTI_MIN is TRUE, OPTIONS\->Multi_Params save the parameters of the
lowest OPTIONS\->Multi_Number values of the cost function.
.NH 3
OPTIONS->Multi_Grid
.XS
\*(SN 			OPTIONS->Multi_Grid
.XE
.PP
If MULTI_MIN is TRUE, OPTIONS\->Multi_Grid must be set by the user to
define the resolution permitted to distinguish among parameter values
of the best-generated states.  However, this is overridden in asa.c, to
ensure that Multi_Grid is greater or equal to EPS_DOUBLE and to
OPTIONS\->Coarse_Resolution if ASA_RESOLUTION is TRUE.
.NH 3
OPTIONS->Multi_Specify
.XS
\*(SN 			OPTIONS->Multi_Specify
.XE
.PP
If MULTI_MIN is TRUE, and if OPTIONS\->Multi_Specify is set to 0, the
selection of best-generated states includes all sampled instances of
the cost functions.  If Multi_Specify is set to 1, the selection of
best-generated states is constrained to include only those with
different values of the cost function.
.PP
If Multi_Specify is set to 0, and multiple best cost functions are
found, the parameters of the final cost function reported will be the
parameters of the last best cost function.  All new best cost functions
will be reported, but if ASA_PRINT_MORE is TRUE only new lower best cost
functions will have additional print out.
.PP
The final values in asa.c of *best_number_generated_saved and
*best_number_accepted_saved at the best cost function will be those of
the first instance of the final best value.  If Multi_Specify is set to
0, the parameters corresponding to this final value may not be among
the set of final Multi_Params if there are more best cost functions
than Multi_Number.
.PP
If ASA_PARALLEL is TRUE, then N_Generated and *best_number_generated_saved
will only be accurate within the scale of OPTIONS\->Gener_Block, as
these are updated in the acceptance function.
.NH 3
OPTIONS->Gener_Mov_Avr
.XS
\*(SN 			OPTIONS->Gener_Mov_Avr
.XE
.PP
If ASA_PARALLEL is set to TRUE, Gener_Mov_Avr determines the window of
the moving average of sizes of parallel generated states required to
find new best accepted states.  A reasonable number for many problems
is 3.
.PP
If and when OPTIONS\->Gener_Mov_Avr is set to 0, then
OPTIONS\->Gener_Block is not changed thereafter.
.NH 3
OPTIONS->Gener_Block
.XS
\*(SN 			OPTIONS->Gener_Block
.XE
.PP
If ASA_PARALLEL is set to TRUE, Gener_Block is an initial block size of
parallel generated states to calculate how to determine a new best
accepted state.
.NH 3
OPTIONS->Gener_Block_Max
.XS
\*(SN 			OPTIONS->Gener_Block_Max
.XE
.PP
If ASA_PARALLEL is set to TRUE, Gener_Block_Max is an initial maximum
block size of parallel generated states to calculate to determine a new
best accepted state.
.PP
This can be useful if your parallel code assigns new processors \*Qon
the fly,\*U to compensate for some cost functions being more CPU
intensive, e.g., due to boundary conditions, etc.  Then
OPTIONS\->Gener_Block_Max may be larger than the number of physical
processors, e.g., if OPTIONS\->Gener_Block would call for such a size.
.NH 3
OPTIONS->Random_Array_Dim
.XS
\*(SN 			OPTIONS->Random_Array_Dim
.XE
.PP
When ASA_SAVE is set to TRUE, OPTIONS\->Random_Array_Dim defines the
dimension of the array used to hold shuffled random numbers used by
the random number generator defined in asa_usr.c.  The default is to use
SHUFFLE defined in asa_usr.h for Random_Array_Dim.
.NH 3
OPTIONS->Random_Array
.XS
\*(SN 			OPTIONS->Random_Array
.XE
.PP
When ASA_SAVE is set to TRUE, OPTIONS\->Random_Array holds the shuffled
random numbers used by the random number generator defined in asa_usr.c
The default is to set the pointer of the static array random_array at
the top of asa_usr.c.
.NH 3
OPTIONS->Asa_Recursive_Level
.XS
\*(SN 			OPTIONS->Asa_Recursive_Level
.XE
.PP
When using ASA recursively, it often is useful to be able to keep track
of the level of recursion.
.PP
If ASA_SAVE is set to TRUE, set Asa_Recursive_Level to be 0 at the
most inner shell and increment at each successive outer shell.  Then,
ASA_SAVE will take effect at the most outer recursive shell.
.NH 1
User Module
.XS
\*(SN 	User Module
.XE
.LP
This module includes asa_usr.c, asa_usr.h, asa_usr_cst.c, and asa_usr_asa.h.  You
may wish to combine them into one file, or you may wish to use the ASA
module as one component of a library required for a large project.
.NH 2
int main(int argc, char **argv)
.XS
\*(SN 		int main(int argc, char **argv)
.XE
.PP
In main (), set up your initializations and calling statements to asa.
The files asa_usr.c, asa_usr.h, and asa_usr_cst.c provide a sample () function,
as well as a sample cost function for your convenience.  If you do not
intend to pass parameters into main, then you can just declare it as
main () without the argc and argv arguments, deleting other references
to argc and argv.
.PP
main () returns 0 for a normal exit, -1 if there was a calloc
allocation error in asa.c, or -2 if there was a calloc allocation
error in asa_usr.c.
.KS
.NH 2
int asa_main(
.XS
\*(SN 		int asa_main(
.XE
.nf
.in 0
#if ASA_TEMPLATE_LIB
.in +10n
double *main_cost_value,
double *main_cost_parameters,
int *main_exit_code
.in 0
#endif
.in +10n
)
.in 0
.fi
.KE
.PP
If ASA_LIB is set to TRUE, then asa_main () is used as a function call
instead of main ().  If SELF_OPTIMIZE is set to TRUE, then the first
main ()/asa_main () in asa_usr.c is closed off, and a different
main ()/asa_main () procedure in asa_usr.c is used.
.PP
asa_main () returns 0 for a normal exit, -1 if there was a calloc
allocation error in asa.c, or -2 if there was a calloc allocation
error in asa_usr.c.
.PP
If you require parameters to be passed by asa_main () back to your main
program, e.g., cost_value, *cost_parameters, *exit_code, etc., then
these can be added as *main_cost_value, *main_cost_parameters,
*main_exit_code, with memory allocated in your own main (), etc.  Such
use is illustrated by ASA_TEMPLATE_LIB.
.PP
At the end of the asa_usr.c, part of ASA_TEMPLATE_LIB is an example of a
main () program that could call asa_main ().
.PP
randflt () calls resettable_randflt () each time to actually implement
the RNG.  This is to provide the capability of getting the same runs if
the same multiple calls to asa\ () are made, e.g., when using ASA_LIB
set to TRUE.  To enforce this, asa_main () should call resettable_randflt
(rand_seed, 1) at the beginning of each run.
.KS
.NH 2
int initialize_parameters(
.XS
\*(SN 		int initialize_parameters(
.XE
.nf
.in +10n
double *cost_parameters,
double *parameter_lower_bound,
double *parameter_upper_bound,
double *cost_tangents,
double *cost_curvature,
ALLOC_INT *parameter_dimension,
int *parameter_int_real,
.in 0
#if OPTIONS_FILE_DATA
.in +10n
FILE *ptr_options,
.in 0
#endif
.in +10n
USER_DEFINES * USER_OPTIONS)
.in 0
.fi
.KE
.PP
Before calling asa, the user must allocate storage and initialize some
of the passed parameters.  A sample () function is provided as a
template.  In this procedure the user should allocate storage for the
passed arrays and define the minimum and maximum values.  Below is
detailed all the parameters which must be initialized.  If your arrays
are of size 1, still use them as arrays as described in asa_usr.c.
Alternatively, if you define 'int user_flag', then pass &user_flag.
.PP
As written above, these are the names used in the user module.  All
these parameters could be passed globally in the user module, e.g., by
defining them in asa_usr.h instead of in main () in asa_usr.c, but since the
asa module only passes local parameters to facilitate recursive use,
this approach is taken here as well.
.PP
initialize_parameters () returns 0 for a normal exit or -2 if there was
a calloc allocation.
.KS
.NH 2
int recur_initialize_parameters(
.XS
\*(SN 		int recur_initialize_parameters(
.XE
.nf
.in +10n
double *recur_cost_parameters,
double *recur_parameter_lower_bound,
double *recur_parameter_upper_bound,
double *recur_cost_tangents,
double *recur_cost_curvature,
ALLOC_INT *recur_parameter_dimension,
int *recur_parameter_int_real,
.in 0
#if OPTIONS_FILE_DATA
.in +10n
FILE *recur_ptr_options,
.in 0
#endif
.in +10n
USER_DEFINES * RECUR_USER_OPTIONS)
.in 0
.fi
.KE
.PP
This procedure is used only if SELF_OPTIMIZE is TRUE, and is
constructed similar to initialize_parameters ().
recur_initialize_parameters () returns 0 for a normal exit or -2 if
there was a calloc allocation.
.KS
.NH 2
double cost_function(
.XS
\*(SN 		double cost_function(
.XE
.nf
.in +10n
double *x,
double *parameter_lower_bound,
double *parameter_upper_bound,
double *cost_tangents,
double *cost_curvature,
ALLOC_INT *parameter_dimension,
int *parameter_int_real,
int *cost_flag,
int *exit_code,
USER_DEFINES *USER_OPTIONS)
.in 0
.fi
.KE
.PP
.NH 3
cost_function
.XS
\*(SN 			cost_function
.XE
.PP
You can give any name to cost_function as long as you pass this name to
asa; it is called cost_function in the user module.  This function
returns a real value which ASA will minimize.  In cases where it seems
that the ASA default parameters are not very efficient for your system,
you might consider modifying the cost function being optimized.  For
example, if your actual cost function is of the form of an exponential
to an exponential, you might do better using the logarithm of this as
cost_function.
.NH 3
*x
.XS
\*(SN 			*x
.XE
.PP
x (called cost_parameters in the user module) is an array of doubles
representing a set of parameters to evaluate.
.NH 3
double *parameter_lower_bound
.XS
\*(SN 			double *parameter_lower_bound
.XE
.PP
See discussion below on parameter_upper_bound.
.NH 3
double *parameter_upper_bound
.XS
\*(SN 			double *parameter_upper_bound
.XE
.PP
These two arrays of doubles are passed.  Since ASA works only on
bounded search spaces, these arrays should contain the minimum and
maximum values each parameter can attain.  If you aren't sure, try a
factor of 10 or 100 times any reasonable values.  The exponential
temperature annealing schedule should quickly sharpen the search down
to the most important region.
.PP
Passing the parameter bounds in the cost function permits some additional
adaptive features during the search.  For example, setting the lower bound
equal to the upper bound will remove a parameter from consideration for
sampling, although it still will be printed out with other parameters
if OPTIONS permit.  Whenever this occurs, within asa() the effective
dimension defining the size of the search space is reduced by the number
of parameters so removed.
.PP
For example, if your parameter constraints are correlated in subsets,
you can implement the following in your cost_function () in asa_usr.c or
asa_usr_cst.c.  Immediately upon entering cost_function () after receiving
a full set of new parameters from asa\ (), check all correlated subsets
of points.  If some correlated subset is not valid, for all parameters
that do satisfy your constraints, save parameter_lower_bound [] and
parameter_upper_bound [] in some temporary arrays, set
parameter_lower_bound [] equal to parameter_upper_bound [], *cost_flag
equal to FALSE, and return to asa\ ().  Have asa\ () keep recalculating the
new subsets of points until all subsets are valid.  Then, reset
parameter_lower_bound [] and parameter_upper_bound [] from the temporary
arrays, and continue on with the rest of cost_function ().  You may wish
to perform this with the Quenching OPTIONS turned on, so that you also
can accordingly adaptively modify the annealing rates using the new
effective number of active parameters.
.NH 3
double *cost_tangents
.XS
\*(SN 			double *cost_tangents
.XE
.PP
This array of doubles is passed.  On return from asa this contains the
first derivatives of the cost function with respect to its parameters.
These can be useful for determining the value of your fit.  In the default
implementation of ASA, the tangents are used to determine the relative
reannealing among parameters.
.NH 3
double *cost_curvature
.XS
\*(SN 			double *cost_curvature
.XE
.PP
This array of doubles is passed next.  On return from asa, for real
parameters, this contains the second derivatives of the cost function
with respect to its parameters.  These also can be useful for
determining the value of your fit, e.g., as a \*Qcovariance matrix\*U
for the fitted parameters.
.PP
When the DEFINE_OPTIONS Curvature_0 option is set to TRUE the curvature
calculations are bypassed.  This can be useful for very large spaces.
.NH 3
ALLOC_INT *parameter_dimension
.XS
\*(SN 			ALLOC_INT *parameter_dimension
.XE
.PP
An integer containing the dimensionality of the state space is passed
next.  The arrays x (representing cost_parameters),
parameter_lower_bound, parameter_upper_bound, cost_tangents, and
parameter_int_real (below) are to be of the size *number_parameters.
The array curvature which may be of size the square of
*number_parameters.
.PP
Setting the lower bound equal to the upper bound will remove a parameter
from consideration.  Whenever this occurs, within asa() the effective
dimension defining the size of the search space is reduced by the number
of parameters so removed.
.NH 3
int *parameter_int_real
.XS
\*(SN 			int *parameter_int_real
.XE
.PP
This integer array is passed next.  Each element of this array (each
flag) can be:  REAL_TYPE (-1) (indicating the parameter is a real
value), INTEGER_TYPE (1) (indicating the parameter can take on only
integer values), REAL_NO_REANNEAL (-2), or INTEGER_NO_REANNEAL (2).
The latter two choices signify that no derivatives are to be taken with
respect to these parameters.  (Derivatives can be taken with
INTEGER_TYPE (1) only if OPTIONS\->Include_Integer_Parameters is set to
TRUE.) For example, this can be useful to exclude discontinuous
functions from being reannealed.  Note that the values of the
parameters and their ranges are always passed as doubles in the code,
but their values will be integral for those parameters which are
defined as INTEGER_TYPE or INTEGER_NO_REANNEAL.
.PP
If a system parameter is discrete, but not a simple set of sequential
integers, then it may be necessary to define a transformation within the
cost function in terms of a new parameter which is a set of sequential
integers.  Also note that ASA_RESOLUTION may be used in some such
cases, which overrides the use of parameter_int_real.  Then, this new
parameter, instead of the original discrete parameter, can be passed
between asa\ () and the cost_function ().  The (approximate) range of
the transformed parameter must be reflected in the values assigned to
parameter_lower_bound [] and parameter_upper_bound [], as discussed above.
Of course, this transformation may be supplemented by constraints that can
be enforced using the *cost_flag in the user module, as discussed below.
.NH 3
*cost_flag
.XS
\*(SN 			*cost_flag
.XE
.PP
cost_flag is the address of an integer.  In cost_function (), *cost_flag
should be set to FALSE (0) if the parameters violate a set of user
defined constraints (e.g., as defined by a set of boundary conditions)
or TRUE (1) if the parameters represent a valid state.  If *cost_flag
is returned to asa\ () as FALSE, no acceptance test will be attempted,
and a new set of trial parameters will be generated.
.PP
If another algorithm suggests a way of incorporating constraints into
the cost function, then this modified cost function can be used as well
by ASA, or that algorithm might best be used as a front\-end to ASA.
.PP
If OPTIONS\->User_Tangents [FALSE] has been set to TRUE, then asa\ ()
expects the user to test the value of *valid_state_generated_flag that
enters from asa\ ().  If *cost_flag enters with a value of -1, then
the user is expected to calculate the cost_tangents [] array before
exiting that particular evaluation of the cost function.  An example is
provided with the ASA_TEMPLATE_SAMPLE example.
.PP
When ASA_QUEUE is TRUE, then the value of *cost_flag is tested for FALSE
in previous states in queue and an invalid statement is available in
the printout.
.NH 3
int *exit_code
.XS
\*(SN 			int *exit_code
.XE
.PP
The address of this integer is passed to asa.  On return it contains
the code for the reason asa exited.  When ASA_PRINT is TRUE, the value
is printed out.
.QS
.LP
NORMAL_EXIT = 0.  Given the criteria set largely by the DEFINE_OPTIONS,
the search has run its normal course, e.g., when Limit_Acceptances
or Limit_Generated is reached.
.LP
P_TEMP_TOO_SMALL = 1.  A parameter temperature was too small using the
set criteria.  Often this is an acceptable status code.  You can omit
this test by setting NO_PARAM_TEMP_TEST to TRUE as one of your
Pre\-Compile Options; then values of the parameter temperatures less
than EPS_DOUBLE are set to EPS_DOUBLE.
.LP
C_TEMP_TOO_SMALL = 2.  The cost temperature was too small using the set
criteria.  Often this is an acceptable status code.  You can omit this
test by setting NO_COST_TEMP_TEST to TRUE as one of your Pre\-Compile
Options; then a value of the cost temperature less than EPS_DOUBLE is
set to EPS_DOUBLE.
.LP
COST_REPEATING = 3.  The cost function value repeated a number of times
using the set criteria.  Often this is an acceptable status code.
.LP
TOO_MANY_INVALID_STATES = 4.  Too many repetitive generated states were
invalid using the set criteria.  This is helpful when using *cost_flag,
as discussed above, to include constraints.
.LP
IMMEDIATE_EXIT = 5.  The user has set OPTIONS\->Immediate_Exit to TRUE,
or deleted file asa_exit_anytime when ASA_EXIT_ANYTIME is TRUE.
.LP
INVALID_USER_INPUT = 7.  The user has introduced invalid input.  When
entering asa\ (), a function asa_test_asa_options () checks out many
user\-defined parameters and OPTIONS, and prints out invalid OPTIONS
when ASA_PRINT is set to TRUE.
.LP
INVALID_COST_FUNCTION = 8.  The user has returned a value of the cost
function to asa\ () which is not a valid number, e.g., not between
-MAX_DOUBLE and MAX_DOUBLE.
Or, the user has returned a value of a parameter no longer within its
proper range (excluding cases where the user has set the lower bound
equal to the upper bound to remove a parameter from consideration).
.LP
INVALID_COST_FUNCTION_DERIV = 9.  While calculating numerical cost
derivatives, a value of the cost function was returned which is not a
valid number, e.g., not between -MAX_DOUBLE and MAX_DOUBLE.  Or, while
calculating numerical cost derivatives, a value of a parameter no
longer within its proper range (excluding cases where the user has set
the lower bound equal to the upper bound to remove a parameter from
consideration) was set.  In such cases, review the bounds of parameters
and the OPTIONS used to determine how derivatives are calculated and
used.
.PP
When calculating derivatives, an invalid cost function, i.e., returning
*cost_flag = FALSE from the cost function, will exit asa() with *exit_code
INVALID_COST_FUNCTION_DERIV.  Also, when calculating derivatives, no
extra test is performed to check that parameters are within their lower
and upper bounds (since meshes for derivatives may exceed these bounds).
If this is not desired, then within the cost function, within a test
for USER_OPTIONS->Locate_Cost == 3, a decision may be made whether to
return this *exit_code.
.LP
CALLOC_FAILED = -1.  Calloc memory allocation has failed in asa.c.
This error will call Exit_ASA(), the location will be printed to
stdout, and asa\ () will return  the double -1 to the calling program.
In asa_usr.c, if asa\ () returns this *exit_code a warning will be printed
both to stdout and to USER_OUT.  Note that if a calloc memory
allocation fails in asa_usr.c, this error will call Exit_USER() to print
the location to stdout and then return -2.
.QE
.PP
Note that just relying on such a simple summary given by *exit_status
can be extremely deceptive, especially in highly nonlinear problems.
It is \f2strongly\f1 suggested that the user set ASA_PRINT=TRUE before
any production runs.  An examination of some periodic output of ASA can
be essential to its proper use.
.NH 3
USER_DEFINES *OPTIONS
.XS
\*(SN 			USER_DEFINES *OPTIONS
.XE
.PP
All Program Options are defined in this structure.  Since Program
Options are passed to asa and the cost function, these may be changed
adaptively.
.PP
The Program Options also can be read in from a separate data file,
asa_opt, permitting efficient tuning/debugging of these parameters
without having to recompile the code.  This option has been added to
the asa module.
.KS
.NH 2
double recur_cost_function(
.XS
\*(SN 		double recur_cost_function(
.XE
.nf
.in +10n
double *recur_cost_parameters,
double *recur_parameter_lower_bound,
double *recur_parameter_upper_bound,
double *recur_cost_tangents,
double *recur_cost_curvature,
int *recur_parameter_dimension,
int *recur_parameter_int_real,
int *recur_cost_flag,
int *recur_exit_code,
USER_DEFINES * RECUR_USER_OPTIONS)
.in 0
.fi
.KE
.PP
This procedure is used only if SELF_OPTIMIZE is TRUE, and is
constructed similar to cost_function ().
.NH 2
double user_random_generator(
.XS
\*(SN 		double user_random_generator(
.XE
.in +10
LONG_INT *rand_seed)
.in 0
.PP
A random number generator function must be selected.  It may be as
simple as one of the UNIX\(rg random number generators (e.g. drand48),
or may be user defined, but it should return a real value within [0,1)
and not take any parameters.  A good random number generator, randflt,
and its auxiliary routines, including an alternative RNG, are provided
with the code in the user module.
.PP
The random seed, first defined in the user module, is passed to asa\ (),
where it can be reset.  This can be useful for some parallelization
algorithms.
.PP
Most random number generators should be \*Qwarmed\-up\*U by calling a
set of dummy random numbers.  Here, randflt () does this when it is
first called, or when it is fed a negative random seed (which can be a
useful flag for asa_seed () below).
.PP
randflt () calls resettable_randflt () each time to actually implement
the RNG.  This is to provide the capability of getting the same runs if
the same multiple calls to asa\ () are made, e.g., when using ASA_LIB
set to TRUE.  To enforce this, asa_main () should call resettable_randflt
(rand_seed, 1) at the beginning of each run.
.KS
.NH 2
LONG_INT asa_seed(
.XS
\*(SN 		LONG_INT asa_seed(
.XE
.nf
.in +10
LONG_INT seed)
.in 0
.fi
.KE
.PP
When ASA_LIB is set to TRUE asa_seed () becomes available to set the
initial random seed.  This can be useful for repeated calls to
asa_main () described above.  If an absolute value of seed greater than
0 is given to a call of asa_seed, then seed is used as the initial
random seed; otherwise asa_main () will by default create its own random
seed, and the user need not be concerned with any call to asa_seed ().
An example of use is given when ASA_TEMPLATE_LIB is set to true.
.PP
If the value of seed is less than 0, this signals the default randflt ()
to initialize the array of seeds to be shuffled.  This is especially
useful when using repeated calls to asa_main () when ASA_LIB is TRUE.
.KS
.NH 2
double user_cost_schedule(
.XS
\*(SN 		double user_cost_schedule(
.XE
.nf
.in +10
double test_temperature,
const void *OPTIONS_TMP)
.in 0
.fi
.KE
.PP
If USER_COST_SCHEDULE [FALSE] is set to TRUE, then this function must
define how the new cost temperature is calculated during the acceptance
test.  The default is to return test_temperature.  For example, if you
sense that the search is spending too much time in local minima at some
stage of search, e.g., dependent on information gathered in
USER_OPTIONS, then you might return the square root of
test_temperature, or some other function, to slow down the sharpening
of the cost function acceptance test.
.KS
.NH 2
double recur_user_cost_schedule(
.XS
\*(SN 		double recur_user_cost_schedule(
.XE
.nf
.in +10
double test_temperature,
const void *OPTIONS_TMP)
.in 0
.fi
.KE
.PP
If USER_COST_SCHEDULE [FALSE] and SELF_OPTIMIZE [FALSE] both are set to
TRUE, then this function must define how the new cost temperature is
calculated during the acceptance test.  As discussed above for
user_cost_schedule (), you may modify the default value of
test_temperature returned by this function, e.g., dependent on
information gathered in RECUR_USER_OPTIONS.
.KS
.NH 2
void user_acceptance_test(
.XS
\*(SN 		void user_acceptance_test(
.XE
.nf
.in +10
double *uniform_test,
double current_cost,
double *parameter_lower_bound,
double *parameter_upper_bound,
ALLOC_INT *number_parameters,
const void *OPTIONS_TMP)
.in 0
.fi
.KE
.PP
If USER_ACCEPTANCE_TEST [FALSE] is set to TRUE, then this function must
determine the acceptance test, e.g., as an alternate to the Boltzmann
test.  USER_ACCEPT_ASYMP_EXP [FALSE] is an example of a class of such
modifications.
.KS
.NH 2
void recur_user_acceptance_test(
.XS
\*(SN 		void recur_user_acceptance_test(
.XE
.nf
.in +10
double *uniform_test,
double recur_current_cost,
double *recur_parameter_lower_bound,
double *recur_parameter_upper_bound,
ALLOC_INT *recur_number_parameters,
const void *OPTIONS_TMP)
.in 0
.fi
.KE
.PP
If USER_ACCEPTANCE_TEST [FALSE] and SELF_OPTIMIZE [FALSE] both are set to
TRUE, then this function must determine the acceptance test, e.g., as
an alternate to the Boltzmann test.
.KS
.NH 2
double user_generating_distrib(
.XS
\*(SN 		double user_generating_distrib(
.XE
.nf
.in +10
LONG_INT *seed,
ALLOC_INT *number_parameters,
ALLOC_INT index_v,
double temperature_v,
double init_param_temp_v,
double temp_scale_params_v,
double parameter_v,
double parameter_range_v,
double *last_saved_parameter,
const void *OPTIONS_TMP)
.in 0
.fi
.KE
.PP
If USER_GENERATING_FUNCTION [FALSE] is set to TRUE, then this function
(referred by USER_OPTIONS\->Generating_Distrib in the user module) must
define the probability distribution (or whatever algorithm is required)
to use for generating new states, e.g., as an alternate to the ASA
distribution.
.PP
Even mild modifications to the ASA distribution can be useful, e.g.,
slowing down the annealing schedule by taking a fractional root of the
current temperature.
.PP
The passed array last_saved_parameter [] contains all the last saved
parameters, which are sometimes required for algorithms requiring
decisions based on all current parameters.  This permits the use of the
ASA code for heuristic algorithms that may violate its sampling proof,
but nevertheless are useful to process some complex systems within a
SA framework.
.KS
.NH 2
double recur_user_generating_distrib(
.XS
\*(SN 		double recur_user_generating_distrib(
.XE
.nf
.in +10
LONG_INT *seed,
ALLOC_INT *number_parameters,
ALLOC_INT index_v,
double temperature_v,
double init_param_temp_v,
double temp_scale_params_v,
double parameter_v,
double parameter_range_v,
double *last_saved_parameter,
const void *OPTIONS_TMP)
.in 0
.fi
.KE
.PP
If USER_GENERATING_FUNCTION [FALSE] and SELF_OPTIMIZE [FALSE] both are
set to TRUE, then this function (referred by
RECUR_USER_OPTIONS\->Generating_Distrib in the user module) must define
the probability distribution (or whatever algorithm is required) to use
for generating new states, e.g., as an alternate to the ASA
distribution.
.PP
The passed array last_saved_parameter [] contains all the last saved
parameters, which are sometimes required for algorithms requiring
decisions based on all current parameters.  This permits the use of the
ASA code for heuristic algorithms that may violate its sampling proof,
but nevertheless are useful to process some complex systems within a
SA framework.
.KS
.NH 2
int user_reanneal_cost(
.XS
\*(SN 		int user_reanneal_cost(
.XE
.nf
.in +10
double *cost_best,
double *cost_last,
double *initial_cost_temperature,
const void *OPTIONS_TMP)
.in 0
.fi
.KE
.PP
If USER_REANNEAL_COST [FALSE] is set to TRUE, then this function must
define how the new cost temperature is calculated during reannealing.
.KS
.NH 2
int recur_user_reanneal_cost(
.XS
\*(SN 		int recur_user_reanneal_cost(
.XE
.nf
.in +10
double *cost_best,
double *cost_last,
double *initial_cost_temperature,
const void *OPTIONS_TMP)
.in 0
.fi
.KE
.PP
If USER_REANNEAL_COST [FALSE] and SELF_OPTIMIZE [FALSE] both are set to
TRUE, then this function must define how the new cost temperature is
calculated during reannealing.
.KS
.NH 2
double user_reanneal_params(
.XS
\*(SN 		double user_reanneal_params(
.XE
.nf
.in +10
double current_temp,
double tangent,
double max_tangent,
const void *OPTIONS_TMP)
.in 0
.fi
.KE
.PP
If USER_REANNEAL_PARAMETERS [FALSE] is set to TRUE, then this function
must define how the new temperature is calculated during reannealing.
.KS
.NH 2
double recur_user_reanneal_params(
.XS
\*(SN 		double recur_user_reanneal_params(
.XE
.nf
.in +10
double current_temp,
double tangent,
double max_tangent,
const void *OPTIONS_TMP)
.in 0
.fi
.KE
.PP
If USER_REANNEAL_PARAMETERS [FALSE] and SELF_OPTIMIZE [FALSE] both are
set to TRUE, then this function must define how the new parameter
temperatures are calculated during reannealing.
.KS
.NH 2
final_cost = asa(
.XS
\*(SN 		final_cost = asa(
.XE
.nf
.in +10n
cost_function,
randflt,
rand_seed,
cost_parameters,
parameter_lower_bound,
parameter_upper_bound,
cost_tangents,
cost_curvature,
parameter_dimension,
parameter_int_real,
cost_flag,
exit_code,
USER_OPTIONS)
.in 0
.fi
.KE
.PP
This is the form of the call to asa from asa_usr.c.  A double is returned
to the calling program as whatever it is named by the user, e.g.,
final_cost.  It will be the minimum cost value found by asa.
.KS
.NH 2
double asa(
.XS
\*(SN 		double asa(
.XE
.nf
.in +10n
double (*user_cost_function) (
.in +5n
double *, double *, double *, double *, double *,
ALLOC_INT *, int *, int *, int *, USER_DEFINES *),
.in -5n
double (*user_random_generator) (LONG_INT *),
LONG_INT *rand_seed,
double *parameter_initial_final,
double *parameter_minimum,
double *parameter_maximum,
double *tangents,
double *curvature,
ALLOC_INT *number_parameters,
int *parameter_type,
int *valid_state_generated_flag,
int *exit_status,
USER_DEFINES * OPTIONS)
.in 0
.fi
.KE
.PP
This is how asa is defined in the ASA module, contained in asa.c and
asa_usr_asa.h.  All but the user_cost_function, user_random_generator, and
parameter_initial_final parameters have been described above as they
also are passed by user_cost_function ().
.NH 3
double (*user_cost_function) ()
.XS
\*(SN 			double (*user_cost_function) ()
.XE
.PP
The parameter (*user_cost_function*) () is a pointer to the cost
function that you defined in your user module.
.NH 3
double (*user_random_generator) ()
.XS
\*(SN 			double (*user_random_generator) ()
.XE
.PP
A pointer to the random number generator function, defined in the
user module, must be passed next.
.NH 3
LONG_INT *rand_seed
.XS
\*(SN 			LONG_INT *rand_seed
.XE
.PP
A pointer to the random seed, defined in the user module, must be
passed next.
.NH 3
double *parameter_initial_final
.XS
\*(SN 			double *parameter_initial_final
.XE
.PP
An array of doubles is passed (passed as cost_parameters in the user
module).  Initially, this array holds the set of starting parameters
which should satisfy any constraints or boundary conditions.  Upon
return from the asa procedure, the array will contain the best set of
parameters found by asa to minimize the user's cost function.
Experience shows that any guesses within the acceptable ranges should
suffice, since initially the system is at a high annealing temperature
and ASA samples the breadth of the ranges.  The default is to have asa
generate a set of initial parameters satisfying the user's
constraints.  This can be overridden using
User_Initial_Parameters=TRUE, to have the user's initial guess be the
first generated set of parameters.
.NH 2
void print_time(char *message, FILE * ptr_out)
.XS
\*(SN 		void print_time(char *message, FILE * ptr_out)
.XE
.PP
As a convenience, this subroutine and its auxiliary routine
aux_print_time are provided in asa.c to keep track of the time spent
during optimization.  Templates in the code are provided to use these
routines to print to output from both the asa and user modules.  These
routines can give some compilation problems on some platforms, and may
be bypassed using one of the DEFINE_OPTIONS.  It takes as its
parameters a string which will be printed and the pointer to file to where
the printout is directed.  An example is given in user_cost_function to
illustrate how print_time may be called periodically every set number
of calls by using PRINT_FREQUENCY and RECUR_PRINT_FREQUENCY in asa_usr.c.
See the ASA\-NOTES file for changes in these routines that may be required
on some particular systems.
.NH 2
void sample(FILE * ptr_out, FILE * ptr_asa)
.XS
\*(SN 		void sample(FILE * ptr_out, FILE * ptr_asa)
.XE
.PP
When ASA_TEMPLATE_SAMPLE is set to TRUE, using data collected in the
ASA_OUT file, this routine illustrates how to extract the data stored
in the ASA_OUT file and print it to the user module.
.NH 2
void adaptive_options(USER_DEFINES * USER_OPTIONS)
.XS
\*(SN 		void adaptive_options(USER_DEFINES * USER_OPTIONS)
.XE
.PP
When ADAPTIVE_OPTIONS is set to TRUE, it is possible to change relevant
OPTIONS in the USER_DEFINES struct in asa_usr_asa.h during run time,
by including an asa_adaptive_options file.  This can be very useful to
efficiently determine how to tune long runs.
.PP
The function call to adaptive_options(USER_OPTIONS) should be placed at
the top of your cost function.  Some examples of the format of lines in
the comma-delimited asa_adaptive_options file are given just above the
adaptive_options function in asa_usr.c.
.NH 1
Bug Reports and Help With ASA
.XS
\*(SN 	Bug Reports and Help With ASA
.XE
.LP
Please read this ASA\-README.[] file and the ASA\-NOTES file before seeking
help or reporting bugs.
.PP
I make every reasonable effort to maintain only current versions of the
asa module, to permit the code to compile without \*Qerror,\*U not
necessarily without compiler \*Qwarnings.\*U The user module is offered
only as a guide to accessing the asa module.  The ASA\-NOTES file will
contain updates for some standard machines.  I welcome your bug reports
and constructive critiques regarding this code.
.PP
Without seeing any specific output from your system, of course I can't
say anything specific.  While I cannot promise that I can spend the
time to join your quest to the very end to insure you get the global
optimal point for your system, I can state that I will at least get
back to you after seeing some print out.  Many times, it is useful to
add ASA_PRINT_MORE=TRUE to your compile DEFINE_OPTIONS to get more
info, and enclose relevant portions your ASA_OUT file with your query.
(See the section Use of Documentation for Tuning above.)
.PP
My policy, as stated in the ASA\-NOTES file, is to keep all my help as well
as my commercial work with ASA on a confidential basis.  I do not
divulge any names of people or information about (legal!) projects
unless I am given specific permission to do so or unless the work is
published.  This policy promotes feedback on ASA which benefits all
users as well as those individuals seeking help.
.PP
\*QFlames\*U will be rapidly quenched.
.bp
.if t \{\
.EQ
delim off
.EN
.\}
.\" 		References
.[
$LIST$
.]
.IP [*]
Code and reprints can be retrieved via WWW from http://www.ingber.com/ .
.if t .bp
.pn 2
.if n .bp
.af PN ii
.ds CF - \\n(PN -
.if t .SH
.if t .ce
.if t \ 
.if t .LP
.if t .bp
.SH
.ce
Table of Contents
.LP
.PX no
.LP
