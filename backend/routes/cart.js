import { Router } from "express";
import cartCrtl from "../controllers/cart.controller";
import apiCart from "../controllers/cart.controller";

const router = Router();

router.get("/", cartCrtl.readCartMethod);
router.get("/addCart", apiCart.createCartItem,cartCrtl.readCartMethod);
router.get("/", );

export default router;
