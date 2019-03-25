.class Lcom/outsystems/plugins/oscache/cache/NativeCache$1;
.super Ljava/lang/Object;
.source "NativeCache.java"

# interfaces
.implements Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/outsystems/plugins/oscache/cache/NativeCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;


# direct methods
.method constructor <init>(Lcom/outsystems/plugins/oscache/cache/NativeCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/outsystems/plugins/oscache/cache/NativeCache;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onError(Ljava/lang/String;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentStatus:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->DOWNLOADING:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    invoke-interface {v0, p1}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->fireOnErrorEvent(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    invoke-interface {v0}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->fireOnFinishEvent()V

    .line 146
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->IDLE:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    invoke-static {v0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->access$100(Lcom/outsystems/plugins/oscache/cache/NativeCache;Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;)V

    .line 153
    :goto_0
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    iget-object v1, v1, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->access$000(Lcom/outsystems/plugins/oscache/cache/NativeCache;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_0
    monitor-exit p0

    return-void

    .line 150
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->UNCACHED:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    invoke-static {v0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->access$100(Lcom/outsystems/plugins/oscache/cache/NativeCache;Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFinish(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentStatus:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->DOWNLOADING:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    if-ne v0, v1, :cond_1

    .line 162
    if-eqz p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->UPDATEREADY:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    invoke-static {v0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->access$100(Lcom/outsystems/plugins/oscache/cache/NativeCache;Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;)V

    .line 164
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->swapCache()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    const-string v1, "Inconsistency on cache version"

    invoke-interface {v0, v1}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->fireOnErrorEvent(Ljava/lang/String;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    invoke-static {v0}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->access$200(Lcom/outsystems/plugins/oscache/cache/NativeCache;)Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v0

    const-string v1, "startCaching finished"

    const-string v2, "OSCache"

    invoke-interface {v0, v1, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    invoke-interface {v0}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->fireOnFinishEvent()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_1
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onProgress(III)V
    .locals 8
    .param p1, "initial"    # I
    .param p2, "loaded"    # I
    .param p3, "total"    # I

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    iget-object v2, v2, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentStatus:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    sget-object v3, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->DOWNLOADING:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    if-ne v2, v3, :cond_0

    .line 128
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    iget-object v2, v2, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    int-to-long v4, p2

    int-to-long v6, p3

    invoke-interface {v2, v4, v5, v6, v7}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->fireOnProgressEvent(JJ)V

    .line 131
    :cond_0
    if-ge p1, p2, :cond_1

    if-ge p2, p3, :cond_1

    .line 132
    sub-int v2, p3, p1

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 133
    .local v0, "checkpointRate":I
    sub-int v1, p2, p1

    .line 135
    .local v1, "progress":I
    rem-int v2, v1, v0

    if-nez v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    iget-object v3, v3, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->access$000(Lcom/outsystems/plugins/oscache/cache/NativeCache;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v0    # "checkpointRate":I
    .end local v1    # "progress":I
    :cond_1
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
