'use strict';

module.exports = function(app){
	var controller = app.controllers.miparl;


	app.route('/miparl')
		.get(controller.listaTodos)
		.post(controller.salvaMiparl);

	app.route('/miparl/:id')
		.delete(controller.removeMiparl)
		.get(controller.obtemMiparl)
		.put(controller.updateMiparl);

};
