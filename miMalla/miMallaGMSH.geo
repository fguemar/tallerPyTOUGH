// -----------------------------------------------------------------------------
//
//  FJGM mesh 23-11-2021
//
//  Create a volume using OpenCASCADE
//
// -----------------------------------------------------------------------------

lc=1.E3;

// Corners of the area
Point(1) = {0., 1000.,  0., lc};
Point(2) = {2000., 0.,  0., lc};
Point(3) = {10000.0,0., 0., lc};
Point(4) = {12000.,1000., 0., lc};
Point(5) = {12000.,15000.,0., lc};
Point(6) = {10000.,16000.,0., lc};
Point(7) = {2000.,16000., 0., lc};
Point(8) = {0.,15000.,0., lc};

// Definition of lines
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 5};
Line(5) = {5, 6};
Line(6) = {6, 7};
Line(7) = {7, 8};
Line(8) = {8, 1};

// Definition of surfaces
Curve Loop(1) = {1, 2, 3, 4, 5, 6, 7, 8};
Plane Surface(7) = {1};



//Mesh.Algorithm=1;
//Mesh.Hexahedra;
Mesh.Voronoi=1;
