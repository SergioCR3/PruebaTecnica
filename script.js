document.getElementById("contactForm").addEventListener("submit", function(event) {
    event.preventDefault();

    // Validación campos 
    const nombre = document.querySelector('input[name="nombre"]').value;
    const email = document.querySelector('input[name="email"]').value;
    const comentarios = document.querySelector('textarea[name="comentarios"]').value;
    const politica = document.querySelector('input[name="politica"]').checked;
    
    if (!nombre || !email || !comentarios || !politica) {
        alert("Por favor, completa todos los campos obligatorios y acepta la política de privacidad.");
        return;
    }

    // Envío AJAX
    const formData = new FormData(this);

    fetch("process_form.php", {
        method: "POST",
        body: formData
    })
    .then(response => response.text())
    .then(data => {
        document.getElementById("formMessage").textContent = data;
        document.getElementById("contactForm").reset();
    })
    .catch(error => console.error("Error:", error));
});
