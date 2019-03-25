define("ToDo_ch.MainFlow.controller", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.controller", "ToDo_ch.Common.controller", "ToDo_ch.MainFlow.controller$debugger"], function (exports, OutSystems, ToDo_chModel, ToDo_chController, ToDo_ch_CommonController, ToDo_ch_MainFlow_Controller_debugger) {
var OS = OutSystems.Internal;
var ToDo_ch_MainFlowController = exports;
var Controller = (function (_super) {
__extends(Controller, _super);
function Controller() {
_super.apply(this, arguments);
}
Controller.prototype.getDefaultTimeout = function () {
return ToDo_chController.default.defaultTimeout;
};
Controller.prototype.handleError = function (ex, callContext) {
var varBag = {};
var controller = this.controller;
OS.Logger.trace("MainFlow", OS.Exceptions.getMessage(ex), ex.name);
return ToDo_ch_CommonController.default.handleError(ex, callContext);


};
return Controller;
})(OS.Controller.BaseController);
ToDo_ch_MainFlowController.default = new Controller();
});

define("ToDo_ch.MainFlow.controller$debugger", ["exports", "OutSystems/ClientRuntime/Debugger", "OutSystems/ClientRuntime/Main"], function (exports, Debugger, OutSystems) {
var OS = OutSystems.Internal;
});
