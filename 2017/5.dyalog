p←⍎¨⊃⎕nget'in\5.txt'1
c←0 ⋄ 1{(⍺>≢⍵)∨0≥⍺:c ⋄ c+←1 ⋄ (⍺+⍺⌷⍵)∇1∘+@⍺⊢⍵}p ⍝ part 1
c←0 ⋄ 1{(⍺>≢⍵)∨0≥⍺:c ⋄ c+←1 ⋄ ni←⍺⌷⍵ ⋄ 3≤⍺⌷⍵:(⍺+ni)∇ ¯1∘+@⍺⊢⍵ ⋄ (⍺+ni)∇ 1∘+@⍺⊢⍵}p