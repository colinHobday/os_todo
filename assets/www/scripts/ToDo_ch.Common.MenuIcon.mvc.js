define("ToDo_ch.Common.MenuIcon.mvc$model", ["OutSystems/ClientRuntime/Main", "ToDo_ch.model", "OutSystemsUIMobile.controller", "OutSystemsUIMobile.controller$MenuShow", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile", "OutSystemsUIMobile.controller$SetMenuIcon"], function (OutSystems, ToDo_chModel, OutSystemsUIMobileController) {
var OS = OutSystems.Internal;


var VariablesRecord = (function (_super) {
__extends(VariablesRecord, _super);
function VariablesRecord(defaults) {
_super.apply(this, arguments);
}
VariablesRecord.attributesToDeclare = function () {
return [
this.attr("MenuAction", "menuActionIn", "MenuAction", true, false, OS.Types.Text, function () {
return "";
}), 
this.attr("_menuActionInDataFetchStatus", "_menuActionInDataFetchStatus", "_menuActionInDataFetchStatus", true, false, OS.Types.Integer, function () {
return /*Fetched*/ 1;
})
].concat(_super.attributesToDeclare.call(this));
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
Object.defineProperty(Model, "hasValidationWidgets", {
enumerable: true,
configurable: true,
get: function () {
return false;
}
});

Model.prototype.setInputs = function (inputs) {
if("MenuAction" in inputs) {
this.variables.menuActionIn = inputs.MenuAction;
if("_menuActionInDataFetchStatus" in inputs) {
this.variables._menuActionInDataFetchStatus = inputs._menuActionInDataFetchStatus;
}

}

};
return Model;
})(OS.Model.BaseViewModel);
return new OS.Model.ModelFactory(Model);
});
define("ToDo_ch.Common.MenuIcon.mvc$view", ["OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.controller", "OutSystemsUIMobile.controller", "react", "OutSystems/ReactView/Main", "ToDo_ch.Common.MenuIcon.mvc$model", "ToDo_ch.Common.MenuIcon.mvc$controller", "OutSystems/ReactWidgets/Main", "OutSystemsUIMobile.controller$MenuShow", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile", "OutSystemsUIMobile.controller$SetMenuIcon"], function (OutSystems, ToDo_chModel, ToDo_chController, OutSystemsUIMobileController, React, OSView, ToDo_ch_Common_MenuIcon_mvc_model, ToDo_ch_Common_MenuIcon_mvc_controller, OSWidgets) {
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
        View.displayName = "Common.MenuIcon";
        View.getCssDependencies = function() {
            return ["css/OutSystemsReactWidgets.css"];
        };
        View.getJsDependencies = function() {
            return [];
        };
        View.getBlocks = function() {
            return [];
        };
        Object.defineProperty(View.prototype, "modelFactory", {
            get: function () {
                return ToDo_ch_Common_MenuIcon_mvc_model;
            },
            enumerable: true,
            configurable: true
        });
        Object.defineProperty(View.prototype, "controllerFactory", {
            get: function () {
                return ToDo_ch_Common_MenuIcon_mvc_controller;
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

            return React.DOM.div(this.getRootNodeProperties(), React.createElement(OSWidgets.Container, {
align: /*Default*/ 0,
animate: false,
extendedProperties: {
style: "margin-top: 0px;"
},
style: model.getCachedValue(idService.getId("MenuIcon.Style"), function () {
return ("app-menu-icon" + ((((model.variables.menuActionIn) !== (ToDo_chModel.staticEntities.menuAction.back))) ? ("") : (" back")));
}, function () {
return model.variables.menuActionIn;
}),
visible: ((model.variables.menuActionIn) !== (ToDo_chModel.staticEntities.menuAction.hidden)),
_idProps: {
service: idService,
name: "MenuIcon"
},
_widgetRecordProvider: widgetsRecordProvider,
style_dataFetchStatus: OS.Model.calculateDataFetchStatus(model.variables._menuActionInDataFetchStatus),
visible_dataFetchStatus: OS.Model.calculateDataFetchStatus(model.variables._menuActionInDataFetchStatus)
}, React.createElement(OSWidgets.Link, {
enabled: true,
gridProperties: {
classes: "OSFillParent"
},
onClick: function () {
var eventHandlerContext = callContext.clone();
return OS.Flow.tryFinally(function () {
var varBag = {};
controller.pushDebuggerContext(eventHandlerContext);

OutSystemsDebugger.setThreadStartName(eventHandlerContext.id, "Common/MenuIcon/Menu OnClick");
controller.showMenu$Action(controller.callContext(eventHandlerContext));
}, function () {
controller.popDebuggerContext(eventHandlerContext);
});

;
},
style: "app-menu-burger",
visible: true,
_idProps: {
service: idService,
name: "Menu"
},
_widgetRecordProvider: widgetsRecordProvider
}, React.createElement(OSWidgets.Container, {
align: /*Default*/ 0,
animate: false,
style: "app-menu-line",
visible: true,
_idProps: {
service: idService,
uuid: "2"
},
_widgetRecordProvider: widgetsRecordProvider
}), React.createElement(OSWidgets.Container, {
align: /*Default*/ 0,
animate: false,
style: ("app-menu-line" + " OSAutoMarginTop"),
visible: true,
_idProps: {
service: idService,
uuid: "3"
},
_widgetRecordProvider: widgetsRecordProvider
}), React.createElement(OSWidgets.Container, {
align: /*Default*/ 0,
animate: false,
style: ("app-menu-line" + " OSAutoMarginTop"),
visible: true,
_idProps: {
service: idService,
uuid: "4"
},
_widgetRecordProvider: widgetsRecordProvider
})), React.createElement(OSWidgets.Link, {
enabled: true,
gridProperties: {
classes: "OSFillParent"
},
onClick: function () {
OS.Navigation.navigateBack(null);
},
style: "app-menu-back",
visible: true,
_idProps: {
service: idService,
name: "Back"
},
_widgetRecordProvider: widgetsRecordProvider
}, React.createElement(OSWidgets.Icon, {
icon: "angle-left",
iconSize: /*Twotimes*/ 1,
style: "icon",
visible: true,
_idProps: {
service: idService,
name: "ArrowBack"
},
_widgetRecordProvider: widgetsRecordProvider
}))));
        };
        return View;
    })(OSView.BaseView.BaseWebBlock);
	
    return View;
});
define("ToDo_ch.Common.MenuIcon.mvc$controller", ["OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.controller", "OutSystemsUIMobile.controller", "ToDo_ch.languageResources", "ToDo_ch.Common.MenuIcon.mvc$debugger", "OutSystemsUIMobile.controller$MenuShow", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile", "OutSystemsUIMobile.controller$SetMenuIcon"], function (OutSystems, ToDo_chModel, ToDo_chController, OutSystemsUIMobileController, ToDo_chLanguageResources, ToDo_ch_Common_MenuIcon_mvc_Debugger) {
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
Controller.prototype._showMenu$Action = function (callContext) {
var varBag = {};
var model = this.model;
var controller = this.controller;
var idService = this.idService;
varBag.model = model;
varBag.idService = idService;
controller.ensureControllerAlive("ShowMenu");
callContext = controller.callContext(callContext);
varBag.callContext = callContext;
try {OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:Oyi+bYRGPkC7QhjDY_Ar+Q:/NRWebFlows.0eZ+W3SSVk+CJcw1X48PQA/NodesShownInESpaceTree.F0ZnQ+zCVE+OqsNWhqxnQg/ClientActions.Oyi+bYRGPkC7QhjDY_Ar+Q:0+_7foY6efCOHQagthZuwg", "ToDo_ch", "ShowMenu", "NRFlows.ClientScreenActionFlow", callContext.id, varBag);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:g_+AZ9X6+0uRBjyyvZs1sQ", callContext.id);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:fUGKhnJR_Ua4bMiH+gybWw", callContext.id);
// Execute Action: MenuShow
OutSystemsUIMobileController.default.menuShow$Action(callContext);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:hT_Sx4Myt0mHoZ8cm66klg", callContext.id);
} catch (ex) {
OutSystemsDebugger.handleException(ex, callContext.id);
throw ex;
} finally {
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:Oyi+bYRGPkC7QhjDY_Ar+Q", callContext.id);
}

};
Controller.prototype._onReady$Action = function (callContext) {
var varBag = {};
var model = this.model;
var controller = this.controller;
var idService = this.idService;
varBag.model = model;
varBag.idService = idService;
controller.ensureControllerAlive("OnReady");
callContext = controller.callContext(callContext);
varBag.callContext = callContext;
try {OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:0V2PoYNhX0qmD1dk9nnKYQ:/NRWebFlows.0eZ+W3SSVk+CJcw1X48PQA/NodesShownInESpaceTree.F0ZnQ+zCVE+OqsNWhqxnQg/ClientActions.0V2PoYNhX0qmD1dk9nnKYQ:ux1LzVLgiv+WZ0X3fO_AUw", "ToDo_ch", "OnReady", "NRFlows.ClientScreenActionFlow", callContext.id, varBag);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:1lwVHmqqPkygo1yAH8HNEQ", callContext.id);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:H6K+ejnvU0utY+1JnI_YoA", callContext.id);
// Execute Action: SetMenuIcon
OutSystemsUIMobileController.default.setMenuIcon$Action(model.variables.menuActionIn, callContext);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:g50q1hAZNEq38YJQszgO6A", callContext.id);
} catch (ex) {
OutSystemsDebugger.handleException(ex, callContext.id);
throw ex;
} finally {
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:0V2PoYNhX0qmD1dk9nnKYQ", callContext.id);
}

};

Controller.prototype.showMenu$Action = function (callContext) {
var controller = this.controller;
return controller.safeExecuteClientAction(controller._showMenu$Action, callContext);

};
Controller.prototype.onReady$Action = function (callContext) {
var controller = this.controller;
return controller.safeExecuteClientAction(controller._onReady$Action, callContext);

};

// Event Handler Actions
Controller.prototype.pushDebuggerContext = function (callContext) {
var varBag = {};
OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:0eZ+W3SSVk+CJcw1X48PQA:/NRWebFlows.0eZ+W3SSVk+CJcw1X48PQA:H7e5RuqVjgrsBfPWu5z4jw", "ToDo_ch", "Common", "NRFlows.WebFlow", callContext.id, varBag);
OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:F0ZnQ+zCVE+OqsNWhqxnQg:/NRWebFlows.0eZ+W3SSVk+CJcw1X48PQA/NodesShownInESpaceTree.F0ZnQ+zCVE+OqsNWhqxnQg:DRHMlr7zbRdEjby2Tbjr0A", "ToDo_ch", "MenuIcon", "NRNodes.WebBlock", callContext.id, varBag);
};
Controller.prototype.popDebuggerContext = function (callContext) {
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:F0ZnQ+zCVE+OqsNWhqxnQg", callContext.id);
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:0eZ+W3SSVk+CJcw1X48PQA", callContext.id);
};
Controller.prototype.onInitializeEventHandler = null;
Controller.prototype.onReadyEventHandler = function (callContext) {
var controller = this.controller;
var model = this.model;
var idService = this.idService;

return OS.Flow.tryFinally(function () {
var varBag = {};
controller.pushDebuggerContext(callContext);

OutSystemsDebugger.setThreadStartName(callContext.id, "Common/MenuIcon On Ready");
return controller.onReady$Action(callContext);

}, function () {
controller.popDebuggerContext(callContext);

});

};
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

define("ToDo_ch.Common.MenuIcon.mvc$debugger", ["exports", "OutSystems/ClientRuntime/Debugger", "OutSystems/ClientRuntime/Main"], function (exports, Debugger, OutSystems) {
var OS = OutSystems.Internal;
var metaInfo = {
"Ze2FCCuf9keAVasENDKsLg": {
getter: function (varBag, idService) {
return varBag.model.variables.menuActionIn;
},
dataType: OS.Types.Text
},
"imPpWZBvokSUSksqnLQxhQ": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("MenuIcon"));
})(varBag.model, idService);
}
},
"oqnxxFs5+U2zGLSxQ4ocqg": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Menu"));
})(varBag.model, idService);
}
},
"pS426WmROUCcTahZymKqeg": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Back"));
})(varBag.model, idService);
}
},
"R5G31sTkx0KEJ01YZ3Vx9g": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("ArrowBack"));
})(varBag.model, idService);
}
}
};
OutSystemsDebugger.registerMetaInfo(metaInfo);
});
