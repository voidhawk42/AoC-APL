p←↑{2(↑,∘⊂↓)⍵(∊⊆⊣)⎕D,819⌶⎕A}¨⊃⎕nget'in\7.txt'1
⊃r←(⊣/p)~⊃,/⊢/p ⍝ part 1
ws←⍎¨p[;1] ⋄ rws d←2⍴⊂0⍨¨g
0{0=≢⊃⍵⌷g:⍵⌷ws⊣d[⍵]←⍺⊣rws[⍵]←⍵⌷ws ⋄ nws←(⍺+1)∇¨⊃⍵⌷g ⋄ rws[⍵]←(⍵⌷ws)++/nws ⋄ d[⍵]←⍺ ⋄ rws[⍵]}ids⍳r
diff←-/⊢/count←{⍵[⍒⍵;]},⍨∘≢⌸nis←⊃(⊃⍒d⌷⍨⊂⍸disc)⌷nwts/⍨disc←(1<≢∘∪)¨nwts←{rws⌷⍨⊂⍵}¨g
diff+ws⌷⍨(⊃g⌷⍨nm⌷⍸disc)⌷⍨nis⍳⊢/⊢/count ⍝ part 2
