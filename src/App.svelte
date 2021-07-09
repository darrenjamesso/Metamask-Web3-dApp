<script>
  import TailwindCSS from "./TailwindCSS.svelte";
  import CheckWeb3 from "./CheckWeb3.svelte";
  import TokenToWallet from "./TokenToWallet.svelte";
  import ConnectMetamask from "./ConnectMetamask.svelte";
  import NoMetamask from "./NoMetamask.svelte";

  let name = 'Outplay Games';

  let hasMetamask = false;

  if (typeof window.ethereum !== "undefined" && ethereum.isMetaMask) {
    hasMetamask = true;
  } else {
    hasMetamask = false;
  }
</script>

<TailwindCSS />
<header class=" py-5 mx-auto text-center bg-green-200">
  
  <h1
    class="text-4xl md:text-4xl lg:text-5xl uppercase font-bold mx-auto mb-10 my-auto w-1/2 inline-block">Hello, {name}!</h1>
  <p class="text-blue-400"><a
      href="https://metamask.io/"
      class="text-indigo-300 underline"
      target="_blank">Metamask.io</a
    > <a
    href="https://ethereum.org/en/"
    class="text-indigo-300 underline"
    target="_blank">ethereum.org</a
  > 
  </p>
</header>

<main>
  <!-- Check if Metamask Chrome extension is installed.   -->
  {#if hasMetamask}
  <CheckWeb3 />
    <div class="flex justify-center">
      <ConnectMetamask />
      <TokenToWallet />
    </div>
  {:else}
   <NoMetamask />
  {/if}
</main>
