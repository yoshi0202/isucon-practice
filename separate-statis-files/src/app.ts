import dotenv from "dotenv";
import logger from "morgan";
import express, { Request, Response } from "express";
import mysql, { ConnectionOptions } from 'mysql2/promise';

dotenv.config();
const app = express();

const PORT = process.env.PORT;

const access: ConnectionOptions = {
  host: '127.0.0.1',
  user: 'isucon',
  password: 'isucon',
  database: 'isucon',
};

const conn = mysql.createConnection(access);

app.set('view engine', 'ejs');
app.use(logger("dev"));

app.use('/', express.static(__dirname + '/../public'));

app.get("/", async (request: Request, response: Response) => {
  try {
    const result = await ((await conn).query('SELECT * FROM photos'));
    response.render("./index.ejs", {
      items: result[0],
    });
  } catch (error: any) {
    throw new Error("Error: " + error.message);
  }
});

app.listen(PORT, () => {
  console.log("Server running at PORT: ", PORT);
}).on("error", (error) => {
  // エラーの処理
  throw new Error(error.message);
});
