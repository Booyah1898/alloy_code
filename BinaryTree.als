module BinaryTree
//Node = (Node0 , Node1 , Node2..)
 sig Node{edge: set Node}
one sig Root extends Node{}
//Predicate
pred showBinaryTree{
//Every node has exactly 0 or 2 children.
all n:Node| #(n.edge)=2 or #(n.edge)=0

//Every node has exactly one parent
 all n:Node-Root | one edge.n

//No cycles and no self loop
no n:Node | n in n.^edge
}
//Command to execute the predicates
run showBinaryTree for 10//Scope//Bound 
