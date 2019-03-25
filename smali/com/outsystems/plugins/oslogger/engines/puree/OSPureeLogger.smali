.class public Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;
.super Lcom/cookpad/puree/Puree;
.source "OSPureeLogger.java"

# interfaces
.implements Lcom/outsystems/plugins/oslogger/engines/OSLoggerEngine;


# static fields
.field private static instance:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;


# instance fields
.field private client:Lokhttp3/OkHttpClient;

.field private final consoleOutput:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeConsoleOutput;

.field private final serverOutput:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 36
    invoke-direct {p0}, Lcom/cookpad/puree/Puree;-><init>()V

    .line 38
    sget-object v1, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;->instance:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;

    if-eqz v1, :cond_0

    .line 39
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Use getInstance() method to get the single instance of this class."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_0
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v2, Lcom/outsystems/plugins/oslogger/helpers/OSUserAgentInterceptor;

    invoke-direct {v2, p2}, Lcom/outsystems/plugins/oslogger/helpers/OSUserAgentInterceptor;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/outsystems/plugins/oslogger/helpers/OSWebViewCookieHandler;

    invoke-direct {v2}, Lcom/outsystems/plugins/oslogger/helpers/OSWebViewCookieHandler;-><init>()V

    .line 44
    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;->client:Lokhttp3/OkHttpClient;

    .line 46
    new-instance v1, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeConsoleOutput;

    invoke-direct {v1}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeConsoleOutput;-><init>()V

    iput-object v1, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;->consoleOutput:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeConsoleOutput;

    .line 47
    new-instance v1, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;

    iget-object v2, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;->client:Lokhttp3/OkHttpClient;

    invoke-direct {v1, v2, p1, p3, p4}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;-><init>(Lokhttp3/OkHttpClient;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;->serverOutput:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;

    .line 49
    new-instance v1, Lcom/cookpad/puree/PureeConfiguration$Builder;

    invoke-direct {v1, p1}, Lcom/cookpad/puree/PureeConfiguration$Builder;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLog;

    iget-object v3, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;->consoleOutput:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeConsoleOutput;

    new-array v4, v7, [Lcom/cookpad/puree/PureeFilter;

    new-instance v5, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeConsoleFilter;

    invoke-direct {v5}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeConsoleFilter;-><init>()V

    aput-object v5, v4, v6

    .line 50
    invoke-virtual {v3, v4}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeConsoleOutput;->withFilters([Lcom/cookpad/puree/PureeFilter;)Lcom/cookpad/puree/outputs/PureeOutput;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cookpad/puree/PureeConfiguration$Builder;->register(Ljava/lang/Class;Lcom/cookpad/puree/outputs/PureeOutput;)Lcom/cookpad/puree/PureeConfiguration$Builder;

    move-result-object v1

    const-class v2, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLog;

    iget-object v3, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;->serverOutput:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;

    new-array v4, v7, [Lcom/cookpad/puree/PureeFilter;

    new-instance v5, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerFilter;

    invoke-direct {v5}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerFilter;-><init>()V

    aput-object v5, v4, v6

    .line 51
    invoke-virtual {v3, v4}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->withFilters([Lcom/cookpad/puree/PureeFilter;)Lcom/cookpad/puree/outputs/PureeOutput;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/cookpad/puree/PureeConfiguration$Builder;->register(Ljava/lang/Class;Lcom/cookpad/puree/outputs/PureeOutput;)Lcom/cookpad/puree/PureeConfiguration$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/cookpad/puree/PureeConfiguration$Builder;->build()Lcom/cookpad/puree/PureeConfiguration;

    move-result-object v0

    .line 53
    .local v0, "pureeConfiguration":Lcom/cookpad/puree/PureeConfiguration;
    invoke-static {v0}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;->initialize(Lcom/cookpad/puree/PureeConfiguration;)V

    .line 54
    return-void
.end method

.method public static getInstance()Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;->instance:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
    .line 60
    const-class v1, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;->instance:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;->instance:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :cond_0
    monitor-exit v1

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static mergeDeviceInfo(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p0    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 71
    invoke-static {}, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->getInstance()Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->getDeviceInfo()Ljava/util/Map;

    move-result-object p0

    .line 75
    :goto_0
    return-object p0

    .line 74
    :cond_0
    invoke-static {}, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->getInstance()Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->getDeviceInfo()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public processLog(Ljava/lang/String;Ljava/lang/String;Lcom/outsystems/plugins/oslogger/enums/OSLogType;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "moduleName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "logType"    # Lcom/outsystems/plugins/oslogger/enums/OSLogType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "stack"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/outsystems/plugins/oslogger/enums/OSLogType;",
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
    .line 80
    .local p4, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLog;

    invoke-virtual {p3}, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->ordinal()I

    move-result v3

    sget-object v1, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->ERROR:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    if-eq p3, v1, :cond_0

    sget-object v1, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->FATAL:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    if-ne p3, v1, :cond_1

    :cond_0
    invoke-static {p4}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;->mergeDeviceInfo(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    :goto_0
    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLog;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;->send(Lcom/cookpad/puree/PureeLog;)V

    .line 81
    return-void

    :cond_1
    move-object v4, p4

    .line 80
    goto :goto_0
.end method

.method public setSSLSecurity(Lokhttp3/CertificatePinner;)V
    .locals 2
    .param p1, "certificatePinner"    # Lokhttp3/CertificatePinner;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;->client:Lokhttp3/OkHttpClient;

    .line 88
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;->serverOutput:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;

    iget-object v1, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLogger;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0, v1}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->setClient(Lokhttp3/OkHttpClient;)V

    .line 89
    return-void
.end method
