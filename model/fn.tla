--------------------------------- MODULE fn ---------------------------------

EXTENDS Naturals, TLC

----
(* Debugging helpers *)
PrintVal(id, exp) == PrintT(<<id, exp>>)

----

VARIABLES slots

----

NumSlots == 2

Caps == {"Null", "Mem"}
Cores == {0,1}
NoOwner == CHOOSE v : v \notin Cores

Slots == [cap: Caps, owner: (Cores \union {NoOwner}), location: Cores, locked: BOOLEAN]

IsCopy(a, b) ==
    a = b
    
SlotWithNull(slot) ==
    [ slot EXCEPT !.cap = "Null", !.owner = NoOwner, !.locked = FALSE ]

Init ==
    slots = [s \in 0..(NumSlots-1) |->
                IF s = 0
                THEN [cap |-> "Mem",
                      owner |-> 0,
                      location |-> s % 2,
                      locked |-> TRUE]
                ELSE [cap |-> "Null",
                      owner |-> NoOwner,
                      location |-> s % 2,
                      locked |-> FALSE]]
                      
Next ==  
    /\ PrintVal("slots:", slots)
    /\ slots' = [ s \in DOMAIN slots |->
                  CASE s = 0
                       -> [ slots[s] EXCEPT !.locked = FALSE ]
                    [] IsCopy(slots[s], slots[0])
                       -> SlotWithNull(slots[s])
                    [] OTHER
                       -> slots[s]]
    /\ PrintVal("slots'", slots')

  

=============================================================================
\* Modification History
\* Last modified Thu May 18 10:42:22 CEST 2017 by gerbesim
\* Created Thu May 18 10:23:43 CEST 2017 by gerbesim
