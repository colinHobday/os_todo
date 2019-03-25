define("ToDo_ch.MainFlow.ToDos.mvc$model", ["OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.Common.Layout.mvc$model", "ToDo_ch.Common.MenuIcon.mvc$model", "OutSystemsUIMobile.Content.BlankSlate.mvc$model", "ToDo_ch.Common.BottomBar.mvc$model", "ToDo_ch.model$ToDoPriorityRecordList"], function (OutSystems, ToDo_chModel, ToDo_ch_Common_Layout_mvcModel, ToDo_ch_Common_MenuIcon_mvcModel, OutSystemsUIMobile_Content_BlankSlate_mvcModel, ToDo_ch_Common_BottomBar_mvcModel) {
var OS = OutSystems.Internal;
var GetToDosByUserIdAggrRec = (function (_super) {
__extends(GetToDosByUserIdAggrRec, _super);
function GetToDosByUserIdAggrRec(defaults) {
_super.apply(this, arguments);
}
GetToDosByUserIdAggrRec.RecordListType = ToDo_chModel.ToDoPriorityRecordList;
GetToDosByUserIdAggrRec.init();
return GetToDosByUserIdAggrRec;
})(OS.Model.AggregateRecord);


var VariablesRecord = (function (_super) {
__extends(VariablesRecord, _super);
function VariablesRecord(defaults) {
_super.apply(this, arguments);
}
VariablesRecord.attributesToDeclare = function () {
return [
this.attr("GetToDosByUserId", "getToDosByUserIdAggr", "getToDosByUserIdAggr", true, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new GetToDosByUserIdAggrRec());
}, GetToDosByUserIdAggrRec)
].concat(_super.attributesToDeclare.call(this));
};
VariablesRecord.fromStructure = function (str) {
return new VariablesRecord(new VariablesRecord.RecordClass({
getToDosByUserIdAggr: OS.DataTypes.ImmutableBase.getData(str)
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
})(OS.Model.BaseViewModel);
return new OS.Model.ModelFactory(Model);
});
define("ToDo_ch.MainFlow.ToDos.mvc$view", ["OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.controller", "react", "OutSystems/ReactView/Main", "ToDo_ch.MainFlow.ToDos.mvc$model", "ToDo_ch.MainFlow.ToDos.mvc$controller", "ToDo_ch.Common.Layout.mvc$view", "OutSystems/ReactWidgets/Main", "ToDo_ch.Common.MenuIcon.mvc$view", "OutSystemsUIMobile.Content.BlankSlate.mvc$view", "ToDo_ch.Common.BottomBar.mvc$view", "ToDo_ch.model$ToDoPriorityRecordList"], function (OutSystems, ToDo_chModel, ToDo_chController, React, OSView, ToDo_ch_MainFlow_ToDos_mvc_model, ToDo_ch_MainFlow_ToDos_mvc_controller, ToDo_ch_Common_Layout_mvc_view, OSWidgets, ToDo_ch_Common_MenuIcon_mvc_view, OutSystemsUIMobile_Content_BlankSlate_mvc_view, ToDo_ch_Common_BottomBar_mvc_view) {
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
        View.displayName = "MainFlow.ToDos";
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
                return ToDo_ch_MainFlow_ToDos_mvc_model;
            },
            enumerable: true,
            configurable: true
        });
        Object.defineProperty(View.prototype, "controllerFactory", {
            get: function () {
                return ToDo_ch_MainFlow_ToDos_mvc_controller;
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
title: new PlaceholderContent(function () {
return ["To Dos"];
}),
headerRight: new PlaceholderContent(function () {
return [React.createElement(OSWidgets.Link, {
enabled: true,
transition: OS.Transitions.createTransition(OS.Transitions.TransitionAnimation.Default),
url: OS.Navigation.generateScreenURL("/ToDo_ch/ToDoDetail", {
ToDoId: OS.BuiltinFunctions.integerToLongInteger(OS.BuiltinFunctions.nullIdentifier())
}),
visible: true,
_idProps: {
service: idService,
uuid: "2"
},
_widgetRecordProvider: widgetsRecordProvider
}, React.createElement(OSWidgets.Icon, {
icon: "plus",
iconSize: /*Twotimes*/ 1,
style: "icon",
visible: true,
_idProps: {
service: idService,
uuid: "3"
},
_widgetRecordProvider: widgetsRecordProvider
}))];
}),
headerContent: PlaceholderContent.Empty,
content: new PlaceholderContent(function () {
return [React.createElement(OSWidgets.Container, {
align: /*Default*/ 0,
animate: false,
extendedProperties: {
style: "text-align: center;"
},
visible: true,
_idProps: {
service: idService,
uuid: "4"
},
_widgetRecordProvider: widgetsRecordProvider
}, $if(model.variables.getToDosByUserIdAggr.hasFetchErrorAttr, true, this, function () {
return [React.createElement(OutSystemsUIMobile_Content_BlankSlate_mvc_view, {
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
alias: "3"
},
_widgetRecordProvider: widgetsRecordProvider,
placeholders: {
icon: new PlaceholderContent(function () {
return [React.createElement(OSWidgets.Icon, {
icon: "frown-o",
iconSize: /*Twotimes*/ 1,
style: "icon",
visible: true,
_idProps: {
service: idService,
uuid: "6"
},
_widgetRecordProvider: widgetsRecordProvider
})];
}),
content: new PlaceholderContent(function () {
return ["An error occurred while fetching To Dos"];
}),
actions: PlaceholderContent.Empty
},
_dependencies: []
})];
}, function () {
return [$if(!(model.variables.getToDosByUserIdAggr.isDataFetchedAttr), true, this, function () {
return [React.createElement(OutSystemsUIMobile_Content_BlankSlate_mvc_view, {
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
uuid: "7",
alias: "4"
},
_widgetRecordProvider: widgetsRecordProvider,
placeholders: {
icon: new PlaceholderContent(function () {
return [React.createElement(OSWidgets.Icon, {
icon: "hourglass-half",
iconSize: /*Twotimes*/ 1,
style: "icon",
visible: true,
_idProps: {
service: idService,
uuid: "8"
},
_widgetRecordProvider: widgetsRecordProvider
})];
}),
content: new PlaceholderContent(function () {
return ["Loading ..."];
}),
actions: PlaceholderContent.Empty
},
_dependencies: []
})];
}, function () {
return [$if(model.variables.getToDosByUserIdAggr.listOut.isEmpty, true, this, function () {
return [React.createElement(OutSystemsUIMobile_Content_BlankSlate_mvc_view, {
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
uuid: "9",
alias: "5"
},
_widgetRecordProvider: widgetsRecordProvider,
placeholders: {
icon: new PlaceholderContent(function () {
return [React.createElement(OSWidgets.Icon, {
icon: "info-circle",
iconSize: /*Twotimes*/ 1,
style: "icon",
visible: true,
_idProps: {
service: idService,
uuid: "10"
},
_widgetRecordProvider: widgetsRecordProvider
})];
}),
content: new PlaceholderContent(function () {
return ["No To Dos found"];
}),
actions: PlaceholderContent.Empty
},
_dependencies: []
})];
}, function () {
return [React.createElement(OSWidgets.List, {
animateItems: true,
gridProperties: {
classes: "OSFillParent"
},
mode: /*Default*/ 0,
source: model.variables.getToDosByUserIdAggr.listOut,
style: "list list-group",
tag: "div",
_idProps: {
service: idService,
uuid: "11"
},
_widgetRecordProvider: widgetsRecordProvider,
source_dataFetchStatus: OS.Model.calculateDataFetchStatus(model.variables.getToDosByUserIdAggr.dataFetchStatusAttr),
placeholders: {
content: new IteratorPlaceholderContent(function (idService, callContext) {
return [React.createElement(OSWidgets.ListItem, {
onClick: function () {
OS.Navigation.navigateTo(OS.Navigation.generateScreenURL("/ToDo_ch/ToDoDetail", {
ToDoId: model.variables.getToDosByUserIdAggr.listOut.getCurrent(callContext.iterationContext).toDoAttr.idAttr
}), OS.Transitions.createTransition(OS.Transitions.TransitionAnimation.Default));
},
style: "list-item",
triggerActionOnFullSwipeLeft: true,
triggerActionOnFullSwipeRight: true,
_idProps: {
service: idService,
name: "ListItem1"
},
_widgetRecordProvider: widgetsRecordProvider,
placeholders: {
leftActions: PlaceholderContent.Empty,
content: new PlaceholderContent(function () {
return [React.createElement(OSWidgets.Expression, {
gridProperties: {
classes: "OSFillParent"
},
style: "bold",
value: model.variables.getToDosByUserIdAggr.listOut.getCurrent(callContext.iterationContext).toDoAttr.titleAttr,
_idProps: {
service: idService,
uuid: "13"
},
_widgetRecordProvider: widgetsRecordProvider,
value_dataFetchStatus: OS.Model.calculateDataFetchStatus(model.variables.getToDosByUserIdAggr.dataFetchStatusAttr)
})];
}),
rightActions: PlaceholderContent.Empty
},
_dependencies: [asPrimitiveValue(model.variables.getToDosByUserIdAggr.dataFetchStatusAttr), asPrimitiveValue(model.variables.getToDosByUserIdAggr.listOut.getCurrent(callContext.iterationContext).toDoAttr.titleAttr)]
})];
}, callContext, idService, "1")
},
_dependencies: [asPrimitiveValue(model.variables.getToDosByUserIdAggr.dataFetchStatusAttr)]
})];
})];
})];
}))];
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
uuid: "14",
alias: "6"
},
_widgetRecordProvider: widgetsRecordProvider,
_dependencies: []
})];
})
},
_dependencies: [asPrimitiveValue(model.variables.getToDosByUserIdAggr.dataFetchStatusAttr), asPrimitiveValue(model.variables.getToDosByUserIdAggr.listOut), asPrimitiveValue(model.variables.getToDosByUserIdAggr.isDataFetchedAttr), asPrimitiveValue(model.variables.getToDosByUserIdAggr.hasFetchErrorAttr)]
}));
        };
        return View;
    })(OSView.BaseView.BaseWebScreen);
	
    return View;
});
define("ToDo_ch.MainFlow.ToDos.mvc$controller", ["OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.controller", "ToDo_ch.languageResources", "ToDo_ch.MainFlow.controller", "ToDo_ch.MainFlow.ToDos.mvc$debugger", "ToDo_ch.model$ToDoPriorityRecordList"], function (OutSystems, ToDo_chModel, ToDo_chController, ToDo_chLanguageResources, ToDo_ch_MainFlowController, ToDo_ch_MainFlow_ToDos_mvc_Debugger) {
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
Controller.prototype.getToDosByUserId$AggrRefresh = function (maxRecords) {
var model = this.model;
var controller = this.controller;
var callContext = controller.callContext();
return OS.Flow.tryFinally(function () {
var varBag = {};
controller.pushDebuggerContext(callContext);

OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:Kakd+JfqqkOkQCGThL99pQ:/NRWebFlows.fWtJs57lI0qCTlwkcDoxDA/NodesShownInESpaceTree.y2mAPDLTvUWZCfzzhjkRqw/ScreenDataSets.Kakd+JfqqkOkQCGThL99pQ:94ho2JROXgq0Kpp3iZOYUA", "ToDo_ch", "GetToDosByUserId", "NRNodes.WebScreenDataSet", callContext.id, varBag);
OutSystemsDebugger.setThreadStartName(callContext.id, "MainFlow/ToDos/GetToDosByUserId");
return controller.callAggregate("ScreenDataSetGetToDosByUserId", "screenservices/ToDo_ch/MainFlow/ToDos/ScreenDataSetGetToDosByUserId", "b056Vx6NGLUjx7X21d4wTA", maxRecords, function (b) {
model.variables.getToDosByUserIdAggr.dataFetchStatusAttr = b;
}, function (json) {
model.variables.getToDosByUserIdAggr.replaceWith(OS.DataConversion.ServerDataConverter.from(json, model.variables.getToDosByUserIdAggr.constructor));
}, undefined, OutSystemsDebugger.getRequestHeaders(callContext.id), function (json, headers) {
OutSystemsDebugger.processResponseHeaders(callContext.id, headers);
});

}, function () {
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:Kakd+JfqqkOkQCGThL99pQ", callContext.id);
controller.popDebuggerContext(callContext);

});
};

Controller.prototype.dataFetchActionNames = ["getToDosByUserId$AggrRefresh"];
// Client Actions


// Event Handler Actions
Controller.prototype.pushDebuggerContext = function (callContext) {
var varBag = {};
OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:fWtJs57lI0qCTlwkcDoxDA:/NRWebFlows.fWtJs57lI0qCTlwkcDoxDA:kTme2i1D6FY_gnpwkaVebA", "ToDo_ch", "MainFlow", "NRFlows.WebFlow", callContext.id, varBag);
OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:y2mAPDLTvUWZCfzzhjkRqw:/NRWebFlows.fWtJs57lI0qCTlwkcDoxDA/NodesShownInESpaceTree.y2mAPDLTvUWZCfzzhjkRqw:YqCFnQ8AuwNKzyQzVOvInw", "ToDo_ch", "ToDos", "NRNodes.WebScreen", callContext.id, varBag);
};
Controller.prototype.popDebuggerContext = function (callContext) {
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:y2mAPDLTvUWZCfzzhjkRqw", callContext.id);
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:fWtJs57lI0qCTlwkcDoxDA", callContext.id);
};
Controller.prototype.onInitializeEventHandler = null;
Controller.prototype.onReadyEventHandler = null;
Controller.prototype.onRenderEventHandler = null;
Controller.prototype.onDestroyEventHandler = null;
Controller.prototype.onParametersChangedEventHandler = null;
Controller.prototype.handleError = function (ex) {
return ToDo_ch_MainFlowController.default.handleError(ex, this.callContext());
};
Controller.checkPermissions = function () {
OS.RolesInfo.checkRegistered();
};
Controller.prototype.getDefaultTimeout = function () {
return ToDo_chController.default.defaultTimeout;
};
return Controller;
})(OS.Controller.BaseViewController);
return new OS.Controller.ControllerFactory(Controller, ToDo_chLanguageResources);
});

