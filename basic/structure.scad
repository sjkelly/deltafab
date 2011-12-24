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

module structure(){


	//Breakout and distributed vars
	
difference(){

	union(){
		cube([structbase,structheight,structthickness]);
		cube([structbase,structbracewidth,structthickness*2]);
		translate([0,structheight-structbracewidth,0])cube([structbase,structbracewidth,structthickness*2]);
		translate([structbracewidth/sin(45),0,0])rotate([0,0,45])cube([structheight/sin(45)-structbracewidth/sin(45),structbracewidth,structthickness*2]);
		translate([structbase-structbracewidth/sin(45)/2,structbracewidth/sin(45)/2,0])rotate([0,0,135])cube([structheight/sin(45)-structbracewidth/sin(45),structbracewidth,structthickness*2]);
		translate([0,0,0])rotate([0,0,asin(structheight/structbase)])cube([sqrt(pow(structbase-structheight/sin(45)/2,2)+pow(structheight,2)),structbracewidth,structthickness*2]);
		translate([structbase,0,0])rotate([0,0,180-asin(structheight/structbase)])translate([0,-structbracewidth])cube([sqrt(pow(structbase-structheight/sin(45)/2,2)+pow(structheight,2)),structbracewidth,structthickness*2]);
	}

	translate([0,-1,-1])cube([structbracewidth/2/sin(45),structbracewidth/2/sin(45)+2,structthickness*2+2]);
	translate([structbase-(structbracewidth/2/sin(45)),-1,-1])cube([structbracewidth/2/sin(45),structbracewidth/2/sin(45)+2,structthickness*2+2]);

	translate([0,0,-1])rotate([0,0,45])cube([structheight/sin(45),structheight/sin(45)/2,structthickness*2+2]);
	translate([structbase,0,-1])rotate([0,0,45])cube([structheight/sin(45)/2,structheight/sin(45),structthickness*2+2]);

	for(i=[0 : ((structheight-structbracewidth*2)/sin(45))/(structholes-1) : ((structheight-structbracewidth*2)/sin(45))]){
		rotate([0,0,45])translate([structbracewidth/sin(45)+screwdia+i,-structbracewidth/2,-1])cylinder(r=screwdia/2,h=structthickness*2+2);
	}

	for(i=[0 : ((structheight-structbracewidth*2)/sin(45))/(structholes-1) : ((structheight-structbracewidth*2)/sin(45))]){
		translate([structbase,0,0])rotate([0,0,135])translate([structbracewidth/sin(45)+screwdia+i,structbracewidth/2,-1])cylinder(r=screwdia/2,h=structthickness*2+2);
	}

}

}
structure();
