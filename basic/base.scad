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

module base(){
	difference(){
		union(){
			for( i = [0 : 120 : 360]){
				rotate([0,0,i])translate([0,shaftlength/2,0]){
					cube([baseradius+bodywidth/2,basemotorwall,bodywidth]);
					//%translate([baseradius-bodywidth/2,basemotorwall,0])cube([bodywidth,bodylength,bodywidth]); //dummy motor
				}
			}
			cylinder(r=shaftlength/2+basemotorwall, h=bodywidth);

		}

		translate([0,0,-1])cylinder(r=shaftlength/2, h=bodywidth+2); //center piece
	
		for( i = [0 : 120 : 360]){
			rotate([-90,0,i])translate([baseradius,-bodywidth/2,shaftlength/2-1]){
				cylinder(r=motorcenterdia/2, h = basemotorwall+2);
				translate([holespacing/2,holespacing/2,0])cylinder(r=screwdia/2, h = basemotorwall+2);
				translate([-holespacing/2,holespacing/2,0])cylinder(r=screwdia/2, h = basemotorwall+2);
				translate([holespacing/2,-holespacing/2,0])cylinder(r=screwdia/2, h = basemotorwall+2);
				translate([-holespacing/2,-holespacing/2,0])cylinder(r=screwdia/2, h = basemotorwall+2);
			}
		}
	}
}
base();