define("ToDo_ch.MainFlow.ToDos.mvc$debugger", ["exports", "OutSystems/ClientRuntime/Debugger", "OutSystems/ClientRuntime/Main"], function (exports, Debugger, OutSystems) {
var OS = OutSystems.Internal;
var metaInfo = {
"Kakd+JfqqkOkQCGThL99pQ": {
getter: function (varBag, idService) {
return varBag.model.variables.getToDosByUserIdAggr;
}
},
"yjtTM3vkhkKwwC3FxTy3cw": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("HeaderLeft"));
})(varBag.model, idService);
}
},
"rc6Tj2tshUiqNRCtwjrViw": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Title"));
})(varBag.model, idService);
}
},
"gHseDFsWzkerWX_YRWKGGA": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("HeaderRight"));
})(varBag.model, idService);
}
},
"QSgjD77N+0qxJd9pRiTHvA": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("HeaderContent"));
})(varBag.model, idService);
}
},
"cTGemhxDFEm4nuNAwfFiYg": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Content"));
})(varBag.model, idService);
}
},
"PI5ZBwUVskGETjCoDeC1cw": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Icon"));
})(varBag.model, idService);
}
},
"7A_DJFkFu0i6MNstSgR9Ww": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Content"));
})(varBag.model, idService);
}
},
"olI_4VbkVkmpLwd3NonSpA": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Actions"));
})(varBag.model, idService);
}
},
"S_IfkDG9jkm4ezojjyivHA": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Icon"));
})(varBag.model, idService);
}
},
"yH+Jt2vp8E6hkIRioZY+OA": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Content"));
})(varBag.model, idService);
}
},
"N7J5kANa40SPkxpHxzuVmg": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Actions"));
})(varBag.model, idService);
}
},
"2CdM8l4iUU6SljF_dgA_YQ": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Icon"));
})(varBag.model, idService);
}
},
"yMrd_kY+h0Co4e756x9TIg": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Content"));
})(varBag.model, idService);
}
},
"6mtDIghLmkaIfe0FsrcSdA": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Actions"));
})(varBag.model, idService);
}
},
"FcgLO1RR8kat9R9UoYfVNg": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("ListItem1"));
})(varBag.model, idService);
}
},
"OGBgA4gto0WNBOhiMpnYeg": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Bottom"));
})(varBag.model, idService);
}
}
};
OutSystemsDebugger.registerMetaInfo(metaInfo);
});
