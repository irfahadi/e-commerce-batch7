const readOrderDetail = async (req, res) => {
    const orderDetail = await req.context.models.orderDetail.findAll();
    return res.send(orderDetail);
}

const deleteOrderDetail = async (req,res) => {
    const orderDetail = await req.context.models.orderDetail.destroy({
        where: {user_id: req.params.userId},
    });
    return res.send(true);
};

export default{
    readOrderDetail
}