﻿define("ToDo_ch.Common.OfflineDataSyncEvents.mvc$model", ["OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.controller", "OutSystemsUIMobile.controller", "OutSystemsUIMobile.Private.OfflineDataSyncCore.mvc$model", "ToDo_ch.controller$OfflineDataSyncConfiguration", "OutSystemsUIMobile.controller$ConfigureOfflineDataSync", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile", "OutSystemsUIMobile.controller$EndOfflineDataSync", "ToDo_ch.controller$OfflineDataSync"], function (OutSystems, ToDo_chModel, ToDo_chController, OutSystemsUIMobileController, OutSystemsUIMobile_Private_OfflineDataSyncCore_mvcModel) {
var OS = OutSystems.Internal;


var VariablesRecord = (function (_super) {
__extends(VariablesRecord, _super);
function VariablesRecord(defaults) {
_super.apply(this, arguments);
}
VariablesRecord.attributesToDeclare = function () {
return [].concat(_super.attributesToDeclare.call(this));
};
VariablesRecord.init();
return VariablesRecord;
})(OS.DataTypes.GenericRecord);
var WidgetsRecord = (function (_super) {
__extends(WidgetsRecord, _super);
function WidgetsRecord() {
_super.apply(this, arguments);
}
WidgetsRecord.getWidgetsType = function () {
return {};
};

return WidgetsRecord;
})(OS.Model.BaseWidgetRecordMap);
var Model = (function (_super) {
__extends(Model, _super);
function Model() {
_super.apply(this, arguments);
}
Model.getVariablesRecordConstructor = function () {
return VariablesRecord;
};
Model.getWidgetsRecordConstructor = function () {
return WidgetsRecord;
};
Model._hasValidationWidgetsValue = undefined;
Object.defineProperty(Model, "hasValidationWidgets", {
enumerable: true,
configurable: true,
get: function () {
if((Model._hasValidationWidgetsValue === undefined)) {
Model._hasValidationWidgetsValue = OutSystemsUIMobile_Private_OfflineDataSyncCore_mvcModel.hasValidationWidgets;
}

return Model._hasValidationWidgetsValue;
}
});

Model.prototype.setInputs = function (inputs) {
};
return Model;
})(OS.Model.VariablelessViewModel);
return new OS.Model.ModelFactory(Model);
});
define("ToDo_ch.Common.OfflineDataSyncEvents.mvc$view", ["OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.controller", "OutSystemsUIMobile.controller", "react", "OutSystems/ReactView/Main", "ToDo_ch.Common.OfflineDataSyncEvents.mvc$model", "ToDo_ch.Common.OfflineDataSyncEvents.mvc$controller", "OutSystemsUIMobile.Private.OfflineDataSyncCore.mvc$view", "OutSystems/ReactWidgets/Main", "ToDo_ch.controller$OfflineDataSyncConfiguration", "OutSystemsUIMobile.controller$ConfigureOfflineDataSync", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile", "OutSystemsUIMobile.controller$EndOfflineDataSync", "ToDo_ch.controller$OfflineDataSync"], function (OutSystems, ToDo_chModel, ToDo_chController, OutSystemsUIMobileController, React, OSView, ToDo_ch_Common_OfflineDataSyncEvents_mvc_model, ToDo_ch_Common_OfflineDataSyncEvents_mvc_controller, OutSystemsUIMobile_Private_OfflineDataSyncCore_mvc_view, OSWidgets) {
    var OS = OutSystems.Internal;
var PlaceholderContent = OSView.Widget.PlaceholderContent;
var IteratorPlaceholderContent = OSView.Widget.IteratorPlaceholderContent;


    var View = (function (_super) {
        __extends(View,_super);
        function View() {
            try {
                this.initialize.apply(this, arguments);
            } catch (error) {
                View.handleError(error);
                throw error;
            }
        }
        View.prototype.initialize = function() {
            _super.apply(this, arguments);
        };
        View.displayName = "Common.OfflineDataSyncEvents";
        View.getCssDependencies = function() {
            return ["css/OutSystemsReactWidgets.css"];
        };
        View.getJsDependencies = function() {
            return ["scripts/OutSystemsUIMobile.OfflineDataSync.js"];
        };
        View.getBlocks = function() {
            return [OutSystemsUIMobile_Private_OfflineDataSyncCore_mvc_view];
        };
        Object.defineProperty(View.prototype, "modelFactory", {
            get: function () {
                return ToDo_ch_Common_OfflineDataSyncEvents_mvc_model;
            },
            enumerable: true,
            configurable: true
        });
        Object.defineProperty(View.prototype, "controllerFactory", {
            get: function () {
                return ToDo_ch_Common_OfflineDataSyncEvents_mvc_controller;
            },
            enumerable: true,
            configurable: true
        });
        Object.defineProperty(View.prototype, "title", {
            get: function () {
                return "";
            },
            enumerable: true,
            configurable: true
        });
        View.prototype.internalRender = function() {
            var model = this.model;
            var controller = this.controller;
            var idService = this.idService;
            var validationService = controller.validationService;
            var widgetsRecordProvider = this.widgetsRecordProvider;
            var callContext = controller.callContext();
            var $if = View.ifWidget;
            var asPrimitiveValue = View.asPrimitiveValue;
            var _this = this;

            return React.DOM.div(this.getRootNodeProperties(), $if(false, false, this, function () {
return [];
}, function () {
return [React.createElement(OutSystemsUIMobile_Private_OfflineDataSyncCore_mvc_view, {
inputs: {},
events: {
_handleError: function (ex) {
controller.handleError(ex);
},
onConfigure$Action: function () {
var eventHandlerContext = callContext.clone();
return OS.Flow.tryFinally(function () {
var varBag = {};
controller.pushDebuggerContext(eventHandlerContext);

OutSystemsDebugger.setThreadStartName(eventHandlerContext.id, "Private/OfflineDataSyncCore OnConfigure");
controller.onConfigure$Action(controller.callContext(eventHandlerContext));
}, function () {
controller.popDebuggerContext(eventHandlerContext);
});

;
},
onSyncComplete$Action: function (syncUnitIn) {
return Promise.resolve().then(function () {
var eventHandlerContext = callContext.clone();
return OS.Flow.tryFinally(function () {
var varBag = {};
controller.pushDebuggerContext(eventHandlerContext);

OutSystemsDebugger.setThreadStartName(eventHandlerContext.id, "Private/OfflineDataSyncCore OnSyncComplete");
return controller.actionHandler_OnSyncCompleteTrigger$Action(syncUnitIn, controller.callContext(eventHandlerContext));
}, function () {
controller.popDebuggerContext(eventHandlerContext);
});
});
;
},
onSyncError$Action: function (syncUnitIn, errorMessageIn) {
return Promise.resolve().then(function () {
var eventHandlerContext = callContext.clone();
return OS.Flow.tryFinally(function () {
var varBag = {};
controller.pushDebuggerContext(eventHandlerContext);

OutSystemsDebugger.setThreadStartName(eventHandlerContext.id, "Private/OfflineDataSyncCore OnSyncError");
return controller.actionHandler_OnSyncErrorTrigger$Action(errorMessageIn, syncUnitIn, controller.callContext(eventHandlerContext));
}, function () {
controller.popDebuggerContext(eventHandlerContext);
});
});
;
},
onSync$Action: function (syncUnitIn) {
return Promise.resolve().then(function () {
var eventHandlerContext = callContext.clone();
return OS.Flow.tryFinally(function () {
var varBag = {};
controller.pushDebuggerContext(eventHandlerContext);

OutSystemsDebugger.setThreadStartName(eventHandlerContext.id, "Private/OfflineDataSyncCore OnSync");
return controller.onSync$Action(syncUnitIn, controller.callContext(eventHandlerContext));
}, function () {
controller.popDebuggerContext(eventHandlerContext);
});
});
;
},
onSyncStart$Action: function (syncUnitIn) {
return Promise.resolve().then(function () {
var eventHandlerContext = callContext.clone();
return OS.Flow.tryFinally(function () {
var varBag = {};
controller.pushDebuggerContext(eventHandlerContext);

OutSystemsDebugger.setThreadStartName(eventHandlerContext.id, "Private/OfflineDataSyncCore OnSyncStart");
return controller.actionHandler_OnSyncStartTrigger$Action(syncUnitIn, controller.callContext(eventHandlerContext));
}, function () {
controller.popDebuggerContext(eventHandlerContext);
});
});
;
}
},
_validationProps: {
validationService: validationService
},
_idProps: {
service: idService,
uuid: "0",
alias: "1"
},
_widgetRecordProvider: widgetsRecordProvider,
_dependencies: []
})];
}));
        };
        return View;
    })(OSView.BaseView.BaseWebBlock);
	
    return View;
});
define("ToDo_ch.Common.OfflineDataSyncEvents.mvc$controller", ["OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.controller", "OutSystemsUIMobile.controller", "ToDo_ch.languageResources", "ToDo_ch.Common.OfflineDataSyncEvents.mvc$debugger", "ToDo_ch.controller$OfflineDataSyncConfiguration", "OutSystemsUIMobile.controller$ConfigureOfflineDataSync", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile", "OutSystemsUIMobile.controller$EndOfflineDataSync", "ToDo_ch.controller$OfflineDataSync"], function (OutSystems, ToDo_chModel, ToDo_chController, OutSystemsUIMobileController, ToDo_chLanguageResources, ToDo_ch_Common_OfflineDataSyncEvents_mvc_Debugger) {
var OS = OutSystems.Internal;
var Controller = (function (_super) {
__extends(Controller, _super);
function Controller() {
_super.apply(this, arguments);
var controller = this.controller;
this.clientActionProxies = {};
}
// Server Actions

// Aggregates and Data Actions

Controller.prototype.dataFetchActionNames = [];
// Client Actions
Controller.prototype._onConfigure$Action = function (callContext) {
var varBag = {};
var model = this.model;
var controller = this.controller;
var idService = this.idService;
varBag.model = model;
varBag.idService = idService;
controller.ensureControllerAlive("OnConfigure");
callContext = controller.callContext(callContext);
var offlineDataSyncConfigurationVar = new OS.DataTypes.VariableHolder();
varBag.callContext = callContext;
varBag.offlineDataSyncConfigurationVar = offlineDataSyncConfigurationVar;
try {OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:JonlSVELgkCncEKjwK6wQA:/NRWebFlows.0eZ+W3SSVk+CJcw1X48PQA/NodesShownInESpaceTree.ocUenTGLOEaea1MX7p8VAA/ClientActions.JonlSVELgkCncEKjwK6wQA:ANcKdaBVLf3S9DzVgE4h4g", "ToDo_ch", "OnConfigure", "NRFlows.ClientScreenActionFlow", callContext.id, varBag);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:0FU2892Sr0W7xE3R5JpbEg", callContext.id);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:R1deubojZ0GAYWB4g_vd5Q", callContext.id);
// Execute Action: OfflineDataSyncConfiguration
offlineDataSyncConfigurationVar.value = ToDo_chController.default.offlineDataSyncConfiguration$Action(callContext);

OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:oRJTxJxG90+lPByuI8vBSg", callContext.id);
// Execute Action: ConfigureOfflineDataSync
OutSystemsUIMobileController.default.configureOfflineDataSync$Action(offlineDataSyncConfigurationVar.value.syncOnOnlineOut, offlineDataSyncConfigurationVar.value.syncOnResumeOut, offlineDataSyncConfigurationVar.value.retryOnErrorOut, offlineDataSyncConfigurationVar.value.retryIntervalInSecondsOut, callContext);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:nUTWzH78YEibqPE+f+Opnw", callContext.id);
} catch (ex) {
OutSystemsDebugger.handleException(ex, callContext.id);
throw ex;
} finally {
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:JonlSVELgkCncEKjwK6wQA", callContext.id);
}

};
Controller.prototype._onSync$Action = function (syncUnitIn, callContext) {
var varBag = {};
var model = this.model;
var controller = this.controller;
var idService = this.idService;
varBag.model = model;
varBag.idService = idService;
controller.ensureControllerAlive("OnSync");
callContext = controller.callContext(callContext);
var vars = new OS.DataTypes.VariableHolder(new (controller.constructor.getVariableGroupType("ToDo_ch.Common.OfflineDataSyncEvents.OnSync$vars"))());
vars.value.syncUnitInLocal = syncUnitIn;
var securityExceptionVar = new OS.DataTypes.VariableHolder(new OS.DataTypes.ErrorHandlerOutputType());
var allExceptionsVar = new OS.DataTypes.VariableHolder(new OS.DataTypes.ErrorHandlerOutputType());
varBag.callContext = callContext;
varBag.vars = vars;
varBag.securityExceptionVar = securityExceptionVar;
varBag.allExceptionsVar = allExceptionsVar;
OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:erFCe_9bk0yXrmgdC9sRBw:/NRWebFlows.0eZ+W3SSVk+CJcw1X48PQA/NodesShownInESpaceTree.ocUenTGLOEaea1MX7p8VAA/ClientActions.erFCe_9bk0yXrmgdC9sRBw:lDvqcDtT7uBEvYOHyPD3JA", "ToDo_ch", "OnSync", "NRFlows.ClientScreenActionFlow", callContext.id, varBag);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:VgQg1gRiqkCNkw2YtBrw3A", callContext.id);
return OS.Flow.executeAsyncFlow(function () {
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:6N4lZOClwkyil1pFrSKfgw", callContext.id);
// Execute Action: DoOfflineDataSync
model.flush();
return ToDo_chController.default.offlineDataSync$Action(vars.value.syncUnitInLocal, callContext).then(function () {
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:4YUeVwNGoUqSBB6ZwRIifA", callContext.id);
// Execute Action: EndWithSuccess
OutSystemsUIMobileController.default.endOfflineDataSync$Action(false, "", false, callContext);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:UxqGI78eFEqek+AtnLhh4w", callContext.id);
});
}).catch(function (ex) {
OS.Logger.trace("OfflineDataSyncEvents.OnSync", OS.Exceptions.getMessage(ex), ex.name);
// Handle Error: SecurityException
if(OS.Exceptions.isInstanceOf(ex, OS.Exceptions.Exceptions.SecurityException)) {
OS.Logger.error(null, ex);
securityExceptionVar.value.exceptionMessageAttr = OS.Exceptions.getMessage(ex);
OutSystemsDebugger.handleException(securityExceptionVar.value.exceptionMessageAttr, callContext.id);
return OS.Flow.executeAsyncFlow(function () {
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:gK1P5NwQY0enoHNYiAPh+Q", callContext.id);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:UGV6xgbyy0iuwtlBeMBprg", callContext.id);
// Execute Action: EndWithSecurityError
OutSystemsUIMobileController.default.endOfflineDataSync$Action(true, securityExceptionVar.value.exceptionMessageAttr, false, callContext);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:kxDEuq8HLkql_NsEPwB97g", callContext.id);
return OS.Flow.returnAsync();

});
}

// Handle Error: AllExceptions
if(!(OS.Exceptions.isSystem(ex))) {
OS.Logger.error(null, ex);
allExceptionsVar.value.exceptionMessageAttr = OS.Exceptions.getMessage(ex);
OutSystemsDebugger.handleException(allExceptionsVar.value.exceptionMessageAttr, callContext.id);
return OS.Flow.executeAsyncFlow(function () {
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:D799_HQBikmb_FBdEat4WA", callContext.id);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:0aQjMmjzPk2T7ptl8Tfg_w", callContext.id);
// Execute Action: EndWithError
OutSystemsUIMobileController.default.endOfflineDataSync$Action(true, allExceptionsVar.value.exceptionMessageAttr, true, callContext);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:efqlV+pYt0Kn_bWyxryKIg", callContext.id);
return OS.Flow.returnAsync();

});
}

throw ex;
}).then(function (res) {
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:erFCe_9bk0yXrmgdC9sRBw", callContext.id);
return res;

}).catch(function (ex) {
OutSystemsDebugger.handleException(ex, callContext.id);
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:erFCe_9bk0yXrmgdC9sRBw", callContext.id);
throw ex;

});
};
Controller.registerVariableGroupType("ToDo_ch.Common.OfflineDataSyncEvents.OnSync$vars", [{
name: "SyncUnit",
attrName: "syncUnitInLocal",
mandatory: true,
dataType: OS.Types.Text,
defaultValue: function () {
return "";
}
}]);
Controller.prototype._actionHandler_OnSyncCompleteTrigger$Action = function (syncUnitIn, callContext) {
var varBag = {};
var model = this.model;
var controller = this.controller;
var idService = this.idService;
varBag.model = model;
varBag.idService = idService;
controller.ensureControllerAlive("ActionHandler_OnSyncCompleteTrigger");
callContext = controller.callContext(callContext);
var vars = new OS.DataTypes.VariableHolder(new (controller.constructor.getVariableGroupType("ToDo_ch.Common.OfflineDataSyncEvents.ActionHandler_OnSyncCompleteTrigger$vars"))());
vars.value.syncUnitInLocal = syncUnitIn;
varBag.callContext = callContext;
varBag.vars = vars;
OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:y_PukdgQyEmsx0Gurh2f_w:/NRWebFlows.0eZ+W3SSVk+CJcw1X48PQA/NodesShownInESpaceTree.ocUenTGLOEaea1MX7p8VAA/ClientActions.y_PukdgQyEmsx0Gurh2f_w:e0T3Or12cjYs4ztNwjLIjA", "ToDo_ch", "ActionHandler_OnSyncCompleteTrigger", "NRFlows.ClientScreenActionFlow", callContext.id, varBag);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:f9qqYDg_Dk2f0YjWcBEtZw", callContext.id);
return OS.Flow.executeAsyncFlow(function () {
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:Py_yozqZ4Eul3A7NumDn6g", callContext.id);
// Trigger Event: OnSyncComplete
return controller.onSyncComplete$Action(vars.value.syncUnitInLocal, callContext).then(function () {
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:lrDjJYBEEkqFt8OGQIZSeA", callContext.id);
});
}).then(function (res) {
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:y_PukdgQyEmsx0Gurh2f_w", callContext.id);
return res;

}).catch(function (ex) {
OutSystemsDebugger.handleException(ex, callContext.id);
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:y_PukdgQyEmsx0Gurh2f_w", callContext.id);
throw ex;

});
};
Controller.registerVariableGroupType("ToDo_ch.Common.OfflineDataSyncEvents.ActionHandler_OnSyncCompleteTrigger$vars", [{
name: "SyncUnit",
attrName: "syncUnitInLocal",
mandatory: true,
dataType: OS.Types.Text,
defaultValue: function () {
return "";
}
}]);
Controller.prototype._actionHandler_OnSyncStartTrigger$Action = function (syncUnitIn, callContext) {
var varBag = {};
var model = this.model;
var controller = this.controller;
var idService = this.idService;
varBag.model = model;
varBag.idService = idService;
controller.ensureControllerAlive("ActionHandler_OnSyncStartTrigger");
callContext = controller.callContext(callContext);
var vars = new OS.DataTypes.VariableHolder(new (controller.constructor.getVariableGroupType("ToDo_ch.Common.OfflineDataSyncEvents.ActionHandler_OnSyncStartTrigger$vars"))());
vars.value.syncUnitInLocal = syncUnitIn;
varBag.callContext = callContext;
varBag.vars = vars;
OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:hBMxtJk0fkqC8zN+mMU9OA:/NRWebFlows.0eZ+W3SSVk+CJcw1X48PQA/NodesShownInESpaceTree.ocUenTGLOEaea1MX7p8VAA/ClientActions.hBMxtJk0fkqC8zN+mMU9OA:HUt3MJsYT_QcjHjWa7ZTWg", "ToDo_ch", "ActionHandler_OnSyncStartTrigger", "NRFlows.ClientScreenActionFlow", callContext.id, varBag);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:FH9G1eeneEmzaeSYyHwHlg", callContext.id);
return OS.Flow.executeAsyncFlow(function () {
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:NuCDWeCbWECgLva7aEtSHw", callContext.id);
// Trigger Event: OnSyncStart
return controller.onSyncStart$Action(vars.value.syncUnitInLocal, callContext).then(function () {
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:JdkCxTUkNk2Afo_kHKO66g", callContext.id);
});
}).then(function (res) {
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:hBMxtJk0fkqC8zN+mMU9OA", callContext.id);
return res;

}).catch(function (ex) {
OutSystemsDebugger.handleException(ex, callContext.id);
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:hBMxtJk0fkqC8zN+mMU9OA", callContext.id);
throw ex;

});
};
Controller.registerVariableGroupType("ToDo_ch.Common.OfflineDataSyncEvents.ActionHandler_OnSyncStartTrigger$vars", [{
name: "SyncUnit",
attrName: "syncUnitInLocal",
mandatory: true,
dataType: OS.Types.Text,
defaultValue: function () {
return "";
}
}]);
Controller.prototype._actionHandler_OnSyncErrorTrigger$Action = function (errorMessageIn, syncUnitIn, callContext) {
var varBag = {};
var model = this.model;
var controller = this.controller;
var idService = this.idService;
varBag.model = model;
varBag.idService = idService;
controller.ensureControllerAlive("ActionHandler_OnSyncErrorTrigger");
callContext = controller.callContext(callContext);
var vars = new OS.DataTypes.VariableHolder(new (controller.constructor.getVariableGroupType("ToDo_ch.Common.OfflineDataSyncEvents.ActionHandler_OnSyncErrorTrigger$vars"))());
vars.value.errorMessageInLocal = errorMessageIn;
vars.value.syncUnitInLocal = syncUnitIn;
varBag.callContext = callContext;
varBag.vars = vars;
OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:g9dK+IL2FUaKkYYIsTLIfg:/NRWebFlows.0eZ+W3SSVk+CJcw1X48PQA/NodesShownInESpaceTree.ocUenTGLOEaea1MX7p8VAA/ClientActions.g9dK+IL2FUaKkYYIsTLIfg:lsogeayj_HvU22siERvpsg", "ToDo_ch", "ActionHandler_OnSyncErrorTrigger", "NRFlows.ClientScreenActionFlow", callContext.id, varBag);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:vJjXnxJYKE2derWXcBmY_g", callContext.id);
return OS.Flow.executeAsyncFlow(function () {
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:c_djV9dR502J8LJl3iu9Hw", callContext.id);
// Trigger Event: OnSyncError
return controller.onSyncError$Action(vars.value.syncUnitInLocal, vars.value.errorMessageInLocal, callContext).then(function () {
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:HQmm4Mf7qUqTRqtbdTFQCA", callContext.id);
});
}).then(function (res) {
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:g9dK+IL2FUaKkYYIsTLIfg", callContext.id);
return res;

}).catch(function (ex) {
OutSystemsDebugger.handleException(ex, callContext.id);
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:g9dK+IL2FUaKkYYIsTLIfg", callContext.id);
throw ex;

});
};
Controller.registerVariableGroupType("ToDo_ch.Common.OfflineDataSyncEvents.ActionHandler_OnSyncErrorTrigger$vars", [{
name: "ErrorMessage",
attrName: "errorMessageInLocal",
mandatory: true,
dataType: OS.Types.Text,
defaultValue: function () {
return "";
}
}, {
name: "SyncUnit",
attrName: "syncUnitInLocal",
mandatory: true,
dataType: OS.Types.Text,
defaultValue: function () {
return "";
}
}]);

