p←⍎¨{⍵(∊⊆⊣)⎕D}⊃⊃⎕NGET'in\6.txt' 1 ⋄ acc←⍬
f←{
    acc∊⍨⊂⍵:¯1+≢acc⊣acc,←⊂⍵
    acc,←⊂⍵
    mv←⍵⌷⍨mi←⊃⍤⍒⍵
    nis nvs←↓⍉,∘≢⌸(≢⍵)|1+mi+⍳mv
    ∇nvs+@nis⊢0@mi⊢⍵
}
f p ⍝ part 1
(¯1+≢-⊢⍳¯1∘↑)acc ⍝ part 2
