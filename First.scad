$fn = 100;
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

channel();
wheels();