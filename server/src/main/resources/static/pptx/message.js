window.addEventListener('message', e => {
  const { data } = e;
  console.log(data);
  debugger;
  switch (data) {
    case 'fullscreen':
      handleFullscreen();
      break;
    default:
      break;
  }
});

const handleFullscreen = () => {
  const slideContainer = document.querySelector('.slide-img-container');
  slideContainer.requestFullscreen();
};
