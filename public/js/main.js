document.addEventListener("DOMContentLoaded", function() {
    const deleteLinks = document.querySelectorAll(".delete-link");
    deleteLinks.forEach(link => {
        link.addEventListener("click", function(event) {
            event.preventDefault();
            if (confirm("Voulez-vous vraiment supprimer cet élément ?")) {
                fetch(link.href, { method: "GET" })
                    .then(response => response.json())
                    .then(data => {
                        if (data.success) {
                            alert("Suppression réussie");
                            location.reload();
                        } else {
                            alert("Erreur : " + data.error);
                        }
                    })
                    .catch(error => console.error("Erreur AJAX :", error));
            }
        });
    });
});
