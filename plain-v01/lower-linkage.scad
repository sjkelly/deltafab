include <config.scad>;

module lowerlinkage(){

	difference(){

		union(){

			//bearing holes wall
			translate([0,0,0])cylinder (r=nutdia/2, h = nutdia*cos(30) );
			translate([lowerlinkage,0,0])cylinder (r=nutdia/2, h =nutdia*cos(30) );

			//length
			translate([0,-nutdia/2,0])cube([lowerlinkage,nutdia,nutdia*cos(30) ]);

		}

		//bearing holes
		translate([0,0,-1])cylinder (r=screwdia/2, h = nutdia*cos(30)  +2);
		translate([lowerlinkage,0,-1])cylinder (r=screwdia/2, h = nutdia*cos(30)  +2);

		//tension holes
		translate([lowerlinkage*(1/8),0,-1])cylinder (r=screwdia/2, h = nutdia*cos(30) +2);
		translate([lowerlinkage*(7/8),0,-1])cylinder (r=screwdia/2, h = nutdia*cos(30)  +2);

	
	}

}

lowerlinkage();
