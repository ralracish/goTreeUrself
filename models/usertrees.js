module.exports = function (sequelize, DataTypes) {
  let Usertrees = sequelize.define('Usertrees', {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true
    },
    longitude: {
      type: DataTypes.STRING
    },
    latitude: {
      type: DataTypes.STRING
    },
    date_planted: {
      type: DataTypes.INTEGER
    },
    tree_image_link: {
      type: DataTypes.STRING
    },
    users_tree_name: {
      type: DataTypes.STRING
    },
    treename: {
      type: DataTypes.STRING
    },
    treetype: {
      type: DataTypes.STRING
    }
  });

  Usertrees.associate = (models) => {
    Usertrees.belongsTo(models.User, {
      foreignKey: {
        allowNull: false
      }
    });
  };

  return Usertrees;
};
