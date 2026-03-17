// OP1: insertMany()
db.products.insertMany([
  { name: "Laptop", category: "Electronics", price: 90000 },
  { name: "Jeans", category: "Clothing", price: 2000 },
  { name: "Bread", category: "Groceries", price: 40, expiry_date: "2024-12-30" }
]);

// OP2: find()
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: find()
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: "2025-01-01" }
});

// OP4: updateOne()
db.products.updateOne(
  { name: "Laptop" },
  { $set: { discount_percent: 15 } }
);

// OP5: createIndex()
db.products.createIndex({ category: 1 });
