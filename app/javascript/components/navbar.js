
window.onscroll = () => {
  const nav = document.querySelector('#full-nav');
  if(this.scrollY <= 10) nav.className = ''; else nav.className = 'scroll';
};
