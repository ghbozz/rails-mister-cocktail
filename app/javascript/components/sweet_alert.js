import swal from 'sweetalert';

function bindSweetAlertButtonDemo() {
  const swalButton = document.getElementById('create-cocktail-btn');
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal({
        title: "🍸",
        text: "Well Done!",
        icon: "success",
        timer: 6000
      });
    });
  }
}

export { bindSweetAlertButtonDemo };
