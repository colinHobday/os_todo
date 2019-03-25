define("OutSystemsUIMobile.Interaction.AnimatedLabel.mvc$model", ["OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model"], function (OutSystems, OutSystemsUIMobileModel) {
var OS = OutSystems.Internal;


var VariablesRecord = (function (_super) {
__extends(VariablesRecord, _super);
function VariablesRecord(defaults) {
_super.apply(this, arguments);
}
VariablesRecord.attributesToDeclare = function () {
return [
this.attr("AnimatedLabelObj", "animatedLabelObjVar", "AnimatedLabelObj", true, false, OS.Types.Object, function () {
return null;
})
].concat(_super.attributesToDeclare.call(this));
};
VariablesRecord.fromStructure = function (str) {
return new VariablesRecord(new VariablesRecord.RecordClass({
animatedLabelObjVar: OS.DataTypes.ImmutableBase.getData(str)
}));
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
};
return Model;
})(OS.Model.BaseViewModel);
return new OS.Model.ModelFactory(Model);
});
define("OutSystemsUIMobile.Interaction.AnimatedLabel.mvc$view", ["OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "OutSystemsUIMobile.controller", "react", "OutSystems/ReactView/Main", "OutSystemsUIMobile.Interaction.AnimatedLabel.mvc$model", "OutSystemsUIMobile.Interaction.AnimatedLabel.mvc$controller", "OutSystems/ReactWidgets/Main"], function (OutSystems, OutSystemsUIMobileModel, OutSystemsUIMobileController, React, OSView, OutSystemsUIMobile_Interaction_AnimatedLabel_mvc_model, OutSystemsUIMobile_Interaction_AnimatedLabel_mvc_controller, OSWidgets) {
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
        View.displayName = "Interaction.AnimatedLabel";
        View.getCssDependencies = function() {
            return ["css/OutSystemsReactWidgets.css"];
        };
        View.getJsDependencies = function() {
            return ["scripts/OutSystemsUIMobile.OutSystemsUI.js", "scripts/OutSystemsUIMobile.AnimatedLabel.js"];
        };
        View.getBlocks = function() {
            return [];
        };
        Object.defineProperty(View.prototype, "modelFactory", {
            get: function () {
                return OutSystemsUIMobile_Interaction_AnimatedLabel_mvc_model;
            },
            enumerable: true,
            configurable: true
        });
        Object.defineProperty(View.prototype, "controllerFactory", {
            get: function () {
                return OutSystemsUIMobile_Interaction_AnimatedLabel_mvc_controller;
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
style: "animated-label",
visible: true,
_idProps: {
service: idService,
uuid: "0"
},
_widgetRecordProvider: widgetsRecordProvider
}, React.createElement(OSWidgets.Placeholder, {
align: /*Default*/ 0,
content: _this.props.placeholders.label,
style: "animated-label-text",
_idProps: {
service: idService,
name: "Label"
},
_widgetRecordProvider: widgetsRecordProvider
}), React.createElement(OSWidgets.Placeholder, {
align: /*Default*/ 0,
content: _this.props.placeholders.input,
style: "animated-label-input",
_idProps: {
service: idService,
name: "Input"
},
_widgetRecordProvider: widgetsRecordProvider
})));
        };
        return View;
    })(OSView.BaseView.BaseWebBlock);
	
    return View;
});
define("OutSystemsUIMobile.Interaction.AnimatedLabel.mvc$controller", ["OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "OutSystemsUIMobile.controller", "OutSystemsUIMobile.languageResources", "OutSystemsUIMobile.Interaction.AnimatedLabel.mvc$controller.OnRender.UpdateLabelJS", "OutSystemsUIMobile.Interaction.AnimatedLabel.mvc$controller.OnReady.InitJS", "OutSystemsUIMobile.Interaction.AnimatedLabel.mvc$debugger"], function (OutSystems, OutSystemsUIMobileModel, OutSystemsUIMobileController, OutSystemsUIMobileLanguageResources, OutSystemsUIMobile_Interaction_AnimatedLabel_mvc_controller_OnRender_UpdateLabelJS, OutSystemsUIMobile_Interaction_AnimatedLabel_mvc_controller_OnReady_InitJS, OutSystemsUIMobile_Interaction_AnimatedLabel_mvc_Debugger) {
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
Controller.prototype._onRender$Action = function (callContext) {
var varBag = {};
var model = this.model;
var controller = this.controller;
var idService = this.idService;
varBag.model = model;
varBag.idService = idService;
controller.ensureControllerAlive("OnRender");
callContext = controller.callContext(callContext);
varBag.callContext = callContext;
try {OutSystemsDebugger.push("Kn_hixxDWEm4lMd7mIpycQ:uljeaVhpR0m5nc8SejIWFw:/NRWebFlows.qQS9OZYcu0SRmBsR92a4Og/NodesShownInESpaceTree.AYTaJPT1u0a2OjLw5fUizQ/ClientActions.uljeaVhpR0m5nc8SejIWFw:B0Tg1dcO4bUYLwzey2IyZA", "OutSystemsUIMobile", "OnRender", "NRFlows.ClientScreenActionFlow", callContext.id, varBag);
OutSystemsDebugger.handleBreakpoint("Kn_hixxDWEm4lMd7mIpycQ:l4DInbt6fkC2qDE+jqQCQQ", callContext.id);
OutSystemsDebugger.handleBreakpoint("Kn_hixxDWEm4lMd7mIpycQ:fWu2_XbWt0ipQ2oBp2VymA", callContext.id);
controller.safeExecuteJSNode(OutSystemsUIMobile_Interaction_AnimatedLabel_mvc_controller_OnRender_UpdateLabelJS, "UpdateLabel", "OnRender", {
WidgetId: OS.DataConversion.JSNodeParamConverter.to(idService.getId("Input"), OS.Types.Text),
AnimatedLabel: OS.DataConversion.JSNodeParamConverter.to(model.variables.animatedLabelObjVar, OS.Types.Object)
}, function ($parameters) {
}, {}, {});
OutSystemsDebugger.handleBreakpoint("Kn_hixxDWEm4lMd7mIpycQ:GbCYWWpZPEybThawFjF7Lw", callContext.id);
} catch (ex) {
OutSystemsDebugger.handleException(ex, callContext.id);
throw ex;
} finally {
OutSystemsDebugger.pop("Kn_hixxDWEm4lMd7mIpycQ:uljeaVhpR0m5nc8SejIWFw", callContext.id);
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
var initJSResult = new OS.DataTypes.VariableHolder();
varBag.callContext = callContext;
varBag.initJSResult = initJSResult;
try {OutSystemsDebugger.push("Kn_hixxDWEm4lMd7mIpycQ:EaYykMAoCkqAi3oaemk2sA:/NRWebFlows.qQS9OZYcu0SRmBsR92a4Og/NodesShownInESpaceTree.AYTaJPT1u0a2OjLw5fUizQ/ClientActions.EaYykMAoCkqAi3oaemk2sA:Q++92MiKyVsgUlOjaM8pPg", "OutSystemsUIMobile", "OnReady", "NRFlows.ClientScreenActionFlow", callContext.id, varBag);
OutSystemsDebugger.handleBreakpoint("Kn_hixxDWEm4lMd7mIpycQ:NIr5ccg1WU6bd63Frss9kA", callContext.id);
OutSystemsDebugger.handleBreakpoint("Kn_hixxDWEm4lMd7mIpycQ:DsNOW6AzXEmise02MEzNSg", callContext.id);
initJSResult.value = controller.safeExecuteJSNode(OutSystemsUIMobile_Interaction_AnimatedLabel_mvc_controller_OnReady_InitJS, "Init", "OnReady", {
WidgetId: OS.DataConversion.JSNodeParamConverter.to(idService.getId("Input"), OS.Types.Text),
AnimatedLabel: OS.DataConversion.JSNodeParamConverter.to(null, OS.Types.Object)
}, function ($parameters) {
var jsNodeResult = new (controller.constructor.getVariableGroupType("OutSystemsUIMobile.Interaction.AnimatedLabel.OnReady$initJSResult"))();
jsNodeResult.animatedLabelOut = OS.DataConversion.JSNodeParamConverter.from($parameters.AnimatedLabel, OS.Types.Object);
return jsNodeResult;
}, {}, {});
OutSystemsDebugger.handleBreakpoint("Kn_hixxDWEm4lMd7mIpycQ:iX6RPne7wESPMcCdvszWGA", callContext.id);
// AnimatedLabelObj = Init.AnimatedLabel
model.variables.animatedLabelObjVar = initJSResult.value.animatedLabelOut;
OutSystemsDebugger.handleBreakpoint("Kn_hixxDWEm4lMd7mIpycQ:ZT_k6mcQm0q_gt3cZ2PDQQ", callContext.id);
} catch (ex) {
OutSystemsDebugger.handleException(ex, callContext.id);
throw ex;
} finally {
OutSystemsDebugger.pop("Kn_hixxDWEm4lMd7mIpycQ:EaYykMAoCkqAi3oaemk2sA", callContext.id);
}

};
Controller.registerVariableGroupType("OutSystemsUIMobile.Interaction.AnimatedLabel.OnReady$initJSResult", [{
name: "AnimatedLabel",
attrName: "animatedLabelOut",
mandatory: true,
dataType: OS.Types.Object,
defaultValue: function () {
return null;
}
}]);

Controller.prototype.onRender$Action = function (callContext) {
var controller = this.controller;
return controller.safeExecuteClientAction(controller._onRender$Action, callContext);

};
Controller.prototype.onReady$Action = function (callContext) {
var controller = this.controller;
return controller.safeExecuteClientAction(controller._onReady$Action, callContext);

};

// Event Handler Actions
Controller.prototype.pushDebuggerContext = function (callContext) {
var varBag = {};
OutSystemsDebugger.push("Kn_hixxDWEm4lMd7mIpycQ:qQS9OZYcu0SRmBsR92a4Og:/NRWebFlows.qQS9OZYcu0SRmBsR92a4Og:EpHg5wu_cXV36BMGcNgbYQ", "OutSystemsUIMobile", "Interaction", "NRFlows.WebFlow", callContext.id, varBag);
OutSystemsDebugger.push("Kn_hixxDWEm4lMd7mIpycQ:AYTaJPT1u0a2OjLw5fUizQ:/NRWebFlows.qQS9OZYcu0SRmBsR92a4Og/NodesShownInESpaceTree.AYTaJPT1u0a2OjLw5fUizQ:qUhb7JewyzuRflBJn+8dpQ", "OutSystemsUIMobile", "AnimatedLabel", "NRNodes.WebBlock", callContext.id, varBag);
};
Controller.prototype.popDebuggerContext = function (callContext) {
OutSystemsDebugger.pop("Kn_hixxDWEm4lMd7mIpycQ:AYTaJPT1u0a2OjLw5fUizQ", callContext.id);
OutSystemsDebugger.pop("Kn_hixxDWEm4lMd7mIpycQ:qQS9OZYcu0SRmBsR92a4Og", callContext.id);
};
Controller.prototype.onInitializeEventHandler = null;
Controller.prototype.onReadyEventHandler = function (callContext) {
var controller = this.controller;
var model = this.model;
var idService = this.idService;

return OS.Flow.tryFinally(function () {
var varBag = {};
controller.pushDebuggerContext(callContext);

OutSystemsDebugger.setThreadStartName(callContext.id, "Interaction/AnimatedLabel On Ready");
return controller.onReady$Action(callContext);

}, function () {
controller.popDebuggerContext(callContext);

});

};
Controller.prototype.onRenderEventHandler = function (callContext) {
var controller = this.controller;
var model = this.model;
var idService = this.idService;

return OS.Flow.tryFinally(function () {
var varBag = {};
controller.pushDebuggerContext(callContext);

OutSystemsDebugger.setThreadStartName(callContext.id, "Interaction/AnimatedLabel On Render");
return controller.onRender$Action(callContext);

}, function () {
controller.popDebuggerContext(callContext);

});

};
Controller.prototype.onDestroyEventHandler = null;
Controller.prototype.onParametersChangedEventHandler = null;
Controller.prototype.handleError = function (ex) {
return controller.handleError(ex);
};
Controller.checkPermissions = function () {
};
Controller.prototype.getDefaultTimeout = function () {
return OutSystemsUIMobileController.default.defaultTimeout;
};
return Controller;
})(OS.Controller.BaseViewController);
return new OS.Controller.ControllerFactory(Controller, OutSystemsUIMobileLanguageResources);
});
define("OutSystemsUIMobile.Interaction.AnimatedLabel.mvc$controller.OnRender.UpdateLabelJS", [], function () {
return function ($parameters, $actions, $roles, $public) {
$parameters.AnimatedLabel.update($parameters.WidgetId);
};
});
define("OutSystemsUIMobile.Interaction.AnimatedLabel.mvc$controller.OnReady.InitJS", [], function () {
return function ($parameters, $actions, $roles, $public) {
$parameters.AnimatedLabel = new AnimatedLabel();
$parameters.AnimatedLabel.init($parameters.WidgetId);
};
});

define("OutSystemsUIMobile.Interaction.AnimatedLabel.mvc$debugger", ["exports", "OutSystems/ClientRuntime/Debugger", "OutSystems/ClientRuntime/Main"], function (exports, Debugger, OutSystems) {
var OS = OutSystems.Internal;
var metaInfo = {
"fWu2_XbWt0ipQ2oBp2VymA": {
getter: function (varBag, idService) {
return varBag.updateLabelJSResult.value;
}
},
"DsNOW6AzXEmise02MEzNSg": {
getter: function (varBag, idService) {
return varBag.initJSResult.value;
}
},
"gKl_nEjC90SQzO0Q7FFaKw": {
getter: function (varBag, idService) {
return varBag.model.variables.animatedLabelObjVar;
},
dataType: OS.Types.Object
},
"jf12gip0uk2Ro+Xbcj_xWw": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Label"));
})(varBag.model, idService);
}
},
"KFL5gWDsO0mEs5JPd4NBAg": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Input"));
})(varBag.model, idService);
}
}
};
OutSystemsDebugger.registerMetaInfo(metaInfo);
});
