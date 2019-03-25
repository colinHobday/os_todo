define("ToDo_ch.MainFlow.ToDoDetail.mvc$model", ["OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$ToDoRecord", "ToDo_ch.model$CategoryRecordList", "ToDo_ch.model$ToDoRecordList"], function (OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var GetCategoriesAggrRec = (function (_super) {
__extends(GetCategoriesAggrRec, _super);
function GetCategoriesAggrRec(defaults) {
_super.apply(this, arguments);
}
GetCategoriesAggrRec.RecordListType = ToDo_chModel.CategoryRecordList;
GetCategoriesAggrRec.init();
return GetCategoriesAggrRec;
})(OS.Model.AggregateRecord);
var GetToDoByIdAggrRec = (function (_super) {
__extends(GetToDoByIdAggrRec, _super);
function GetToDoByIdAggrRec(defaults) {
_super.apply(this, arguments);
}
GetToDoByIdAggrRec.RecordListType = ToDo_chModel.ToDoRecordList;
GetToDoByIdAggrRec.init();
return GetToDoByIdAggrRec;
})(OS.Model.AggregateRecord);


var VariablesRecord = (function (_super) {
__extends(VariablesRecord, _super);
function VariablesRecord(defaults) {
_super.apply(this, arguments);
}
VariablesRecord.attributesToDeclare = function () {
return [
this.attr("ToDoId", "toDoIdIn", "ToDoId", true, false, OS.Types.LongInteger, function () {
return OS.DataTypes.LongInteger.defaultValue;
}), 
this.attr("_toDoIdInDataFetchStatus", "_toDoIdInDataFetchStatus", "_toDoIdInDataFetchStatus", true, false, OS.Types.Integer, function () {
return /*Fetched*/ 1;
}), 
this.attr("GetCategories", "getCategoriesAggr", "getCategoriesAggr", true, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new GetCategoriesAggrRec());
}, GetCategoriesAggrRec), 
this.attr("GetToDoById", "getToDoByIdAggr", "getToDoByIdAggr", true, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new GetToDoByIdAggrRec());
}, GetToDoByIdAggrRec)
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
return {
Form1: OS.Model.ValidationWidgetRecord,
Input_Title: OS.Model.ValidationWidgetRecord,
Input_Notes: OS.Model.ValidationWidgetRecord,
Dropdown1: OS.Model.ValidationWidgetRecord,
Input_DueDate: OS.Model.ValidationWidgetRecord,
PriorityGroup: OS.Model.ValidationWidgetRecord
};
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
return true;
}
});

