define("ToDo_ch.model$CategoryRecord", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_ch.model", "ToDo_Core_ch.model$CategoryRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ToDo_Core_ch"], function (exports, OutSystems, ToDo_Core_chModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var CategoryRecord = (function (_super) {
__extends(CategoryRecord, _super);
function CategoryRecord(defaults) {
_super.apply(this, arguments);
}
CategoryRecord.attributesToDeclare = function () {
return [
this.attr("Category", "categoryAttr", "Category", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new ToDo_Core_chModel.CategoryRec());
}, ToDo_Core_chModel.CategoryRec)
].concat(_super.attributesToDeclare.call(this));
};
CategoryRecord.fromStructure = function (str) {
return new CategoryRecord(new CategoryRecord.RecordClass({
categoryAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
CategoryRecord._isAnonymousRecord = true;
CategoryRecord.UniqueId = "361c800a-0ccd-ff7c-8599-856cca4e4ca4";
CategoryRecord.init();
return CategoryRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.CategoryRecord = CategoryRecord;

});
define("ToDo_ch.model$CategoryRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$CategoryRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var CategoryRecordList = (function (_super) {
__extends(CategoryRecordList, _super);
function CategoryRecordList(defaults) {
_super.apply(this, arguments);
}
CategoryRecordList.itemType = ToDo_chModel.CategoryRecord;
return CategoryRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.CategoryRecordList = CategoryRecordList;

});
define("ToDo_ch.model$ResourceTypeRecord", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_ch.model", "ToDo_Core_ch.model$ResourceTypeRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ToDo_Core_ch"], function (exports, OutSystems, ToDo_Core_chModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var ResourceTypeRecord = (function (_super) {
__extends(ResourceTypeRecord, _super);
function ResourceTypeRecord(defaults) {
_super.apply(this, arguments);
}
ResourceTypeRecord.attributesToDeclare = function () {
return [
this.attr("ResourceType", "resourceTypeAttr", "ResourceType", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new ToDo_Core_chModel.ResourceTypeRec());
}, ToDo_Core_chModel.ResourceTypeRec)
].concat(_super.attributesToDeclare.call(this));
};
ResourceTypeRecord.fromStructure = function (str) {
return new ResourceTypeRecord(new ResourceTypeRecord.RecordClass({
resourceTypeAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
ResourceTypeRecord._isAnonymousRecord = true;
ResourceTypeRecord.UniqueId = "08f1d004-1c3d-d7fe-c6a1-73473f896040";
ResourceTypeRecord.init();
return ResourceTypeRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.ResourceTypeRecord = ResourceTypeRecord;

});
define("ToDo_ch.model$ResourceTypeList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_ch.model", "ToDo_Core_ch.model$ResourceTypeRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ToDo_Core_ch"], function (exports, OutSystems, ToDo_Core_chModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var ResourceTypeList = (function (_super) {
__extends(ResourceTypeList, _super);
function ResourceTypeList(defaults) {
_super.apply(this, arguments);
}
ResourceTypeList.itemType = ToDo_Core_chModel.ResourceTypeRec;
return ResourceTypeList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.ResourceTypeList = ResourceTypeList;

});
define("ToDo_ch.model$StepsRecord", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$StepsRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var StepsRecord = (function (_super) {
__extends(StepsRecord, _super);
function StepsRecord(defaults) {
_super.apply(this, arguments);
}
StepsRecord.attributesToDeclare = function () {
return [
this.attr("Steps", "stepsAttr", "Steps", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new OutSystemsUIMobileModel.StepsRec());
}, OutSystemsUIMobileModel.StepsRec)
].concat(_super.attributesToDeclare.call(this));
};
StepsRecord.fromStructure = function (str) {
return new StepsRecord(new StepsRecord.RecordClass({
stepsAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
StepsRecord._isAnonymousRecord = true;
StepsRecord.UniqueId = "0d776a4e-191f-af32-1030-d5ce57aa4167";
StepsRecord.init();
return StepsRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.StepsRecord = StepsRecord;

});
define("ToDo_ch.model$AnimationTypeRecord", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$AnimationTypeRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var AnimationTypeRecord = (function (_super) {
__extends(AnimationTypeRecord, _super);
function AnimationTypeRecord(defaults) {
_super.apply(this, arguments);
}
AnimationTypeRecord.attributesToDeclare = function () {
return [
this.attr("AnimationType", "animationTypeAttr", "AnimationType", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new OutSystemsUIMobileModel.AnimationTypeRec());
}, OutSystemsUIMobileModel.AnimationTypeRec)
].concat(_super.attributesToDeclare.call(this));
};
AnimationTypeRecord.fromStructure = function (str) {
return new AnimationTypeRecord(new AnimationTypeRecord.RecordClass({
animationTypeAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
AnimationTypeRecord._isAnonymousRecord = true;
AnimationTypeRecord.UniqueId = "78b6d6ed-7d52-800a-8a68-e7d796ec6850";
AnimationTypeRecord.init();
return AnimationTypeRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.AnimationTypeRecord = AnimationTypeRecord;

});
define("ToDo_ch.model$AnimationTypeRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$AnimationTypeRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var AnimationTypeRecordList = (function (_super) {
__extends(AnimationTypeRecordList, _super);
function AnimationTypeRecordList(defaults) {
_super.apply(this, arguments);
}
AnimationTypeRecordList.itemType = ToDo_chModel.AnimationTypeRecord;
return AnimationTypeRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.AnimationTypeRecordList = AnimationTypeRecordList;

});
define("ToDo_ch.model$AutoplayRecord", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$AutoplayRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var AutoplayRecord = (function (_super) {
__extends(AutoplayRecord, _super);
function AutoplayRecord(defaults) {
_super.apply(this, arguments);
}
AutoplayRecord.attributesToDeclare = function () {
return [
this.attr("Autoplay", "autoplayAttr", "Autoplay", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new OutSystemsUIMobileModel.AutoplayRec());
}, OutSystemsUIMobileModel.AutoplayRec)
].concat(_super.attributesToDeclare.call(this));
};
AutoplayRecord.fromStructure = function (str) {
return new AutoplayRecord(new AutoplayRecord.RecordClass({
autoplayAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
AutoplayRecord._isAnonymousRecord = true;
AutoplayRecord.UniqueId = "c6831d06-e579-de4e-dbcf-59e128b60b13";
AutoplayRecord.init();
return AutoplayRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.AutoplayRecord = AutoplayRecord;

});
define("ToDo_ch.model$AutoplayRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$AutoplayRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var AutoplayRecordList = (function (_super) {
__extends(AutoplayRecordList, _super);
function AutoplayRecordList(defaults) {
_super.apply(this, arguments);
}
AutoplayRecordList.itemType = ToDo_chModel.AutoplayRecord;
return AutoplayRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.AutoplayRecordList = AutoplayRecordList;

});
define("ToDo_ch.model$LegendPositionRecord", ["exports", "OutSystems/ClientRuntime/Main", "ChartsMobile.model", "ToDo_ch.model", "ChartsMobile.model$LegendPositionRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ChartsMobile"], function (exports, OutSystems, ChartsMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var LegendPositionRecord = (function (_super) {
__extends(LegendPositionRecord, _super);
function LegendPositionRecord(defaults) {
_super.apply(this, arguments);
}
LegendPositionRecord.attributesToDeclare = function () {
return [
this.attr("LegendPosition", "legendPositionAttr", "LegendPosition", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new ChartsMobileModel.LegendPositionRec());
}, ChartsMobileModel.LegendPositionRec)
].concat(_super.attributesToDeclare.call(this));
};
LegendPositionRecord.fromStructure = function (str) {
return new LegendPositionRecord(new LegendPositionRecord.RecordClass({
legendPositionAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
LegendPositionRecord._isAnonymousRecord = true;
LegendPositionRecord.UniqueId = "d2362d0d-0bb3-6623-a5f0-020a47954dfc";
LegendPositionRecord.init();
return LegendPositionRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.LegendPositionRecord = LegendPositionRecord;

});
define("ToDo_ch.model$LegendPositionRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$LegendPositionRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var LegendPositionRecordList = (function (_super) {
__extends(LegendPositionRecordList, _super);
function LegendPositionRecordList(defaults) {
_super.apply(this, arguments);
}
LegendPositionRecordList.itemType = ToDo_chModel.LegendPositionRecord;
return LegendPositionRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.LegendPositionRecordList = LegendPositionRecordList;

});
define("ToDo_ch.model$ChartFormatRecord", ["exports", "OutSystems/ClientRuntime/Main", "ChartsMobile.model", "ToDo_ch.model", "ChartsMobile.model$ChartFormatRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ChartsMobile"], function (exports, OutSystems, ChartsMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var ChartFormatRecord = (function (_super) {
__extends(ChartFormatRecord, _super);
function ChartFormatRecord(defaults) {
_super.apply(this, arguments);
}
ChartFormatRecord.attributesToDeclare = function () {
return [
this.attr("ChartFormat", "chartFormatAttr", "ChartFormat", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new ChartsMobileModel.ChartFormatRec());
}, ChartsMobileModel.ChartFormatRec)
].concat(_super.attributesToDeclare.call(this));
};
ChartFormatRecord.fromStructure = function (str) {
return new ChartFormatRecord(new ChartFormatRecord.RecordClass({
chartFormatAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
ChartFormatRecord._isAnonymousRecord = true;
ChartFormatRecord.UniqueId = "2b9e4142-8d5c-5ca3-b04a-80be4ce98f53";
ChartFormatRecord.init();
return ChartFormatRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.ChartFormatRecord = ChartFormatRecord;

});
define("ToDo_ch.model$MessageStatusRecord", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$MessageStatusRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var MessageStatusRecord = (function (_super) {
__extends(MessageStatusRecord, _super);
function MessageStatusRecord(defaults) {
_super.apply(this, arguments);
}
MessageStatusRecord.attributesToDeclare = function () {
return [
this.attr("MessageStatus", "messageStatusAttr", "MessageStatus", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new OutSystemsUIMobileModel.MessageStatusRec());
}, OutSystemsUIMobileModel.MessageStatusRec)
].concat(_super.attributesToDeclare.call(this));
};
MessageStatusRecord.fromStructure = function (str) {
return new MessageStatusRecord(new MessageStatusRecord.RecordClass({
messageStatusAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
MessageStatusRecord._isAnonymousRecord = true;
MessageStatusRecord.UniqueId = "63c659b6-dc55-4b0b-4f81-d60382bf5fd6";
MessageStatusRecord.init();
return MessageStatusRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.MessageStatusRecord = MessageStatusRecord;

});
define("ToDo_ch.model$MessageStatusRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$MessageStatusRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var MessageStatusRecordList = (function (_super) {
__extends(MessageStatusRecordList, _super);
function MessageStatusRecordList(defaults) {
_super.apply(this, arguments);
}
MessageStatusRecordList.itemType = ToDo_chModel.MessageStatusRecord;
return MessageStatusRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.MessageStatusRecordList = MessageStatusRecordList;

});
define("ToDo_ch.model$MenuActionRecord", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$MenuActionRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var MenuActionRecord = (function (_super) {
__extends(MenuActionRecord, _super);
function MenuActionRecord(defaults) {
_super.apply(this, arguments);
}
MenuActionRecord.attributesToDeclare = function () {
return [
this.attr("MenuAction", "menuActionAttr", "MenuAction", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new OutSystemsUIMobileModel.MenuActionRec());
}, OutSystemsUIMobileModel.MenuActionRec)
].concat(_super.attributesToDeclare.call(this));
};
MenuActionRecord.fromStructure = function (str) {
return new MenuActionRecord(new MenuActionRecord.RecordClass({
menuActionAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
MenuActionRecord._isAnonymousRecord = true;
MenuActionRecord.UniqueId = "954cd123-1210-e70f-33f1-84017bf580ac";
MenuActionRecord.init();
return MenuActionRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.MenuActionRecord = MenuActionRecord;

});
define("ToDo_ch.model$MenuActionRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$MenuActionRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var MenuActionRecordList = (function (_super) {
__extends(MenuActionRecordList, _super);
function MenuActionRecordList(defaults) {
_super.apply(this, arguments);
}
MenuActionRecordList.itemType = ToDo_chModel.MenuActionRecord;
return MenuActionRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.MenuActionRecordList = MenuActionRecordList;

});
define("ToDo_ch.model$XAxisValuesTypeRecord", ["exports", "OutSystems/ClientRuntime/Main", "ChartsMobile.model", "ToDo_ch.model", "ChartsMobile.model$XAxisValuesTypeRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ChartsMobile"], function (exports, OutSystems, ChartsMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var XAxisValuesTypeRecord = (function (_super) {
__extends(XAxisValuesTypeRecord, _super);
function XAxisValuesTypeRecord(defaults) {
_super.apply(this, arguments);
}
XAxisValuesTypeRecord.attributesToDeclare = function () {
return [
this.attr("XAxisValuesType", "xAxisValuesTypeAttr", "XAxisValuesType", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new ChartsMobileModel.XAxisValuesTypeRec());
}, ChartsMobileModel.XAxisValuesTypeRec)
].concat(_super.attributesToDeclare.call(this));
};
XAxisValuesTypeRecord.fromStructure = function (str) {
return new XAxisValuesTypeRecord(new XAxisValuesTypeRecord.RecordClass({
xAxisValuesTypeAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
XAxisValuesTypeRecord._isAnonymousRecord = true;
XAxisValuesTypeRecord.UniqueId = "700a042c-18a5-2538-bbda-09226917700a";
XAxisValuesTypeRecord.init();
return XAxisValuesTypeRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.XAxisValuesTypeRecord = XAxisValuesTypeRecord;

});
define("ToDo_ch.model$XAxisValuesTypeRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$XAxisValuesTypeRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var XAxisValuesTypeRecordList = (function (_super) {
__extends(XAxisValuesTypeRecordList, _super);
function XAxisValuesTypeRecordList(defaults) {
_super.apply(this, arguments);
}
XAxisValuesTypeRecordList.itemType = ToDo_chModel.XAxisValuesTypeRecord;
return XAxisValuesTypeRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.XAxisValuesTypeRecordList = XAxisValuesTypeRecordList;

});
define("ToDo_ch.model$StackedCardsPositionList", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$StackedCardsPositionRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var StackedCardsPositionList = (function (_super) {
__extends(StackedCardsPositionList, _super);
function StackedCardsPositionList(defaults) {
_super.apply(this, arguments);
}
StackedCardsPositionList.itemType = OutSystemsUIMobileModel.StackedCardsPositionRec;
return StackedCardsPositionList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.StackedCardsPositionList = StackedCardsPositionList;

});
define("ToDo_ch.model$ToDoList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_ch.model", "ToDo_Core_ch.model$ToDoRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ToDo_Core_ch"], function (exports, OutSystems, ToDo_Core_chModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var ToDoList = (function (_super) {
__extends(ToDoList, _super);
function ToDoList(defaults) {
_super.apply(this, arguments);
}
ToDoList.itemType = ToDo_Core_chModel.ToDoRec;
return ToDoList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.ToDoList = ToDoList;

});
define("ToDo_ch.model$StackingTypeRecord", ["exports", "OutSystems/ClientRuntime/Main", "ChartsMobile.model", "ToDo_ch.model", "ChartsMobile.model$StackingTypeRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ChartsMobile"], function (exports, OutSystems, ChartsMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var StackingTypeRecord = (function (_super) {
__extends(StackingTypeRecord, _super);
function StackingTypeRecord(defaults) {
_super.apply(this, arguments);
}
StackingTypeRecord.attributesToDeclare = function () {
return [
this.attr("StackingType", "stackingTypeAttr", "StackingType", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new ChartsMobileModel.StackingTypeRec());
}, ChartsMobileModel.StackingTypeRec)
].concat(_super.attributesToDeclare.call(this));
};
StackingTypeRecord.fromStructure = function (str) {
return new StackingTypeRecord(new StackingTypeRecord.RecordClass({
stackingTypeAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
StackingTypeRecord._isAnonymousRecord = true;
StackingTypeRecord.UniqueId = "35e37489-cb29-f7a3-04d5-12a403000665";
StackingTypeRecord.init();
return StackingTypeRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.StackingTypeRecord = StackingTypeRecord;

});
define("ToDo_ch.model$ColumnBreakList", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$ColumnBreakRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var ColumnBreakList = (function (_super) {
__extends(ColumnBreakList, _super);
function ColumnBreakList(defaults) {
_super.apply(this, arguments);
}
ColumnBreakList.itemType = OutSystemsUIMobileModel.ColumnBreakRec;
return ColumnBreakList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.ColumnBreakList = ColumnBreakList;

});
define("ToDo_ch.model$StackingTypeRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$StackingTypeRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var StackingTypeRecordList = (function (_super) {
__extends(StackingTypeRecordList, _super);
function StackingTypeRecordList(defaults) {
_super.apply(this, arguments);
}
StackingTypeRecordList.itemType = ToDo_chModel.StackingTypeRecord;
return StackingTypeRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.StackingTypeRecordList = StackingTypeRecordList;

});
define("ToDo_ch.model$ColorList", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$ColorRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var ColorList = (function (_super) {
__extends(ColorList, _super);
function ColorList(defaults) {
_super.apply(this, arguments);
}
ColorList.itemType = OutSystemsUIMobileModel.ColorRec;
return ColorList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.ColorList = ColorList;

});
define("ToDo_ch.model$PriorityRecord", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_ch.model", "ToDo_Core_ch.model$PriorityRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ToDo_Core_ch"], function (exports, OutSystems, ToDo_Core_chModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var PriorityRecord = (function (_super) {
__extends(PriorityRecord, _super);
function PriorityRecord(defaults) {
_super.apply(this, arguments);
}
PriorityRecord.attributesToDeclare = function () {
return [
this.attr("Priority", "priorityAttr", "Priority", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new ToDo_Core_chModel.PriorityRec());
}, ToDo_Core_chModel.PriorityRec)
].concat(_super.attributesToDeclare.call(this));
};
PriorityRecord.fromStructure = function (str) {
return new PriorityRecord(new PriorityRecord.RecordClass({
priorityAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
PriorityRecord._isAnonymousRecord = true;
PriorityRecord.UniqueId = "c830c7aa-4cee-7d8b-7a39-04dfb710138a";
PriorityRecord.init();
return PriorityRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.PriorityRecord = PriorityRecord;

});
define("ToDo_ch.model$PriorityRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$PriorityRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var PriorityRecordList = (function (_super) {
__extends(PriorityRecordList, _super);
function PriorityRecordList(defaults) {
_super.apply(this, arguments);
}
PriorityRecordList.itemType = ToDo_chModel.PriorityRecord;
return PriorityRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.PriorityRecordList = PriorityRecordList;

});
define("ToDo_ch.model$XAxisFormatRecord", ["exports", "OutSystems/ClientRuntime/Main", "ChartsMobile.model", "ToDo_ch.model", "ChartsMobile.model$XAxisFormatRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ChartsMobile"], function (exports, OutSystems, ChartsMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var XAxisFormatRecord = (function (_super) {
__extends(XAxisFormatRecord, _super);
function XAxisFormatRecord(defaults) {
_super.apply(this, arguments);
}
XAxisFormatRecord.attributesToDeclare = function () {
return [
this.attr("XAxisFormat", "xAxisFormatAttr", "XAxisFormat", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new ChartsMobileModel.XAxisFormatRec());
}, ChartsMobileModel.XAxisFormatRec)
].concat(_super.attributesToDeclare.call(this));
};
XAxisFormatRecord.fromStructure = function (str) {
return new XAxisFormatRecord(new XAxisFormatRecord.RecordClass({
xAxisFormatAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
XAxisFormatRecord._isAnonymousRecord = true;
XAxisFormatRecord.UniqueId = "424d57a2-d666-c8ed-b034-3600d6705eee";
XAxisFormatRecord.init();
return XAxisFormatRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.XAxisFormatRecord = XAxisFormatRecord;

});
define("ToDo_ch.model$MenuActionList", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$MenuActionRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var MenuActionList = (function (_super) {
__extends(MenuActionList, _super);
function MenuActionList(defaults) {
_super.apply(this, arguments);
}
MenuActionList.itemType = OutSystemsUIMobileModel.MenuActionRec;
return MenuActionList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.MenuActionList = MenuActionList;

});
define("ToDo_ch.model$ToDoPriorityRecord", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_ch.model", "ToDo_Core_ch.model$ToDoRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ToDo_Core_ch", "ToDo_Core_ch.model$PriorityRec"], function (exports, OutSystems, ToDo_Core_chModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var ToDoPriorityRecord = (function (_super) {
__extends(ToDoPriorityRecord, _super);
function ToDoPriorityRecord(defaults) {
_super.apply(this, arguments);
}
ToDoPriorityRecord.attributesToDeclare = function () {
return [
this.attr("ToDo", "toDoAttr", "ToDo", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new ToDo_Core_chModel.ToDoRec());
}, ToDo_Core_chModel.ToDoRec), 
this.attr("Priority", "priorityAttr", "Priority", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new ToDo_Core_chModel.PriorityRec());
}, ToDo_Core_chModel.PriorityRec)
].concat(_super.attributesToDeclare.call(this));
};
ToDoPriorityRecord._isAnonymousRecord = true;
ToDoPriorityRecord.UniqueId = "4dc57984-3d11-6614-d153-cb27233e6fa6";
ToDoPriorityRecord.init();
return ToDoPriorityRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.ToDoPriorityRecord = ToDoPriorityRecord;

});
define("ToDo_ch.model$DataPointList", ["exports", "OutSystems/ClientRuntime/Main", "ChartsMobile.model", "ToDo_ch.model", "ChartsMobile.model$DataPointRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ChartsMobile"], function (exports, OutSystems, ChartsMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var DataPointList = (function (_super) {
__extends(DataPointList, _super);
function DataPointList(defaults) {
_super.apply(this, arguments);
}
DataPointList.itemType = ChartsMobileModel.DataPointRec;
return DataPointList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.DataPointList = DataPointList;

});
define("ToDo_ch.model$StackingTypeList", ["exports", "OutSystems/ClientRuntime/Main", "ChartsMobile.model", "ToDo_ch.model", "ChartsMobile.model$StackingTypeRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ChartsMobile"], function (exports, OutSystems, ChartsMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var StackingTypeList = (function (_super) {
__extends(StackingTypeList, _super);
function StackingTypeList(defaults) {
_super.apply(this, arguments);
}
StackingTypeList.itemType = ChartsMobileModel.StackingTypeRec;
return StackingTypeList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.StackingTypeList = StackingTypeList;

});
define("ToDo_ch.model$LegendPositionList", ["exports", "OutSystems/ClientRuntime/Main", "ChartsMobile.model", "ToDo_ch.model", "ChartsMobile.model$LegendPositionRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ChartsMobile"], function (exports, OutSystems, ChartsMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var LegendPositionList = (function (_super) {
__extends(LegendPositionList, _super);
function LegendPositionList(defaults) {
_super.apply(this, arguments);
}
LegendPositionList.itemType = ChartsMobileModel.LegendPositionRec;
return LegendPositionList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.LegendPositionList = LegendPositionList;

});
define("ToDo_ch.model$PositionRecord", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$PositionRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var PositionRecord = (function (_super) {
__extends(PositionRecord, _super);
function PositionRecord(defaults) {
_super.apply(this, arguments);
}
PositionRecord.attributesToDeclare = function () {
return [
this.attr("Position", "positionAttr", "Position", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new OutSystemsUIMobileModel.PositionRec());
}, OutSystemsUIMobileModel.PositionRec)
].concat(_super.attributesToDeclare.call(this));
};
PositionRecord.fromStructure = function (str) {
return new PositionRecord(new PositionRecord.RecordClass({
positionAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
PositionRecord._isAnonymousRecord = true;
PositionRecord.UniqueId = "5f28219a-5e30-fb90-023f-cbc295513e7c";
PositionRecord.init();
return PositionRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.PositionRecord = PositionRecord;

});
define("ToDo_ch.model$PositionRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$PositionRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var PositionRecordList = (function (_super) {
__extends(PositionRecordList, _super);
function PositionRecordList(defaults) {
_super.apply(this, arguments);
}
PositionRecordList.itemType = ToDo_chModel.PositionRecord;
return PositionRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.PositionRecordList = PositionRecordList;

});
define("ToDo_ch.model$MasterDetailItemRecord", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$MasterDetailItemRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var MasterDetailItemRecord = (function (_super) {
__extends(MasterDetailItemRecord, _super);
function MasterDetailItemRecord(defaults) {
_super.apply(this, arguments);
}
MasterDetailItemRecord.attributesToDeclare = function () {
return [
this.attr("MasterDetailItem", "masterDetailItemAttr", "MasterDetailItem", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new OutSystemsUIMobileModel.MasterDetailItemRec());
}, OutSystemsUIMobileModel.MasterDetailItemRec)
].concat(_super.attributesToDeclare.call(this));
};
MasterDetailItemRecord.fromStructure = function (str) {
return new MasterDetailItemRecord(new MasterDetailItemRecord.RecordClass({
masterDetailItemAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
MasterDetailItemRecord._isAnonymousRecord = true;
MasterDetailItemRecord.UniqueId = "c7e749f2-1266-5bf8-3f6d-7b6126e9e92e";
MasterDetailItemRecord.init();
return MasterDetailItemRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.MasterDetailItemRecord = MasterDetailItemRecord;

});
define("ToDo_ch.model$MasterDetailItemRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$MasterDetailItemRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var MasterDetailItemRecordList = (function (_super) {
__extends(MasterDetailItemRecordList, _super);
function MasterDetailItemRecordList(defaults) {
_super.apply(this, arguments);
}
MasterDetailItemRecordList.itemType = ToDo_chModel.MasterDetailItemRecord;
return MasterDetailItemRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.MasterDetailItemRecordList = MasterDetailItemRecordList;

});
define("ToDo_ch.model$AdvancedDataSeriesFormatRecord", ["exports", "OutSystems/ClientRuntime/Main", "ChartsMobile.model", "ToDo_ch.model", "ChartsMobile.model$AdvancedDataSeriesFormatRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ChartsMobile"], function (exports, OutSystems, ChartsMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var AdvancedDataSeriesFormatRecord = (function (_super) {
__extends(AdvancedDataSeriesFormatRecord, _super);
function AdvancedDataSeriesFormatRecord(defaults) {
_super.apply(this, arguments);
}
AdvancedDataSeriesFormatRecord.attributesToDeclare = function () {
return [
this.attr("AdvancedDataSeriesFormat", "advancedDataSeriesFormatAttr", "AdvancedDataSeriesFormat", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new ChartsMobileModel.AdvancedDataSeriesFormatRec());
}, ChartsMobileModel.AdvancedDataSeriesFormatRec)
].concat(_super.attributesToDeclare.call(this));
};
AdvancedDataSeriesFormatRecord.fromStructure = function (str) {
return new AdvancedDataSeriesFormatRecord(new AdvancedDataSeriesFormatRecord.RecordClass({
advancedDataSeriesFormatAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
AdvancedDataSeriesFormatRecord._isAnonymousRecord = true;
AdvancedDataSeriesFormatRecord.UniqueId = "e3eb1896-9a1d-0856-d6aa-6db7946dac4d";
AdvancedDataSeriesFormatRecord.init();
return AdvancedDataSeriesFormatRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.AdvancedDataSeriesFormatRecord = AdvancedDataSeriesFormatRecord;

});
define("ToDo_ch.model$AdvancedDataSeriesFormatRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$AdvancedDataSeriesFormatRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var AdvancedDataSeriesFormatRecordList = (function (_super) {
__extends(AdvancedDataSeriesFormatRecordList, _super);
function AdvancedDataSeriesFormatRecordList(defaults) {
_super.apply(this, arguments);
}
AdvancedDataSeriesFormatRecordList.itemType = ToDo_chModel.AdvancedDataSeriesFormatRecord;
return AdvancedDataSeriesFormatRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.AdvancedDataSeriesFormatRecordList = AdvancedDataSeriesFormatRecordList;

});
define("ToDo_ch.model$DataPointRecord", ["exports", "OutSystems/ClientRuntime/Main", "ChartsMobile.model", "ToDo_ch.model", "ChartsMobile.model$DataPointRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ChartsMobile"], function (exports, OutSystems, ChartsMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var DataPointRecord = (function (_super) {
__extends(DataPointRecord, _super);
function DataPointRecord(defaults) {
_super.apply(this, arguments);
}
DataPointRecord.attributesToDeclare = function () {
return [
this.attr("DataPoint", "dataPointAttr", "DataPoint", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new ChartsMobileModel.DataPointRec());
}, ChartsMobileModel.DataPointRec)
].concat(_super.attributesToDeclare.call(this));
};
DataPointRecord.fromStructure = function (str) {
return new DataPointRecord(new DataPointRecord.RecordClass({
dataPointAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
DataPointRecord._isAnonymousRecord = true;
DataPointRecord.UniqueId = "6ceb0a54-ddbc-9244-6ab6-6e8c847870c1";
DataPointRecord.init();
return DataPointRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.DataPointRecord = DataPointRecord;

});
define("ToDo_ch.model$MessageStatusList", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$MessageStatusRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var MessageStatusList = (function (_super) {
__extends(MessageStatusList, _super);
function MessageStatusList(defaults) {
_super.apply(this, arguments);
}
MessageStatusList.itemType = OutSystemsUIMobileModel.MessageStatusRec;
return MessageStatusList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.MessageStatusList = MessageStatusList;

});
define("ToDo_ch.model$StackedCardsPositionRecord", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$StackedCardsPositionRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var StackedCardsPositionRecord = (function (_super) {
__extends(StackedCardsPositionRecord, _super);
function StackedCardsPositionRecord(defaults) {
_super.apply(this, arguments);
}
StackedCardsPositionRecord.attributesToDeclare = function () {
return [
this.attr("StackedCardsPosition", "stackedCardsPositionAttr", "StackedCardsPosition", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new OutSystemsUIMobileModel.StackedCardsPositionRec());
}, OutSystemsUIMobileModel.StackedCardsPositionRec)
].concat(_super.attributesToDeclare.call(this));
};
StackedCardsPositionRecord.fromStructure = function (str) {
return new StackedCardsPositionRecord(new StackedCardsPositionRecord.RecordClass({
stackedCardsPositionAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
StackedCardsPositionRecord._isAnonymousRecord = true;
StackedCardsPositionRecord.UniqueId = "967cb657-10fd-1a34-6ebf-0b0d8dbea56b";
StackedCardsPositionRecord.init();
return StackedCardsPositionRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.StackedCardsPositionRecord = StackedCardsPositionRecord;

});
define("ToDo_ch.model$StackedCardsPositionRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$StackedCardsPositionRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var StackedCardsPositionRecordList = (function (_super) {
__extends(StackedCardsPositionRecordList, _super);
function StackedCardsPositionRecordList(defaults) {
_super.apply(this, arguments);
}
StackedCardsPositionRecordList.itemType = ToDo_chModel.StackedCardsPositionRecord;
return StackedCardsPositionRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.StackedCardsPositionRecordList = StackedCardsPositionRecordList;

});
define("ToDo_ch.model$DataPointRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$DataPointRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var DataPointRecordList = (function (_super) {
__extends(DataPointRecordList, _super);
function DataPointRecordList(defaults) {
_super.apply(this, arguments);
}
DataPointRecordList.itemType = ToDo_chModel.DataPointRecord;
return DataPointRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.DataPointRecordList = DataPointRecordList;

});
define("ToDo_ch.model$AdvancedDataPointFormatList", ["exports", "OutSystems/ClientRuntime/Main", "ChartsMobile.model", "ToDo_ch.model", "ChartsMobile.model$AdvancedDataPointFormatRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ChartsMobile"], function (exports, OutSystems, ChartsMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var AdvancedDataPointFormatList = (function (_super) {
__extends(AdvancedDataPointFormatList, _super);
function AdvancedDataPointFormatList(defaults) {
_super.apply(this, arguments);
}
AdvancedDataPointFormatList.itemType = ChartsMobileModel.AdvancedDataPointFormatRec;
return AdvancedDataPointFormatList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.AdvancedDataPointFormatList = AdvancedDataPointFormatList;

});
define("ToDo_ch.model$XAxisValuesTypeList", ["exports", "OutSystems/ClientRuntime/Main", "ChartsMobile.model", "ToDo_ch.model", "ChartsMobile.model$XAxisValuesTypeRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ChartsMobile"], function (exports, OutSystems, ChartsMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var XAxisValuesTypeList = (function (_super) {
__extends(XAxisValuesTypeList, _super);
function XAxisValuesTypeList(defaults) {
_super.apply(this, arguments);
}
XAxisValuesTypeList.itemType = ChartsMobileModel.XAxisValuesTypeRec;
return XAxisValuesTypeList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.XAxisValuesTypeList = XAxisValuesTypeList;

});
define("ToDo_ch.model$UserRecord", ["exports", "OutSystems/ClientRuntime/Main", "ServiceCenter.model", "ToDo_ch.model", "ServiceCenter.model$UserRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ServiceCenter"], function (exports, OutSystems, ServiceCenterModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var UserRecord = (function (_super) {
__extends(UserRecord, _super);
function UserRecord(defaults) {
_super.apply(this, arguments);
}
UserRecord.attributesToDeclare = function () {
return [
this.attr("User", "userAttr", "User", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new ServiceCenterModel.UserRec());
}, ServiceCenterModel.UserRec)
].concat(_super.attributesToDeclare.call(this));
};
UserRecord.fromStructure = function (str) {
return new UserRecord(new UserRecord.RecordClass({
userAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
UserRecord._isAnonymousRecord = true;
UserRecord.UniqueId = "ced01335-8a82-a813-f1d9-a5108f17ce79";
UserRecord.init();
return UserRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.UserRecord = UserRecord;

});
define("ToDo_ch.model$UserRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$UserRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var UserRecordList = (function (_super) {
__extends(UserRecordList, _super);
function UserRecordList(defaults) {
_super.apply(this, arguments);
}
UserRecordList.itemType = ToDo_chModel.UserRecord;
return UserRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.UserRecordList = UserRecordList;

});
define("ToDo_ch.model$AdvancedDataPointFormatRecord", ["exports", "OutSystems/ClientRuntime/Main", "ChartsMobile.model", "ToDo_ch.model", "ChartsMobile.model$AdvancedDataPointFormatRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ChartsMobile"], function (exports, OutSystems, ChartsMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var AdvancedDataPointFormatRecord = (function (_super) {
__extends(AdvancedDataPointFormatRecord, _super);
function AdvancedDataPointFormatRecord(defaults) {
_super.apply(this, arguments);
}
AdvancedDataPointFormatRecord.attributesToDeclare = function () {
return [
this.attr("AdvancedDataPointFormat", "advancedDataPointFormatAttr", "AdvancedDataPointFormat", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new ChartsMobileModel.AdvancedDataPointFormatRec());
}, ChartsMobileModel.AdvancedDataPointFormatRec)
].concat(_super.attributesToDeclare.call(this));
};
AdvancedDataPointFormatRecord.fromStructure = function (str) {
return new AdvancedDataPointFormatRecord(new AdvancedDataPointFormatRecord.RecordClass({
advancedDataPointFormatAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
AdvancedDataPointFormatRecord._isAnonymousRecord = true;
AdvancedDataPointFormatRecord.UniqueId = "860a186f-93e9-fe7f-e0d4-2f4282c2ec00";
AdvancedDataPointFormatRecord.init();
return AdvancedDataPointFormatRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.AdvancedDataPointFormatRecord = AdvancedDataPointFormatRecord;

});
define("ToDo_ch.model$ResourceTypeRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$ResourceTypeRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var ResourceTypeRecordList = (function (_super) {
__extends(ResourceTypeRecordList, _super);
function ResourceTypeRecordList(defaults) {
_super.apply(this, arguments);
}
ResourceTypeRecordList.itemType = ToDo_chModel.ResourceTypeRecord;
return ResourceTypeRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.ResourceTypeRecordList = ResourceTypeRecordList;

});
define("ToDo_ch.model$XAxisFormatRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$XAxisFormatRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var XAxisFormatRecordList = (function (_super) {
__extends(XAxisFormatRecordList, _super);
function XAxisFormatRecordList(defaults) {
_super.apply(this, arguments);
}
XAxisFormatRecordList.itemType = ToDo_chModel.XAxisFormatRecord;
return XAxisFormatRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.XAxisFormatRecordList = XAxisFormatRecordList;

});
define("ToDo_ch.model$PriorityList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_ch.model", "ToDo_Core_ch.model$PriorityRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ToDo_Core_ch"], function (exports, OutSystems, ToDo_Core_chModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var PriorityList = (function (_super) {
__extends(PriorityList, _super);
function PriorityList(defaults) {
_super.apply(this, arguments);
}
PriorityList.itemType = ToDo_Core_chModel.PriorityRec;
return PriorityList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.PriorityList = PriorityList;

});
define("ToDo_ch.model$AdvancedDataSeriesFormatList", ["exports", "OutSystems/ClientRuntime/Main", "ChartsMobile.model", "ToDo_ch.model", "ChartsMobile.model$AdvancedDataSeriesFormatRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ChartsMobile"], function (exports, OutSystems, ChartsMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var AdvancedDataSeriesFormatList = (function (_super) {
__extends(AdvancedDataSeriesFormatList, _super);
function AdvancedDataSeriesFormatList(defaults) {
_super.apply(this, arguments);
}
AdvancedDataSeriesFormatList.itemType = ChartsMobileModel.AdvancedDataSeriesFormatRec;
return AdvancedDataSeriesFormatList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.AdvancedDataSeriesFormatList = AdvancedDataSeriesFormatList;

});
define("ToDo_ch.model$AdvancedFormatRecord", ["exports", "OutSystems/ClientRuntime/Main", "ChartsMobile.model", "ToDo_ch.model", "ChartsMobile.model$AdvancedFormatRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ChartsMobile"], function (exports, OutSystems, ChartsMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var AdvancedFormatRecord = (function (_super) {
__extends(AdvancedFormatRecord, _super);
function AdvancedFormatRecord(defaults) {
_super.apply(this, arguments);
}
AdvancedFormatRecord.attributesToDeclare = function () {
return [
this.attr("AdvancedFormat", "advancedFormatAttr", "AdvancedFormat", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new ChartsMobileModel.AdvancedFormatRec());
}, ChartsMobileModel.AdvancedFormatRec)
].concat(_super.attributesToDeclare.call(this));
};
AdvancedFormatRecord.fromStructure = function (str) {
return new AdvancedFormatRecord(new AdvancedFormatRecord.RecordClass({
advancedFormatAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
AdvancedFormatRecord._isAnonymousRecord = true;
AdvancedFormatRecord.UniqueId = "8bd0ab07-a3f3-c2d2-a572-a84134c564bd";
AdvancedFormatRecord.init();
return AdvancedFormatRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.AdvancedFormatRecord = AdvancedFormatRecord;

});
define("ToDo_ch.model$ChartFormatList", ["exports", "OutSystems/ClientRuntime/Main", "ChartsMobile.model", "ToDo_ch.model", "ChartsMobile.model$ChartFormatRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ChartsMobile"], function (exports, OutSystems, ChartsMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var ChartFormatList = (function (_super) {
__extends(ChartFormatList, _super);
function ChartFormatList(defaults) {
_super.apply(this, arguments);
}
ChartFormatList.itemType = ChartsMobileModel.ChartFormatRec;
return ChartFormatList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.ChartFormatList = ChartFormatList;

});
define("ToDo_ch.model$ChartFormatRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$ChartFormatRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var ChartFormatRecordList = (function (_super) {
__extends(ChartFormatRecordList, _super);
function ChartFormatRecordList(defaults) {
_super.apply(this, arguments);
}
ChartFormatRecordList.itemType = ToDo_chModel.ChartFormatRecord;
return ChartFormatRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.ChartFormatRecordList = ChartFormatRecordList;

});
define("ToDo_ch.model$YAxisFormatRecord", ["exports", "OutSystems/ClientRuntime/Main", "ChartsMobile.model", "ToDo_ch.model", "ChartsMobile.model$YAxisFormatRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ChartsMobile"], function (exports, OutSystems, ChartsMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var YAxisFormatRecord = (function (_super) {
__extends(YAxisFormatRecord, _super);
function YAxisFormatRecord(defaults) {
_super.apply(this, arguments);
}
YAxisFormatRecord.attributesToDeclare = function () {
return [
this.attr("YAxisFormat", "yAxisFormatAttr", "YAxisFormat", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new ChartsMobileModel.YAxisFormatRec());
}, ChartsMobileModel.YAxisFormatRec)
].concat(_super.attributesToDeclare.call(this));
};
YAxisFormatRecord.fromStructure = function (str) {
return new YAxisFormatRecord(new YAxisFormatRecord.RecordClass({
yAxisFormatAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
YAxisFormatRecord._isAnonymousRecord = true;
YAxisFormatRecord.UniqueId = "9ac3a73b-5c3d-dd8f-3923-cd00427e8e10";
YAxisFormatRecord.init();
return YAxisFormatRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.YAxisFormatRecord = YAxisFormatRecord;

});
define("ToDo_ch.model$YAxisFormatRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$YAxisFormatRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var YAxisFormatRecordList = (function (_super) {
__extends(YAxisFormatRecordList, _super);
function YAxisFormatRecordList(defaults) {
_super.apply(this, arguments);
}
YAxisFormatRecordList.itemType = ToDo_chModel.YAxisFormatRecord;
return YAxisFormatRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.YAxisFormatRecordList = YAxisFormatRecordList;

});
define("ToDo_ch.model$ToDoRecord", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_ch.model", "ToDo_Core_ch.model$ToDoRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ToDo_Core_ch"], function (exports, OutSystems, ToDo_Core_chModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var ToDoRecord = (function (_super) {
__extends(ToDoRecord, _super);
function ToDoRecord(defaults) {
_super.apply(this, arguments);
}
ToDoRecord.attributesToDeclare = function () {
return [
this.attr("ToDo", "toDoAttr", "ToDo", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new ToDo_Core_chModel.ToDoRec());
}, ToDo_Core_chModel.ToDoRec)
].concat(_super.attributesToDeclare.call(this));
};
ToDoRecord.fromStructure = function (str) {
return new ToDoRecord(new ToDoRecord.RecordClass({
toDoAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
ToDoRecord._isAnonymousRecord = true;
ToDoRecord.UniqueId = "fb015897-c5c8-34db-8fd5-efdcd9214d6b";
ToDoRecord.init();
return ToDoRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.ToDoRecord = ToDoRecord;

});
define("ToDo_ch.model$ToDoRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$ToDoRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var ToDoRecordList = (function (_super) {
__extends(ToDoRecordList, _super);
function ToDoRecordList(defaults) {
_super.apply(this, arguments);
}
ToDoRecordList.itemType = ToDo_chModel.ToDoRecord;
return ToDoRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.ToDoRecordList = ToDoRecordList;

});
define("ToDo_ch.model$AdvancedFormatList", ["exports", "OutSystems/ClientRuntime/Main", "ChartsMobile.model", "ToDo_ch.model", "ChartsMobile.model$AdvancedFormatRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ChartsMobile"], function (exports, OutSystems, ChartsMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var AdvancedFormatList = (function (_super) {
__extends(AdvancedFormatList, _super);
function AdvancedFormatList(defaults) {
_super.apply(this, arguments);
}
AdvancedFormatList.itemType = ChartsMobileModel.AdvancedFormatRec;
return AdvancedFormatList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.AdvancedFormatList = AdvancedFormatList;

});
define("ToDo_ch.model$ToDoPriorityRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$ToDoPriorityRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var ToDoPriorityRecordList = (function (_super) {
__extends(ToDoPriorityRecordList, _super);
function ToDoPriorityRecordList(defaults) {
_super.apply(this, arguments);
}
ToDoPriorityRecordList.itemType = ToDo_chModel.ToDoPriorityRecord;
return ToDoPriorityRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.ToDoPriorityRecordList = ToDoPriorityRecordList;

});
define("ToDo_ch.model$CategoryList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_ch.model", "ToDo_Core_ch.model$CategoryRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ToDo_Core_ch"], function (exports, OutSystems, ToDo_Core_chModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var CategoryList = (function (_super) {
__extends(CategoryList, _super);
function CategoryList(defaults) {
_super.apply(this, arguments);
}
CategoryList.itemType = ToDo_Core_chModel.CategoryRec;
return CategoryList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.CategoryList = CategoryList;

});
define("ToDo_ch.model$AlertRecord", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$AlertRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var AlertRecord = (function (_super) {
__extends(AlertRecord, _super);
function AlertRecord(defaults) {
_super.apply(this, arguments);
}
AlertRecord.attributesToDeclare = function () {
return [
this.attr("Alert", "alertAttr", "Alert", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new OutSystemsUIMobileModel.AlertRec());
}, OutSystemsUIMobileModel.AlertRec)
].concat(_super.attributesToDeclare.call(this));
};
AlertRecord.fromStructure = function (str) {
return new AlertRecord(new AlertRecord.RecordClass({
alertAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
AlertRecord._isAnonymousRecord = true;
AlertRecord.UniqueId = "9ca6a18c-c49c-a724-6c44-c0f7c2cef62a";
AlertRecord.init();
return AlertRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.AlertRecord = AlertRecord;

});
define("ToDo_ch.model$AnimationTypeList", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$AnimationTypeRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var AnimationTypeList = (function (_super) {
__extends(AnimationTypeList, _super);
function AnimationTypeList(defaults) {
_super.apply(this, arguments);
}
AnimationTypeList.itemType = OutSystemsUIMobileModel.AnimationTypeRec;
return AnimationTypeList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.AnimationTypeList = AnimationTypeList;

});
define("ToDo_ch.model$ColorRecord", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$ColorRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var ColorRecord = (function (_super) {
__extends(ColorRecord, _super);
function ColorRecord(defaults) {
_super.apply(this, arguments);
}
ColorRecord.attributesToDeclare = function () {
return [
this.attr("Color", "colorAttr", "Color", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new OutSystemsUIMobileModel.ColorRec());
}, OutSystemsUIMobileModel.ColorRec)
].concat(_super.attributesToDeclare.call(this));
};
ColorRecord.fromStructure = function (str) {
return new ColorRecord(new ColorRecord.RecordClass({
colorAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
ColorRecord._isAnonymousRecord = true;
ColorRecord.UniqueId = "c47826b7-e423-2fbf-8907-84243715f5a8";
ColorRecord.init();
return ColorRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.ColorRecord = ColorRecord;

});
define("ToDo_ch.model$ColorRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$ColorRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var ColorRecordList = (function (_super) {
__extends(ColorRecordList, _super);
function ColorRecordList(defaults) {
_super.apply(this, arguments);
}
ColorRecordList.itemType = ToDo_chModel.ColorRecord;
return ColorRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.ColorRecordList = ColorRecordList;

});
define("ToDo_ch.model$AlertList", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$AlertRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var AlertList = (function (_super) {
__extends(AlertList, _super);
function AlertList(defaults) {
_super.apply(this, arguments);
}
AlertList.itemType = OutSystemsUIMobileModel.AlertRec;
return AlertList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.AlertList = AlertList;

});
define("ToDo_ch.model$AdvancedDataPointFormatRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$AdvancedDataPointFormatRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var AdvancedDataPointFormatRecordList = (function (_super) {
__extends(AdvancedDataPointFormatRecordList, _super);
function AdvancedDataPointFormatRecordList(defaults) {
_super.apply(this, arguments);
}
AdvancedDataPointFormatRecordList.itemType = ToDo_chModel.AdvancedDataPointFormatRecord;
return AdvancedDataPointFormatRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.AdvancedDataPointFormatRecordList = AdvancedDataPointFormatRecordList;

});
define("ToDo_ch.model$ColumnBreakRecord", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$ColumnBreakRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var ColumnBreakRecord = (function (_super) {
__extends(ColumnBreakRecord, _super);
function ColumnBreakRecord(defaults) {
_super.apply(this, arguments);
}
ColumnBreakRecord.attributesToDeclare = function () {
return [
this.attr("ColumnBreak", "columnBreakAttr", "ColumnBreak", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new OutSystemsUIMobileModel.ColumnBreakRec());
}, OutSystemsUIMobileModel.ColumnBreakRec)
].concat(_super.attributesToDeclare.call(this));
};
ColumnBreakRecord.fromStructure = function (str) {
return new ColumnBreakRecord(new ColumnBreakRecord.RecordClass({
columnBreakAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
ColumnBreakRecord._isAnonymousRecord = true;
ColumnBreakRecord.UniqueId = "b6adbbf4-e08b-ad29-75a6-f8f796279b71";
ColumnBreakRecord.init();
return ColumnBreakRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.ColumnBreakRecord = ColumnBreakRecord;

});
define("ToDo_ch.model$ColumnBreakRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$ColumnBreakRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var ColumnBreakRecordList = (function (_super) {
__extends(ColumnBreakRecordList, _super);
function ColumnBreakRecordList(defaults) {
_super.apply(this, arguments);
}
ColumnBreakRecordList.itemType = ToDo_chModel.ColumnBreakRecord;
return ColumnBreakRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.ColumnBreakRecordList = ColumnBreakRecordList;

});
define("ToDo_ch.model$StepsList", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$StepsRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var StepsList = (function (_super) {
__extends(StepsList, _super);
function StepsList(defaults) {
_super.apply(this, arguments);
}
StepsList.itemType = OutSystemsUIMobileModel.StepsRec;
return StepsList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.StepsList = StepsList;

});
define("ToDo_ch.model$SpeedRecord", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$SpeedRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var SpeedRecord = (function (_super) {
__extends(SpeedRecord, _super);
function SpeedRecord(defaults) {
_super.apply(this, arguments);
}
SpeedRecord.attributesToDeclare = function () {
return [
this.attr("Speed", "speedAttr", "Speed", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new OutSystemsUIMobileModel.SpeedRec());
}, OutSystemsUIMobileModel.SpeedRec)
].concat(_super.attributesToDeclare.call(this));
};
SpeedRecord.fromStructure = function (str) {
return new SpeedRecord(new SpeedRecord.RecordClass({
speedAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
SpeedRecord._isAnonymousRecord = true;
SpeedRecord.UniqueId = "d15ba8cc-56cc-5ee5-8bd8-acaffd974239";
SpeedRecord.init();
return SpeedRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.SpeedRecord = SpeedRecord;

});
define("ToDo_ch.model$AdvancedFormatRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$AdvancedFormatRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var AdvancedFormatRecordList = (function (_super) {
__extends(AdvancedFormatRecordList, _super);
function AdvancedFormatRecordList(defaults) {
_super.apply(this, arguments);
}
AdvancedFormatRecordList.itemType = ToDo_chModel.AdvancedFormatRecord;
return AdvancedFormatRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.AdvancedFormatRecordList = AdvancedFormatRecordList;

});
define("ToDo_ch.model$ResourceRecord", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_ch.model", "ToDo_Core_ch.model$ResourceRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ToDo_Core_ch"], function (exports, OutSystems, ToDo_Core_chModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var ResourceRecord = (function (_super) {
__extends(ResourceRecord, _super);
function ResourceRecord(defaults) {
_super.apply(this, arguments);
}
ResourceRecord.attributesToDeclare = function () {
return [
this.attr("Resource", "resourceAttr", "Resource", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new ToDo_Core_chModel.ResourceRec());
}, ToDo_Core_chModel.ResourceRec)
].concat(_super.attributesToDeclare.call(this));
};
ResourceRecord.fromStructure = function (str) {
return new ResourceRecord(new ResourceRecord.RecordClass({
resourceAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
ResourceRecord._isAnonymousRecord = true;
ResourceRecord.UniqueId = "d330a92c-e17d-eb9c-8ede-0b8e6e7e823e";
ResourceRecord.init();
return ResourceRecord;
})(OS.DataTypes.GenericRecord);
ToDo_chModel.ResourceRecord = ResourceRecord;

});
define("ToDo_ch.model$PositionList", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$PositionRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var PositionList = (function (_super) {
__extends(PositionList, _super);
function PositionList(defaults) {
_super.apply(this, arguments);
}
PositionList.itemType = OutSystemsUIMobileModel.PositionRec;
return PositionList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.PositionList = PositionList;

});
define("ToDo_ch.model$AutoplayList", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$AutoplayRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var AutoplayList = (function (_super) {
__extends(AutoplayList, _super);
function AutoplayList(defaults) {
_super.apply(this, arguments);
}
AutoplayList.itemType = OutSystemsUIMobileModel.AutoplayRec;
return AutoplayList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.AutoplayList = AutoplayList;

});
define("ToDo_ch.model$XAxisFormatList", ["exports", "OutSystems/ClientRuntime/Main", "ChartsMobile.model", "ToDo_ch.model", "ChartsMobile.model$XAxisFormatRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ChartsMobile"], function (exports, OutSystems, ChartsMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var XAxisFormatList = (function (_super) {
__extends(XAxisFormatList, _super);
function XAxisFormatList(defaults) {
_super.apply(this, arguments);
}
XAxisFormatList.itemType = ChartsMobileModel.XAxisFormatRec;
return XAxisFormatList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.XAxisFormatList = XAxisFormatList;

});
define("ToDo_ch.model$ResourceRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$ResourceRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var ResourceRecordList = (function (_super) {
__extends(ResourceRecordList, _super);
function ResourceRecordList(defaults) {
_super.apply(this, arguments);
}
ResourceRecordList.itemType = ToDo_chModel.ResourceRecord;
return ResourceRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.ResourceRecordList = ResourceRecordList;

});
define("ToDo_ch.model$MasterDetailItemList", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$MasterDetailItemRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var MasterDetailItemList = (function (_super) {
__extends(MasterDetailItemList, _super);
function MasterDetailItemList(defaults) {
_super.apply(this, arguments);
}
MasterDetailItemList.itemType = OutSystemsUIMobileModel.MasterDetailItemRec;
return MasterDetailItemList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.MasterDetailItemList = MasterDetailItemList;

});
define("ToDo_ch.model$SpeedList", ["exports", "OutSystems/ClientRuntime/Main", "OutSystemsUIMobile.model", "ToDo_ch.model", "OutSystemsUIMobile.model$SpeedRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$OutSystemsUIMobile"], function (exports, OutSystems, OutSystemsUIMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var SpeedList = (function (_super) {
__extends(SpeedList, _super);
function SpeedList(defaults) {
_super.apply(this, arguments);
}
SpeedList.itemType = OutSystemsUIMobileModel.SpeedRec;
return SpeedList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.SpeedList = SpeedList;

});
define("ToDo_ch.model$StepsRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$StepsRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var StepsRecordList = (function (_super) {
__extends(StepsRecordList, _super);
function StepsRecordList(defaults) {
_super.apply(this, arguments);
}
StepsRecordList.itemType = ToDo_chModel.StepsRecord;
return StepsRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.StepsRecordList = StepsRecordList;

});
define("ToDo_ch.model$UserList", ["exports", "OutSystems/ClientRuntime/Main", "ServiceCenter.model", "ToDo_ch.model", "ServiceCenter.model$UserRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ServiceCenter"], function (exports, OutSystems, ServiceCenterModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var UserList = (function (_super) {
__extends(UserList, _super);
function UserList(defaults) {
_super.apply(this, arguments);
}
UserList.itemType = ServiceCenterModel.UserRec;
return UserList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.UserList = UserList;

});
define("ToDo_ch.model$ResourceList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_ch.model", "ToDo_Core_ch.model$ResourceRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ToDo_Core_ch"], function (exports, OutSystems, ToDo_Core_chModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var ResourceList = (function (_super) {
__extends(ResourceList, _super);
function ResourceList(defaults) {
_super.apply(this, arguments);
}
ResourceList.itemType = ToDo_Core_chModel.ResourceRec;
return ResourceList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.ResourceList = ResourceList;

});
define("ToDo_ch.model$AlertRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$AlertRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var AlertRecordList = (function (_super) {
__extends(AlertRecordList, _super);
function AlertRecordList(defaults) {
_super.apply(this, arguments);
}
AlertRecordList.itemType = ToDo_chModel.AlertRecord;
return AlertRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.AlertRecordList = AlertRecordList;

});
define("ToDo_ch.model$SpeedRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_ch.model", "ToDo_ch.model$SpeedRecord"], function (exports, OutSystems, ToDo_chModel) {
var OS = OutSystems.Internal;
var SpeedRecordList = (function (_super) {
__extends(SpeedRecordList, _super);
function SpeedRecordList(defaults) {
_super.apply(this, arguments);
}
SpeedRecordList.itemType = ToDo_chModel.SpeedRecord;
return SpeedRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.SpeedRecordList = SpeedRecordList;

});
define("ToDo_ch.model$YAxisFormatList", ["exports", "OutSystems/ClientRuntime/Main", "ChartsMobile.model", "ToDo_ch.model", "ChartsMobile.model$YAxisFormatRec", "ToDo_ch.referencesHealth", "ToDo_ch.referencesHealth$ChartsMobile"], function (exports, OutSystems, ChartsMobileModel, ToDo_chModel) {
var OS = OutSystems.Internal;
var YAxisFormatList = (function (_super) {
__extends(YAxisFormatList, _super);
function YAxisFormatList(defaults) {
_super.apply(this, arguments);
}
YAxisFormatList.itemType = ChartsMobileModel.YAxisFormatRec;
return YAxisFormatList;
})(OS.DataTypes.GenericRecordList);
ToDo_chModel.YAxisFormatList = YAxisFormatList;

});
define("ToDo_ch.model", ["exports", "OutSystems/ClientRuntime/Main"], function (exports, OutSystems) {
var OS = OutSystems.Internal;
var ToDo_chModel = exports;
Object.defineProperty(ToDo_chModel, "module", {
get: function () {
return OS.ApplicationInfo.getModules()["46303306-4b51-407f-8fad-8cf0210fc10e"];
}
});

ToDo_chModel.staticEntities = {};
ToDo_chModel.staticEntities.resourceType = {};
var getResourceTypeRecord = function (record) {
return OS.ApplicationInfo.getModules()["2a79c321-b6a5-4bdf-b927-5388c9dd077e"].staticEntities["441ea748-8f47-460e-b472-1c796aca9392"][record];
};
Object.defineProperty(ToDo_chModel.staticEntities.resourceType, "image", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getResourceTypeRecord("225ff9cc-d59c-42f9-a76a-fa464ce3a9d0"));
}
});

Object.defineProperty(ToDo_chModel.staticEntities.resourceType, "other", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getResourceTypeRecord("e27c52a8-3e5e-49c6-9267-db90bab3e0bd"));
}
});

Object.defineProperty(ToDo_chModel.staticEntities.resourceType, "audio", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getResourceTypeRecord("f4dab67f-b982-466e-9324-babddc9011ed"));
}
});

ToDo_chModel.staticEntities.priority = {};
var getPriorityRecord = function (record) {
return OS.ApplicationInfo.getModules()["2a79c321-b6a5-4bdf-b927-5388c9dd077e"].staticEntities["b0fc1c18-b26b-4b40-9adc-e63c59a5cda3"][record];
};
Object.defineProperty(ToDo_chModel.staticEntities.priority, "high", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getPriorityRecord("2240094a-5323-47cd-8cae-32a59c72aac1"));
}
});

Object.defineProperty(ToDo_chModel.staticEntities.priority, "low", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getPriorityRecord("83c382ef-9e6b-4701-8bff-0b1f8f021224"));
}
});

Object.defineProperty(ToDo_chModel.staticEntities.priority, "medium", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getPriorityRecord("e6044f89-022e-4c8e-8233-d868df901c94"));
}
});

ToDo_chModel.staticEntities.stackingType = {};
var getStackingTypeRecord = function (record) {
return OS.ApplicationInfo.getModules()["38b70e23-50fc-4710-80cf-3682a9dc998a"].staticEntities["1aaafcbe-99a5-4857-83f2-e4754e65edcf"][record];
};
Object.defineProperty(ToDo_chModel.staticEntities.stackingType, "stacked100Percent", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getStackingTypeRecord("5a048369-2987-4af5-b052-ab363ac4b748"));
}
});

Object.defineProperty(ToDo_chModel.staticEntities.stackingType, "noStacking", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getStackingTypeRecord("b664d44a-e707-43cc-b782-cc4fd9c3ce8a"));
}
});

Object.defineProperty(ToDo_chModel.staticEntities.stackingType, "stacked", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getStackingTypeRecord("f5816dfa-da3b-4031-aa5f-06a7a08dcc94"));
}
});

ToDo_chModel.staticEntities.legendPosition = {};
var getLegendPositionRecord = function (record) {
return OS.ApplicationInfo.getModules()["38b70e23-50fc-4710-80cf-3682a9dc998a"].staticEntities["6f55558f-9a5c-49bb-bc32-8180c0ac0d73"][record];
};
Object.defineProperty(ToDo_chModel.staticEntities.legendPosition, "bottom", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getLegendPositionRecord("24063cd8-b015-4fb7-8ceb-c4cf65110444"));
}
});

Object.defineProperty(ToDo_chModel.staticEntities.legendPosition, "right", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getLegendPositionRecord("2c2e4610-d5b5-4738-9474-83ca4e40f33b"));
}
});

Object.defineProperty(ToDo_chModel.staticEntities.legendPosition, "inside", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getLegendPositionRecord("33fda788-9eba-426b-be1d-284323c6ae2a"));
}
});

Object.defineProperty(ToDo_chModel.staticEntities.legendPosition, "left", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getLegendPositionRecord("5314c097-85bd-407c-84f9-f0ebd17b75ce"));
}
});

Object.defineProperty(ToDo_chModel.staticEntities.legendPosition, "hidden", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getLegendPositionRecord("6519bee3-d71b-41ae-8e57-a377f8aaa6c3"));
}
});

Object.defineProperty(ToDo_chModel.staticEntities.legendPosition, "top", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getLegendPositionRecord("e0495156-d508-4fc2-a3ed-77a194c65b49"));
}
});

ToDo_chModel.staticEntities.xAxisValuesType = {};
var getXAxisValuesTypeRecord = function (record) {
return OS.ApplicationInfo.getModules()["38b70e23-50fc-4710-80cf-3682a9dc998a"].staticEntities["e24bffa0-82f5-4cd2-9d43-97b142649f77"][record];
};
Object.defineProperty(ToDo_chModel.staticEntities.xAxisValuesType, "text", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getXAxisValuesTypeRecord("31d40404-1f4d-4f1a-8c04-aa7377da778a"));
}
});

Object.defineProperty(ToDo_chModel.staticEntities.xAxisValuesType, "auto", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getXAxisValuesTypeRecord("6599ec19-4160-4794-81cd-6ba06b0bb84d"));
}
});

ToDo_chModel.staticEntities.animationType = {};
var getAnimationTypeRecord = function (record) {
return OS.ApplicationInfo.getModules()["8be17f2a-431c-4958-b894-c77b988a7271"].staticEntities["0463d449-6834-40d5-817b-3d74d1a71bb2"][record];
};
Object.defineProperty(ToDo_chModel.staticEntities.animationType, "topToBottom", {
get: function () {
return getAnimationTypeRecord("2d5a98f9-381b-4ff8-9219-085bc35dfc44");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.animationType, "bounce", {
get: function () {
return getAnimationTypeRecord("3c3ad352-52fc-43c5-ae3a-f8d651bfa094");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.animationType, "fadeIn", {
get: function () {
return getAnimationTypeRecord("69814f09-c20b-4d55-b06a-7231a5515d2c");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.animationType, "scaleDown", {
get: function () {
return getAnimationTypeRecord("7d8fd3a6-eac4-4ae8-b865-18f5711814cb");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.animationType, "scale", {
get: function () {
return getAnimationTypeRecord("8a8e0e8b-0e5a-407c-9739-4942e1c708e8");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.animationType, "spinner", {
get: function () {
return getAnimationTypeRecord("b1e2a22f-cd5a-49a8-83e2-a82471745aea");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.animationType, "bottomToTop", {
get: function () {
return getAnimationTypeRecord("b71cef18-b0ee-4e9b-8b98-5700b6c6b9e4");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.animationType, "rightToLeft", {
get: function () {
return getAnimationTypeRecord("b7a58aaa-e1f6-4bbb-9557-5fb4742ef542");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.animationType, "leftToRight", {
get: function () {
return getAnimationTypeRecord("f4c21a73-5f0c-4d9e-a9e6-7053b68c2cea");
}
});

ToDo_chModel.staticEntities.speed = {};
var getSpeedRecord = function (record) {
return OS.ApplicationInfo.getModules()["8be17f2a-431c-4958-b894-c77b988a7271"].staticEntities["0a5cc4ae-b54f-4ea3-9ace-9f49c7724606"][record];
};
Object.defineProperty(ToDo_chModel.staticEntities.speed, "fast", {
get: function () {
return getSpeedRecord("4fb2b6d9-70ff-415d-a09d-4ee05adda5c4");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.speed, "normal", {
get: function () {
return getSpeedRecord("93b9215f-8fb1-4f08-8555-9b0125b18f51");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.speed, "slow", {
get: function () {
return getSpeedRecord("b2c67d31-506d-42e7-890e-0e4f29234ae6");
}
});

ToDo_chModel.staticEntities.color = {};
var getColorRecord = function (record) {
return OS.ApplicationInfo.getModules()["8be17f2a-431c-4958-b894-c77b988a7271"].staticEntities["4a5b3b8d-44e7-4c03-9b89-453fa2feee20"][record];
};
Object.defineProperty(ToDo_chModel.staticEntities.color, "white", {
get: function () {
return getColorRecord("05505a13-1fe9-4adf-9845-11368c74e98b");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.color, "blue", {
get: function () {
return getColorRecord("0772a1e6-baf6-4f8d-9b63-aef9b16bec31");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.color, "black", {
get: function () {
return getColorRecord("26ba2ced-6bce-452f-b33a-7874dc80d8d1");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.color, "violet", {
get: function () {
return getColorRecord("3269784e-d6b0-46db-a0b5-5a9a64ee0e41");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.color, "none", {
get: function () {
return getColorRecord("342260d0-74a4-44fd-9e9d-f0505a330244");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.color, "orange", {
get: function () {
return getColorRecord("833f5f9b-2325-4b92-9285-e14aa1a17c25");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.color, "red", {
get: function () {
return getColorRecord("94682198-3a70-458e-9889-3eef131d1b00");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.color, "primaryColor", {
get: function () {
return getColorRecord("9bd951e1-c94c-434b-85cb-a4cde3ffe638");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.color, "green", {
get: function () {
return getColorRecord("ad00278a-a271-46de-ac30-9f99c87f97a4");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.color, "grey", {
get: function () {
return getColorRecord("f986e894-0745-46fd-aa63-7680b5fd9234");
}
});

ToDo_chModel.staticEntities.stackedCardsPosition = {};
var getStackedCardsPositionRecord = function (record) {
return OS.ApplicationInfo.getModules()["8be17f2a-431c-4958-b894-c77b988a7271"].staticEntities["71865eb4-55fe-40a5-bc7f-45b005a3a0b5"][record];
};
Object.defineProperty(ToDo_chModel.staticEntities.stackedCardsPosition, "bottom", {
get: function () {
return getStackedCardsPositionRecord("2e9dd7c6-b9a7-404f-b207-9a3da7fb05ed");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.stackedCardsPosition, "top", {
get: function () {
return getStackedCardsPositionRecord("5766b18f-82ef-49f1-9476-cf8f49249f25");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.stackedCardsPosition, "none", {
get: function () {
return getStackedCardsPositionRecord("89cf1ed9-b6fd-4e0a-af41-cfd79db935d7");
}
});

ToDo_chModel.staticEntities.autoplay = {};
var getAutoplayRecord = function (record) {
return OS.ApplicationInfo.getModules()["8be17f2a-431c-4958-b894-c77b988a7271"].staticEntities["82aa58b4-8bbb-4d19-92b6-2944affad02c"][record];
};
Object.defineProperty(ToDo_chModel.staticEntities.autoplay, "disabled", {
get: function () {
return getAutoplayRecord("1ffcca5d-17d0-492e-9e9e-b8addde7fd80");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.autoplay, "slow", {
get: function () {
return getAutoplayRecord("4167f601-5731-452d-9653-1be7f25199f1");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.autoplay, "fast", {
get: function () {
return getAutoplayRecord("41b9ec04-2023-4f87-b953-0c01713d1992");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.autoplay, "normal", {
get: function () {
return getAutoplayRecord("e3033046-77ba-49cd-928a-5d831105f349");
}
});

ToDo_chModel.staticEntities.position = {};
var getPositionRecord = function (record) {
return OS.ApplicationInfo.getModules()["8be17f2a-431c-4958-b894-c77b988a7271"].staticEntities["83c073e8-bac2-4122-9772-aa6e122a5d36"][record];
};
Object.defineProperty(ToDo_chModel.staticEntities.position, "top", {
get: function () {
return getPositionRecord("3bbcac35-309e-49a8-bf1b-a3c66e1ef3cd");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.position, "left", {
get: function () {
return getPositionRecord("4d70c81a-67bd-4a1f-a21a-c6aa13d0f364");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.position, "bottomRight", {
get: function () {
return getPositionRecord("73459c44-0160-4454-8ad0-c9bd44778a61");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.position, "bottomLeft", {
get: function () {
return getPositionRecord("7352570c-243a-4f05-b6d1-608495931118");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.position, "right", {
get: function () {
return getPositionRecord("bf43697b-2483-4855-a6c2-0a786bab472f");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.position, "topLeft", {
get: function () {
return getPositionRecord("c1d22c62-5a36-4d69-b188-02d62b8fe7c4");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.position, "topRight", {
get: function () {
return getPositionRecord("d14d8aae-f1c9-4538-a4a9-91a2690e6d92");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.position, "center", {
get: function () {
return getPositionRecord("dcc9ffa2-34a7-4097-86d0-dde224907425");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.position, "bottom", {
get: function () {
return getPositionRecord("fb8d90f9-5432-4678-932b-f468c00d3361");
}
});

ToDo_chModel.staticEntities.alert = {};
var getAlertRecord = function (record) {
return OS.ApplicationInfo.getModules()["8be17f2a-431c-4958-b894-c77b988a7271"].staticEntities["924486c0-dd9a-46ea-ad74-2cf9ac0c84d9"][record];
};
Object.defineProperty(ToDo_chModel.staticEntities.alert, "success", {
get: function () {
return getAlertRecord("4aac6381-179c-477f-a0d2-8aa7c0e2ece5");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.alert, "error", {
get: function () {
return getAlertRecord("85c06001-4d3a-4a08-b18f-4f9ebdc60d33");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.alert, "info", {
get: function () {
return getAlertRecord("e7c6b907-0f56-481e-b267-eb69bd92ed26");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.alert, "warning", {
get: function () {
return getAlertRecord("ed710523-9de5-47b6-b3ac-736fb4848c04");
}
});

ToDo_chModel.staticEntities.menuAction = {};
var getMenuActionRecord = function (record) {
return OS.ApplicationInfo.getModules()["8be17f2a-431c-4958-b894-c77b988a7271"].staticEntities["9cc12883-06ab-4cf0-9997-ede7c6c02d67"][record];
};
Object.defineProperty(ToDo_chModel.staticEntities.menuAction, "menu", {
get: function () {
return getMenuActionRecord("55ba18a9-cd6b-45dd-99ce-9081ee1387ea");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.menuAction, "auto", {
get: function () {
return getMenuActionRecord("6c0c753a-86f4-4e76-9781-6e821c850c72");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.menuAction, "hidden", {
get: function () {
return getMenuActionRecord("86c9d356-be64-46a1-b027-843ab93b4aea");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.menuAction, "back", {
get: function () {
return getMenuActionRecord("f2db3c50-4c38-4ee7-a770-aa9476cb0d68");
}
});

ToDo_chModel.staticEntities.messageStatus = {};
var getMessageStatusRecord = function (record) {
return OS.ApplicationInfo.getModules()["8be17f2a-431c-4958-b894-c77b988a7271"].staticEntities["c1015fc0-c81c-40cc-a046-bf99cf21a280"][record];
};
Object.defineProperty(ToDo_chModel.staticEntities.messageStatus, "hidden", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getMessageStatusRecord("2f2266ed-167a-45db-ac12-ca1e3cfa0fd2"));
}
});

Object.defineProperty(ToDo_chModel.staticEntities.messageStatus, "read", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getMessageStatusRecord("34f4ff93-8e4e-4933-baae-8b9f122eb3cc"));
}
});

Object.defineProperty(ToDo_chModel.staticEntities.messageStatus, "sent", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getMessageStatusRecord("a1f1ba89-bd84-4943-a94c-a84ea4a142bf"));
}
});

Object.defineProperty(ToDo_chModel.staticEntities.messageStatus, "received", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getMessageStatusRecord("c90b88d0-8f7d-484a-8d17-b0d1b9795a94"));
}
});

ToDo_chModel.staticEntities.columnBreak = {};
var getColumnBreakRecord = function (record) {
return OS.ApplicationInfo.getModules()["8be17f2a-431c-4958-b894-c77b988a7271"].staticEntities["cce6ac21-942a-492f-8b46-64c5e6ea057b"][record];
};
Object.defineProperty(ToDo_chModel.staticEntities.columnBreak, "breakMiddle", {
get: function () {
return getColumnBreakRecord("3b01fc99-ef23-4043-8771-f88660720e01");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.columnBreak, "breakAll", {
get: function () {
return getColumnBreakRecord("43788f73-6893-4396-b67a-04a6ff690e74");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.columnBreak, "breakNone", {
get: function () {
return getColumnBreakRecord("69e6c609-9e8a-45a7-b006-45b92275ec49");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.columnBreak, "breakLast", {
get: function () {
return getColumnBreakRecord("6b3725c8-8951-48ed-a977-cbfaf003c896");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.columnBreak, "breakFirst", {
get: function () {
return getColumnBreakRecord("8c8b45b6-c1af-4b11-907e-3c8a5ce161e2");
}
});

ToDo_chModel.staticEntities.steps = {};
var getStepsRecord = function (record) {
return OS.ApplicationInfo.getModules()["8be17f2a-431c-4958-b894-c77b988a7271"].staticEntities["e4dd8e9f-a620-4df5-b619-9b8a771be5a3"][record];
};
Object.defineProperty(ToDo_chModel.staticEntities.steps, "next", {
get: function () {
return getStepsRecord("03e9ec31-9b26-4304-b532-29aa077d99ea");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.steps, "past", {
get: function () {
return getStepsRecord("5452e8a1-02ca-4ff2-8d74-bff1512fc4a3");
}
});

Object.defineProperty(ToDo_chModel.staticEntities.steps, "active", {
get: function () {
return getStepsRecord("dbde9903-8367-49e7-8302-f6758c190844");
}
});

});
