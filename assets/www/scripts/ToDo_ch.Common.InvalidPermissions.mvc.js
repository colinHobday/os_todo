define("ToDo_ch.Common.InvalidPermissions.mvc$model", ["OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.Common.Layout.mvc$model", "ToDo_ch.Common.MenuIcon.mvc$model", "OutSystemsUIMobile.Content.BlankSlate.mvc$model", "ToDo_ch.Common.BottomBar.mvc$model"], function (OutSystems, ToDo_chModel, ToDo_ch_Common_Layout_mvcModel, ToDo_ch_Common_MenuIcon_mvcModel, OutSystemsUIMobile_Content_BlankSlate_mvcModel, ToDo_ch_Common_BottomBar_mvcModel) {
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
Model._hasValidationWidgetsValue = (((ToDo_ch_Common_Layout_mvcModel.hasValidationWidgets || ToDo_ch_Common_MenuIcon_mvcModel.hasValidationWidgets) || OutSystemsUIMobile_Content_BlankSlate_mvcModel.hasValidationWidgets) || ToDo_ch_Common_BottomBar_mvcModel.hasValidationWidgets);
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
define("ToDo_ch.Common.InvalidPermissions.mvc$view", ["OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.controller", "react", "OutSystems/ReactView/Main", "ToDo_ch.Common.InvalidPermissions.mvc$model", "ToDo_ch.Common.InvalidPermissions.mvc$controller", "ToDo_ch.Common.Layout.mvc$view", "OutSystems/ReactWidgets/Main", "ToDo_ch.Common.MenuIcon.mvc$view", "OutSystemsUIMobile.Content.BlankSlate.mvc$view", "ToDo_ch.Common.BottomBar.mvc$view"], function (OutSystems, ToDo_chModel, ToDo_chController, React, OSView, ToDo_ch_Common_InvalidPermissions_mvc_model, ToDo_ch_Common_InvalidPermissions_mvc_controller, ToDo_ch_Common_Layout_mvc_view, OSWidgets, ToDo_ch_Common_MenuIcon_mvc_view, OutSystemsUIMobile_Content_BlankSlate_mvc_view, ToDo_ch_Common_BottomBar_mvc_view) {
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
        View.displayName = "Common.InvalidPermissions";
        View.getCssDependencies = function() {
            return ["css/OutSystemsReactWidgets.css", "css/OutSystemsUIMobile.BaseTheme.css", "css/OutSystemsUIMobile.PhoneTheme.css", "css/ToDo_ch.ToDo_ch.css", "css/OutSystemsUIMobile.PhoneTheme.extra.css"];
        };
        View.getJsDependencies = function() {
            return [];
        };
        View.getBlocks = function() {
            return [ToDo_ch_Common_Layout_mvc_view, ToDo_ch_Common_MenuIcon_mvc_view, OutSystemsUIMobile_Content_BlankSlate_mvc_view, ToDo_ch_Common_BottomBar_mvc_view];
        };
        Object.defineProperty(View.prototype, "modelFactory", {
            get: function () {
                return ToDo_ch_Common_InvalidPermissions_mvc_model;
            },
            enumerable: true,
            configurable: true
        });
        Object.defineProperty(View.prototype, "controllerFactory", {
            get: function () {
                return ToDo_ch_Common_InvalidPermissions_mvc_controller;
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

            return React.DOM.div(this.getRootNodeProperties(), React.createElement(ToDo_ch_Common_Layout_mvc_view, {
inputs: {},
events: {
_handleError: function (ex) {
controller.handleError(ex);
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
placeholders: {
headerLeft: new PlaceholderContent(function () {
return [React.createElement(ToDo_ch_Common_MenuIcon_mvc_view, {
inputs: {},
events: {
_handleError: function (ex) {
controller.handleError(ex);
}
},
_validationProps: {
validationService: validationService
},
_idProps: {
service: idService,
uuid: "1",
alias: "2"
},
_widgetRecordProvider: widgetsRecordProvider,
_dependencies: []
})];
}),
title: PlaceholderContent.Empty,
headerRight: PlaceholderContent.Empty,
headerContent: PlaceholderContent.Empty,
content: new PlaceholderContent(function () {
return [React.createElement(OutSystemsUIMobile_Content_BlankSlate_mvc_view, {
inputs: {
FullHeight: true
},
events: {
_handleError: function (ex) {
controller.handleError(ex);
}
},
_validationProps: {
validationService: validationService
},
_idProps: {
service: idService,
uuid: "2",
alias: "3"
},
_widgetRecordProvider: widgetsRecordProvider,
placeholders: {
icon: new PlaceholderContent(function () {
return [React.createElement(OSWidgets.Icon, {
icon: "warning",
iconSize: /*FontSize*/ 0,
style: "icon",
visible: true,
_idProps: {
service: idService,
name: "Icon1"
},
_widgetRecordProvider: widgetsRecordProvider
})];
}),
content: new PlaceholderContent(function () {
return ["You don\'t have permissions to view the required screen."];
}),
actions: new PlaceholderContent(function () {
return [React.createElement(OSWidgets.Button, {
enabled: true,
gridProperties: {
classes: "ThemeGrid_Width6"
},
onClick: function () {
OS.Navigation.navigateTo(OS.Navigation.generateScreenURL("/ToDo_ch/Login", {}), OS.Transitions.createTransition(OS.Transitions.TransitionAnimation.Default));
},
style: "btn btn-primary",
visible: true,
_idProps: {
service: idService,
uuid: "4"
},
_widgetRecordProvider: widgetsRecordProvider
}, "Login")];
})
},
_dependencies: []
})];
}),
bottom: new PlaceholderContent(function () {
return [React.createElement(ToDo_ch_Common_BottomBar_mvc_view, {
inputs: {},
events: {
_handleError: function (ex) {
controller.handleError(ex);
}
},
_validationProps: {
validationService: validationService
},
_idProps: {
service: idService,
uuid: "5",
alias: "4"
},
_widgetRecordProvider: widgetsRecordProvider,
_dependencies: []
})];
})
},
_dependencies: []
}));
        };
        return View;
    })(OSView.BaseView.BaseWebScreen);
	
    return View;
});
define("ToDo_ch.Common.InvalidPermissions.mvc$controller", ["OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.controller", "ToDo_ch.languageResources", "ToDo_ch.Common.controller", "ToDo_ch.Common.InvalidPermissions.mvc$debugger"], function (OutSystems, ToDo_chModel, ToDo_chController, ToDo_chLanguageResources, ToDo_ch_CommonController, ToDo_ch_Common_InvalidPermissions_mvc_Debugger) {
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


// Event Handler Actions
Controller.prototype.pushDebuggerContext = function (callContext) {
var varBag = {};
OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:0eZ+W3SSVk+CJcw1X48PQA:/NRWebFlows.0eZ+W3SSVk+CJcw1X48PQA:H7e5RuqVjgrsBfPWu5z4jw", "ToDo_ch", "Common", "NRFlows.WebFlow", callContext.id, varBag);
OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:8wvpqVs6lUyB01hSTI+W2A:/NRWebFlows.0eZ+W3SSVk+CJcw1X48PQA/NodesShownInESpaceTree.8wvpqVs6lUyB01hSTI+W2A:8FpL6iXpFZOX03PUbOiY9Q", "ToDo_ch", "InvalidPermissions", "NRNodes.WebScreen", callContext.id, varBag);
};
Controller.prototype.popDebuggerContext = function (callContext) {
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:8wvpqVs6lUyB01hSTI+W2A", callContext.id);
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:0eZ+W3SSVk+CJcw1X48PQA", callContext.id);
};
Controller.prototype.onInitializeEventHandler = null;
Controller.prototype.onReadyEventHandler = null;
Controller.prototype.onRenderEventHandler = null;
Controller.prototype.onDestroyEventHandler = null;
Controller.prototype.onParametersChangedEventHandler = null;
Controller.prototype.handleError = function (ex) {
return ToDo_ch_CommonController.default.handleError(ex, this.callContext());
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

define("ToDo_ch.Common.InvalidPermissions.mvc$debugger", ["exports", "OutSystems/ClientRuntime/Debugger", "OutSystems/ClientRuntime/Main"], function (exports, Debugger, OutSystems) {
var OS = OutSystems.Internal;
var metaInfo = {
"G6lRFPS0LU+vbPIH2bPB0A": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("HeaderLeft"));
})(varBag.model, idService);
}
},
"TccTPOz8JkeIZh4MSjt14A": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Title"));
})(varBag.model, idService);
}
},
"4EKHSYkwVEegT13_x9PJXA": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("HeaderRight"));
})(varBag.model, idService);
}
},
"PBD26pf5ok6818Q4qVx0sw": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("HeaderContent"));
})(varBag.model, idService);
}
},
"ApTTWJQiBUmPg2t+wMUw0g": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Content"));
})(varBag.model, idService);
}
},
"0Ec_p59Mzk24R5q6qWoGxQ": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Icon"));
})(varBag.model, idService);
}
},
"N_0M1YdF9EWl4yf9U4Ch4A": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Icon1"));
})(varBag.model, idService);
}
},
"83u3VSxatEWn9pgZn1QPmQ": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Content"));
})(varBag.model, idService);
}
},
"ID9tvX3NrkixSY+pBS+fmQ": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Actions"));
})(varBag.model, idService);
}
},
"3oVs1Qilw0aowC_m4iAj4g": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Bottom"));
})(varBag.model, idService);
}
}
};
OutSystemsDebugger.registerMetaInfo(metaInfo);
});
