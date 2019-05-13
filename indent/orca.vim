" vim:fdm=marker
" File: orca.vim
" Author: Toshiki Murayama <murayama.toshiki@gmail.com>
" Last Change: 13-May-2019.
" WebPage: https://github.com/mrymtsk/orca-vim
" Description: Vim indent file for ORCA
" SeeAlso: https://orcaforum.kofo.mpg.de/

if exists("b:did_indent")
  finish
endif

setlocal autoindent
setlocal indentexpr=GetOrcaIndent()
setlocal indentkeys=o,O,!^F,0=end

function! GetOrcaIndent()
    let plnum = prevnonblank(v:lnum - 1)
    if getline(plnum) =~ '^% *\(autoci\|basis\|casscf\|cipsi\|cis\|cim\|coords\|cpcm\|elprop\|eprnmr\|freq\|geom\|irc\|loc\|md\|mdci\|method\|mp2\|mrci\|mrcc\|numgrad\|nbo\|output\|pal\|paras\|rel\|plots\|rocis\|rr\|scf\)'
        return indent(plnum) + &l:shiftwidth
    elseif getline(plnum) =~ '\(constraints\|scan\)'
        return indent(plnum) + &l:shiftwidth
    elseif getline(v:lnum) =~# 'end'
        return indent(plnum) - &l:shiftwidth
    else
        return indent(plnum)
    endif
endfunction

let  b:did_indent = 1
