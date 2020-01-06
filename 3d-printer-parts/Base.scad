
//color("lightblue") 
//    translate([26.4,-40.4,2])
//    rotate([90,0,180]) 
//        import("DC_Motor_20mm.STL");



difference() {
    union() {
        import("OTTOSmarsBase.STL");

        color("lightgreen") {
            hull() {
            translate([26.5,32+.5,13.2]) rotate([90,0,0]) cylinder($fn=100, d=10, h=3);
            translate([26.5-5,29+.5,2]) cube([10,3,2]);
            }
            hull() {
            translate([26.5,-29-0.5,13.2]) rotate([90,0,0]) cylinder($fn=100, d=10, h=3);
            translate([26.5-5,-29-3-.5,2]) cube([10,3,2]);
            }
            
            
        }
        
        

    } //union
    
    color("red") {
    translate([26.5,50,13.2]) rotate([90,0,0]) cylinder($fn=32, d=3, h=100);
    translate([26.5,29+3,13.2]) rotate([90,90,0]) cylinder($fn=6, d=6.6, h=4);
    translate([26.5,-29+1,13.2]) rotate([90,90,0]) cylinder($fn=6, d=6.6, h=4);
    translate([16.5,-43.5,0]) cube([20,10,30]);
    translate([16.5,33.5,0]) cube([20,10,30]);
    translate([20,27.75,2]) cube([6,4,20]);
    translate([20,-28-3.75,2]) cube([6,4,20]);
}
}
