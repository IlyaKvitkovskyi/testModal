document.addEventListener('DOMContentLoaded', function () {
  const createItemInLocalStorage = (currentDate) => {
    
    document.querySelector('.bg_popup').style.display = 'block';
    

    $('.setCookie').click(function () {
      let date = new Date(currentDate);
      date.setTime(date.getTime() + 3 * 60 * 60 * 1000);

      localStorage.setItem('expiresAt', date);
      
      document.querySelectorAll('bg_popup').forEach((box) => {
        box.style.display = 'none';
      });
    });
  };

  const expiresAtValue = localStorage.getItem('expiresAt');
  let currentDate = new Date();

  if (!expiresAtValue) {
    createItemInLocalStorage(currentDate);
  } else {
    const expiresDate = new Date(expiresAtValue);
    if (expiresDate - currentDate < 0) {
      createItemInLocalStorage(currentDate);
    }
  }
});



