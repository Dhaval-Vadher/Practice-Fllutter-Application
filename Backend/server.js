import express from "express";
import mongoose from "mongoose";
import dotenv from "dotenv";
import cors from "cors";

import authRoutes from "./routes/auth.js"; // import auth routes

dotenv.config();

const app = express();

app.use(cors()); // allow requests from Flutter
app.use(express.json()); // parse JSON request body

// Mount routes
app.use("/api/auth", authRoutes); // full path: /api/auth/signup

// Connect to MongoDB
mongoose.connect(process.env.MONGO_URI)
  .then(() => console.log("MongoDB Connected Successfully"))
  .catch((err) => console.log("Connection Error:", err));

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => console.log(`Server Running On ${PORT}`));
