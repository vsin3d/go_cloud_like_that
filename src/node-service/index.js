import express from "express";
import dotenv from "dotenv";

dotenv.config();

const app = express();
const port = process.env.PORT || 3000;

app.get("/", (req, res) => {
    res.send("Simple node app.");
});

app.listen(port, ()=> {
    console.log(`App is running on port ${port}`);
});