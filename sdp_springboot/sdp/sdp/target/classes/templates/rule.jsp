<html>
<head>
<style>
.wrap {
  display: flex;
  justify-content: space-around;
  align-items: center;
  box-sizing: border-box;
  height: 100vh;
  padding: 2rem;
  background-color: #eee;
}

.container {
  display: flex;
  flex-direction: column;
  box-sizing: border-box;
  padding: 1rem;
  background-color: #fff;
  width: 768px;
  height: 100%;
  border-radius: 0.25rem;
  box-shadow: 0rem 1rem 2rem -0.25rem rgba(0, 0, 0, 0.25);
}
.container__heading {
  padding: 1rem 0;
  border-bottom: 1px solid #ccc;
  text-align: center;
}
.container__heading > h2 {
  font-size: 1.75rem;
  line-height: 1.75rem;
  margin: 0;
}
.container__content {
  flex-grow: 1;
  overflow-y: scroll;
}
.container__nav {
  border-top: 1px solid #ccc;
  text-align: right;
  padding: 2rem 0 1rem;
}
.container__nav > .button {
  background-color: #444499;
  box-shadow: 0rem 0.5rem 1rem -0.125rem rgba(0, 0, 0, 0.25);
  padding: 0.8rem 2rem;
  border-radius: 0.5rem;
  color: #fff;
  text-decoration: none;
  font-size: 0.9rem;
  transition: transform 0.25s, box-shadow 0.25s;
}
.container__nav > .button:hover {
  box-shadow: 0rem 0rem 1rem -0.125rem rgba(0, 0, 0, 0.25);
  transform: translateY(-0.5rem);
}
.container__nav > small {
  color: #777;
  margin-right: 1rem;
}
</style>
</head>
<body>

<main class="wrap">
  <section class="container">
    <div class="container__heading">
      <h2>Terms & Conditions</h2>
    </div>
    <div class="container__content">
      <p>Certainly! Here are five basic rules and regulations for your online bidding and auction system:<br></p>
      <p>Eligibility and Registration:<br>

                   Only individuals who meet the specified eligibility criteria are allowed to participate in the auction.
         Participants must register with accurate and verifiable information before they can place bids. </p>
      <p>Bidding Process:<br>

                   Bids must be placed using the designated bidding mechanism provided on the platform.
         Bids are considered final and cannot be retracted, except in cases of genuine errors.</p>
      <p>Bid Increments:<br>

         Bids must be placed in specified increments as outlined in the auction guidelines (e.g., $10, $50, etc.). </p>
      <p>Auction Duration and Closing:<br>

                   The auction will start at a specified time and end at a predetermined time.
         The closing time of the auction may be extended if new bids are received within a certain time frame (e.g., last 5 minutes). </p>
      <p>
      Payment and Fees:<br>

                   The winning bidder is required to make payment within a specified timeframe after the auction closes.
      Accepted forms of payment and any applicable fees (e.g., taxes, buyer's premium) will be clearly stated.
      Remember, these rules are just a starting point and should be customized based on the specific needs and requirements of your online bidding and auction system. Always consult legal professionals to ensure compliance with all relevant laws and regulations.
      </p>
    </div>
    <div class="container__nav">
      <small>By clicking 'Accept' you are agreeing to our terms and conditions.</small>
      <a class="button" href="login">Accept</a>
    </div>
  </section>
</main>
<script>

</script>
</body>
</html>