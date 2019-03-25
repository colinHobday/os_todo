define("ToDo_ch.controller$OfflineDataSync", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.controller", "ToDo_ch.controller$ServerAction.ServerDataSync"], function (exports, OutSystems, ToDo_chModel, ToDo_chController) {
var OS = OutSystems.Internal;
ToDo_chController.default.offlineDataSync$Action = function (syncUnitIn, callContext) {
var varBag = {};
callContext = controller.callContext(callContext);
var vars = new OS.DataTypes.VariableHolder(new (controller.constructor.getVariableGroupType("ToDo_ch.OfflineDataSync$vars"))());
vars.value.syncUnitInLocal = syncUnitIn;
varBag.callContext = callContext;
varBag.vars = vars;
OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:LpmGhy9cE0mCR0BZzhJoJA:/ClientActionFlows.LpmGhy9cE0mCR0BZzhJoJA:9fW7JZ_EcTcjt12Bg_nsGA", "ToDo_ch", "OfflineDataSync", "NRFlows.ClientActionFlow", callContext.id, varBag);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:r3w04DYy+UO88Hnbcauheg", callContext.id);
return OS.Flow.executeAsyncFlow(function () {
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:NSg3uwX2z0KDzIngfCcKnw", callContext.id);
// Execute Action: ServerDataSync
return controller.serverDataSync$ServerAction(vars.value.syncUnitInLocal, callContext).then(function () {
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:CutXTLFsZE632Xm9fh21Kg", callContext.id);
});
}).then(function () {
return ;
}).then(function (res) {
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:LpmGhy9cE0mCR0BZzhJoJA", callContext.id);
return res;

}).catch(function (ex) {
OutSystemsDebugger.handleException(ex, callContext.id);
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:LpmGhy9cE0mCR0BZzhJoJA", callContext.id);
throw ex;

});
};
var controller = ToDo_chController.default;
ToDo_chController.default.constructor.registerVariableGroupType("ToDo_ch.OfflineDataSync$vars", [{
name: "SyncUnit",
attrName: "syncUnitInLocal",
mandatory: true,
dataType: OS.Types.Text,
defaultValue: function () {
return "";
}
}]);
ToDo_chController.default.clientActionProxies.offlineDataSync$Action = function (syncUnitIn) {
syncUnitIn = (syncUnitIn === undefined) ? "" : syncUnitIn;
return controller.executeActionInsideJSNode(ToDo_chController.default.offlineDataSync$Action.bind(controller, OS.DataConversion.JSNodeParamConverter.from(syncUnitIn, OS.Types.Text)), OS.Controller.BaseViewController.activeScreen ? OS.Controller.BaseViewController.activeScreen.callContext() : undefined, function (actionResults) {
return {};
});
};
});

