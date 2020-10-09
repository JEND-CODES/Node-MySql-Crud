// Fetch des résultats
document.addEventListener('DOMContentLoaded', function () {
    fetch('http://localhost:5000/getAll')
    .then(response => response.json())
    .then(data => loadContent(data['data']));
});

// Fonction pour afficher les data sous forme de posts
function loadContent(data) {
    const content = document.querySelector('.content');

    if (data.length === 0) {
        content.innerHTML = "<p>Pas encore de posts publiés !</p>";
        return;
    }

    let postBox = "";

    data.forEach(function ({name, descriptions, images, date_added}) {
        
        postBox += `<h2>${name}</h2>`;
        postBox += `<p>${descriptions}</p>`;
        postBox += `<img src='${images}' style="width:800px;height:500px;" alt="illustration" title="illustration" />`;
        postBox += `<p>Publié le ${new Date(date_added).toLocaleString()}</p>`;
        
    });

    content.innerHTML = postBox;
}
