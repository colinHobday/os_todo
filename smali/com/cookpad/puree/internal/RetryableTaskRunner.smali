.class public Lcom/cookpad/puree/internal/RetryableTaskRunner;
.super Ljava/lang/Object;
.source "RetryableTaskRunner.java"


# instance fields
.field private backoffCounter:Lcom/cookpad/puree/internal/BackoffCounter;

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private future:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private task:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;IILjava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "intervalMillis"    # I
    .param p3, "maxRetryCount"    # I
    .param p4, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/cookpad/puree/internal/BackoffCounter;

    invoke-direct {v0, p2, p3}, Lcom/cookpad/puree/internal/BackoffCounter;-><init>(II)V

    iput-object v0, p0, Lcom/cookpad/puree/internal/RetryableTaskRunner;->backoffCounter:Lcom/cookpad/puree/internal/BackoffCounter;

    .line 19
    iput-object p4, p0, Lcom/cookpad/puree/internal/RetryableTaskRunner;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    iput-object p1, p0, Lcom/cookpad/puree/internal/RetryableTaskRunner;->task:Ljava/lang/Runnable;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cookpad/puree/internal/RetryableTaskRunner;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 22
    return-void
.end method

.method private startDelayed()V
    .locals 5

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cookpad/puree/internal/RetryableTaskRunner;->future:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/cookpad/puree/internal/RetryableTaskRunner;->future:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/cookpad/puree/internal/RetryableTaskRunner;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/cookpad/puree/internal/RetryableTaskRunner;->task:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/cookpad/puree/internal/RetryableTaskRunner;->backoffCounter:Lcom/cookpad/puree/internal/BackoffCounter;

    invoke-virtual {v2}, Lcom/cookpad/puree/internal/BackoffCounter;->timeInMillis()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/cookpad/puree/internal/RetryableTaskRunner;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 37
    return-void
.end method


# virtual methods
.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 40
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/cookpad/puree/internal/RetryableTaskRunner;->future:Ljava/util/concurrent/ScheduledFuture;

    .line 41
    iget-object v0, p0, Lcom/cookpad/puree/internal/RetryableTaskRunner;->backoffCounter:Lcom/cookpad/puree/internal/BackoffCounter;

    invoke-virtual {v0}, Lcom/cookpad/puree/internal/BackoffCounter;->resetRetryCount()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized retryLater()V
    .locals 1

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cookpad/puree/internal/RetryableTaskRunner;->backoffCounter:Lcom/cookpad/puree/internal/BackoffCounter;

    invoke-virtual {v0}, Lcom/cookpad/puree/internal/BackoffCounter;->getMaxRetryCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/cookpad/puree/internal/RetryableTaskRunner;->startDelayed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :goto_0
    monitor-exit p0

    return-void

    .line 50
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cookpad/puree/internal/RetryableTaskRunner;->backoffCounter:Lcom/cookpad/puree/internal/BackoffCounter;

    invoke-virtual {v0}, Lcom/cookpad/puree/internal/BackoffCounter;->isRemainingRetryCount()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/cookpad/puree/internal/RetryableTaskRunner;->backoffCounter:Lcom/cookpad/puree/internal/BackoffCounter;

    invoke-virtual {v0}, Lcom/cookpad/puree/internal/BackoffCounter;->incrementRetryCount()V

    .line 52
    invoke-direct {p0}, Lcom/cookpad/puree/internal/RetryableTaskRunner;->startDelayed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 54
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/cookpad/puree/internal/RetryableTaskRunner;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized tryToStart()V
    .locals 1

    .prologue
    .line 25
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/cookpad/puree/internal/RetryableTaskRunner;->future:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 30
    :goto_0
    monitor-exit p0

    return-void

    .line 28
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/cookpad/puree/internal/RetryableTaskRunner;->backoffCounter:Lcom/cookpad/puree/internal/BackoffCounter;

    invoke-virtual {v0}, Lcom/cookpad/puree/internal/BackoffCounter;->resetRetryCount()V

    .line 29
    invoke-direct {p0}, Lcom/cookpad/puree/internal/RetryableTaskRunner;->startDelayed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
