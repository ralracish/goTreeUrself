module.exports = function (sequelize, DataTypes) {
  let Trees = sequelize.define('Trees', {
    id: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true
    },
    treename: {
      type: DataTypes.STRING
    },
    treetype: {
      type: DataTypes.STRING
    }
  });

  return Trees;
};
