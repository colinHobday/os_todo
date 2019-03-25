.class public Lcom/outsystems/plugins/crashhandler/OSCrashHandlerPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "OSCrashHandlerPlugin.java"


# static fields
.field public static final CORDOVA_SERVICE_NAME:Ljava/lang/String; = "OSCrashHandler"


# instance fields
.field private logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 14
    invoke-static {}, Lcom/outsystems/plugins/oslogger/OSLogger;->getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/crashhandler/OSCrashHandlerPlugin;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    return-void
.end method


# virtual methods
.method protected pluginInitialize()V
    .locals 4

    .prologue
    .line 18
    iget-object v1, p0, Lcom/outsystems/plugins/crashhandler/OSCrashHandlerPlugin;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v2, "pluginInitialize: started"

    const-string v3, "OSCrashHandler"

    invoke-interface {v1, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/outsystems/plugins/crashhandler/engines/OSCrashHandler;

    invoke-direct {v0}, Lcom/outsystems/plugins/crashhandler/engines/OSCrashHandler;-><init>()V

    .line 21
    .local v0, "crashHandlerEngine":Lcom/outsystems/plugins/crashhandler/engines/OSCrashHandlerEngine;
    invoke-interface {v0}, Lcom/outsystems/plugins/crashhandler/engines/OSCrashHandlerEngine;->deploy()V

    .line 23
    iget-object v1, p0, Lcom/outsystems/plugins/crashhandler/OSCrashHandlerPlugin;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v2, "pluginInitialize: finished"

    const-string v3, "OSCrashHandler"

    invoke-interface {v1, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method
