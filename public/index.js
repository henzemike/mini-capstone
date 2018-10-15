/* global axios */

var templateCard = document.querySelector("#card");
var productRow = document.querySelector(".row");

// productRow.appendChild(templateCard.content.cloneNode(true));
// productRow.appendChild(templateCard.content.cloneNode(true));
// productRow.appendChild(templateCard.content.cloneNode(true));
// productRow.appendChild(templateCard.content.cloneNode(true));
// productRow.appendChild(templateCard.content.cloneNode(true));
// productRow.appendChild(templateCard.content.cloneNode(true));


axios.get("api/products").then(function(response) {
  var products = response.data;

  console.log(products);

  products.forEach(function(product) {
    var productCopy = templateCard.content.cloneNode(true);

    productCopy.querySelector(".card-img-top").src = product.images[0].photo;
    productCopy.querySelector(".card-title").innerText = product.name;
    productCopy.querySelector(".card-text").innerText = product.description;

    productRow.appendChild(productCopy);
  });

});