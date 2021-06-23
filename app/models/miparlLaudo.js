module.exports = function(sequelize, DataTypes){
	var MiparlLaudo =  sequelize.define('MiparlLaudo', {
		
	},
	{
		freezeTableName: true,
		timestamps: false,
		tableName:'miparllaudo',
		classMethods: {
			associate: function(models){
				MiparlLaudo.hasOne(models.Laudo, {onDelete:'cascade', foreignKey: 'id'});
				MiparlLaudo.hasOne(models.Miparl, {onDelete:'cascade', foreignKey: 'id'});
			}
		}
	});
	return MiparlLaudo;

};
