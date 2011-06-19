include <config.scad>;

module cups(){

	difference(){

		union(){
			
			//Main Cube
			cube([fourbarspacing/2-upperlinkheight/2+bearingheight+lowerlinkwall+screwdia,lowerlinkheight+bearingheight*2, lowerlinkwall*2+screwdia+bearingheight]);


		}
		//Cavity
		translate([bearingheight,bearingheight,bearingheight])cube([fourbarspacing/2-upperlinkheight/2+lowerlinkwall+screwdia+1,lowerlinkheight, lowerlinkwall*2+screwdia+1]);


		//Bearing holes
		translate([-1,lowerlinkheight/2+bearingheight,lowerlinkwall+screwdia/2+bearingheight])rotate([0,90,0])cylinder(r = screwdia/2, h = bearingheight +2);
		translate([fourbarspacing/2-upperlinkheight/2,-1,lowerlinkwall+screwdia/2+bearingheight])rotate([-90,0,0])cylinder(r = screwdia/2, h = bearingheight*2+lowerlinkheight+2);

		//Tensioner hole
		translate([(fourbarspacing/2-upperlinkheight/2)/2,-1,lowerlinkwall+screwdia/2+bearingheight])rotate([-90,0,0])cylinder(r = screwdia/2, h = bearingheight*2+lowerlinkheight+2);
	}

}

cups();

