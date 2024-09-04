<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
  body {
    font-family: Arial, sans-serif;
  }

  h1 {
    text-align: center;
    font-family: 'Shrikhand', cursive;
  }

  p {
    text-align: center;
  }

  .bid-box {
    max-width: 300px;
    margin: 0 auto;
  }

  input[type="text"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 20px;
    box-sizing: border-box;
  }

  button {
    display: block;
    width: 100%;
    margin-top: 20px;
  }

  img {
    display: block;
    margin: 0 auto;
    max-width: 100%;
    height: auto;
  }
</style>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Live Bidding</title>
    <link rel="stylesheet" href="styles.css">
    <style type="text/css">body {
    font-family: Arial, sans-serif;
}

.bidding-container {
    text-align: center;
    margin: 50px;
}
img {
  width : 700px;
}

#timer {
  color: red;
  background-color: #c9c9c9;
  font-weight: bold;
}

#Winner {
  background-color: #c9c9c9;
  font-weight: bold;
}

#currentbid {
  background-color: #c9c9c9;
  font-weight: bold;
}

#title1 {
  font-family: 'Shrikhand', cursive;
}

.bid-box {
    background-color: #f5f5f5;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

button {
    padding: 10px 20px;
    font-size: 16px;
    background-color: #007BFF;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}
    </style>
</head>
<body>
<script type="text/javascript">
var timer = 180;
var timeInterval = setInterval(runTimer,1000);

function runTimer(){
  var timerText = document.getElementById("timer")
  timer -= 1;
  timerText.innerHTML = timer
  if (timer === 0) {
    window.clearInterval(timeInterval)
  }
}

function bid(){
  if (timer > 0) {
    var newname = document.getElementById("newname");
    var newbid = document.getElementById("newbid");
    var winner = document.getElementById("Winner");
    var currentbid = document.getElementById("currentbid");
    var numnewbid = Number(newbid.value);
    var numcurrbid = Number(currentbid.innerHTML);

    if (numnewbid > numcurrbid) {
      currentbid.innerHTML = newbid.value;
      winner.innerHTML = newname.value;
    }

  }
}
</script>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300|Shrikhand" rel="stylesheet">


<h1><span id="Title1">Bidding</span> <span id="Title2">Central</span></h1>
<img src="https://www.lonestarflight.org/public/styles/slider/public/B-17%20GG2.JPG?itok=UFMZTYJ0&c=897b077d8271666b42cf521e777ddc1b" alt="">
<p>This auction is open for 3 Minutes.<br> Type In your Name and click "Set Bid"</p>
<p>Time Remaining: <span id= "timer">NO TIME</span> Seconds</p>
<p>Winning Bidder: <span id= "Winner">No Top Bids</span></p>
<p>Current Bid: <span id= "currentbid">0</span></p>
<p><h4>Bid Here!</h4><p>
<p>Name: <input id="newname" type="text"></p>
<p>£ Bidding: <input id="newbid" type="text"> </p>
<p>Please only bid in British Pounds (<b>£</b>)<br>The Exchange rate is 0.76£ BP Per $1 USD</p>

<button onclick="bid()">Bid</button>


</body>
</html>