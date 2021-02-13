
const createCartItem = async (req, seq, next) => {
  const { cart_id, cart_user_id, cart_is_closed, items } = req.body;
//   console.log("");
    let cartId = null;
    const total = items.reduce((sum,el) => sum + Number(el.qty));

  if (cart_id === null || cart_id === undefined) {
    const cartId = await req.context.models.cart
      .create({
        cart_toal: null,
        cart_created_on: Date.now,
        cart_is_closed: cart_is_closed,
        cart_user_id: cart_user_id,
      })
      .catch((error) => {
        return res.send(
          JSON.stringify({
            name: error.name,
            message: error.message,
          })
        );
      });
  }

  //   harus looping untuk mendapat banyak items
  if ((cartId, cart_id !== null)) {
    // items.forEach(element => {
    //     console.log(cart_id);
    // })
    items.map(async (el) => {
      await req.context.models.orderDetail.create({
        ordi_prod_id: el.prod_id,
        ordi_quantity: el.qty,
        ordi_price: el.price,
        ordi_cart_id: cartId.cart_id,
        ordi_order_namee: "#1",
      });
    });
  }
  next();
};
// const editCartMethod = async (req, res) => {
//     const { cate_name } = req.body;
//     const category = await req.context.models.category.update({
//         cate_name: cate_name
//     }, {
//         where: { cate_id: req.params.categoryId }
//     });
//     return res.sendStatus(200);
// };
