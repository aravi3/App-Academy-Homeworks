document.addEventListener("DOMContentLoaded", function(){
  let canvas = document.getElementById('mycanvas');
  canvas.height = 500;
  canvas.width = 500;

  let ctx = canvas.getContext('2d');

  ctx.fillStyle = "blue";
  ctx.fillRect(100, 100, 600, 600);

  ctx.font = "30px Arial";
  ctx.fillStyle = "green";
  ctx.fillText("WAIT FOR IT", 10, 60);

  ctx.beginPath();
  ctx.arc(300, 300, 100, 0, (3*Math.PI)/2, false);
  ctx.strokeStyle = "orange";
  ctx.lineWidth = 10;
  ctx.stroke();
  ctx.fillStyle = "purple";
  ctx.fill();

  function drawCurve() {
    var rad = 4*Math.PI/180;
    ctx.rotate(rad);
    ctx.beginPath();
    ctx.moveTo(300, 500);
    ctx.bezierCurveTo(20, 200, 200, 100, 700, 60);
    ctx.stroke();
  }

  setInterval(drawCurve, 50);
});
