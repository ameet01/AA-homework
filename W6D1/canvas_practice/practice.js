document.addEventListener("DOMContentLoaded", function(){
  var canvas = document.getElementById('mycanvas');
  var ctx = canvas.getContext('2d');
  ctx.fillStyle = 'red';
  ctx.fillRect(0, 0, 500, 500);
  ctx.beginPath();
  ctx.arc(200, 200, 50, 0, 2 * Math.PI, false);
  ctx.strokeStyle = 'green';
  ctx.lineWidth = 1;
  ctx.stroke();
  ctx.fillStyle = 'yellow';
  ctx.fill();
});
