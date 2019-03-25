.class public abstract Lcom/cookpad/puree/outputs/PureeBufferedOutput;
.super Lcom/cookpad/puree/outputs/PureeOutput;
.source "PureeBufferedOutput.java"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field executor:Ljava/util/concurrent/ScheduledExecutorService;

.field flushTask:Lcom/cookpad/puree/internal/RetryableTaskRunner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/cookpad/puree/outputs/PureeOutput;-><init>()V

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/cookpad/puree/outputs/PureeBufferedOutput;)Lcom/cookpad/puree/storage/Records;
    .locals 1
    .param p0, "x0"    # Lcom/cookpad/puree/outputs/PureeBufferedOutput;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->getRecordsFromStorage()Lcom/cookpad/puree/storage/Records;

    move-result-object v0

    return-object v0
.end method

.method private getRecordsFromStorage()Lcom/cookpad/puree/storage/Records;
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    invoke-virtual {p0}, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->type()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->conf:Lcom/cookpad/puree/outputs/OutputConfiguration;

    invoke-virtual {v2}, Lcom/cookpad/puree/outputs/OutputConfiguration;->getLogsPerRequest()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/cookpad/puree/storage/PureeStorage;->select(Ljava/lang/String;I)Lcom/cookpad/puree/storage/Records;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract emit(Lcom/google/gson/JsonArray;Lcom/cookpad/puree/async/AsyncResult;)V
.end method

.method public emit(Lcom/google/gson/JsonObject;)V
    .locals 0
    .param p1, "jsonLog"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 113
    return-void
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/cookpad/puree/internal/PureeVerboseRunnable;

    new-instance v2, Lcom/cookpad/puree/outputs/PureeBufferedOutput$3;

    invoke-direct {v2, p0}, Lcom/cookpad/puree/outputs/PureeBufferedOutput$3;-><init>(Lcom/cookpad/puree/outputs/PureeBufferedOutput;)V

    invoke-direct {v1, v2}, Lcom/cookpad/puree/internal/PureeVerboseRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method public flushSync()V
    .locals 3

    .prologue
    .line 65
    iget-object v2, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    invoke-interface {v2}, Lcom/cookpad/puree/storage/PureeStorage;->lock()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->getRecordsFromStorage()Lcom/cookpad/puree/storage/Records;

    move-result-object v1

    .line 70
    .local v1, "records":Lcom/cookpad/puree/storage/Records;
    invoke-virtual {v1}, Lcom/cookpad/puree/storage/Records;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->flushTask:Lcom/cookpad/puree/internal/RetryableTaskRunner;

    invoke-virtual {v2}, Lcom/cookpad/puree/internal/RetryableTaskRunner;->reset()V

    .line 74
    iget-object v2, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    invoke-interface {v2}, Lcom/cookpad/puree/storage/PureeStorage;->unlock()V

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v1}, Lcom/cookpad/puree/storage/Records;->getJsonLogs()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 80
    .local v0, "jsonLogs":Lcom/google/gson/JsonArray;
    new-instance v2, Lcom/cookpad/puree/outputs/PureeBufferedOutput$4;

    invoke-direct {v2, p0, v1}, Lcom/cookpad/puree/outputs/PureeBufferedOutput$4;-><init>(Lcom/cookpad/puree/outputs/PureeBufferedOutput;Lcom/cookpad/puree/storage/Records;)V

    invoke-virtual {p0, v0, v2}, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->emit(Lcom/google/gson/JsonArray;Lcom/cookpad/puree/async/AsyncResult;)V

    goto :goto_0
.end method

.method public initialize(Lcom/cookpad/puree/PureeLogger;)V
    .locals 5
    .param p1, "logger"    # Lcom/cookpad/puree/PureeLogger;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/cookpad/puree/outputs/PureeOutput;->initialize(Lcom/cookpad/puree/PureeLogger;)V

    .line 30
    invoke-virtual {p1}, Lcom/cookpad/puree/PureeLogger;->getExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 31
    new-instance v0, Lcom/cookpad/puree/internal/RetryableTaskRunner;

    new-instance v1, Lcom/cookpad/puree/outputs/PureeBufferedOutput$1;

    invoke-direct {v1, p0}, Lcom/cookpad/puree/outputs/PureeBufferedOutput$1;-><init>(Lcom/cookpad/puree/outputs/PureeBufferedOutput;)V

    iget-object v2, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->conf:Lcom/cookpad/puree/outputs/OutputConfiguration;

    .line 36
    invoke-virtual {v2}, Lcom/cookpad/puree/outputs/OutputConfiguration;->getFlushIntervalMillis()I

    move-result v2

    iget-object v3, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->conf:Lcom/cookpad/puree/outputs/OutputConfiguration;

    invoke-virtual {v3}, Lcom/cookpad/puree/outputs/OutputConfiguration;->getMaxRetryCount()I

    move-result v3

    iget-object v4, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cookpad/puree/internal/RetryableTaskRunner;-><init>(Ljava/lang/Runnable;IILjava/util/concurrent/ScheduledExecutorService;)V

    iput-object v0, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->flushTask:Lcom/cookpad/puree/internal/RetryableTaskRunner;

    .line 37
    return-void
.end method

.method public receive(Lcom/google/gson/JsonObject;)V
    .locals 3
    .param p1, "jsonLog"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/cookpad/puree/internal/PureeVerboseRunnable;

    new-instance v2, Lcom/cookpad/puree/outputs/PureeBufferedOutput$2;

    invoke-direct {v2, p0, p1}, Lcom/cookpad/puree/outputs/PureeBufferedOutput$2;-><init>(Lcom/cookpad/puree/outputs/PureeBufferedOutput;Lcom/google/gson/JsonObject;)V

    invoke-direct {v1, v2}, Lcom/cookpad/puree/internal/PureeVerboseRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 51
    iget-object v0, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->flushTask:Lcom/cookpad/puree/internal/RetryableTaskRunner;

    invoke-virtual {v0}, Lcom/cookpad/puree/internal/RetryableTaskRunner;->tryToStart()V

    .line 52
    return-void
.end method
