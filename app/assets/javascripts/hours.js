var canvas = document.getElementById("canvas");
var context = canvas.getContext("2d");
var radius = canvas.height / 2;
context.translate(radius, radius);
radius = radius * 0.90
//drawClock();
setInterval(drawClock, 1000);

function drawClock() {
  drawFace(context, radius);
  drawNumbers(context, radius);
  drawTime(context, radius);
}

function drawFace(context, radius) {
  // Draw the gold cirlce
  context.beginPath();
  context.arc(0, 0, radius, 0, 2 * Math.PI);
  context.fillStyle = "#fff";
  context.fill();

  context.lineWidth = radius * 0.1;
  context.strokeStyle = "#eeba30";
  context.stroke();
  // Draw the clock center
  context.beginPath();
  context.arc(0, 0, radius * 0.1, 0, 2 * Math.PI);
  context.fillStyle = '#740001';
  context.fill();
}

function drawNumbers(context, radius) {
var ang;
var num;
context.font = radius * 0.15 + "px georgia";
context.textBaseline = "middle";
context.textAlign = "center";
for(num = 1; num < 13; num++){
  ang = num * Math.PI / 6;
  context.rotate(ang);
  context.translate(0, -radius * 0.85);
  context.rotate(-ang);
  context.fillText(num.toString(), 0, 0);
  context.rotate(ang);
  context.translate(0, radius * 0.85);
  context.rotate(-ang);
}
}

function drawTime(context, radius){
// Using Date() we get the hour, minute and second
var now = new Date();
var hour = now.getHours();
var minute = now.getMinutes();
var second = now.getSeconds();
// Calculate the angle of the hour hand and draw it a length and width
hour = hour%12;
hour = (hour*Math.PI/6)+(minute*Math.PI/(6*60))+(second*Math.PI/(360*60));
drawHand(context, hour, radius*0.5, radius*0.07);
// Calculate the angle of the minute hand and draw it a length and width
minute = (minute*Math.PI/30)+(second*Math.PI/(30*60));
drawHand(context, minute, radius*0.8, radius*0.07);
// Calculate the angle of the seconds hand and draw it a length and width
second = (second*Math.PI/30);
drawHand(context, second, radius*0.9, radius*0.02);
}

// The drawHand() function draws a line with a given length and width
function drawHand(context, pos, length, width) {
context.beginPath();
context.lineWidth = width;
context.lineCap = "round";
context.moveTo(0,0);
context.rotate(pos);
context.lineTo(0, -length);
context.stroke();
context.rotate(-pos);
}
