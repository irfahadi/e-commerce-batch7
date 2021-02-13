import orderdetail from"../models/orderdetail.model";

const readOrderDetailMethod = async (req, res) => {
    const orderdetail = await req.context.models.orderdetail.findAll();
    return res.send(orderdetail);
}

//filter pencarian data
const findCartMethod = async (req, res) => {
    const category = await req.context.models.cart.findByPk(
        req.params.cartId,
    );
    return res.send(cart);
};

export default {
    readOrderDetailMethod,
    findCartMethod
}