define("ToDo_ch.controller$OfflineDataSyncConfiguration", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.controller"], function (exports, OutSystems, ToDo_chModel, ToDo_chController) {
var OS = OutSystems.Internal;
ToDo_chController.default.offlineDataSyncConfiguration$Action = function (callContext) {
var varBag = {};
callContext = controller.callContext(callContext);
var outVars = new OS.DataTypes.VariableHolder(new (controller.constructor.getVariableGroupType("ToDo_ch.OfflineDataSyncConfiguration$outVars"))());
varBag.callContext = callContext;
varBag.outVars = outVars;
try {OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:X7IJk9rbwEG8Cc2qzpBYAA:/ClientActionFlows.X7IJk9rbwEG8Cc2qzpBYAA:caWfCxDC_+ez9PImlgRZBg", "ToDo_ch", "OfflineDataSyncConfiguration", "NRFlows.ClientActionFlow", callContext.id, varBag);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:4uf+P18taEuIWJBnuSJ1Gw", callContext.id);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:i_wEoadk3kWP4Wc1gPBpjA", callContext.id);
// SyncOnOnline = False
outVars.value.syncOnOnlineOut = false;
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:8FTfXO_sYEiA3QGV5j9Caw", callContext.id);
// SyncOnLogin = False
outVars.value.syncOnLoginOut = false;
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:Et6hhpxEZEq61+V1aOfXNg", callContext.id);
// SyncOnResume = False
outVars.value.syncOnResumeOut = false;
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:XUGCZiBFuEmTNw_FElJlcw", callContext.id);
// RetryOnError = False
outVars.value.retryOnErrorOut = false;
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:QziPTs5cUUOu7YJ52192jA", callContext.id);
// RetryIntervalInSeconds = 30
outVars.value.retryIntervalInSecondsOut = 30;
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:9P4z+cemjUqImNOz1PrWig", callContext.id);
return outVars.value;
} catch (ex) {
OutSystemsDebugger.handleException(ex, callContext.id);
throw ex;
} finally {
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:X7IJk9rbwEG8Cc2qzpBYAA", callContext.id);
}

};
var controller = ToDo_chController.default;
ToDo_chController.default.constructor.registerVariableGroupType("ToDo_ch.OfflineDataSyncConfiguration$outVars", [{
name: "SyncOnOnline",
attrName: "syncOnOnlineOut",
mandatory: false,
dataType: OS.Types.Boolean,
defaultValue: function () {
return false;
}
}, {
name: "SyncOnLogin",
attrName: "syncOnLoginOut",
mandatory: false,
dataType: OS.Types.Boolean,
defaultValue: function () {
return false;
}
}, {
name: "SyncOnResume",
attrName: "syncOnResumeOut",
mandatory: false,
dataType: OS.Types.Boolean,
defaultValue: function () {
return false;
}
}, {
name: "RetryOnError",
attrName: "retryOnErrorOut",
mandatory: false,
dataType: OS.Types.Boolean,
defaultValue: function () {
return false;
}
}, {
name: "RetryIntervalInSeconds",
attrName: "retryIntervalInSecondsOut",
mandatory: false,
dataType: OS.Types.Integer,
defaultValue: function () {
return 0;
}
}]);
ToDo_chController.default.clientActionProxies.offlineDataSyncConfiguration$Action = function () {
return controller.executeActionInsideJSNode(ToDo_chController.default.offlineDataSyncConfiguration$Action.bind(controller), OS.Controller.BaseViewController.activeScreen ? OS.Controller.BaseViewController.activeScreen.callContext() : undefined, function (actionResults) {
return {
SyncOnOnline: OS.DataConversion.JSNodeParamConverter.to(actionResults.syncOnOnlineOut, OS.Types.Boolean),
SyncOnLogin: OS.DataConversion.JSNodeParamConverter.to(actionResults.syncOnLoginOut, OS.Types.Boolean),
SyncOnResume: OS.DataConversion.JSNodeParamConverter.to(actionResults.syncOnResumeOut, OS.Types.Boolean),
RetryOnError: OS.DataConversion.JSNodeParamConverter.to(actionResults.retryOnErrorOut, OS.Types.Boolean),
RetryIntervalInSeconds: OS.DataConversion.JSNodeParamConverter.to(actionResults.retryIntervalInSecondsOut, OS.Types.Integer)
};
});
};
});

define("ToDo_ch.controller$TriggerOfflineDataSync", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.controller", "OutSystemsUIMobile.controller", "OutSystemsUIMobile.controller$StartOfflineDataSync", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, ToDo_chModel, ToDo_chController, OutSystemsUIMobileController) {
var OS = OutSystems.Internal;
ToDo_chController.default.triggerOfflineDataSync$Action = function (syncUnitIn, discardPendingSyncUnitsIn, callContext) {
var varBag = {};
callContext = controller.callContext(callContext);
var vars = new OS.DataTypes.VariableHolder(new (controller.constructor.getVariableGroupType("ToDo_ch.TriggerOfflineDataSync$vars"))());
vars.value.syncUnitInLocal = syncUnitIn;
vars.value.discardPendingSyncUnitsInLocal = discardPendingSyncUnitsIn;
varBag.callContext = callContext;
varBag.vars = vars;
try {OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:ewY24h0Rok2TVMPjaBRz4g:/ClientActionFlows.ewY24h0Rok2TVMPjaBRz4g:yVL8Ui4NEag39G++wvv5gQ", "ToDo_ch", "TriggerOfflineDataSync", "NRFlows.ClientActionFlow", callContext.id, varBag);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:nwD+mAhpF0C5lbeoGhWn7A", callContext.id);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:9zjg8WmArkmExeOIJ+8uyQ", callContext.id);
// Execute Action: StartOfflineDataSync
OutSystemsUIMobileController.default.startOfflineDataSync$Action(vars.value.syncUnitInLocal, vars.value.discardPendingSyncUnitsInLocal, callContext);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:f3NRrVvFPkO4qaGalBP3Vw", callContext.id);
return ;
} catch (ex) {
OutSystemsDebugger.handleException(ex, callContext.id);
throw ex;
} finally {
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:ewY24h0Rok2TVMPjaBRz4g", callContext.id);
}

};
var controller = ToDo_chController.default;
ToDo_chController.default.constructor.registerVariableGroupType("ToDo_ch.TriggerOfflineDataSync$vars", [{
name: "SyncUnit",
attrName: "syncUnitInLocal",
mandatory: false,
dataType: OS.Types.Text,
defaultValue: function () {
return "";
}
}, {
name: "DiscardPendingSyncUnits",
attrName: "discardPendingSyncUnitsInLocal",
mandatory: false,
dataType: OS.Types.Boolean,
defaultValue: function () {
return false;
}
}]);
ToDo_chController.default.clientActionProxies.triggerOfflineDataSync$Action = function (syncUnitIn, discardPendingSyncUnitsIn) {
syncUnitIn = (syncUnitIn === undefined) ? "" : syncUnitIn;
discardPendingSyncUnitsIn = (discardPendingSyncUnitsIn === undefined) ? false : discardPendingSyncUnitsIn;
return controller.executeActionInsideJSNode(ToDo_chController.default.triggerOfflineDataSync$Action.bind(controller, OS.DataConversion.JSNodeParamConverter.from(syncUnitIn, OS.Types.Text), OS.DataConversion.JSNodeParamConverter.from(discardPendingSyncUnitsIn, OS.Types.Boolean)), OS.Controller.BaseViewController.activeScreen ? OS.Controller.BaseViewController.activeScreen.callContext() : undefined, function (actionResults) {
return {};
});
};
});

