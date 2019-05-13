" vim:fdm=marker
" File: orca.vim
" Author: Toshiki Murayama <murayama.toshiki@gmail.com>
" Last Change: 13-May-2019.
" WebPage: https://github.com/mrymtsk/orca-vim
" Description: Vim syntax file for ORCA
" SeeAlso: https://orcaforum.kofo.mpg.de/

setlocal iskeyword+=-,/,%,+,*,(,)
syn case ignore

" Input Block {{{
syn region orcaInputBlock matchgroup=orcaInputBlockMarker start=/^% *\(autoci\|basis\|casscf\|cipsi\|cis\|cim\|coords\|cpcm\|elprop\|eprnmr\|freq\|geom\|irc\|loc\|md\|mdci\|method\|mp2\|mrci\|mrcc\|numgrad\|nbo\|output\|pal\|paras\|rel\|plots\|rocis\|rr\|scf\)/ end=/^end$/ contains=orcaLineComment,orcaEmbeddedComment,orcaInputBlockVariable,orcaBlockInsideInputBlock transparent

syn keyword orcaInputBlockVariable contained
  \ maxiter
  \ diismaxeq
  \ directresetfreq
  \ nprocs
  \ guessmode
  \ nlb
  \ inithess
  \ hess_filename
  \ scale_init_displ
  \ nbokeylist
  \ guess
  \ moinp
  \ optimizehydrogens
  \ density
syn match orcaInputBlockVariable /print *\[[^\[\]]*\]/ contained

hi def link orcaInputBlockMarker Function
hi def link orcaInputBlockVariable Identifier

" Block Inside Input Block {{{
syn region orcaBlockInsideInputBlock matchgroup=orcaInputBlockMarker start=/^ *\(constraints\|scan\)/ end=/^ *end$/ contained transparent

" }}}
" }}}

" Global Variables {{{
syn match orcaGlobalVariable /^%\(moinp\|maxcore\)/

hi def link orcaGlobalVariable Identifier
" }}}

" Coordinate block {{{
syn region orcaCoordBlock matchgroup=orcaCoordBlockMarker start=/^\* *\(xyz\|int\|internal\|gzmt\) / end=/^\*$/ transparent contains=orcaCoordBlockStart,orcaCoordBlockEnd,ocraCoordBlockElement
syn keyword ocraCoordBlockElement H He Li Be B C N O F Ne Na Mg Al Si P S Cl Ar K Ca Sc Ti V Cr Mn Fe Co Ni Cu Zn Ga Ge As Se Br Kr Rb Sr Y Zr Nb Mo Tc Ru Rh Pd Ag Cd In Sn Sb Te I Xe Cs Ba La Ce Pr Nd Pm Sm Eu Gd Tb Dy Ho Er Tm Yb Lu Hf Ta W Re Os Ir Pt Au Hg Tl Pb Bi Po At Rn Fr Ra Ac Th Pa U Np Pu Am Cm Bk Cf Es Fm Md No Lr Rf Db Sg Bh Hs Mt Ds Rg Cn Nh Fl Mc Lv Ts Og contained

hi def link orcaCoordBlockMarker Function
hi def link ocraCoordBlockElement String
" }}}

" Coordinate external file {{{
syn match orcaCoordExteranlFile /^\* \(xyz\|gzmt\)file/

hi def link orcaCoordExteranlFile Function
" }}}

" Keyword Line {{{
syn region orcaKeywordLine matchgroup=orcaKeywordLineMarker start=/^!/ end=/$/ transparent contains=orcaKeywordLineKeyword
hi def link orcaKeywordLineMarker Function

syn keyword orcaKeywordLineKeyword contained
  \ b97-3c
  \ opt
  \ optts
  \ numfreq
  \ def2/j
  \ slowconv
  \ wb97x
  \ nl
  \ def2-qzvpp
  \ def2/j
  \ rijcosx
  \ sp
  \ grid5
  \ finalgrid6
  \ uks
  \ moread
  \ nolshift
  \ nodamp
  \ irc
  \ rhf
  \ 6-311++g**
  \ nbo
  \ normalprint
  \ pwpb95
  \ d4
  \ def2-tzvp
  \ tightscf
  \ def2-tzvp/c
  \ numgrad
  \ def2-tzvpp
  \ def2-tzvpp/c
  \ pbeh-3c
  \ freq
  \ pbe
  \ 6-31g**
  \ autoaux
  \ xyzfile
  \ dlpno-ccsd(t)
  \ tightpno

hi def link orcaKeywordLineKeyword Identifier
" }}}

" Comments {{{
syn match orcaLineComment /#[^#]*$/
syn match orcaEmbeddedComment /#[^#]*#/

hi def link orcaComment Comment
hi def link orcaLineComment orcaComment
hi def link orcaEmbeddedComment orcaComment
" }}}