Controller.prototype.onConfigure$Action = function (callContext) {
var controller = this.controller;
return controller.safeExecuteClientAction(controller._onConfigure$Action, callContext);

};
Controller.prototype.onSync$Action = function (syncUnitIn, callContext) {
var controller = this.controller;
return controller.safeExecuteClientAction(controller._onSync$Action, callContext, syncUnitIn);

};
Controller.prototype.actionHandler_OnSyncCompleteTrigger$Action = function (syncUnitIn, callContext) {
var controller = this.controller;
return controller.safeExecuteClientAction(controller._actionHandler_OnSyncCompleteTrigger$Action, callContext, syncUnitIn);

};
Controller.prototype.actionHandler_OnSyncStartTrigger$Action = function (syncUnitIn, callContext) {
var controller = this.controller;
return controller.safeExecuteClientAction(controller._actionHandler_OnSyncStartTrigger$Action, callContext, syncUnitIn);

};
Controller.prototype.actionHandler_OnSyncErrorTrigger$Action = function (errorMessageIn, syncUnitIn, callContext) {
var controller = this.controller;
return controller.safeExecuteClientAction(controller._actionHandler_OnSyncErrorTrigger$Action, callContext, errorMessageIn, syncUnitIn);

};
Controller.prototype.onSyncComplete$Action = function () {
return Promise.resolve();
};
Controller.prototype.onSyncStart$Action = function () {
return Promise.resolve();
};
Controller.prototype.onSyncError$Action = function () {
return Promise.resolve();
};

