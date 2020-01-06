
h1=5;

difference(){
union(){
    
translate([0,-4,0]) cube([13.5,8,1*h1]);
//color("lightgreen") translate([13.5,-30,0]) cube([35.8,34,h1]);
translate([13.5+35.8,-4,0]) cube([13.5,8,1*h1]);

translate([13.5-4,-30,0]) cube([4,30,h1]);
translate([13.5+35.8,-30,0]) cube([4,30,h1]);

translate([13.5-4,-30-4-14,0]) cube([8.5,4+14,h1]);
translate([13.5+35.8-8.5+4,-30-4,0]) cube([8.5,4,h1]);

translate([13.5-4+8.5,-30-24,0]) cube([4,24,3*h1]);
translate([13.5+35.8-8.5,-30-24,0]) cube([4,24,3*h1]);
translate([13.5-4+8.5,-30-24,2*h1+3]) cube([35.8-9,24,h1]);

//translate([0,-48,0]) cube([20,14,1*h1]);

translate([13.5-4,-30-4-14,h1]) cube([8.5,38+14,2*h1+3]);
translate([13.5+35.8-4.5,-30-4,h1]) cube([8.59,38,2*h1+3]);

translate([13.5-4,-30-4,2*h1+3]) cube([35.8,38,h1]);

}

o=13;
color("red") {
    translate([o,0,-1]) cylinder($fn=32,d=3, h=20);
    translate([o+15.1,0,-1]) cylinder($fn=32,d=3, h=20);
    //translate([4+15,0,-1]) cylinder($fn=32,d=10, h=2*h1+1);
    translate([o,-44.1,-1]) cylinder($fn=32,d=3, h=20);
    translate([o+28,-44.1,-1]) cylinder($fn=32,d=3, h=20);
}
}