import { SongRouter, UserRouter, PlayListRouter } from "../components";
const listRoutes = [
    ["/song", SongRouter],
    ["/user", UserRouter],
    ["/playlist", PlayListRouter],
    ];

export const routes = (app) => {
  listRoutes.forEach(([path, controller]) => {
    app.use(path, controller);
  });
};