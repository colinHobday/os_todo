.class public Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;
.super Lcom/cookpad/puree/outputs/PureeBufferedOutput;
.source "OSPureeServerOutput.java"


# static fields
.field private static final DEFAULT_BATCH_SIZE:I = 0xa

.field private static final DEFAULT_FLUSH_INTERVAL:I = 0x1388

.field private static final DEFAULT_NUMBER_OF_RETRIES:I = -0x1

.field private static final HEADER_DEVICE_UUID:Ljava/lang/String; = "outsystems-device-uuid"

.field private static final JSON:Lokhttp3/MediaType;

.field private static final MAX_LOG_CAPACITY:I = 0x3e8

.field private static final TYPE:Ljava/lang/String; = "server"


# instance fields
.field private final applicationName:Ljava/lang/String;

.field private batchSize:I

.field private final broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private client:Lokhttp3/OkHttpClient;

.field private connected:Z

.field private final context:Landroid/content/Context;

.field private flushInterval:I

.field private final hostname:Ljava/lang/String;

.field private numberOfRetries:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->JSON:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "client"    # Lokhttp3/OkHttpClient;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
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
    .line 58
    invoke-direct {p0}, Lcom/cookpad/puree/outputs/PureeBufferedOutput;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->client:Lokhttp3/OkHttpClient;

    .line 60
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->context:Landroid/content/Context;

    .line 61
    iput-object p3, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->hostname:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->applicationName:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput$1;

    invoke-direct {v0, p0}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput$1;-><init>(Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;)V

    iput-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    const/16 v0, 0x1388

    iput v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->flushInterval:I

    .line 82
    const/16 v0, 0xa

    iput v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->batchSize:I

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->numberOfRetries:I

    .line 85
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "networkEvent"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->setConnected(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;)Z
    .locals 1
    .param p0, "x0"    # Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->isConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;)V
    .locals 0
    .param p0, "x0"    # Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->truncateLogs()V

    return-void
.end method

.method static synthetic access$300(Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;)Lcom/cookpad/puree/storage/PureeStorage;
    .locals 1
    .param p0, "x0"    # Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    return-object v0
.end method

.method static synthetic access$400(Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;)Lcom/cookpad/puree/storage/PureeStorage;
    .locals 1
    .param p0, "x0"    # Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    return-object v0
.end method

.method private buildUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->applicationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/moduleservices/log?clientTimeInMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized isConnected()Z
    .locals 1

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setConnected(Z)V
    .locals 1
    .param p1, "connected"    # Z

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->connected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private truncateLogs()V
    .locals 2

    .prologue
    const/16 v1, 0x3e8

    .line 168
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    invoke-interface {v0}, Lcom/cookpad/puree/storage/PureeStorage;->lock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    invoke-interface {v0}, Lcom/cookpad/puree/storage/PureeStorage;->count()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 174
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    invoke-interface {v0, v1}, Lcom/cookpad/puree/storage/PureeStorage;->truncateBufferedLogs(I)V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    invoke-interface {v0}, Lcom/cookpad/puree/storage/PureeStorage;->unlock()V

    goto :goto_0
.end method


# virtual methods
.method public configure(Lcom/cookpad/puree/outputs/OutputConfiguration;)Lcom/cookpad/puree/outputs/OutputConfiguration;
    .locals 1
    .param p1, "conf"    # Lcom/cookpad/puree/outputs/OutputConfiguration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 155
    iget v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->flushInterval:I

    invoke-virtual {p1, v0}, Lcom/cookpad/puree/outputs/OutputConfiguration;->setFlushIntervalMillis(I)V

    .line 157
    iget v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->batchSize:I

    invoke-virtual {p1, v0}, Lcom/cookpad/puree/outputs/OutputConfiguration;->setLogsPerRequest(I)V

    .line 159
    iget v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->numberOfRetries:I

    invoke-virtual {p1, v0}, Lcom/cookpad/puree/outputs/OutputConfiguration;->setMaxRetryCount(I)V

    .line 160
    return-object p1
.end method

.method public emit(Lcom/google/gson/JsonArray;Lcom/cookpad/puree/async/AsyncResult;)V
    .locals 5
    .param p1, "jsonArray"    # Lcom/google/gson/JsonArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "result"    # Lcom/cookpad/puree/async/AsyncResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    sget-object v2, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->JSON:Lokhttp3/MediaType;

    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 103
    .local v0, "body":Lokhttp3/RequestBody;
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 104
    invoke-direct {p0}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->buildUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    const-string v3, "outsystems-device-uuid"

    .line 107
    invoke-static {}, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->getInstance()Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/outsystems/plugins/oslogger/helpers/OSDeviceInfo;->getDeviceUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 108
    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 111
    .local v1, "request":Lokhttp3/Request;
    iget-object v2, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    new-instance v3, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput$2;

    invoke-direct {v3, p0, p2}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput$2;-><init>(Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;Lcom/cookpad/puree/async/AsyncResult;)V

    invoke-interface {v2, v3}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 149
    return-void
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getBatchSize()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->batchSize:I

    return v0
.end method

.method public getFlushInterval()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->flushInterval:I

    return v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfRetries()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->numberOfRetries:I

    return v0
.end method

.method public initialize(Lcom/cookpad/puree/PureeLogger;)V
    .locals 0
    .param p1, "logger"    # Lcom/cookpad/puree/PureeLogger;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->initialize(Lcom/cookpad/puree/PureeLogger;)V

    .line 91
    invoke-direct {p0}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->truncateLogs()V

    .line 92
    return-void
.end method

.method public setClient(Lokhttp3/OkHttpClient;)V
    .locals 0
    .param p1, "client"    # Lokhttp3/OkHttpClient;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->client:Lokhttp3/OkHttpClient;

    .line 190
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 216
    return-void
.end method

.method public type()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 97
    const-string v0, "server"

    return-object v0
.end method
