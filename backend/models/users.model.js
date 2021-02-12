const users = (sequelize,DataTypes)=>{
    return sequelize.define('users', {
        user_id: {
          autoIncrement: true,
          type: DataTypes.INTEGER,
          allowNull: false,
          primaryKey: true
        },
        user_name: {
          type: DataTypes.STRING(55),
          allowNull: true
        },
        user_email: {
          type: DataTypes.STRING(55),
          allowNull: true
        },
        user_password: {
          type: DataTypes.STRING(255),
          allowNull: true
        }
      }, {
        sequelize,
        tableName: 'users',
        schema: 'public',
        timestamps: false,
        indexes: [
          {
            name: "users_pkey",
            unique: true,
            fields: [
              { name: "user_id" },
            ]
          },
        ]
      });
<<<<<<< HEAD
      // Users.associate = models => {
      //   Users.hasOne(models.address,{foreignKey : 'add_user_id',onDelete : 'CASCADE'});
      // };
      // return Users;
=======
      Users.associate = models => {
        Users.hasOne(models.address,{foreignKey : 'add_user_id',onDelete : 'CASCADE'});
      };
      return Users;
>>>>>>> 7d727bd3ceb07b4047cd92bcc3cec5e80df66094
}

export default users