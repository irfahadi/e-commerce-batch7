import Sequelize from 'sequelize';

export const sequelize = new Sequelize(
    process.env.DATABASE,
    process.env.DATABASE_USER,
    process.env.DATABASE_PASSWORD,
    {
      dialect: 'postgres',
    },
  );

const Op = Sequelize.Op;

const models = {
    category : sequelize.import('./category.model'),
    users : sequelize.import('./users.model'),
    address : sequelize.import('./address.model'),
    province : sequelize.import('./province.model'),
    city : sequelize.import('./city.model'),
    productImage : sequelize.import('./productImage.model'),
    roles : sequelize.import('./roles.model'),
    product : sequelize.import('./product.model'),
    userRole : sequelize.import('./userRole.model'),
<<<<<<< HEAD

=======
>>>>>>> ac5de5c990e6519112bbb9b5beed7263faee8df2
    cart : sequelize.import('./cart.model'),
    orderDetail : sequelize.import('./orderDetail.model'),
    orders : sequelize.import('./orders.model'),


<<<<<<< HEAD
    cart : sequelize.import('./cart.model')

=======
>>>>>>> ac5de5c990e6519112bbb9b5beed7263faee8df2
};

Object.keys(models).forEach(key => {
    if ('associate' in models[key]) {
      models[key].associate(models);
    }
  });


export {Op };
export default models;
// // export { sequelize };
// export default models;
