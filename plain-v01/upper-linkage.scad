include <config.scad>;

module upperlinkage(){

	difference(){

		union(){

			//shaft wall
			translate([0,0,0])cylinder (r=shaftdia+nutheight, h = nutdia);

			//end wall
			translate([upperlinkage,0,0])cylinder (r=nutdia, h = nutdia);

			//length
			translate([0,-nutdia,0])cube([upperlinkage,nutdia*2,nutdia]);

		}

		//motor shaft hole
		translate([0,0,-1])cylinder (r=shaftdia/2, h = nutdia +2);

		//bearing hole
		translate([upperlinkage,0,-1])cylinder (r=screwdia/2, h = nutdia +2);

		//tensioner hole
		translate([upperlinkage*(7/8),0,-1])cylinder (r=screwdia/2, h = nutdia +2);

		//motor set screw and nut
		translate([0,0,nutdia/2])rotate([0,-90,0])cylinder(r=screwdia/2, h = shaftdia+nutheight);
		translate([-shaftdia/2,0,nutdia/2])rotate([0,-90,0])rotate([0,0,30])cylinder(r = nutdia/2, h = nutheight, $fn = 6);//nut cavity
		translate([-shaftdia/2,0,nutdia])rotate([0,-90,0])rotate([0,0,30])cylinder(r = nutdia/2, h = nutheight, $fn = 6);//nut cavity
		
	}

}

upperlinkage();
