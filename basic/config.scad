// https://docs.google.com/viewer?a=v&pid=explorer&chrome=true&srcid=0B8AGtzEPL1XpNGIwMjM0NzQtZmMyMS00YmU2LTkwMjItNTkzNzA0MDJkZTAx&hl=en_US&authkey=CMjZjW0

$fn = 31;

//Delta config constants
upperlinkage = 63; 
lowerlinkage = 126;
baseradius = 45;
endeffector = 50; //radius of the end effector
fourbarspacing = 70;

//hardware
screwdia = 3.5; //m3
screwheaddia = 5.6; //m3
screwheadheight = 3.2; //m3
nutapothem = 5.7; //m3
nutheight = 2.5; //m3 lock nut

//motors 
holespacing = 17*2.54*sin(45); //nema 17
shaftlength = 22;
shaftdia = 5;
bodylength = 48;
bodywidth = 42; //could also be diameter of a round servo
motorwall = 2.75;
motorcenterdia = 25;

//Structure pieces
structbase = 110;  //180
structheight = 40;  //70
structholes = 3; //how many holes are on each side. 
structthickness = 2;
structbracewidth = 9;

//z axis plates
smoothroddia = 8;
platelength = 110;
platethickness = 3;

//cups
cupwall = 2.7;

//end effector
extruderspacing = 40;
extrudermountholes = 10;

//base
basemotorwall = 2.7;

//upper linkage
upperlinkthick = nutapothem/cos(30);
upperlinkwidth = 20;

//coupling
leadscrewdia = 8;
couplingwall = 6;
couplingheight = 40;

//general shit
nutwall = nutapothem/4;
