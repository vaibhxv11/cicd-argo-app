import express from "express";
const app = express();

app.get("/", (req, res) => {
  res.send("Hello World!What are you doing-  2 through Argo By Vaibhav");
});

app.listen(3000, () => {
  console.log("Server is running on port 3000");
});
