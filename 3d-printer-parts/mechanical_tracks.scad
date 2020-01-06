
//translate([5,-40,0]) cube([4,112,.2]);
//translate([-15,-40,0]) cube([10,112,.2]);
//translate([-35,-40,0]) cube([10,112,.2]);
//translate([-49,-40,0]) cube([4,112,.2]);

for(i = [1:6]) translate([0,2*i*9-52,0]) import("mechanical_track.stl");
for(i = [1:6]) translate([-18,2*i*9-52,0]) import("mechanical_track.stl");
for(i = [1:6]) translate([-36,2*i*9-52,0]) import("mechanical_track.stl");
