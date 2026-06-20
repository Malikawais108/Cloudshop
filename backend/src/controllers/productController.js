const pool = require("../config/db");

// Add Product
const addProduct = async (req, res) => {
  try {
    const { name, price, description, stock } = req.body;

    const result = await pool.query(
      "INSERT INTO products (name, price, description, stock) VALUES ($1, $2, $3, $4) RETURNING *",
      [name, price, description, stock]
    );

    res.json(result.rows[0]);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

// Get All Products
const getProducts = async (req, res) => {
  try {
    const result = await pool.query("SELECT * FROM products ORDER BY id DESC");
    res.json(result.rows);
  } catch (err) {
    res.status(500).json({ error: err.message });
  }
};

module.exports = {
  addProduct,
  getProducts,
};
