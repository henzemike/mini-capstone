/* global axios */

var templateCard = document.querySelector("#card");
var productRow = document.querySelector(".row");

// productRow.appendChild(templateCard.content.cloneNode(true));
// productRow.appendChild(templateCard.content.cloneNode(true));
// productRow.appendChild(templateCard.content.cloneNode(true));
// productRow.appendChild(templateCard.content.cloneNode(true));
// productRow.appendChild(templateCard.content.cloneNode(true));
// productRow.appendChild(templateCard.content.cloneNode(true));


axios.get("http://localhost:3000/api/products").then(function(response) {
  var products = response.data;
  // var image = products[0]["images"]["photo"]; fix images to show parsing
  // console.log(image);
  console.log(products);

  products.forEach(function(product) {
    var productCopy = templateCard.content.cloneNode(true);

    //productCopy.querySelector(".card-img-top").src = product.image;
    productCopy.querySelector(".card-title").innerText = product.name;
    productCopy.querySelector(".card-text").innerText = product.description;

    productRow.appendChild(productCopy);
  });

});