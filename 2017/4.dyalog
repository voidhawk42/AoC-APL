p←' '(≠⊆⊢)¨⊃⎕nget'in\4.txt'1
f←≢∘∪=≢ ⋄ +/f¨p ⍝ part 1
+/{f{⍵[⍋⍵;]}¨,∘≢⌸¨⍵}¨p ⍝ part 2