// Event Handler Actions
Controller.prototype.pushDebuggerContext = function (callContext) {
var varBag = {};
OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:0eZ+W3SSVk+CJcw1X48PQA:/NRWebFlows.0eZ+W3SSVk+CJcw1X48PQA:H7e5RuqVjgrsBfPWu5z4jw", "ToDo_ch", "Common", "NRFlows.WebFlow", callContext.id, varBag);
OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:ocUenTGLOEaea1MX7p8VAA:/NRWebFlows.0eZ+W3SSVk+CJcw1X48PQA/NodesShownInESpaceTree.ocUenTGLOEaea1MX7p8VAA:ywHBu06H_vy2JEow2ecPww", "ToDo_ch", "OfflineDataSyncEvents", "NRNodes.WebBlock", callContext.id, varBag);
};
Controller.prototype.popDebuggerContext = function (callContext) {
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:ocUenTGLOEaea1MX7p8VAA", callContext.id);
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:0eZ+W3SSVk+CJcw1X48PQA", callContext.id);
};
Controller.prototype.onInitializeEventHandler = null;
Controller.prototype.onReadyEventHandler = null;
Controller.prototype.onRenderEventHandler = null;
Controller.prototype.onDestroyEventHandler = null;
Controller.prototype.onParametersChangedEventHandler = null;
Controller.prototype.handleError = function (ex) {
return controller.handleError(ex);
};
Controller.checkPermissions = function () {
};
Controller.prototype.getDefaultTimeout = function () {
return ToDo_chController.default.defaultTimeout;
};
return Controller;
})(OS.Controller.BaseViewController);
return new OS.Controller.ControllerFactory(Controller, ToDo_chLanguageResources);
});

