/*
  Deltafab - A Fully Parametric and Printable RepRap
    Copyright (C) 2011  Steve Kelly

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

include <config.scad>;

module motorplate(){


	//Breakout and distributed vars
	plateheight = ((structheight-structbracewidth*2)/sin(45))+nutwall*2+nutapothem/cos(30)*2;
	plateside = structthickness*2;

difference(){

	union(){
		cube([platelength,plateheight,platethickness]);
		cube([plateside+nutheight+nutapothem+nutwall,plateheight,platethickness+nutapothem+nutwall]);
		translate([platelength-(plateside+nutheight+nutapothem+nutwall),0,0])cube([plateside+nutheight+nutapothem+nutwall,plateheight,platethickness+nutapothem+nutwall]);
	
	}

	//Create holes and nut traps
	for(i=[0 : ((structheight-structbracewidth*2)/sin(45))/(structholes-1) : ((structheight-structbracewidth*2)/sin(45))]){
		translate([0,0,platethickness+(nutapothem/2)])rotate([0,90,0])translate([0,nutwall+nutapothem/cos(30)+i,-1])cylinder(r=screwdia/2,h=plateside*2+nutheight+2);
		translate([platelength,0,platethickness+(nutapothem/2)])rotate([0,-90,0])translate([0,nutwall+nutapothem/cos(30)+i,-1])cylinder(r=screwdia/2,h=plateside+nutheight*2+2);
		translate([platelength,0,platethickness+(nutapothem/2)])rotate([0,-90,0])translate([0,nutwall+nutapothem/cos(30)+i,plateside])rotate([0,0,30])cylinder(r=nutapothem/cos(30)/2,h=nutheight+nutapothem+nutwall, $fn=6);
		translate([0,0,platethickness+(nutapothem/2)])rotate([0,90,0])translate([0,nutwall+nutapothem/cos(30)+i,plateside])rotate([0,0,30])cylinder(r=nutapothem/cos(30)/2,h=nutheight+nutapothem+nutwall, $fn=6);
	}

	translate([platelength/4,plateheight/2,platethickness/2])rotate([45,0,0])cylinder(r=smoothroddia/2, h=(platethickness*3)/sin(45)+2,center=true);
	translate([platelength*0.75,plateheight/2,platethickness/2])rotate([45,0,0])cylinder(r=smoothroddia/2, h=(platethickness*3)/sin(45)+2,center=true);
	translate([plateside+nutheight+nutapothem+nutwall,-1,platethickness])rotate([0,-45,0])cube([nutapothem+nutwall,plateheight+2,(nutapothem+nutwall)/sin(45)]);
	translate([platelength-(plateside+nutheight+nutapothem+nutwall),-1,platethickness])rotate([0,45,0])translate([-nutapothem-nutwall,0,0])cube([nutapothem+nutwall,plateheight+2,(nutapothem+nutwall)/sin(45)]);

}

}
motorplate();