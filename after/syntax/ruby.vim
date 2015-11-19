if exists('g:no_vim_conceal') || !has('conceal') || &enc != 'utf-8'
  finish
endif

" comparators
syntax match concealedOperator "<=" conceal cchar=≤
syntax match concealedOperator ">=" conceal cchar=≥
syntax match concealedOperator "!=" conceal cchar=≢

" math related
syntax match concealedOperator " / " conceal cchar=÷
syntax match concealedOperator " \* " conceal cchar=×
syntax match concealedOperator "\<\%(math\.\)\?sqrt\>" conceal cchar=√
syntax match concealedOperator "\( \|\)\*\*\( \|\)2\>" conceal cchar=²
syntax match concealedOperator "\( \|\)\*\*\( \|\)3\>" conceal cchar=³
syntax match pyKeyword "\<\%(math\.\)\?pi\>" conceal cchar=π

" keywords
syntax keyword concealedOperator sum conceal cchar=∑
syntax keyword pyStatement lambda conceal cchar=λ

hi link concealedOperator Operator
hi link pyStatement Statement
hi link pyKeyword Keyword
hi! link Conceal Operator

setlocal conceallevel=1
