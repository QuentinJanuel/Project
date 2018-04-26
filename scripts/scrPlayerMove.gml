// Horizontal moves
var dir = keyboard_check(kRight)-keyboard_check(kLeft);
self.hspd = dir*self.maxSpd;
// Horizontal collisions
if(place_meeting(x+self.hspd, y, objBlock)){
    while(!place_meeting(x+sign(self.hspd), y, objBlock)){
        x += sign(self.hspd);
    }
    self.hspd = 0;
}
//Update
x += self.hspd;

// Vertical moves
if(self.vspd < self.maxVspd){
    self.vspd += grav;
}
if(keyboard_check_pressed(kJump)){
    self.vspd = -self.jumpForce;
}
//Vertical collisions
if(place_meeting(x, y+self.vspd, objBlock)){
    while(!place_meeting(x, y+sign(self.vspd), objBlock)){
        y += sign(self.vspd);
    }
    self.vspd = 0;
}
//Update
y += self.vspd;