define("ToDo_ch.Common.OfflineDataSyncEvents.mvc$debugger", ["exports", "OutSystems/ClientRuntime/Debugger", "OutSystems/ClientRuntime/Main"], function (exports, Debugger, OutSystems) {
var OS = OutSystems.Internal;
var metaInfo = {
"R1deubojZ0GAYWB4g_vd5Q": {
getter: function (varBag, idService) {
return varBag.offlineDataSyncConfigurationVar.value;
}
},
"TO8C6xJk+ESkOnSbTsQ_VA": {
getter: function (varBag, idService) {
return varBag.vars.value.syncUnitInLocal;
},
dataType: OS.Types.Text
},
"gK1P5NwQY0enoHNYiAPh+Q": {
getter: function (varBag, idService) {
return varBag.securityExceptionVar.value;
}
},
"D799_HQBikmb_FBdEat4WA": {
getter: function (varBag, idService) {
return varBag.allExceptionsVar.value;
}
},
"jNmjNj7SQUG_Fnu+IEf21w": {
getter: function (varBag, idService) {
return varBag.vars.value.syncUnitInLocal;
},
dataType: OS.Types.Text
},
"KXkHOFMlCUiub9_nsCMgHw": {
getter: function (varBag, idService) {
return varBag.vars.value.syncUnitInLocal;
},
dataType: OS.Types.Text
},
"I4vQBxztKUe3vaGRm7xjHA": {
getter: function (varBag, idService) {
return varBag.vars.value.errorMessageInLocal;
},
dataType: OS.Types.Text
},
"3BPbwpgXEk+FYKddeQdTeg": {
getter: function (varBag, idService) {
return varBag.vars.value.syncUnitInLocal;
},
dataType: OS.Types.Text
}
};
OutSystemsDebugger.registerMetaInfo(metaInfo);
});
