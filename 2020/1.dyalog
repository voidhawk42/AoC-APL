p←⍎¨⊃⎕nget'in\1.txt'1
f←{×/p[⊃⍸2020=p∘.+⍣⍵⊢p]} ⋄ f¨⍳2
