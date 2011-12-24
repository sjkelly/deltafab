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

module endeffector(){

	difference(){

		union(){
			//four bar interface
			for( i = [0 : 120 : 360]){
				rotate([0,0,i])translate([-upperlinkthick/2,0,0]){
					cube([upperlinkthick,endeffector,upperlinkwidth/2]);
					cube([upperlinkthick,endeffector+upperlinkwidth/8,upperlinkwidth/4]);
					translate([0,endeffector,upperlinkwidth/4])rotate([0,90,0])cylinder (r=upperlinkwidth/4, h = upperlinkthick);
				}
			}
			cylinder(r=extruderspacing/2+screwdia*2, h= upperlinkwidth/2); 	
		}
		
		translate([0,0,-1])cylinder(r=extruderspacing/2-screwdia, h= upperlinkwidth/2+2);
 
		for( i = [0 : 120 : 360]){
				rotate([0,0,i])translate([-upperlinkthick/2,0,0]){
					translate([-1,endeffector,upperlinkwidth/4])rotate([0,90,0])cylinder (r=screwdia/2, h = upperlinkthick+2);
				}
		}
		//extruder mount holes
		for( i = [0 : 360/extrudermountholes : 360]){
				rotate([0,0,i]){
					translate([0,endeffector/2-screwdia,-1])cylinder (r=screwdia/2, h = upperlinkwidth/2+2);
				}
		}
	}

}

endeffector();