#! @System Coproduct

LoadPackage( "FinSets" );

#! @Example
a := Immutable( "a" );;
b := Immutable( "b" );;
S := FinSet( [ 1, 2, 3 ] );
#! <An object in FinSets>
Length( S );
#! 3
T := FinSet( [ a, b ] );
#! <An object in FinSets>
Length( T );
#! 2
C := Coproduct( T, S );
#! <An object in FinSets>
Length( C );
#! 5
Display( C );
#! [ [ 1, "a" ], [ 1, "b" ], [ 2, 1 ], [ 2, 2 ], [ 2, 3 ] ]
M := FinSet( [ 1, 2, 3, 4, 5, 6, 7 ] );
#! <An object in FinSets>
N := FinSet( [ 1, 2, 3 ] );
#! <An object in FinSets>
P := FinSet( [ 1, 2, 3, 4 ] );
#! <An object in FinSets>
C := Coproduct( M, N, P );
#! <An object in FinSets>
AsList( C );
#! [ [ 1, 1 ], [ 1, 2 ], [ 1, 3 ], [ 1, 4 ], [ 1, 5 ], [ 1, 6 ], 
#!   [ 1, 7 ], [ 2, 1 ], [ 2, 2 ], [ 2, 3 ], [ 3, 1 ], [ 3, 2 ], 
#!   [ 3, 3 ], [ 3, 4 ] ]
iota1 := InjectionOfCofactorOfCoproduct( [ M, N, P ], 1 );
#! <A morphism in FinSets>
IsWellDefined( iota1 );
#! true
AsList( iota1 );
#! [ [ 1, [ 1, 1 ] ], [ 2, [ 1, 2 ] ], [ 3, [ 1, 3 ] ], [ 4, [ 1, 4 ] ], 
#!   [ 5, [ 1, 5 ] ], [ 6, [ 1, 6 ] ], [ 7, [ 1, 7 ] ] ]
iota3 := InjectionOfCofactorOfCoproduct( [ M, N, P ], 3 );
#! <A morphism in FinSets>
AsList( iota3 );
#! [ [ 1, [ 3, 1 ] ], [ 2, [ 3, 2 ] ], [ 3, [ 3, 3 ] ], [ 4, [ 3, 4 ] ] ]
#! @EndExample
