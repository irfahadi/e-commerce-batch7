import { Router } from 'express';
import { sequelize } from '../models/index';



const readCart = async (req, res) => {
    const cart = await req.context.models.cart.findAll();
    return res.send(cart);
}

const findIdCart = async (req, res) => {
    const cart = await req.context.models.cart.findByPk(
        req.params.cartId,
    );
    return res.send(cart);
};

// const addChart = async (req,res) => {
//     const {cart_created_on, cart_is_boolean, cart_total} = req.body;
//     const cart = await req.context.models.cart.create({
//         cart_created_on: cart_created_on,
//         cart_is_boolean: cart_is_boolean,
//         cart_total: cart_total
//     });
//     return res.send(cart);
// };

// const editChart = async (req,res) => {
//     const {cart_created_on, cart_is_boolean, cart_total} = req.body;
//     const cart = await req.context.models.cart.update({
//         cart_created_on: cart_created_on,
//         cart_is_boolean: cart_is_boolean,
//         cart_total: cart_total
//     },
//     {
//         where: {cart_id: req.params.cartId}
//     });
//     return res.sendStatus(200);
// };


export default {
    readCart,
    findIdCart
    // addChart,
    // editChart
}
