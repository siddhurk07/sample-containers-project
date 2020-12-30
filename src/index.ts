import * as express from "express";
import { taskRouter } from "./routes/task.router";

const PORT = 8080;

let app = express();

app.use(taskRouter);

app.listen(PORT, () => {
  console.log(`Server listening on port ${PORT}`);
});
