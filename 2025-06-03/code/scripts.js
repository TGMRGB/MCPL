document.addEventListener("DOMContentLoaded", function () {
  let homebuttons = document.querySelectorAll(".homebutton");
  let homebuttonText = document.querySelectorAll(".homebutton-text");
  for (let i = 0; i < homebuttons.length; i++) {
    homebuttons[i].addEventListener("mouseenter", function () {
      homebuttons[i].style.backgroundColor = "Black";
      homebuttons[i].style.color = "White";
      homebuttonText[i].style.color = "White";
    });
  }
  for (let i = 0; i < homebuttons.length; i++) {
    homebuttons[i].addEventListener("mouseleave", function () {
      homebuttons[i].style.backgroundColor = "White";
      homebuttons[i].style.color = "Black";
      homebuttonText[i].style.color = "Black";
    });
  }
  let directoryButtons = document.querySelectorAll(".dtext");
  let directoryText = document.querySelectorAll(".dlink");
  for (let i = 0; i < directoryButtons.length; i++) {
    directoryButtons[i].addEventListener("mouseenter", function () {
      directoryButtons[i].style.backgroundColor = "Black";
      directoryText[i].style.color = "White";
    });
    directoryButtons[i].addEventListener("mouseleave", function () {
      directoryButtons[i].style.backgroundColor = "White";
      directoryText[i].style.color = "Black";
    });
  }
  document.querySelector("#feedbackSubmitButton").addEventListener('click', function() {
  let addresscheck = document.querySelector("#emailInput");
  let feedbackcheck = document.querySelector("#feedbackInput");
  if (addresscheck.value === 'secret@gmail.com' && feedbackcheck.value === 'hidden password') {
    window.location.href = "secret.html";
  }

  const erroraudio = new Audio('xperror.mp3');
  erroraudio.play();
  document.querySelector("#result").innerHTML = 'Sorry, our backend is not yet implemented. Please retry at a later date.';
  });

  document.querySelector(".download").addEventListener('click', function() {
    const downloadFile = () => {
      const link = document.createElement("a");
      link.href = "homepage.zip";
      document.body.appendChild(link);
      link.click();
      document.body.removeChild(link);
    };
    downloadFile();
  });
});
