include <config.scad>;

module lowerlinkage(){

	difference(){

		union(){

			//bearing holes wall
			translate([0,0,0])cylinder (r=nutapothem/cos(30)/2, h = nutapothem);
			translate([lowerlinkage,0,0])cylinder (r=nutapothem/cos(30)/2, h =nutapothem);

			//length
			translate([0,-nutapothem/cos(30)/2,0])cube([lowerlinkage,nutapothem/cos(30),nutapothem]);

		}

		//bearing holes
		translate([0,0,-1])cylinder (r=screwdia/2, h = nutapothem+2);
		translate([lowerlinkage,0,-1])cylinder (r=screwdia/2, h = nutapothem+2);

		//tension holes
		translate([lowerlinkage*(1/8),0,-1])cylinder (r=screwdia/2, h = nutapothem+2);
		translate([lowerlinkage*(7/8),0,-1])cylinder (r=screwdia/2, h = nutapothem+2);

	
	}

}

lowerlinkage();
