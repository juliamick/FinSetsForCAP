#! @System SkeletalCoequalizer

LoadPackage( "FinSets" );

#! @Example
s := FinSet( 5 );
#! <An object in SkeletalFinSets>
t := FinSet( 4 );
#! <An object in SkeletalFinSets>
f := MapOfFinSets( s, [ 3, 4, 4, 2, 4 ], t );
#! <A morphism in SkeletalFinSets>
g := MapOfFinSets( s, [ 3, 3, 4, 2, 4 ], t );
#! <A morphism in SkeletalFinSets>
D := [ f, g ];
#! [ <A morphism in SkeletalFinSets>, <A morphism in SkeletalFinSets> ]
C := Coequalizer( D );
#! <An object in SkeletalFinSets>
Length( C );
#! 3
pi := ProjectionOntoCoequalizer(D);
#! <A morphism in SkeletalFinSets>
Display( pi );
#! [ 4, [ 1, 2, 3, 3 ], 3 ]
tau := MapOfFinSets( t, [2, 1, 2, 2], FinSet( 2 ) );
#! <A morphism in SkeletalFinSets>
phi := UniversalMorphismFromCoequalizer( D, tau );
#! <A morphism in SkeletalFinSets>
Display( phi );
#! [ 3, [ 2, 1, 2 ], 2 ]
PreCompose( pi, phi ) = tau;
#! true


s := FinSet( 5 );
#! <An object in SkeletalFinSets>
t := FinSet( 4 );
#! <An object in SkeletalFinSets>
f := MapOfFinSets( s, [ 2, 3, 3, 2, 4 ], t );
#! <A morphism in SkeletalFinSets>
g := MapOfFinSets( s, [ 2, 3, 2, 2, 4 ], t );
#! <A morphism in SkeletalFinSets>
D := [ f, g ];
#! [ <A morphism in SkeletalFinSets>, <A morphism in SkeletalFinSets> ]
C := Coequalizer( D );
#! <An object in SkeletalFinSets>
Length( C );
#! 3
pi := ProjectionOntoCoequalizer( D );
#! <A morphism in SkeletalFinSets>
Display( pi );
#! [ 4, [ 1, 2, 2, 3 ], 3 ]
PreCompose( f, pi ) = PreCompose( g, pi );
#! true
tau := MapOfFinSets( t, [1, 2, 2, 1 ], FinSet( 2 ) );
#! <A morphism in SkeletalFinSets>
phi := UniversalMorphismFromCoequalizer( D, tau );
#! <A morphism in SkeletalFinSets>
Display( phi );
#! [ 3, [ 1, 2, 1 ], 2 ]
PreCompose( pi, phi ) = tau;
#! true


N := FinSet( 2 );
#! <An object in SkeletalFinSets>
M := FinSet( 3 );
#! <An object in SkeletalFinSets>
f := MapOfFinSets( N, [ 1, 2 ], M );
#! <A morphism in SkeletalFinSets>
g := MapOfFinSets( N, [ 2, 3 ], M );
#! <A morphism in SkeletalFinSets>
C := Coequalizer( f, g );
#! <An object in SkeletalFinSets>
AsList( C );
#! [ 1 ]
pi := ProjectionOntoCoequalizer( [ f,g ] );
#! <A morphism in SkeletalFinSets>
#! @EndExample
