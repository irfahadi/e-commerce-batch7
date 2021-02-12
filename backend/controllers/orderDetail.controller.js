import { Router } from 'express';
import { sequelize } from '../models/index';


const findOrdiMethod = async (req, res) => {
    const orderDetail = await req.context.models.orderDetail.findByPk(req.params.ordi_quantity);
    return res.send(orderDetail);
};

const readOrdiMethod = async (req, res) => {
    const orderDetail = await req.context.models.orderDetail.findAll();
    return res.send(orderDetail);
};

export default{
    readOrdiMethod,
    findOrdiMethod
};