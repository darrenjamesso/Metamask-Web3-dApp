<script>
  let disabled = false;
  web3.eth.getAccounts().then(function (res) {
    if (res.length != 0) {
      document.querySelector("#havemetamask").style.display = "none";
    }
  });
  async function connectMetamask() {
    disabled = true;
    const accounts = await ethereum.request({ method: "eth_requestAccounts" });
    document.querySelector("#havemetamask").style.display = "none";
    location.reload();
  }
</script>

<!-- Initiate a connection request in response to button click action-->
<article
  id="havemetamask"
  class="max-w-md mr-9 p-9 rounded-lg text-center">
  <img src="logos/white.png" alt="" class="w-44 mx-auto" />
  <h1 class="text-lg font-bold uppercase">You have Metamask is installed!</h1>

  <p>Press the button to continue!</p>

  <button
      on:click={connectMetamask}
      class="p-3 rounded-md mt-3 text-black bg-green-200 disabled:opacity-70"
      {disabled}
      >Continue
  </button>
</article>
