include <config.scad>;

module endeffector(){

	difference(){

		union(){
			
			//Circular base
			cylinder(r = endeffector, h = endeffectorthick);
			
			//bearing tabs
			rotate([0,0,120])translate([-bearingheight/2,endeffector-bearingod/2-bearingwall,endeffectorthick])cube([bearingheight, bearingod +bearingwall*2, bearingod + bearingheight]);
			rotate([0,0,240])translate([-bearingheight/2,endeffector-bearingod/2-bearingwall,endeffectorthick])cube([bearingheight, bearingod +bearingwall*2, 10]);
			rotate([0,0,0])translate([-bearingheight/2,endeffector-bearingod/2-bearingwall,endeffectorthick])cube([bearingheight, bearingod +bearingwall*2, 10]);
			rotate([0,90,120])translate([0,0,0])cylinder(r=bearingod/2+bearingwall, h = bearingheight);
			rotate([0,90,240])translate([0,0,0])cylinder(r=bearingod/2+bearingwall, h = bearingheight);
			rotate([0,90,0])translate([0,0,0])cylinder(r=bearingod/2+bearingwall, h = bearingheight);
			
		}

	}

}

endeffector();