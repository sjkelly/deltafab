include <config.scad>;

module cups(){

	difference(){

		union(){
			
			//Main Cube
			cube([fourbarspacing/2-upperlinkthick/2+cupwall*2,cupwall*2+nutapothem,cupwall+nutapothem/cos(30)]);
		
			//rounding off
		


		}
		//Cavity
		translate([cupwall,cupwall,cupwall])cube([fourbarspacing/2-upperlinkthick/2+cupwall+1,nutapothem, nutapothem/cos(30)+1]);


		//Bearing holes
		translate([-1,cupwall+nutapothem/2,cupwall+nutapothem/cos(30)/2])rotate([0,90,0])cylinder(r = screwdia/2, h = cupwall+2);
		translate([fourbarspacing/2-upperlinkthick/2+cupwall-screwdia/2,-1,cupwall+nutapothem/cos(30)/2])rotate([-90,0,0])cylinder(r = screwdia/2, h = cupwall*2+nutapothem+2);

	}

}

cups();

