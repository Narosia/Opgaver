//lav et rum //<>// //<>// //<>//
Room[] house = new Room[6]; //("Room", false, 100, 300)

void setup() {
  size(800, 800);
  background(205);
  house[0]= new Room("Room", false, 100, 300);
  house[1]= new Room("Kitchen", false, 200, 300);
  house[2]= new Room("Livingroom", false, 300, 300);
  house[3]= new Room("Toilet", false, 100, 400);
  house[4]= new Room("Bedroom", false, 200, 400);
  house[5]= new Room("Bathroom", false, 300, 400);
}

void draw() {
  house[0].drawRoof();
  for(int i = 0; i < house.length; i++){
  house[i].drawRoom();
  }
}

void mouseClicked() {
  // lav baggrund
  background(205);
  fill(105);
  rect(80, 680, 300, 30);
  fill(250);
for(int i = 0; i < house.length; i++){
  house[i].lightCheck();
}
}
  void checkHouse(){
    boolean found=false;
    for (int i=0; i< house.length; i++) {
      if (house[i].isLightOn() == true) {
        println ("WOW turn off the light in the "+house[i].getRoomName());
        found = true;
        }
        }
          if (!found) {
          println("All right! You’re ready to go!");
          } else {
          println("you forgot something");
          }
  }
void keyPressed(){
  if (key == 'f');
  checkHouse();
}
  
  
  
