.class public Lcom/outsystems/plugins/crashhandler/engines/OSCrashHandler;
.super Ljava/lang/Object;
.source "OSCrashHandler.java"

# interfaces
.implements Lcom/outsystems/plugins/crashhandler/engines/OSCrashHandlerEngine;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field protected final defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/outsystems/plugins/oslogger/OSLogger;->getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/crashhandler/engines/OSCrashHandler;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    .line 23
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/crashhandler/engines/OSCrashHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 24
    return-void
.end method


# virtual methods
.method public deploy()V
    .locals 3

    .prologue
    .line 28
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/outsystems/plugins/crashhandler/engines/OSCrashHandler;

    if-nez v0, :cond_0

    .line 29
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/outsystems/plugins/crashhandler/engines/OSCrashHandler;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v1, "OSCrashHandler is already deployed, doing nothing"

    const-string v2, "OSCrashHandler"

    invoke-interface {v0, v1, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "thread"    # Ljava/lang/Thread;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "throwable"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    iget-object v0, p0, Lcom/outsystems/plugins/crashhandler/engines/OSCrashHandler;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A fatal error has occurred. Please contact OutSystems support: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OSCrashHandler"

    invoke-interface {v0, v1, v2, p2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logFatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    iget-object v0, p0, Lcom/outsystems/plugins/crashhandler/engines/OSCrashHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/outsystems/plugins/crashhandler/engines/OSCrashHandler;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 44
    :cond_0
    return-void
.end method
