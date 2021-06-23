module.exports = function(sequelize, DataTypes){
    var Miparl = sequelize.define('Miparl', {
        id: {
            type: DataTypes.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        nome: {
            type: DataTypes.STRING,
            validate:{
                len:{
                    args:[3, 45],
                    msg: "O campo dever ter entre 3 e 45 caracteres."
                }
            }
        },
        descricao: {
            type: DataTypes.STRING,
            allowNull: false,
            validade:{
                len:{
                    args:[3,],
                    msg: "O campo deve ter no minimo 3 caracteres."
                }
            }
        },
        
    },
    {
        freezeTableName: true,
        timestamps: false,
        name: {singular: 'miparl', plural: 'miparls'},
        tableName:'miparl',
        classMethods: {
            associate: function(models){
                Miparl.belongsToMany(models.Laudo, {through:'MiparlLaudo', foreignKey:'miparlId'});
            }
        }
    });

    return Miparl;

};
