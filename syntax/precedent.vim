" Vim syntax file
" Language:	Precedent
" Filenames: *.pre
" OriginalAuthor: Kyle Mitchell <kyle@blackacrelabs.org>
" Version: 0.0.1

if exists("b:current_syntax")
  finish
endif

syntax clear

syntax keyword precedentCitations supra

syntax region precedentIndentedPar start='/^  [^\s]/' end='/\n\n/'

syntax match precedentStatutes '\d\+ U\. S\. C\. \d+'

syn region precedentHeading start='^#\+' end='\n'
hi link precedentHeading Special

syn match precedentHeading '^\* \* \*'
syn match precedentHeading '^    \* \* \*'
hi link precedentHeading Special

syn match precedentNonBreakingSpace ' '
hi link precedentNonBreakingSpace Underlined

syn region precedentItalic start='\\\\' end='\\\\'
hi Italic term=underline, cterm=underline, gui=underline
hi link precedentItalic Italic

syn match precedentPageBreak '@@\d\+@@'
hi link precedentPageBreak Todo

syn match precedentReference '\[\[[0-9†‡*]\+\]\]'
hi link precedentReference Type

syn region precedentFootnoteStart start='^\^[0-9*†‡]\+ ' end='\n\n'
hi link precedentFootnoteStart Type

syn region precedentFootnoteContinue start='^\^ \+' end='\n\n'
hi link precedentFootnoteContinue Type

syn region precedentCitation start='{{' end='}}'
hi link precedentCitation Special

syn region precedentSmallCaps start='<<' end='>>'
hi link precedentSmallCaps PreProc

syn match precedentComment "^%.\+\n"
hi link precedentComment Comment

syn match precedentTerminalSpace "\s\+$"
hi link precedentTerminalSpace Error

syn match precedentBadIndent "^ [^[:space:]]"
hi link precedentBadIndent Error

syntax match precedentMeta '^[A-Z]\w\+: .\+\n'
hi link precedentMeta PreProc

syn match precedentFootnoteMarker '^\^\d\+'
hi link precedentFootnoteMarker Statement

hi link precedentKeywords Keyword
hi link precedentReporters Keyword
hi link precedentStatutes Keyword
hi link precedentCitations Keyword

let b:current_syntax = "precedent"

" vim:set sw=2:
