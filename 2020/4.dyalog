p←{⊃⍪/{↑':'(≠⊆⊢)¨' '(≠⊆⊢)⍵}¨⍵}¨(⊂'')(≢¨⊆⊢)⊃⎕NGET'in\4.txt'1
+/a←{∧/((⊂'cid')~⍨∪⊃,/⊣/¨p)∊⊣/⍵}¨p ⍝ part 1
f←⍳∘≢≡⍋
valid←{
     0::0
     t v←⍵
     t≡'pid':(∧/v∊⎕D)∧9=≢v
     t≡'byr':f 1920(⍎v)2002
     t≡'iyr':f 2010(⍎v)2020
     t≡'eyr':f 2020(⍎v)2030
     (t≡'hgt')∧'cm'≡¯2↑v:f 150(⍎¯2↓v)193
     (t≡'hgt')∧'in'≡¯2↑v:f 59(⍎¯2↓v)76
     t≡'hcl':('#'=⊃v)∧(7=≢v)∧∧/(1↓v)∊⎕D,6↑⎕C⎕A
     t≡'ecl':'amb' 'blu' 'brn' 'gry' 'grn' 'hzl' 'oth'∊⍨⊂v
     t≡'cid':1
     0
}
+/a∧(∧/valid⍤1)¨pt ⍝ part 2
