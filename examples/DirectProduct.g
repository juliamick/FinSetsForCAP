#! @System DirectProduct

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
P := DirectProduct( S, T );
#! <An object in FinSets>
Length( P );
#! 6
Display( P );
#! [ [ 1, "a" ], [ 1, "b" ], [ 2, "a" ], [ 2, "b" ], [ 3, "a" ], [ 3, "b" ] ]
#! @EndExample
