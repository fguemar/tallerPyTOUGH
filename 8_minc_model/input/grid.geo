// -----------------------------------------------------------------------------
//
//  FJGM mesh 23-11-2021
//
//  Create a volume using OpenCASCADE
//
// -----------------------------------------------------------------------------

lc=1.E3;

// Corners of the area
Point(1) = {0., 0.,  0., lc};
Point(2) = {500., 500.,  0., lc};
Point(3) = {0.,500., 0., lc};

// Definition of lines
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 1};

// Definition of surfaces
Curve Loop(1) = {1, 2, 3};
Plane Surface(7) = {1};

Transfinite Curve{1} = 12;
Transfinite Curve{2,3} = 7;

Transfinite Surface{7} = {};

//Mesh.Algorithm=1;
//Mesh.Hexahedra;
Mesh.Voronoi=1;
