p←⍎¨⊃⊃⎕nget'in\1.txt'1
+/p/⍨=⌿1⌽@1↑2⍴⊂p ⍝ part 1
+/(+⌿pt)/⍨=⌿pt←p⍴⍨2,2÷⍨≢p ⍝ part 2
