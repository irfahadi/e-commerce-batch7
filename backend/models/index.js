import Sequelize from 'sequelize'

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
    address : sequelize.import('./address.model'),
    province : sequelize.import('./province.model'),
    city : sequelize.import('./city.model'),
    productImage : sequelize.import('./productImage.model'),
    product : sequelize.import('./product.model'),
    roles : sequelize.import('./roles.model')
};

Object.keys(models).forEach(key => {
    if ('associate' in models[key]) {
      models[key].associate(models);
    }
  });


export { Op };
export default models;


