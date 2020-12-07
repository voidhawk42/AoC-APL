p←↑{(⊂'contain')(≢¨⊆⊢)' '(≠⊆⊢)⍵}¨⊃⎕NGET'in\7.txt'1
ids←(∊2↑⊢)¨⊣/p
cs←{⍎'no'⎕R'0'⊢⍵}¨¨⊣/¨pt←{↑⍵⊆⍨{~∨/'bag'⍷⍵}¨⍵}¨⊢/p
ds←{(1+≢ids)~⍨ids⍳,⌿1↓⍉⍵}¨pt ⋄ st←ids⍳⊂'shinygold'
¯1++/{⍵=st:1 ⋄ 0=≢n←⍵⊃ds:0 ⋄ ∨/∇¨n}¨⍳≢ids ⍝ part 1
¯1+{0=≢n←⍵⊃ds:1 ⋄ 1++/(⍵⊃cs)×∇¨n}st ⍝ part 2
