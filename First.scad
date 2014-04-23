$fn = 50;
module channel(){
difference(){
  cube([3,3,20],center=true);
  translate([0,.5,0]){
  cube([2,3,20],center=true);
  }
}
}

module wheel() {
  rotate(a=90,v=[0,1,0]) {
      cylinder(h=2,r=2,center=1);
    }
}

module wheels(){
  translate([-1,1,9]){
    wheel();
  }
  translate([-1,1,-9]){
    wheel();
  }
}

module loadcell(){
 translate([0,0,3]){
   cube([1.5,1.5,7],center=true);
 }
}

module shackleplate(){
  
    rotate(a=90,v=[0,0,1]){
      cube([3,.25,1.25]);
    }
}

module clevis(){
  translate([-2,2,0]){
  rotate(a=90,v=[0,1,0]){
    cylinder(h=4,r=.25,center=0);
  }
}
}

module shackles(){
translate([1,-.3,-.75]){
  shackleplate();
}
translate([-.75,-.3,-.75]){
  shackleplate();
}

clevis();

}

channel();
wheels();
loadcell();
shackles();