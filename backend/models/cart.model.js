const cart = (sequelize,DataTypes)=>{
<<<<<<< HEAD

    const cart = sequelize.define('cart', {
        cart_id: {
          autoIncrement: true,
          type: DataTypes.INTEGER,
          allowNull: false,
          primaryKey: true
        },
        cart_created_on: {
          type: DataTypes.DATE,
          allowNull: true
        },
        cart_is_closed: {
          type: DataTypes.BOOLEAN,
          allowNull: true
        },
        cart_total: {
          type: DataTypes.INTEGER,
          allowNull: true
=======
    const Cart = sequelize.define('cart', {
        cart_id: {
            autoIncrement: true,
            type: DataTypes.INTEGER,
            allowNull: false,
            primaryKey: true
        },
        cart_created_on: {
            type: DataTypes.DATE,
            allowNull: true
        },
        cart_is_closed: {
            type: DataTypes.BOOLEAN,
            allowNull: true
        },
        cart_total: {
            type: DataTypes.INTEGER,
            allowNull: true
>>>>>>> 7d727bd3ceb07b4047cd92bcc3cec5e80df66094
        },
        cart_user_id: {
          type: DataTypes.INTEGER,
          allowNull: false,
          references: {
<<<<<<< HEAD
            model: 'users',
            key: 'user_id'
          }
        }
      }, {
=======
              model: 'users',
              key: 'user_id'
            }
        }
    }, {
>>>>>>> 7d727bd3ceb07b4047cd92bcc3cec5e80df66094
        sequelize,
        tableName: 'cart',
        schema: 'public',
        timestamps: false,
        indexes: [
<<<<<<< HEAD
          {
            name: "cart_pkey",
            unique: true,
            fields: [
              { name: "cart_id" },
            ]
          },
        ]
      });
      return cart
=======
            {
                name: "cart_pkey",
            unique: true,
            fields: [
                { name: "cart_id" },
            ]
        },
        ]
    });
    Cart.associate = models => {
      Cart.hasMany(models.orderDetail,{foreignKey : 'ordi_cart_id'})
    }
      return Cart;
>>>>>>> 7d727bd3ceb07b4047cd92bcc3cec5e80df66094
}
export default cart