include <config.scad>;

module upperlinkage(){

	difference(){

		union(){

			//shaft wall
			translate([0,0,0])cylinder (r=upperlinkwidth/2, h = upperlinkthick);

			//end wall
			translate([upperlinkage,0,0])cylinder (r=upperlinkwidth/4, h = upperlinkthick);

			//length
			translate([0,-upperlinkwidth/4,0])cube([upperlinkage,upperlinkwidth/2,upperlinkthick]);

		}

		//motor shaft hole
		translate([0,0,-1])cylinder (r=shaftdia/2, h = upperlinkthick +2);

		//bearing hole
		translate([upperlinkage,0,-1])cylinder (r=screwdia/2, h = upperlinkthick +2);

		//motor set screw and nut
		translate([0,0,upperlinkthick/2])rotate([0,-90,0])cylinder(r=screwdia/2, h = upperlinkwidth/2+1);
		translate([-shaftdia/2-nutheight,-nutapothem/2,-1])cube([nutheight,nutapothem,upperlinkthick+2]);
		
	}

}

upperlinkage();
