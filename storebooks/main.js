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
        strImage += `<img class="pointer-image" onClick="onImageClick(${obj.id})" src=${obj.image}/>`;
      }
    }
    images.innerHTML = strImage;
  });

function onImageClick(id) {
  const getBookDataUrl = `http://localhost:3000/getbook/${id}`;
  fetch(getBookDataUrl)
    .then((res) => {
      if (!res.ok) {
        throw new Error("No se encontraron datos del libro");
      }
      return res.json();
    })
    .then((data) => {
      console.log(data);
    });
}
