books_url = "http://localhost:3000/books";

fetch(books_url)
  .then((res) => {
    if (!res.ok) {
      throw new Error("Error al tratar de encontrar los datos");
    }
    return res.json();
  })
  .then((data) => {
    const images = document.querySelector("#book-image");
    let strImage = "";
    for (let obj of data) {
      if (obj.image) {
        strImage += `<img class="pointer-image" onClick="onImageClick(${obj.id})" src=${obj.image} type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"/>`;
      }
    }
    images.innerHTML = strImage;
  });

function onImageClick(id) {
  const getBookDataUrl = `http://localhost:3000/getbook/${id}`;
  let strDesc = "";
  fetch(getBookDataUrl)
    .then((res) => {
      if (!res.ok) {
        throw new Error("No se encontraron datos del libro");
      }
      return res.json();
    })
    .then((data) => {
      console.log(data);
      const descriptionContainer = document.getElementById("description");
      strDesc += `<h2>${data[0].title}</h2>`;
      strDesc += `<img src=${data[0].image} alt="">`;
      strDesc += `<p>${data[0].description}</p>`;
      strDesc += `<p>Paginas: ${data[0].num_pages}</p>`;
      strDesc += `<p>Año de publicacion: ${data[0].published_year}</p>`;
      strDesc += `<p>Editorial: ${data[0].editorial}</p>`;
      strDesc += `<p>Autor: ${data[0].first_name} ${data[0].last_name}</p>`;

      descriptionContainer.innerHTML = strDesc;
    });
}
