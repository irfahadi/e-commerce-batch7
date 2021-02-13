import cart from "../models/cart.model";

// melihat semua data
const readCartMethod = async (req, res) => {
  const cart = await req.context.models.cart.findAll();
  return res.send(cart);
};

//filter pencarian data
const findCartMethod = async (req, res) => {
  const cart = await req.context.models.cart.findByPk(req.params.cartId);
  return res.send(cart);
};

// tambah data cart
const addCartMethod = async (req, res) => {
    const {
      cart_created_on,
      cart_is_closed,
      cart_total,
      cart_user_id,
    } = req.body;
    const cart = await req.context.models.cart.create({
      cart_created_on: cart_created_on,
      cart_is_closed: cart_is_closed,
      cart_total: cart_total,
      cart_user_id: cart_user_id,
    });
    return res.send(cart);
  };
  
//hapus data
const deleteCartMethod = async (req, res) => {
  const result = await req.context.models.cart.destroy({
    where: { cart_id: req.params.cartId },
  });

  return res.send(true);
};

export default {
  readCartMethod,
  findCartMethod,
  deleteCartMethod,
  createCartItem,
  addCartMethod
};
