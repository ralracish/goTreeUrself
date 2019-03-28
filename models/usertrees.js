module.exports = function (sequelize, DataTypes) {
  let Usertrees = sequelize.define('Usertrees', {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true
    },
    longitude: {
      type: DataTypes.INTEGER
    },
    latitude: {
      type: DataTypes.INTEGER
    },
    date_planted: {
      type: DataTypes.INTEGER
    },
    tree_image_link: {
      type: DataTypes.INTEGER
    }
  });

  Usertrees.associate = (models) => {
    Usertrees.belongsTo(models.User, {
      foreignKey: {
        allowNull: false
      }
    });

    Usertrees.belongsTo(models.Trees, {
      foreignKey: {
        allowNull: false
      }
    });
  };

  return Usertrees;
};
