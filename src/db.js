var mongoose = require('mongoose');

if (process.env.DB_NAME === '') {
  console.log("database name not defined");
  throw new Error("Database name must be defined");
}

var connectionString = `mongodb://${process.env.DB_HOST}/${process.env.DB_NAME}`;
mongoose.connect(connectionString, { useMongoClient: true });
