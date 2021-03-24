const mongoose = require("mongoose");

mongoose
  .connect("mongodb://mongo/mydatabase", {
    useNewUrlParser: true,
    useUnifiedTopology: true,
  })
  .then((db) => console.log("Db is connected to"))
  .catch((err) => console.error(err));
