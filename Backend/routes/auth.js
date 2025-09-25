import express from 'express';
import bcrypt from 'bcryptjs';
import User from '../models/User.js';

const router = express.Router();

// Sign Up Route (lowercase path)
router.post("/signup", async (req, res) => {
  console.log("Request Body:", req.body); // Debug

  const { name, email, password } = req.body;

  // Check if user exists
  const userExist = await User.findOne({ email });
  if (userExist) return res.status(400).json({ error: "User Already Exists" });

  // Hash password
  const hashPassword = await bcrypt.hash(password, 10);

  // Save user in DB
  const newUser = new User({ name, email, password: hashPassword });
  await newUser.save();

  res.json({ message: "Registration Successfully Done" });
});

export default router;
