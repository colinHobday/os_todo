try {require(["OutSystems/ClientRuntime/Main", "ToDo_ch.appDefinition"], function (OutSystems, ToDo_chAppDefinition) {
var OS = OutSystems.Internal;
OS.ErrorScreen.initializeErrorPage(ToDo_chAppDefinition, OS.Application);
});
} catch (ex) {
console.error(e);
}

