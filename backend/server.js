require("dotenv").config();
const express = require("express");
const cors = require("cors");
const { PrismaClient } = require("@prisma/client");

const app = express();
const prisma = new PrismaClient();

app.use(cors());
app.use(express.json());

app.post("/referrals", async (req, res) => {
  try {
    console.log("Incoming Request Body:", req.body); // Debugging
    const referral = await prisma.referral.create({ data: req.body });
    res.status(201).json(referral);
  } catch (error) {
    if (error.code === "P2002") {
      return res.status(400).json({ error: "Referrer email must be unique" });
    }
    console.error("Error creating referral:", error);
    res.status(400).json({ error: "Failed to create referral", details: error.message });
  }
});

app.listen(3000, () => console.log("Server running on port 3000"));
