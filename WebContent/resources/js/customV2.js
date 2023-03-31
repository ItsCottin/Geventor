$(document).ready(function () {
    console.log("document is ready");
    $('[data-toggle="offcanvas"], #navToggle').on('click', function () {
        $('.offcanvas-collapse').toggleClass('open')
    })
});
window.onload = function () {
    console.log("window is loaded");
};

// tab nav
const tabButtons = document.querySelectorAll('.tab-button');
const tabPanes = document.querySelectorAll('.tab-pane');

tabButtons.forEach(button => {
  button.addEventListener('click', () => {
    const target = button.dataset.target;
    
    tabButtons.forEach(b => {
      b.classList.remove('active');
    });
    
    tabPanes.forEach(pane => {
      pane.classList.remove('active');
    });
    
    button.classList.add('active');
    document.getElementById(target).classList.add('active');
  });
});

$(document).ready(function(){
	$(function(){
		$.mask.addPlaceholder("~","[+-]");
		$("#telefone").mask("(99) 9999-9999");
		$("#form\\:telefone").mask("(99) 9999-9999"); 
		$("#cep").mask("99999-999");
		$("#data").mask("99/99/9999");
		$("#cpf").mask("999.999.999-99");
		$("#cnpj").mask("99.999.999/9999-99");
	});
});
