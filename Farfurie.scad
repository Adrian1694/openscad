module farfurie(inaltime_farfurie, raza_baza_farfurie, raza_sus_farfurie, raza_buza, inaltime_buza, grosime_perete)
{
   difference(){
    union(){
    cylinder(h = inaltime_farfurie, r1 = raza_baza_farfurie, r2 = raza_sus_farfurie);
    translate([0, 0, farfurie]) cylinder(h = inaltime_farfurie, r = raza_buza); 
    } 
    translate([0, 0, grosime_perete]) cylinder(h = inaltime_farfurie + inaltime_farfurie, r1 = raza_baza_farfurie - grosime_perete, r2 = raza_sus_farfurie - grosime_perete);
        
    }  
}

farfurie(inaltime_farfurie = 10, raza_baza_farfurie = 25, raza_sus_farfurie = 35, raza_buza = 2, inaltime_buza = 3, grosime_perete = 1);