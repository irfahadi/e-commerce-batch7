import 'dotenv/config'
import cors from "cors";
import express from "express";
import models, { sequelize } from './models';
import routes from './routes';
import apiCartOrder from './controllers/apiCartOrder';


const port = process.env.PORT || 1337
const app = express();
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
// midleware
app.use(async (req, res, next) => {
  req.context = {models};  
  next();
});

// Routes 
app.use('/api/users',routes.users);
app.use('/api/province',routes.province);
app.use('/api/productimage',routes.productImage);
app.use('/api/city',routes.city);
app.use('/api/roles',routes.roles);
app.use('/api/address',routes.address);
app.use('/api/category',routes.category);
<<<<<<< HEAD
app.use('/api/product',routes.product);
app.use('/api/user_role',routes.userRole);
app.use('/api/cart',routes.cart);
app.use('/api/orderDetail',routes.orderDetail);
app.use('/api/orders',routes.orders);

=======
app.use('/api/product',routes.product)
app.use('/api/userRole',routes.userRole)
app.use('/api/cart',routes.cart) 
>>>>>>> 79cb098348b8cb7b69ba00829ae3fddc4eedacbe

// Start
const dropDatabaseSync = false;

sequelize.sync({ force: dropDatabaseSync }).then(async () => {
  if (dropDatabaseSync) {
    console.log("Do Nothing")
  }
  app.listen(process.env.PORT, () =>
    console.log(`Server is listening on port ${process.env.PORT}!`),
  );
});