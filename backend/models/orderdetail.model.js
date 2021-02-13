const orderdetail = (sequelize, DataTypes) => {
  const orderdetail =  sequelize.define('order_detail', {
    ordi_quantity: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    ordi_price: {
      type: DataTypes.INTEGER,
      allowNull: true
    },
    ordi_cart_id: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    ordi_prod_id: {
      type: DataTypes.INTEGER,
      allowNull: false
    },
    ordi_order_name: {
      type: DataTypes.STRING,
      allowNull: false,
      references: {
        model: 'orders',
        key: 'order_name'
      }
    }
  }, {
    sequelize,
    tableName: 'order_detail',
    schema: 'public',
    timestamps: false
  });

    // menghilangkan atribut id
    orderdetail.removeAttribute('id')
    return orderdetail;
}

export default orderdetail;