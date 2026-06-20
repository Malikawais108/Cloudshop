const express = require("express");
const cors = require("cors");
require("dotenv").config();

// 🔌 Database connection
require("./config/db");

// 🚪 Routes
const productRoutes = require("./routes/productRoutes");
const authRoutes = require("./routes/authRoutes");

const app = express();

// Middleware
app.use(cors());
app.use(express.json());

// Routes
app.use("/api", productRoutes);
app.use("/api/auth", authRoutes);

// Health check
app.get("/", (req, res) => {
  res.send("CLOUDSHOP Backend is running 🚀");
});

app.get("/health", (req, res) => {
  res.json({
    status: "UP",
    service: "CLOUDSHOP Backend",
  });
});

module.exports = app;
