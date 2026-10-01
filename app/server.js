const express = require("express");

const app = express();

app.use(express.json());

const products = [
  { id: 1, name: "Laptop", price: 500000 },
  { id: 2, name: "Phone", price: 250000 }
];

const orders = [];

app.get("/", (req, res) => {
  res.json({
    application: "CloudCart",
    status: "running"
  });
});

app.get("/health", (req, res) => {
  res.json({
    status: "healthy"
  });
});

app.get("/products", (req, res) => {
  res.json(products);
});

app.get("/orders", (req, res) => {
  res.json(orders);
});

app.post("/orders", (req, res) => {
  const order = {
    id: orders.length + 1,
    product: req.body.product,
    quantity: req.body.quantity
  };

  orders.push(order);

  res.status(201).json(order);
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`CloudCart running on port ${PORT}`);
});