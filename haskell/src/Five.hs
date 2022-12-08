module Five where

foo = 1

{-
    [D]
[N] [C]
[Z] [M] [P]
 1   2   3

[D]
[N] [C]
[Z] [M] [P]
 1   2   3

move 1 from 2 to 1
move 3 from 1 to 3
move 2 from 2 to 1
move 1 from 1 to 2

["   [D]   ","[N] [C]   ","[Z] [M] [P]"," 1   2   3","","move 1 from 2 to 1","move 3 from 1 to 3","move 2 from 2 to 1","move 1 from 1 to 2"]
[["[D]"],["[N]","[C]"],["[Z]","[M]","[P]"],["1","2","3"],[],["move","1","from","2","to","1"],["move","3","from","1","to","3"],["move","2","from","2","to","1"],["move","1","from","1","to","2"]]



-}

{-

- parse input stacks
- place stacks in stacks starting from last in stack
- parse directions
- move n from x to y
- pop n from x push onto y one at a time
-}

{--
    [D]
[N] [C]
[Z] [M] [P]

.D.
NC.
ZMP


--}