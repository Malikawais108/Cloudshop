const express = require("express");
const cors = require("cors");
require("dotenv").config();

const app = express();

app.use(cors());
app.use(express.json());

// Health check (important for Kubernetes later)
app.get("/health", (req, res) => {
    res.status(200).json({ status: "UP", service: "CLOUDSHOP Backend" });
});

// Test route
app.get("/", (req, res) => {
    res.send("CLOUDSHOP Backend is running 🚀");
});

const PORT = process.env.PORT || 5000;

app.listen(PORT, () => {
    console.log(`Backend running on port ${PORT}`);
});
