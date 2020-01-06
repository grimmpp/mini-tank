
//battery();

module battery() {
color("lightgreen") {
translate([25.6/2,65+3,18.5/2+2]) rotate([90,0,0]) cylinder($fn=60, d=18.5, h=65);
translate([25.6/2,67+3,18.5/2+2]) rotate([90,0,0]) cylinder($fn=60, d=10, h=2);
}}

translate([25.6/2-5,-1-2,0]) cube([10,2,2]);

difference() {
translate([25.6/2-19.2/2,0,0]) cube([19.2,67+4,4]);
translate([25.6/2,65+6,18.5/2+2]) rotate([90,0,0]) cylinder($fn=100, d=19.5, h=70);
}

difference() {
    union(){
        translate([25.6/2-19.2/2,0,0]) cube([19.2,67+4,2]);
        
        translate([0.1,-1,0]) cube([25.4,33,20]);
        
        translate([0,32+7.8,0]) cube([25.6,5,4]);
        
        translate([0+1,70-5,0]) cube([25.6-2,8,20]);
        
        translate([(25.6-36)/2,2,18.5/2]) cube([36,29,4]);
        
        translate([0+1,73,18.5/2-1.8]) cube([6,6,4]);
        translate([25.6-5-2,73,18.5/2-1.8]) cube([6,6,4]);
    }
    translate([25.6/2-19/2,1,2]) cube([19,70,20]);
    translate([25.6/2,80,18.5/2+2]) rotate([90,0,0]) cylinder($fn=32, d=3, h=85);
}