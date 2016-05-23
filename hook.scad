pole_diameter = 25;
acc_height = 30;

difference(){
	union(){
		difference(){

			union(){
				// body
				cylinder(r=((pole_diameter+10)/2), h=acc_height);

				// hook
				translate([-pole_diameter * 2,-pole_diameter/2,0]){
					cube([pole_diameter * 2,pole_diameter,acc_height/2]);
					translate([0,0,acc_height/2]){
						cube([(pole_diameter/2),pole_diameter,acc_height/2]);
					}		
				}
			}

			// hole
			translate([0,0, -1]){
				cylinder(r=(pole_diameter/2), h=acc_height+2);
			}	
		}

		// lip
		translate([0,0,25]){
			difference(){
				cylinder(r=pole_diameter/2, h=1);
				translate([0,0,-1]){
					cylinder(r=(pole_diameter/2) - 1, h=3);
				}
			}
		}
	}

	// gap
	translate([0,-pole_diameter/3,-1]){
		cube([pole_diameter, pole_diameter/1.5, acc_height+2]);
	}
}