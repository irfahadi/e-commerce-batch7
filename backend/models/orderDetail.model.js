const orderDetail = (sequelize, DataTypes)=>{
<<<<<<< HEAD
    const OrderDetail= sequelize.define('order_detail', {
=======
    const OrderDetail = sequelize.define('order_detail', {
>>>>>>> 70d23ef9cc191a5cd85e9f58989f032d01f80ecd
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
      OrderDetail.removeAttribute('id');
<<<<<<< HEAD
      return OrderDetail;
}

=======
      OrderDetail.associate = models => {
        OrderDetail.belongsTo(models.cart,{foreignKey : 'ordi_cart_id'})
      }
      return OrderDetail;
    }
>>>>>>> 70d23ef9cc191a5cd85e9f58989f032d01f80ecd
export default orderDetail;