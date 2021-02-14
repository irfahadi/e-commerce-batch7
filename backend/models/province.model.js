const province = (sequelize, DataTypes) => {
 const province = sequelize.define('province', {
    prov_id: {
      autoIncrement: true,
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    prov_name: {
      type: DataTypes.STRING(100),
      allowNull: true
    }
  }, {
    sequelize,
    tableName: 'province',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "province_pkey",
        unique: true,
        fields: [
          { name: "prov_id" },
        ]
      },
    ]
  });

  //tambah
  province.associate = models => {
        province.hasMany(models.city, {foreignKey: 'city_prov_id', onDelete: 'CASCADE'}); // city_prov_id berdasrakan foreign key city
  };
  // // table Countries belong to Regions, pastikan relasi fk di set sesuai relasi di table, 
<<<<<<< HEAD
  // province.associate = models => {
  // province.belongsTo(models.province,{foreignKey: 'prov_id'});
  // };
=======
 
>>>>>>> 88106e10077c552a64a6c4b61aaa5a785a2c8927

  return province;
};

export default province;