define("ToDo_ch.controller$ServerAction.ServerDataSync", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.controller"], function (exports, OutSystems, ToDo_chModel, ToDo_chController) {
var OS = OutSystems.Internal;
ToDo_chController.default.serverDataSync$ServerAction = function (syncUnitIn, callContext) {
var controller = this.controller;
var inputs = {
SyncUnit: OS.DataConversion.ServerDataConverter.to(syncUnitIn, OS.Types.Text)
};
return controller.callServerAction("ServerDataSync", "screenservices/ToDo_ch/ActionServerDataSync", "xuSMtfzaA7RStqZZdu0hGw", inputs, controller.callContext(callContext), OutSystemsDebugger.getRequestHeaders(callContext.id), function (json, headers) {
OutSystemsDebugger.processResponseHeaders(callContext.id, headers);
}).then(function (outputs) {
});
};
});
define("ToDo_ch.controller", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.controller$debugger"], function (exports, OutSystems, ToDo_chModel, ToDo_ch_Controller_debugger) {
var OS = OutSystems.Internal;
var ToDo_chController = exports;
var Controller = (function (_super) {
__extends(Controller, _super);
function Controller() {
_super.apply(this, arguments);
}
Controller.prototype.clientActionProxies = {};
Controller.prototype.roles = {};
Controller.prototype.defaultTimeout = 10;
Controller.prototype.getDefaultTimeout = function () {
return ToDo_chController.default.defaultTimeout;
};
return Controller;
})(OS.Controller.BaseModuleController);
ToDo_chController.default = new Controller();
});
define("ToDo_ch.controller$debugger", ["exports", "OutSystems/ClientRuntime/Debugger", "OutSystems/ClientRuntime/Main"], function (exports, Debugger, OutSystems) {
var OS = OutSystems.Internal;
var metaInfo = {
"ohKLgVfudEO9WIjbR4IDJg": {
getter: function (varBag, idService) {
return varBag.vars.value.syncUnitInLocal;
},
dataType: OS.Types.Text
},
"ISb8Rf1h5kui7U4VaeJ4Qg": {
getter: function (varBag, idService) {
return varBag.outVars.value.syncOnOnlineOut;
},
dataType: OS.Types.Boolean
},
"xCO9GsKcHEShU+X2TOlOFg": {
getter: function (varBag, idService) {
return varBag.outVars.value.syncOnLoginOut;
},
dataType: OS.Types.Boolean
},
"5Qpcg_GuwE6Ynei0vKslOg": {
getter: function (varBag, idService) {
return varBag.outVars.value.syncOnResumeOut;
},
dataType: OS.Types.Boolean
},
"5IHHC5Ck6EWlngzbULlcXg": {
getter: function (varBag, idService) {
return varBag.outVars.value.retryOnErrorOut;
},
dataType: OS.Types.Boolean
},
"n6dhnmBl802fr13DcvtUlw": {
getter: function (varBag, idService) {
return varBag.outVars.value.retryIntervalInSecondsOut;
},
dataType: OS.Types.Integer
},
"a90n2WJUTU6syYn3y31SVA": {
getter: function (varBag, idService) {
return varBag.vars.value.syncUnitInLocal;
},
dataType: OS.Types.Text
},
"Aqrrh8UMfUa806dMfGJNCQ": {
getter: function (varBag, idService) {
return varBag.vars.value.discardPendingSyncUnitsInLocal;
},
dataType: OS.Types.Boolean
}
};
OutSystemsDebugger.registerMetaInfo(metaInfo);
});