Model.prototype.setInputs = function (inputs) {
if("ToDoId" in inputs) {
this.variables.toDoIdIn = OS.DataConversion.ServerDataConverter.from(inputs.ToDoId, OS.Types.LongInteger);
}

};
return Model;
})(OS.Model.BaseViewModel);
return new OS.Model.ModelFactory(Model);
});
define("ToDo_ch.MainFlow.ToDoDetail.mvc$view", ["OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.controller", "react", "OutSystems/ReactView/Main", "ToDo_ch.MainFlow.ToDoDetail.mvc$model", "ToDo_ch.MainFlow.ToDoDetail.mvc$controller", "ToDo_ch.Common.Layout.mvc$view", "OutSystems/ReactWidgets/Main", "ToDo_ch.Common.MenuIcon.mvc$view", "ToDo_ch.Common.BottomBar.mvc$view", "ToDo_ch.model$ToDoRecord", "ToDo_ch.model$CategoryRecordList", "ToDo_ch.model$ToDoRecordList"], function (OutSystems, ToDo_chModel, ToDo_chController, React, OSView, ToDo_ch_MainFlow_ToDoDetail_mvc_model, ToDo_ch_MainFlow_ToDoDetail_mvc_controller, ToDo_ch_Common_Layout_mvc_view, OSWidgets, ToDo_ch_Common_MenuIcon_mvc_view, ToDo_ch_Common_BottomBar_mvc_view) {
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
        View.displayName = "MainFlow.ToDoDetail";
        View.getCssDependencies = function() {
            return ["css/OutSystemsReactWidgets.css", "css/OutSystemsUIMobile.BaseTheme.css", "css/OutSystemsUIMobile.PhoneTheme.css", "css/ToDo_ch.ToDo_ch.css", "css/OutSystemsUIMobile.PhoneTheme.extra.css"];
        };
        View.getJsDependencies = function() {
            return [];
        };
        View.getBlocks = function() {
            return [ToDo_ch_Common_Layout_mvc_view, ToDo_ch_Common_MenuIcon_mvc_view, ToDo_ch_Common_BottomBar_mvc_view];
        };
        Object.defineProperty(View.prototype, "modelFactory", {
            get: function () {
                return ToDo_ch_MainFlow_ToDoDetail_mvc_model;
            },
            enumerable: true,
            configurable: true
        });
        Object.defineProperty(View.prototype, "controllerFactory", {
            get: function () {
                return ToDo_ch_MainFlow_ToDoDetail_mvc_controller;
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
return [$if(!(model.variables.toDoIdIn.equals(OS.BuiltinFunctions.integerToLongInteger(OS.BuiltinFunctions.nullIdentifier()))), false, this, function () {
return [React.createElement(OSWidgets.Expression, {
value: model.variables.getToDoByIdAggr.listOut.getCurrent(callContext.iterationContext).toDoAttr.titleAttr,
_idProps: {
service: idService,
uuid: "2"
},
_widgetRecordProvider: widgetsRecordProvider,
value_dataFetchStatus: OS.Model.calculateDataFetchStatus(model.variables.getToDoByIdAggr.dataFetchStatusAttr)
})];
}, function () {
return ["Create New To Do"];
})];
}),
headerRight: PlaceholderContent.Empty,
headerContent: PlaceholderContent.Empty,
content: new PlaceholderContent(function () {
return [React.createElement(OSWidgets.Form, {
_validationProps: {
validationService: validationService
},
gridProperties: {
classes: "OSFillParent"
},
style: "form card",
_idProps: {
service: idService,
name: "Form1"
},
_widgetRecordProvider: widgetsRecordProvider
}, React.createElement(OSWidgets.Container, {
align: /*Default*/ 0,
animate: false,
visible: true,
_idProps: {
service: idService,
uuid: "4"
},
_widgetRecordProvider: widgetsRecordProvider
}, React.createElement(OSWidgets.Label, {
gridProperties: {
classes: "OSFillParent"
},
mandatory: true,
targetWidget: "Input_Title",
_idProps: {
service: idService,
uuid: "5"
},
_widgetRecordProvider: widgetsRecordProvider
}, "Title"), React.createElement(OSWidgets.Input, {
_validationProps: {
validationService: validationService,
validationParentId: idService.getId("Form1")
},
enabled: true,
gridProperties: {
classes: "OSFillParent"
},
inputType: /*Text*/ 0,
mandatory: true,
maxLength: 50,
style: "form-control",
variable: model.createVariable(OS.Types.Text, model.variables.getToDoByIdAggr.listOut.getCurrent(callContext.iterationContext).toDoAttr.titleAttr, function (value) {
model.variables.getToDoByIdAggr.listOut.getCurrent(callContext.iterationContext).toDoAttr.titleAttr = value;
}),
_idProps: {
service: idService,
name: "Input_Title"
},
_widgetRecordProvider: widgetsRecordProvider,
variable_dataFetchStatus: OS.Model.calculateDataFetchStatus(model.variables.getToDoByIdAggr.dataFetchStatusAttr)
})), React.createElement(OSWidgets.Container, {
align: /*Default*/ 0,
animate: false,
visible: true,
_idProps: {
service: idService,
uuid: "7"
},
_widgetRecordProvider: widgetsRecordProvider
}, "Notes"), React.createElement(OSWidgets.Input, {
_validationProps: {
validationService: validationService,
validationParentId: idService.getId("Form1")
},
enabled: true,
gridProperties: {
classes: "OSFillParent"
},
inputType: /*Text*/ 0,
mandatory: false,
maxLength: 250,
style: "form-control",
variable: model.createVariable(OS.Types.Text, model.variables.getToDoByIdAggr.listOut.getCurrent(callContext.iterationContext).toDoAttr.notesAttr, function (value) {
model.variables.getToDoByIdAggr.listOut.getCurrent(callContext.iterationContext).toDoAttr.notesAttr = value;
}),
_idProps: {
service: idService,
name: "Input_Notes"
},
_widgetRecordProvider: widgetsRecordProvider,
variable_dataFetchStatus: OS.Model.calculateDataFetchStatus(model.variables.getToDoByIdAggr.dataFetchStatusAttr)
}), React.createElement(OSWidgets.Container, {
align: /*Default*/ 0,
animate: false,
extendedProperties: {
style: "margin-top: 10px;"
},
visible: true,
_idProps: {
service: idService,
uuid: "9"
},
_widgetRecordProvider: widgetsRecordProvider
}, React.createElement(OSWidgets.Label, {
gridProperties: {
classes: "OSFillParent"
},
mandatory: false,
targetWidget: "Dropdown1",
_idProps: {
service: idService,
uuid: "10"
},
_widgetRecordProvider: widgetsRecordProvider
}, "Category"), React.createElement(OSWidgets.Dropdown, {
_validationProps: {
validationService: validationService,
validationParentId: idService.getId("Form1")
},
enabled: true,
list: model.variables.getCategoriesAggr.listOut,
mandatory: false,
style: "dropdown",
values: function (elem) {
return elem.categoryAttr.idAttr;
},
variable: model.createVariable(OS.Types.LongInteger, model.variables.getToDoByIdAggr.listOut.getCurrent(callContext.iterationContext).toDoAttr.categoryIdAttr, function (value) {
model.variables.getToDoByIdAggr.listOut.getCurrent(callContext.iterationContext).toDoAttr.categoryIdAttr = value;
}),
_idProps: {
service: idService,
name: "Dropdown1"
},
_widgetRecordProvider: widgetsRecordProvider,
list_dataFetchStatus: OS.Model.calculateDataFetchStatus(model.variables.getCategoriesAggr.dataFetchStatusAttr),
variable_dataFetchStatus: OS.Model.calculateDataFetchStatus(model.variables.getToDoByIdAggr.dataFetchStatusAttr),
placeholders: {
content: new IteratorPlaceholderContent(function (idService, callContext) {
return [React.createElement(OSWidgets.Expression, {
value: model.variables.getCategoriesAggr.listOut.getCurrent(callContext.iterationContext).categoryAttr.nameAttr,
_idProps: {
service: idService,
uuid: "12"
},
_widgetRecordProvider: widgetsRecordProvider,
value_dataFetchStatus: OS.Model.calculateDataFetchStatus(model.variables.getCategoriesAggr.dataFetchStatusAttr),
_dependencies: []
})];
}, callContext, idService, "1")
},
_dependencies: [asPrimitiveValue(model.variables.getCategoriesAggr.dataFetchStatusAttr)]
})), React.createElement(OSWidgets.Container, {
align: /*Default*/ 0,
animate: false,
extendedProperties: {
style: "margin-top: 10px;"
},
visible: true,
_idProps: {
service: idService,
uuid: "13"
},
_widgetRecordProvider: widgetsRecordProvider
}, React.createElement(OSWidgets.Label, {
gridProperties: {
classes: "OSFillParent"
},
mandatory: false,
targetWidget: "Input_DueDate",
_idProps: {
service: idService,
uuid: "14"
},
_widgetRecordProvider: widgetsRecordProvider
}, "Due Date"), React.createElement(OSWidgets.Input, {
_validationProps: {
validationService: validationService,
validationParentId: idService.getId("Form1")
},
enabled: true,
gridProperties: {
classes: "OSFillParent"
},
inputType: /*Date*/ 4,
mandatory: false,
maxLength: 0,
style: "form-control",
variable: model.createVariable(OS.Types.Date, model.variables.getToDoByIdAggr.listOut.getCurrent(callContext.iterationContext).toDoAttr.dueDateAttr, function (value) {
model.variables.getToDoByIdAggr.listOut.getCurrent(callContext.iterationContext).toDoAttr.dueDateAttr = value;
}),
_idProps: {
service: idService,
name: "Input_DueDate"
},
_widgetRecordProvider: widgetsRecordProvider,
variable_dataFetchStatus: OS.Model.calculateDataFetchStatus(model.variables.getToDoByIdAggr.dataFetchStatusAttr)
})), React.createElement(OSWidgets.Container, {
align: /*Default*/ 0,
animate: false,
extendedProperties: {
style: "margin-top: 10px;"
},
visible: true,
_idProps: {
service: idService,
uuid: "16"
},
_widgetRecordProvider: widgetsRecordProvider
}, React.createElement(OSWidgets.Container, {
align: /*Default*/ 0,
animate: false,
visible: true,
_idProps: {
service: idService,
uuid: "17"
},
_widgetRecordProvider: widgetsRecordProvider
}, React.createElement(OSWidgets.Label, {
gridProperties: {
classes: "OSFillParent"
},
_idProps: {
service: idService,
uuid: "18"
},
_widgetRecordProvider: widgetsRecordProvider
}, "Priority"), React.createElement(OSWidgets.ButtonGroup, {
_validationProps: {
validationService: validationService,
validationParentId: idService.getId("Form1")
},
enabled: true,
mandatory: true,
style: "button-group",
variable: model.createVariable(OS.Types.Integer, model.variables.getToDoByIdAggr.listOut.getCurrent(callContext.iterationContext).toDoAttr.priorityIdentifierAttr, function (value) {
model.variables.getToDoByIdAggr.listOut.getCurrent(callContext.iterationContext).toDoAttr.priorityIdentifierAttr = value;
}),
_idProps: {
service: idService,
name: "PriorityGroup"
},
_widgetRecordProvider: widgetsRecordProvider,
variable_dataFetchStatus: OS.Model.calculateDataFetchStatus(model.variables.getToDoByIdAggr.dataFetchStatusAttr)
}, React.createElement(OSWidgets.ButtonGroupItem, {
enabled: true,
style: "button-group-item",
value: ToDo_chModel.staticEntities.priority.low,
visible: true,
_idProps: {
service: idService,
name: "ButtonGroupItem1"
},
_widgetRecordProvider: widgetsRecordProvider
}, "Low"), React.createElement(OSWidgets.ButtonGroupItem, {
enabled: true,
style: "button-group-item",
value: ToDo_chModel.staticEntities.priority.medium,
visible: true,
_idProps: {
service: idService,
name: "ButtonGroupItem2"
},
_widgetRecordProvider: widgetsRecordProvider
}, "Medium"), React.createElement(OSWidgets.ButtonGroupItem, {
enabled: true,
style: "button-group-item",
value: ToDo_chModel.staticEntities.priority.high,
visible: true,
_idProps: {
service: idService,
name: "ButtonGroupItem3"
},
_widgetRecordProvider: widgetsRecordProvider
}, "High"))), React.createElement(OSWidgets.Label, {
gridProperties: {
classes: "OSFillParent"
},
mandatory: false,
targetWidget: "Input_Notes",
_idProps: {
service: idService,
uuid: "23"
},
_widgetRecordProvider: widgetsRecordProvider
})), React.createElement(OSWidgets.Button, {
enabled: true,
onClick: function () {
_this.validateWidget(idService.getId("Form1"));
return Promise.resolve().then(function () {
var eventHandlerContext = callContext.clone();
return OS.Flow.tryFinally(function () {
var varBag = {};
controller.pushDebuggerContext(eventHandlerContext);

OutSystemsDebugger.setThreadStartName(eventHandlerContext.id, "MainFlow/ToDoDetail/Button OnClick");
return controller.saveOnClick$Action(controller.callContext(eventHandlerContext));
}, function () {
controller.popDebuggerContext(eventHandlerContext);
});
});

;
},
style: "btn btn-primary",
visible: true,
_idProps: {
service: idService,
uuid: "24"
},
_widgetRecordProvider: widgetsRecordProvider
}, "Save"))];
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
uuid: "25",
alias: "3"
},
_widgetRecordProvider: widgetsRecordProvider,
_dependencies: []
})];
})
},
_dependencies: [asPrimitiveValue(model.variables.getCategoriesAggr.listOut), asPrimitiveValue(model.variables.getCategoriesAggr.dataFetchStatusAttr), asPrimitiveValue(model.variables.getToDoByIdAggr.dataFetchStatusAttr), asPrimitiveValue(model.variables.getToDoByIdAggr.listOut.getCurrent(callContext.iterationContext).toDoAttr.priorityIdentifierAttr), asPrimitiveValue(model.variables.getToDoByIdAggr.listOut.getCurrent(callContext.iterationContext).toDoAttr.dueDateAttr), asPrimitiveValue(model.variables.getToDoByIdAggr.listOut.getCurrent(callContext.iterationContext).toDoAttr.categoryIdAttr), asPrimitiveValue(model.variables.getToDoByIdAggr.listOut.getCurrent(callContext.iterationContext).toDoAttr.notesAttr), asPrimitiveValue(model.variables.getToDoByIdAggr.listOut.getCurrent(callContext.iterationContext).toDoAttr.titleAttr), asPrimitiveValue(model.variables.toDoIdIn)]
}));
        };
        return View;
    })(OSView.BaseView.BaseWebScreen);
	
    return View;
});
define("ToDo_ch.MainFlow.ToDoDetail.mvc$controller", ["OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.controller", "ToDo_ch.languageResources", "ToDo_ch.MainFlow.controller", "ToDo_ch.MainFlow.ToDoDetail.mvc$debugger", "ToDo_ch.model$ToDoRecord", "ToDo_ch.model$CategoryRecordList", "ToDo_ch.model$ToDoRecordList"], function (OutSystems, ToDo_chModel, ToDo_chController, ToDo_chLanguageResources, ToDo_ch_MainFlowController, ToDo_ch_MainFlow_ToDoDetail_mvc_Debugger) {
var OS = OutSystems.Internal;
var Controller = (function (_super) {
__extends(Controller, _super);
function Controller() {
_super.apply(this, arguments);
var controller = this.controller;
this.clientActionProxies = {};
}
// Server Actions
Controller.prototype.createOrUpdateToDo$ServerAction = function (sourceIn, callContext) {
var controller = this.controller;
var inputs = {
Source: OS.DataConversion.ServerDataConverter.to(sourceIn, OS.Types.Record)
};
return controller.callServerAction("CreateOrUpdateToDo", "screenservices/ToDo_ch/MainFlow/ToDoDetail/ssCreateOrUpdateToDo", "_CqHQ5MHqTdhloLfzFPWDQ", inputs, controller.callContext(callContext), OutSystemsDebugger.getRequestHeaders(callContext.id), function (json, headers) {
OutSystemsDebugger.processResponseHeaders(callContext.id, headers);
}).then(function (outputs) {
var executeServerActionResult = new (controller.constructor.getVariableGroupType("ToDo_ch.MainFlow.ToDoDetail$ssCreateOrUpdateToDo"))();
executeServerActionResult.idOut = OS.DataConversion.ServerDataConverter.from(outputs.Id, OS.Types.LongInteger);
return executeServerActionResult;
});
};
Controller.registerVariableGroupType("ToDo_ch.MainFlow.ToDoDetail$ssCreateOrUpdateToDo", [{
name: "Id",
attrName: "idOut",
mandatory: false,
dataType: OS.Types.LongInteger,
defaultValue: function () {
return OS.DataTypes.LongInteger.defaultValue;
}
}]);

// Aggregates and Data Actions
Controller.prototype.getCategories$AggrRefresh = function (maxRecords) {
var model = this.model;
var controller = this.controller;
var callContext = controller.callContext();
return OS.Flow.tryFinally(function () {
var varBag = {};
controller.pushDebuggerContext(callContext);

OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:SmgNAzCmDUmHyHrJvi1kEg:/NRWebFlows.fWtJs57lI0qCTlwkcDoxDA/NodesShownInESpaceTree.UWpBLjy+P0SnADpDozopiA/ScreenDataSets.SmgNAzCmDUmHyHrJvi1kEg:ntigsbKiJwxM45+5LEmQdA", "ToDo_ch", "GetCategories", "NRNodes.WebScreenDataSet", callContext.id, varBag);
OutSystemsDebugger.setThreadStartName(callContext.id, "MainFlow/ToDoDetail/GetCategories");
return controller.callAggregate("ScreenDataSetGetCategories", "screenservices/ToDo_ch/MainFlow/ToDoDetail/ScreenDataSetGetCategories", "2clLjryI2SHCgjHQ+5YEQQ", maxRecords, function (b) {
model.variables.getCategoriesAggr.dataFetchStatusAttr = b;
}, function (json) {
model.variables.getCategoriesAggr.replaceWith(OS.DataConversion.ServerDataConverter.from(json, model.variables.getCategoriesAggr.constructor));
}, undefined, OutSystemsDebugger.getRequestHeaders(callContext.id), function (json, headers) {
OutSystemsDebugger.processResponseHeaders(callContext.id, headers);
});

}, function () {
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:SmgNAzCmDUmHyHrJvi1kEg", callContext.id);
controller.popDebuggerContext(callContext);

});
};
Controller.prototype.getToDoById$AggrRefresh = function (maxRecords) {
var model = this.model;
var controller = this.controller;
var callContext = controller.callContext();
return OS.Flow.tryFinally(function () {
var varBag = {};
controller.pushDebuggerContext(callContext);

OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:1dHxDrjfXkaITKyxc9Nfdw:/NRWebFlows.fWtJs57lI0qCTlwkcDoxDA/NodesShownInESpaceTree.UWpBLjy+P0SnADpDozopiA/ScreenDataSets.1dHxDrjfXkaITKyxc9Nfdw:8Tvx+FHv_gcZJziO16Spbg", "ToDo_ch", "GetToDoById", "NRNodes.WebScreenDataSet", callContext.id, varBag);
OutSystemsDebugger.setThreadStartName(callContext.id, "MainFlow/ToDoDetail/GetToDoById");
return controller.callAggregate("ScreenDataSetGetToDoById", "screenservices/ToDo_ch/MainFlow/ToDoDetail/ScreenDataSetGetToDoById", "qriiDkGeDAvT5W+aXozPzA", maxRecords, function (b) {
model.variables.getToDoByIdAggr.dataFetchStatusAttr = b;
}, function (json) {
model.variables.getToDoByIdAggr.replaceWith(OS.DataConversion.ServerDataConverter.from(json, model.variables.getToDoByIdAggr.constructor));
}, undefined, OutSystemsDebugger.getRequestHeaders(callContext.id), function (json, headers) {
OutSystemsDebugger.processResponseHeaders(callContext.id, headers);
});

}, function () {
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:1dHxDrjfXkaITKyxc9Nfdw", callContext.id);
controller.popDebuggerContext(callContext);

});
};

Controller.prototype.dataFetchActionNames = ["getCategories$AggrRefresh", "getToDoById$AggrRefresh"];
// Client Actions
Controller.prototype._saveOnClick$Action = function (callContext) {
var varBag = {};
var model = this.model;
var controller = this.controller;
var idService = this.idService;
varBag.model = model;
varBag.idService = idService;
controller.ensureControllerAlive("SaveOnClick");
callContext = controller.callContext(callContext);
var createOrUpdateToDoVar = new OS.DataTypes.VariableHolder();
varBag.callContext = callContext;
varBag.createOrUpdateToDoVar = createOrUpdateToDoVar;
OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:K+31+LK0kUG_S4wN8GQVtw:/NRWebFlows.fWtJs57lI0qCTlwkcDoxDA/NodesShownInESpaceTree.UWpBLjy+P0SnADpDozopiA/ClientActions.K+31+LK0kUG_S4wN8GQVtw:wSPUrwmtzchHU0L4TDlqPQ", "ToDo_ch", "SaveOnClick", "NRFlows.ClientScreenActionFlow", callContext.id, varBag);
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:Tadp1XXRvUCwlkyWnKv7qA", callContext.id);
return OS.Flow.executeAsyncFlow(function () {
return OS.Flow.executeSequence(function () {
if((OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:S9rX8vaDW0CBXWVeRgARcw", callContext.id) && model.widgets.get(idService.getId("Form1")).validAttr)) {
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:+cVAr9z6oUyvkosEKBWRKw", callContext.id);
// GetToDoById.List.Current.ToDo.UserId = GetUserId
model.variables.getToDoByIdAggr.listOut.getCurrent(callContext.iterationContext).toDoAttr.userIdAttr = OS.BuiltinFunctions.getUserId();
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:HFjMFNiowUa8WfZ4wAsh_w", callContext.id);
// Execute Action: CreateOrUpdateToDo
model.flush();
return controller.createOrUpdateToDo$ServerAction(model.variables.getToDoByIdAggr.listOut.getCurrent(callContext.iterationContext), callContext).then(function (value) {
createOrUpdateToDoVar.value = value;
}).then(function () {
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:MMkRO9AVT0q+1+4hD7DquQ", callContext.id);
// Destination: /ToDo_ch/ToDos
return OS.Flow.returnAsync(OS.Navigation.navigateTo(OS.Navigation.generateScreenURL("/ToDo_ch/ToDos", {}), OS.Transitions.createTransition(OS.Transitions.TransitionAnimation.Default), callContext, true));
});
} else {
OutSystemsDebugger.handleBreakpoint("BjMwRlFLf0CPrYzwIQ_BDg:D7J0j+tCWkO7Fy3Rpqffog", callContext.id);
}

});
}).then(function (res) {
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:K+31+LK0kUG_S4wN8GQVtw", callContext.id);
return res;

}).catch(function (ex) {
OutSystemsDebugger.handleException(ex, callContext.id);
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:K+31+LK0kUG_S4wN8GQVtw", callContext.id);
throw ex;

});
};

Controller.prototype.saveOnClick$Action = function (callContext) {
var controller = this.controller;
return controller.safeExecuteClientAction(controller._saveOnClick$Action, callContext);

};

// Event Handler Actions
Controller.prototype.pushDebuggerContext = function (callContext) {
var varBag = {};
OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:fWtJs57lI0qCTlwkcDoxDA:/NRWebFlows.fWtJs57lI0qCTlwkcDoxDA:kTme2i1D6FY_gnpwkaVebA", "ToDo_ch", "MainFlow", "NRFlows.WebFlow", callContext.id, varBag);
OutSystemsDebugger.push("BjMwRlFLf0CPrYzwIQ_BDg:UWpBLjy+P0SnADpDozopiA:/NRWebFlows.fWtJs57lI0qCTlwkcDoxDA/NodesShownInESpaceTree.UWpBLjy+P0SnADpDozopiA:MDx6SSBgUCt2oltXVfDOHQ", "ToDo_ch", "ToDoDetail", "NRNodes.WebScreen", callContext.id, varBag);
};
Controller.prototype.popDebuggerContext = function (callContext) {
OutSystemsDebugger.pop("BjMwRlFLf0CPrYzwIQ_BDg:UWpBLjy+P0SnADpDozopiA", callContext.id);
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

define("ToDo_ch.MainFlow.ToDoDetail.mvc$debugger", ["exports", "OutSystems/ClientRuntime/Debugger", "OutSystems/ClientRuntime/Main"], function (exports, Debugger, OutSystems) {
var OS = OutSystems.Internal;
var metaInfo = {
"HFjMFNiowUa8WfZ4wAsh_w": {
getter: function (varBag, idService) {
return varBag.createOrUpdateToDoVar.value;
}
},
"7f8L_+1LAEGAvNXzFnPxYw": {
getter: function (varBag, idService) {
return varBag.model.variables.toDoIdIn;
},
dataType: OS.Types.LongInteger
},
"SmgNAzCmDUmHyHrJvi1kEg": {
getter: function (varBag, idService) {
return varBag.model.variables.getCategoriesAggr;
}
},
"1dHxDrjfXkaITKyxc9Nfdw": {
getter: function (varBag, idService) {
return varBag.model.variables.getToDoByIdAggr;
}
},
"enfMt+OnGUmbwMdxD8U0gw": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("HeaderLeft"));
})(varBag.model, idService);
}
},
"ZPseAepuH06mVSDhQUkWIQ": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Title"));
})(varBag.model, idService);
}
},
"JH9TVC0PLkC+hgphx_daYw": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("HeaderRight"));
})(varBag.model, idService);
}
},
"2FisbgnhUEuYIpxplaf3gQ": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("HeaderContent"));
})(varBag.model, idService);
}
},
"Wg2I3zcXNk+zgXwezygRoA": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Content"));
})(varBag.model, idService);
}
},
"pOfRQMi_jkKB_pXveR4F9w": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Form1"));
})(varBag.model, idService);
}
},
"X33q_dEGpU6Fu0MWZ2bVBA": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Input_Title"));
})(varBag.model, idService);
}
},
"dwbiSag+3kSGKhyicGLaDQ": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Input_Notes"));
})(varBag.model, idService);
}
},
"VybSxRIqj0mw2jbvbwMdZg": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Dropdown1"));
})(varBag.model, idService);
}
},
"Sc4_kA_ZL0Scpx6d8jMV2w": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Input_DueDate"));
})(varBag.model, idService);
}
},
"bl_DmUdPxUSNqfnL9aDFrg": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("PriorityGroup"));
})(varBag.model, idService);
}
},
"s7b24IyzkUaM60bVDaUq1Q": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("ButtonGroupItem1"));
})(varBag.model, idService);
}
},
"VW5oG9Urjk+5+VCNHoBbbA": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("ButtonGroupItem2"));
})(varBag.model, idService);
}
},
"HViePA_0mUOcwu2WrDov4g": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("ButtonGroupItem3"));
})(varBag.model, idService);
}
},
"iPckle5EyUyJeKqqMWrclA": {
getter: function (varBag, idService) {
return (function (model, idService) {
return model.widgets.get(idService.getId("Bottom"));
})(varBag.model, idService);
}
}
};
OutSystemsDebugger.registerMetaInfo(metaInfo);
});
