.class public Lcom/cookpad/puree/Puree;
.super Ljava/lang/Object;
.source "Puree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cookpad/puree/Puree$NotInitializedException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static logger:Lcom/cookpad/puree/PureeLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/cookpad/puree/Puree;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cookpad/puree/Puree;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkIfPureeHasInitialized()V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/cookpad/puree/Puree;->logger:Lcom/cookpad/puree/PureeLogger;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/cookpad/puree/Puree$NotInitializedException;

    invoke-direct {v0}, Lcom/cookpad/puree/Puree$NotInitializedException;-><init>()V

    throw v0

    .line 88
    :cond_0
    return-void
.end method

.method public static discardBufferedLogs()V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lcom/cookpad/puree/Puree;->checkIfPureeHasInitialized()V

    .line 67
    sget-object v0, Lcom/cookpad/puree/Puree;->logger:Lcom/cookpad/puree/PureeLogger;

    invoke-virtual {v0}, Lcom/cookpad/puree/PureeLogger;->discardBufferedLogs()V

    .line 68
    return-void
.end method

.method public static dump()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/cookpad/puree/Puree;->getBufferedLogs()Lcom/cookpad/puree/storage/Records;

    move-result-object v0

    invoke-static {v0}, Lcom/cookpad/puree/internal/LogDumper;->out(Lcom/cookpad/puree/storage/Records;)V

    .line 50
    return-void
.end method

.method public static flush()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/cookpad/puree/Puree;->checkIfPureeHasInitialized()V

    .line 45
    sget-object v0, Lcom/cookpad/puree/Puree;->logger:Lcom/cookpad/puree/PureeLogger;

    invoke-virtual {v0}, Lcom/cookpad/puree/PureeLogger;->flush()V

    .line 46
    return-void
.end method

.method public static getBufferedLogs()Lcom/cookpad/puree/storage/Records;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/cookpad/puree/Puree;->checkIfPureeHasInitialized()V

    .line 59
    sget-object v0, Lcom/cookpad/puree/Puree;->logger:Lcom/cookpad/puree/PureeLogger;

    invoke-virtual {v0}, Lcom/cookpad/puree/PureeLogger;->getBufferedLogs()Lcom/cookpad/puree/storage/Records;

    move-result-object v0

    return-object v0
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/cookpad/puree/Puree;->logger:Lcom/cookpad/puree/PureeLogger;

    invoke-virtual {v0}, Lcom/cookpad/puree/PureeLogger;->getExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized initialize(Lcom/cookpad/puree/PureeConfiguration;)V
    .locals 3
    .param p0, "conf"    # Lcom/cookpad/puree/PureeConfiguration;

    .prologue
    .line 18
    const-class v1, Lcom/cookpad/puree/Puree;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/cookpad/puree/Puree;->logger:Lcom/cookpad/puree/PureeLogger;

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lcom/cookpad/puree/Puree;->TAG:Ljava/lang/String;

    const-string v2, "Puree has already been initialized; re-initialize it with the configuration"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/cookpad/puree/PureeConfiguration;->createPureeLogger()Lcom/cookpad/puree/PureeLogger;

    move-result-object v0

    invoke-static {v0}, Lcom/cookpad/puree/Puree;->setPureeLogger(Lcom/cookpad/puree/PureeLogger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v1

    return-void

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static send(Lcom/cookpad/puree/PureeLog;)V
    .locals 1
    .param p0, "log"    # Lcom/cookpad/puree/PureeLog;

    .prologue
    .line 36
    invoke-static {}, Lcom/cookpad/puree/Puree;->checkIfPureeHasInitialized()V

    .line 37
    sget-object v0, Lcom/cookpad/puree/Puree;->logger:Lcom/cookpad/puree/PureeLogger;

    invoke-virtual {v0, p0}, Lcom/cookpad/puree/PureeLogger;->send(Lcom/cookpad/puree/PureeLog;)V

    .line 38
    return-void
.end method

.method public static setPureeLogger(Lcom/cookpad/puree/PureeLogger;)V
    .locals 0
    .param p0, "instance"    # Lcom/cookpad/puree/PureeLogger;

    .prologue
    .line 25
    sput-object p0, Lcom/cookpad/puree/Puree;->logger:Lcom/cookpad/puree/PureeLogger;

    .line 26
    return-void
.end method

.method public static truncateBufferedLogs(I)V
    .locals 1
    .param p0, "truncateThresholdInRows"    # I

    .prologue
    .line 76
    invoke-static {}, Lcom/cookpad/puree/Puree;->checkIfPureeHasInitialized()V

    .line 77
    sget-object v0, Lcom/cookpad/puree/Puree;->logger:Lcom/cookpad/puree/PureeLogger;

    invoke-virtual {v0, p0}, Lcom/cookpad/puree/PureeLogger;->truncateBufferedLogs(I)V

    .line 78
    return-void
.end method
