import Toastify from "toastify-js";

document.addEventListener('DOMContentLoaded', () => {

  const backgroundColors = {
    alert: "#E56A6A",
    error: "#E56A6A",
    notice: "#89D644"
  }

  JSON.parse(document.body.dataset.flashMessages).forEach(flashMessage => {
    const [type, message] = flashMessage;

    Toastify({
      text: message,
      duration: 3000,
      close: true,
      backgroundColor: backgroundColors[type],
      stopOnFocus: true
    }).showToast();
  })
});