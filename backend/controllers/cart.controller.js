import { Router } from 'express';
import { sequelize } from '../models/index';


const findCartMethod = async (req, res) => {
    const cart = await req.context.models.cart.findByPk(req.params.cart_id);
    return res.send(cart);
};

const readCartMethod = async (req, res) => {
    const cart = await req.context.models.cart.findAll();
    return res.send(cart);
};
// const addCartMethod = async (req, res) => {
//     const {
//       cart_id,
//       cart_created_on,
//       cart_is_closed,
//       cart_total,
//     } = req.body;

//     const cart = await req.context.models.cart.create({
//       cart_id: cart_id,
//       cart_created_on: cart_created_on,
//       cart_is_total: cart_created_on,
//       cart_is_closed: cart_is_closed,
//       cart_total: cart_total,
//     })
//     return res.send(cart);
//   }

// const editCartMethod = async (req, res) => {
//     const {
//       cart_id,
//       cart_created_on,
//       cart_is_closed,
//       cart_total,
//     } = req.body;
//     const cart = await req.context.models.cart.update(
//       {
//         cart_id: cart_id,
//         cart_created_on: cart_created_on,
//         cart_is_closed: cart_is_closed,
//         cart_total: cart_total,
//         cart_user_id: cart_user_id, // nama attribute yg akan di update
//       },{ 
//           where: { cart_id: req.params.cart_id } }
//     )
//     return res.sendStatus(200);
//   }
// const deleteCartMethod = async (req, res) => {
//     const result = await req.context.models.cart.destroy({
//       where: { cart_id: req.params.cart_id },
//     });
  
//     return res.send(true);
//   };

export default {
    findCartMethod,
    readCartMethod,
    // addCartMethod,
    // editCartMethod,
    // deleteCartMethod
    //findCartWImage,
  };