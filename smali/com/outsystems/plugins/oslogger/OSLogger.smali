.class public Lcom/outsystems/plugins/oslogger/OSLogger;
.super Ljava/lang/Object;
.source "OSLogger.java"

# interfaces
.implements Lcom/outsystems/plugins/oslogger/interfaces/Logger;


# static fields
.field private static instance:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

.field private static loggerEngine:Lcom/outsystems/plugins/oslogger/engines/OSLoggerEngine;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "userAgent"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "hostname"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "applicationName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/outsystems/plugins/oslogger/OSLogger;->instance:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Use getInstance() method to get the single instance of this class."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    invoke-static {p1}, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->init(Landroid/content/Context;)V

    .line 39
    invoke-static {p1, p2, p3, p4}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;->getInstance()Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;

    move-result-object v0

    sput-object v0, Lcom/outsystems/plugins/oslogger/OSLogger;->loggerEngine:Lcom/outsystems/plugins/oslogger/engines/OSLoggerEngine;

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/outsystems/plugins/oslogger/OSLogger;->instance:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    return-object v0
.end method

.method static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "userAgent"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "hostname"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "applicationName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 47
    const-class v1, Lcom/outsystems/plugins/oslogger/OSLogger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/outsystems/plugins/oslogger/OSLogger;->instance:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/outsystems/plugins/oslogger/OSLogger;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/outsystems/plugins/oslogger/OSLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/outsystems/plugins/oslogger/OSLogger;->instance:Lcom/outsystems/plugins/oslogger/interfaces/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    monitor-exit v1

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static setSSLSecurity(Lokhttp3/CertificatePinner;)V
    .locals 1
    .param p0, "certificatePinner"    # Lokhttp3/CertificatePinner;

    .prologue
    .line 57
    sget-object v0, Lcom/outsystems/plugins/oslogger/OSLogger;->loggerEngine:Lcom/outsystems/plugins/oslogger/engines/OSLoggerEngine;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/outsystems/plugins/oslogger/OSLogger;->loggerEngine:Lcom/outsystems/plugins/oslogger/engines/OSLoggerEngine;

    invoke-interface {v0, p0}, Lcom/outsystems/plugins/oslogger/engines/OSLoggerEngine;->setSSLSecurity(Lokhttp3/CertificatePinner;)V

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "moduleName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 69
    sget-object v0, Lcom/outsystems/plugins/oslogger/OSLogger;->loggerEngine:Lcom/outsystems/plugins/oslogger/engines/OSLoggerEngine;

    sget-object v3, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->DEBUG:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/outsystems/plugins/oslogger/engines/OSLoggerEngine;->processLog(Ljava/lang/String;Ljava/lang/String;Lcom/outsystems/plugins/oslogger/enums/OSLogType;Ljava/util/Map;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "moduleName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 109
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/outsystems/plugins/oslogger/OSLogger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "moduleName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "stack"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/outsystems/plugins/oslogger/OSLogger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "moduleName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "throwable"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/outsystems/plugins/oslogger/OSLogger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public logError(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "moduleName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p3, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/outsystems/plugins/oslogger/OSLogger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public logError(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "moduleName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "stack"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    .local p3, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/outsystems/plugins/oslogger/OSLogger;->loggerEngine:Lcom/outsystems/plugins/oslogger/engines/OSLoggerEngine;

    sget-object v3, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->ERROR:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/outsystems/plugins/oslogger/engines/OSLoggerEngine;->processLog(Ljava/lang/String;Ljava/lang/String;Lcom/outsystems/plugins/oslogger/enums/OSLogType;Ljava/util/Map;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public logError(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "moduleName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "throwable"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    .local p3, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/outsystems/plugins/oslogger/OSLogger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public logFatal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "moduleName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 139
    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/outsystems/plugins/oslogger/OSLogger;->logFatal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public logFatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "moduleName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "stack"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/outsystems/plugins/oslogger/OSLogger;->logFatal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public logFatal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "moduleName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "throwable"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/outsystems/plugins/oslogger/OSLogger;->logFatal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public logFatal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "moduleName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p3, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/outsystems/plugins/oslogger/OSLogger;->logFatal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public logFatal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "moduleName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "stack"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    .local p3, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v0, Lcom/outsystems/plugins/oslogger/OSLogger;->loggerEngine:Lcom/outsystems/plugins/oslogger/engines/OSLoggerEngine;

    sget-object v3, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->FATAL:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/outsystems/plugins/oslogger/engines/OSLoggerEngine;->processLog(Ljava/lang/String;Ljava/lang/String;Lcom/outsystems/plugins/oslogger/enums/OSLogType;Ljava/util/Map;Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public logFatal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "moduleName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "throwable"    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    .local p3, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/outsystems/plugins/oslogger/OSLogger;->logFatal(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public logInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "moduleName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 74
    sget-object v0, Lcom/outsystems/plugins/oslogger/OSLogger;->loggerEngine:Lcom/outsystems/plugins/oslogger/engines/OSLoggerEngine;

    sget-object v3, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->INFO:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/outsystems/plugins/oslogger/engines/OSLoggerEngine;->processLog(Ljava/lang/String;Ljava/lang/String;Lcom/outsystems/plugins/oslogger/enums/OSLogType;Ljava/util/Map;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "moduleName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 64
    sget-object v0, Lcom/outsystems/plugins/oslogger/OSLogger;->loggerEngine:Lcom/outsystems/plugins/oslogger/engines/OSLoggerEngine;

    sget-object v3, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->VERBOSE:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/outsystems/plugins/oslogger/engines/OSLoggerEngine;->processLog(Ljava/lang/String;Ljava/lang/String;Lcom/outsystems/plugins/oslogger/enums/OSLogType;Ljava/util/Map;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public logWarning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "moduleName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 79
    sget-object v0, Lcom/outsystems/plugins/oslogger/OSLogger;->loggerEngine:Lcom/outsystems/plugins/oslogger/engines/OSLoggerEngine;

    sget-object v3, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->WARNING:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/outsystems/plugins/oslogger/engines/OSLoggerEngine;->processLog(Ljava/lang/String;Ljava/lang/String;Lcom/outsystems/plugins/oslogger/enums/OSLogType;Ljava/util/Map;Ljava/lang/String;)V

    .line 80
    return-void
.end method
