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
	//Breakout and distributed vars

module coupling(){
	difference(){
		union(){
			cylinder( r=leadscrewdia/2+couplingwall, h = couplingheight);
			translate([0,-leadscrewdia/2-couplingwall,0])cube([leadscrewdia/2+couplingwall,leadscrewdia+couplingwall*2,couplingheight]);
		}
		translate([0,0,couplingheight/2])cylinder( r=leadscrewdia/2, h = couplingheight/2+1);
		translate([0,-leadscrewdia/2,couplingheight/2])cube([leadscrewdia/2+couplingwall+1,leadscrewdia,couplingheight/2+1]);
		translate([0,0,-1])cylinder( r=shaftdia/2, h = couplingheight/2+2);
		translate([0,-shaftdia/2,-1])cube([leadscrewdia/2+couplingwall+1,shaftdia,couplingheight/2+2]);
		translate([shaftdia/2+screwdia/2,leadscrewdia/2+couplingwall+1,couplingheight/4])rotate([90,0,0])cylinder(r=screwdia/2, h=leadscrewdia+couplingwall*2+2);
		translate([leadscrewdia/2+screwdia/2,leadscrewdia/2+couplingwall+1,couplingheight*0.75])rotate([90,0,0])cylinder(r=screwdia/2, h=leadscrewdia+couplingwall*2+2);
	}
}

coupling();