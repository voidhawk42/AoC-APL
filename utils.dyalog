pget←{
  (year pnum)←⍕¨⍵
  path←'C:\aocapl\',year,'\in\',pnum,'.txt' ⍝ Replace with your path
  ⎕NEXISTS path:⊃⎕NGET path 1
  cookie←⊃⊃⎕NGET'c:\aoc2020apl\cookie.txt' 1 ⍝ Place cookie in this file
  url←'https://adventofcode.com/',year,'/day/',pnum,'/input'
  resp←HttpCommand.Get url''('cookie'cookie)
  ⊃⎕NGET path 1⊣resp.Data ⎕NPUT path 1
}
ints←{⍎¨⍵(∊⊆⊣)⎕D}
sints←{⍎¨⍵(∊⊆⊣)⎕D,'-'}
chars←{⍵(∊⊆⊣)⎕A,⎕C⎕A}
spaces←{' '(≠⊆⊢)⍵}
dirs←(⊢⍪-)∘.=⍨⍳2
blanks←⊢⊆⍨0≠≢¨
g←⍬
mkgraph←{ns←⍸'#'≠⍵ ⋄ g⊢←{(⎕IO+≢ns)~⍨ns⍳cs←↓dirs+⍤1⊢⍵}¨ns}
