define("ToDo_Core_ch.model$CategoryRec", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model"], function (exports, OutSystems, ToDo_Core_chModel) {
var OS = OutSystems.Internal;
var CategoryRec = (function (_super) {
__extends(CategoryRec, _super);
function CategoryRec(defaults) {
_super.apply(this, arguments);
}
CategoryRec.attributesToDeclare = function () {
return [
this.attr("Id", "idAttr", "Id", true, false, OS.Types.LongInteger, function () {
return OS.DataTypes.LongInteger.defaultValue;
}), 
this.attr("Name", "nameAttr", "Name", true, false, OS.Types.Text, function () {
return "";
})
].concat(_super.attributesToDeclare.call(this));
};
CategoryRec.init();
return CategoryRec;
})(OS.DataTypes.GenericRecord);
ToDo_Core_chModel.CategoryRec = CategoryRec;

});
define("ToDo_Core_ch.model$CategoryRecord", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_Core_ch.model$CategoryRec"], function (exports, OutSystems, ToDo_Core_chModel) {
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
ToDo_Core_chModel.CategoryRecord = CategoryRecord;

});
define("ToDo_Core_ch.model$CategoryRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_Core_ch.model$CategoryRecord"], function (exports, OutSystems, ToDo_Core_chModel) {
var OS = OutSystems.Internal;
var CategoryRecordList = (function (_super) {
__extends(CategoryRecordList, _super);
function CategoryRecordList(defaults) {
_super.apply(this, arguments);
}
CategoryRecordList.itemType = ToDo_Core_chModel.CategoryRecord;
return CategoryRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_Core_chModel.CategoryRecordList = CategoryRecordList;

});
define("ToDo_Core_ch.model$ResourceTypeRec", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model"], function (exports, OutSystems, ToDo_Core_chModel) {
var OS = OutSystems.Internal;
var ResourceTypeRec = (function (_super) {
__extends(ResourceTypeRec, _super);
function ResourceTypeRec(defaults) {
_super.apply(this, arguments);
}
ResourceTypeRec.attributesToDeclare = function () {
return [
this.attr("Id", "idAttr", "Id", true, false, OS.Types.Integer, function () {
return 0;
}), 
this.attr("Label", "labelAttr", "Label", true, false, OS.Types.Text, function () {
return "";
}), 
this.attr("Order", "orderAttr", "Order", true, false, OS.Types.Integer, function () {
return 0;
}), 
this.attr("Is_Active", "is_ActiveAttr", "Is_Active", true, false, OS.Types.Boolean, function () {
return false;
})
].concat(_super.attributesToDeclare.call(this));
};
ResourceTypeRec.init();
return ResourceTypeRec;
})(OS.DataTypes.GenericRecord);
ToDo_Core_chModel.ResourceTypeRec = ResourceTypeRec;

});
define("ToDo_Core_ch.model$ResourceTypeRecord", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_Core_ch.model$ResourceTypeRec"], function (exports, OutSystems, ToDo_Core_chModel) {
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
ToDo_Core_chModel.ResourceTypeRecord = ResourceTypeRecord;

});
define("ToDo_Core_ch.model$ResourceTypeList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_Core_ch.model$ResourceTypeRec"], function (exports, OutSystems, ToDo_Core_chModel) {
var OS = OutSystems.Internal;
var ResourceTypeList = (function (_super) {
__extends(ResourceTypeList, _super);
function ResourceTypeList(defaults) {
_super.apply(this, arguments);
}
ResourceTypeList.itemType = ToDo_Core_chModel.ResourceTypeRec;
return ResourceTypeList;
})(OS.DataTypes.GenericRecordList);
ToDo_Core_chModel.ResourceTypeList = ResourceTypeList;

});
define("ToDo_Core_ch.model$ToDoRec", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model"], function (exports, OutSystems, ToDo_Core_chModel) {
var OS = OutSystems.Internal;
var ToDoRec = (function (_super) {
__extends(ToDoRec, _super);
function ToDoRec(defaults) {
_super.apply(this, arguments);
}
ToDoRec.attributesToDeclare = function () {
return [
this.attr("Id", "idAttr", "Id", true, false, OS.Types.LongInteger, function () {
return OS.DataTypes.LongInteger.defaultValue;
}), 
this.attr("Title", "titleAttr", "Title", true, false, OS.Types.Text, function () {
return "";
}), 
this.attr("UserId", "userIdAttr", "UserId", true, false, OS.Types.Integer, function () {
return 0;
}), 
this.attr("IsStarred", "isStarredAttr", "IsStarred", false, false, OS.Types.Boolean, function () {
return false;
}), 
this.attr("Notes", "notesAttr", "Notes", false, false, OS.Types.Text, function () {
return "";
}), 
this.attr("DueDate", "dueDateAttr", "DueDate", false, false, OS.Types.Date, function () {
return OS.DataTypes.DateTime.defaultValue;
}), 
this.attr("CreatedDate", "createdDateAttr", "CreatedDate", true, false, OS.Types.Date, function () {
return OS.BuiltinFunctions.currDate();
}), 
this.attr("CompletedDate", "completedDateAttr", "CompletedDate", false, false, OS.Types.Date, function () {
return OS.DataTypes.DateTime.defaultValue;
}), 
this.attr("CategoryId", "categoryIdAttr", "CategoryId", true, false, OS.Types.LongInteger, function () {
return OS.DataTypes.LongInteger.defaultValue;
}), 
this.attr("PriorityIdentifier", "priorityIdentifierAttr", "PriorityIdentifier", true, false, OS.Types.Integer, function () {
return 0;
})
].concat(_super.attributesToDeclare.call(this));
};
ToDoRec.init();
return ToDoRec;
})(OS.DataTypes.GenericRecord);
ToDo_Core_chModel.ToDoRec = ToDoRec;

});
define("ToDo_Core_ch.model$ToDoList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_Core_ch.model$ToDoRec"], function (exports, OutSystems, ToDo_Core_chModel) {
var OS = OutSystems.Internal;
var ToDoList = (function (_super) {
__extends(ToDoList, _super);
function ToDoList(defaults) {
_super.apply(this, arguments);
}
ToDoList.itemType = ToDo_Core_chModel.ToDoRec;
return ToDoList;
})(OS.DataTypes.GenericRecordList);
ToDo_Core_chModel.ToDoList = ToDoList;

});
define("ToDo_Core_ch.model$PriorityRec", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model"], function (exports, OutSystems, ToDo_Core_chModel) {
var OS = OutSystems.Internal;
var PriorityRec = (function (_super) {
__extends(PriorityRec, _super);
function PriorityRec(defaults) {
_super.apply(this, arguments);
}
PriorityRec.attributesToDeclare = function () {
return [
this.attr("Id", "idAttr", "Id", true, false, OS.Types.Integer, function () {
return 0;
}), 
this.attr("Label", "labelAttr", "Label", true, false, OS.Types.Text, function () {
return "";
}), 
this.attr("Order", "orderAttr", "Order", true, false, OS.Types.Integer, function () {
return 0;
}), 
this.attr("Is_Active", "is_ActiveAttr", "Is_Active", true, false, OS.Types.Boolean, function () {
return false;
})
].concat(_super.attributesToDeclare.call(this));
};
PriorityRec.init();
return PriorityRec;
})(OS.DataTypes.GenericRecord);
ToDo_Core_chModel.PriorityRec = PriorityRec;

});
define("ToDo_Core_ch.model$PriorityRecord", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_Core_ch.model$PriorityRec"], function (exports, OutSystems, ToDo_Core_chModel) {
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
ToDo_Core_chModel.PriorityRecord = PriorityRecord;

});
define("ToDo_Core_ch.model$PriorityRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_Core_ch.model$PriorityRecord"], function (exports, OutSystems, ToDo_Core_chModel) {
var OS = OutSystems.Internal;
var PriorityRecordList = (function (_super) {
__extends(PriorityRecordList, _super);
function PriorityRecordList(defaults) {
_super.apply(this, arguments);
}
PriorityRecordList.itemType = ToDo_Core_chModel.PriorityRecord;
return PriorityRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_Core_chModel.PriorityRecordList = PriorityRecordList;

});
define("ToDo_Core_ch.model$Excel_CategoriesRec", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model"], function (exports, OutSystems, ToDo_Core_chModel) {
var OS = OutSystems.Internal;
var Excel_CategoriesRec = (function (_super) {
__extends(Excel_CategoriesRec, _super);
function Excel_CategoriesRec(defaults) {
_super.apply(this, arguments);
}
Excel_CategoriesRec.attributesToDeclare = function () {
return [
this.attr("Name", "nameAttr", "Name", true, false, OS.Types.Text, function () {
return "";
})
].concat(_super.attributesToDeclare.call(this));
};
Excel_CategoriesRec.fromStructure = function (str) {
return new Excel_CategoriesRec(new Excel_CategoriesRec.RecordClass({
nameAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
Excel_CategoriesRec.init();
return Excel_CategoriesRec;
})(OS.DataTypes.GenericRecord);
ToDo_Core_chModel.Excel_CategoriesRec = Excel_CategoriesRec;

});
define("ToDo_Core_ch.model$Excel_CategoriesRecord", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_Core_ch.model$Excel_CategoriesRec"], function (exports, OutSystems, ToDo_Core_chModel) {
var OS = OutSystems.Internal;
var Excel_CategoriesRecord = (function (_super) {
__extends(Excel_CategoriesRecord, _super);
function Excel_CategoriesRecord(defaults) {
_super.apply(this, arguments);
}
Excel_CategoriesRecord.attributesToDeclare = function () {
return [
this.attr("Excel_Categories", "excel_CategoriesAttr", "Excel_Categories", false, false, OS.Types.Record, function () {
return OS.DataTypes.ImmutableBase.getData(new ToDo_Core_chModel.Excel_CategoriesRec());
}, ToDo_Core_chModel.Excel_CategoriesRec)
].concat(_super.attributesToDeclare.call(this));
};
Excel_CategoriesRecord.fromStructure = function (str) {
return new Excel_CategoriesRecord(new Excel_CategoriesRecord.RecordClass({
excel_CategoriesAttr: OS.DataTypes.ImmutableBase.getData(str)
}));
};
Excel_CategoriesRecord._isAnonymousRecord = true;
Excel_CategoriesRecord.UniqueId = "48605b2c-b92a-ef00-d012-bdb850f85ed9";
Excel_CategoriesRecord.init();
return Excel_CategoriesRecord;
})(OS.DataTypes.GenericRecord);
ToDo_Core_chModel.Excel_CategoriesRecord = Excel_CategoriesRecord;

});
define("ToDo_Core_ch.model$ResourceRec", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model"], function (exports, OutSystems, ToDo_Core_chModel) {
var OS = OutSystems.Internal;
var ResourceRec = (function (_super) {
__extends(ResourceRec, _super);
function ResourceRec(defaults) {
_super.apply(this, arguments);
}
ResourceRec.attributesToDeclare = function () {
return [
this.attr("Id", "idAttr", "Id", true, false, OS.Types.LongInteger, function () {
return OS.DataTypes.LongInteger.defaultValue;
}), 
this.attr("ResourceTypeId", "resourceTypeIdAttr", "ResourceTypeId", true, false, OS.Types.Integer, function () {
return 0;
}), 
this.attr("Filename", "filenameAttr", "Filename", false, false, OS.Types.Text, function () {
return "";
}), 
this.attr("MimeType", "mimeTypeAttr", "MimeType", false, false, OS.Types.Text, function () {
return "";
}), 
this.attr("BinaryContent", "binaryContentAttr", "BinaryContent", false, false, OS.Types.BinaryData, function () {
return OS.DataTypes.BinaryData.defaultValue;
})
].concat(_super.attributesToDeclare.call(this));
};
ResourceRec.init();
return ResourceRec;
})(OS.DataTypes.GenericRecord);
ToDo_Core_chModel.ResourceRec = ResourceRec;

});
define("ToDo_Core_ch.model$Excel_CategoriesRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_Core_ch.model$Excel_CategoriesRecord"], function (exports, OutSystems, ToDo_Core_chModel) {
var OS = OutSystems.Internal;
var Excel_CategoriesRecordList = (function (_super) {
__extends(Excel_CategoriesRecordList, _super);
function Excel_CategoriesRecordList(defaults) {
_super.apply(this, arguments);
}
Excel_CategoriesRecordList.itemType = ToDo_Core_chModel.Excel_CategoriesRecord;
return Excel_CategoriesRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_Core_chModel.Excel_CategoriesRecordList = Excel_CategoriesRecordList;

});
define("ToDo_Core_ch.model$UserRecord", ["exports", "OutSystems/ClientRuntime/Main", "ServiceCenter.model", "ToDo_Core_ch.model", "ServiceCenter.model$UserRec", "ToDo_Core_ch.referencesHealth", "ToDo_Core_ch.referencesHealth$ServiceCenter"], function (exports, OutSystems, ServiceCenterModel, ToDo_Core_chModel) {
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
ToDo_Core_chModel.UserRecord = UserRecord;

});
define("ToDo_Core_ch.model$UserRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_Core_ch.model$UserRecord"], function (exports, OutSystems, ToDo_Core_chModel) {
var OS = OutSystems.Internal;
var UserRecordList = (function (_super) {
__extends(UserRecordList, _super);
function UserRecordList(defaults) {
_super.apply(this, arguments);
}
UserRecordList.itemType = ToDo_Core_chModel.UserRecord;
return UserRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_Core_chModel.UserRecordList = UserRecordList;

});
define("ToDo_Core_ch.model$ResourceTypeRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_Core_ch.model$ResourceTypeRecord"], function (exports, OutSystems, ToDo_Core_chModel) {
var OS = OutSystems.Internal;
var ResourceTypeRecordList = (function (_super) {
__extends(ResourceTypeRecordList, _super);
function ResourceTypeRecordList(defaults) {
_super.apply(this, arguments);
}
ResourceTypeRecordList.itemType = ToDo_Core_chModel.ResourceTypeRecord;
return ResourceTypeRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_Core_chModel.ResourceTypeRecordList = ResourceTypeRecordList;

});
define("ToDo_Core_ch.model$PriorityList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_Core_ch.model$PriorityRec"], function (exports, OutSystems, ToDo_Core_chModel) {
var OS = OutSystems.Internal;
var PriorityList = (function (_super) {
__extends(PriorityList, _super);
function PriorityList(defaults) {
_super.apply(this, arguments);
}
PriorityList.itemType = ToDo_Core_chModel.PriorityRec;
return PriorityList;
})(OS.DataTypes.GenericRecordList);
ToDo_Core_chModel.PriorityList = PriorityList;

});
define("ToDo_Core_ch.model$ToDoRecord", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_Core_ch.model$ToDoRec"], function (exports, OutSystems, ToDo_Core_chModel) {
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
ToDo_Core_chModel.ToDoRecord = ToDoRecord;

});
define("ToDo_Core_ch.model$ToDoRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_Core_ch.model$ToDoRecord"], function (exports, OutSystems, ToDo_Core_chModel) {
var OS = OutSystems.Internal;
var ToDoRecordList = (function (_super) {
__extends(ToDoRecordList, _super);
function ToDoRecordList(defaults) {
_super.apply(this, arguments);
}
ToDoRecordList.itemType = ToDo_Core_chModel.ToDoRecord;
return ToDoRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_Core_chModel.ToDoRecordList = ToDoRecordList;

});
define("ToDo_Core_ch.model$Excel_CategoriesList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_Core_ch.model$Excel_CategoriesRec"], function (exports, OutSystems, ToDo_Core_chModel) {
var OS = OutSystems.Internal;
var Excel_CategoriesList = (function (_super) {
__extends(Excel_CategoriesList, _super);
function Excel_CategoriesList(defaults) {
_super.apply(this, arguments);
}
Excel_CategoriesList.itemType = ToDo_Core_chModel.Excel_CategoriesRec;
return Excel_CategoriesList;
})(OS.DataTypes.GenericRecordList);
ToDo_Core_chModel.Excel_CategoriesList = Excel_CategoriesList;

});
define("ToDo_Core_ch.model$CategoryList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_Core_ch.model$CategoryRec"], function (exports, OutSystems, ToDo_Core_chModel) {
var OS = OutSystems.Internal;
var CategoryList = (function (_super) {
__extends(CategoryList, _super);
function CategoryList(defaults) {
_super.apply(this, arguments);
}
CategoryList.itemType = ToDo_Core_chModel.CategoryRec;
return CategoryList;
})(OS.DataTypes.GenericRecordList);
ToDo_Core_chModel.CategoryList = CategoryList;

});
define("ToDo_Core_ch.model$ResourceRecord", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_Core_ch.model$ResourceRec"], function (exports, OutSystems, ToDo_Core_chModel) {
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
ToDo_Core_chModel.ResourceRecord = ResourceRecord;

});
define("ToDo_Core_ch.model$ResourceRecordList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_Core_ch.model$ResourceRecord"], function (exports, OutSystems, ToDo_Core_chModel) {
var OS = OutSystems.Internal;
var ResourceRecordList = (function (_super) {
__extends(ResourceRecordList, _super);
function ResourceRecordList(defaults) {
_super.apply(this, arguments);
}
ResourceRecordList.itemType = ToDo_Core_chModel.ResourceRecord;
return ResourceRecordList;
})(OS.DataTypes.GenericRecordList);
ToDo_Core_chModel.ResourceRecordList = ResourceRecordList;

});
define("ToDo_Core_ch.model$UserList", ["exports", "OutSystems/ClientRuntime/Main", "ServiceCenter.model", "ToDo_Core_ch.model", "ServiceCenter.model$UserRec", "ToDo_Core_ch.referencesHealth", "ToDo_Core_ch.referencesHealth$ServiceCenter"], function (exports, OutSystems, ServiceCenterModel, ToDo_Core_chModel) {
var OS = OutSystems.Internal;
var UserList = (function (_super) {
__extends(UserList, _super);
function UserList(defaults) {
_super.apply(this, arguments);
}
UserList.itemType = ServiceCenterModel.UserRec;
return UserList;
})(OS.DataTypes.GenericRecordList);
ToDo_Core_chModel.UserList = UserList;

});
define("ToDo_Core_ch.model$ResourceList", ["exports", "OutSystems/ClientRuntime/Main", "ToDo_Core_ch.model", "ToDo_Core_ch.model$ResourceRec"], function (exports, OutSystems, ToDo_Core_chModel) {
var OS = OutSystems.Internal;
var ResourceList = (function (_super) {
__extends(ResourceList, _super);
function ResourceList(defaults) {
_super.apply(this, arguments);
}
ResourceList.itemType = ToDo_Core_chModel.ResourceRec;
return ResourceList;
})(OS.DataTypes.GenericRecordList);
ToDo_Core_chModel.ResourceList = ResourceList;

});
define("ToDo_Core_ch.model", ["exports", "OutSystems/ClientRuntime/Main"], function (exports, OutSystems) {
var OS = OutSystems.Internal;
var ToDo_Core_chModel = exports;
Object.defineProperty(ToDo_Core_chModel, "module", {
get: function () {
return OS.ApplicationInfo.getModules()["2a79c321-b6a5-4bdf-b927-5388c9dd077e"];
}
});

ToDo_Core_chModel.staticEntities = {};
ToDo_Core_chModel.staticEntities.resourceType = {};
var getResourceTypeRecord = function (record) {
return ToDo_Core_chModel.module.staticEntities["441ea748-8f47-460e-b472-1c796aca9392"][record];
};
Object.defineProperty(ToDo_Core_chModel.staticEntities.resourceType, "image", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getResourceTypeRecord("225ff9cc-d59c-42f9-a76a-fa464ce3a9d0"));
}
});

Object.defineProperty(ToDo_Core_chModel.staticEntities.resourceType, "other", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getResourceTypeRecord("e27c52a8-3e5e-49c6-9267-db90bab3e0bd"));
}
});

Object.defineProperty(ToDo_Core_chModel.staticEntities.resourceType, "audio", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getResourceTypeRecord("f4dab67f-b982-466e-9324-babddc9011ed"));
}
});

ToDo_Core_chModel.staticEntities.priority = {};
var getPriorityRecord = function (record) {
return ToDo_Core_chModel.module.staticEntities["b0fc1c18-b26b-4b40-9adc-e63c59a5cda3"][record];
};
Object.defineProperty(ToDo_Core_chModel.staticEntities.priority, "high", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getPriorityRecord("2240094a-5323-47cd-8cae-32a59c72aac1"));
}
});

Object.defineProperty(ToDo_Core_chModel.staticEntities.priority, "low", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getPriorityRecord("83c382ef-9e6b-4701-8bff-0b1f8f021224"));
}
});

Object.defineProperty(ToDo_Core_chModel.staticEntities.priority, "medium", {
get: function () {
return OS.BuiltinFunctions.textToInteger(getPriorityRecord("e6044f89-022e-4c8e-8233-d868df901c94"));
}
});

});
