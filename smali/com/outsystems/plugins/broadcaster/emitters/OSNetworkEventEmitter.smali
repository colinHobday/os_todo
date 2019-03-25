.class public Lcom/outsystems/plugins/broadcaster/emitters/OSNetworkEventEmitter;
.super Landroid/content/BroadcastReceiver;
.source "OSNetworkEventEmitter.java"

# interfaces
.implements Lcom/outsystems/plugins/broadcaster/interfaces/EventEmitter;


# static fields
.field private static final INITIAL_CAPACITY:I = 0x2


# instance fields
.field private final broadcasterListener:Lcom/outsystems/plugins/broadcaster/interfaces/BroadcasterListener;

.field private final context:Landroid/content/Context;

.field private isRunning:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/outsystems/plugins/broadcaster/interfaces/BroadcasterListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "broadcasterListener"    # Lcom/outsystems/plugins/broadcaster/interfaces/BroadcasterListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/broadcaster/emitters/OSNetworkEventEmitter;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/outsystems/plugins/broadcaster/emitters/OSNetworkEventEmitter;->broadcasterListener:Lcom/outsystems/plugins/broadcaster/interfaces/BroadcasterListener;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/outsystems/plugins/broadcaster/emitters/OSNetworkEventEmitter;->isRunning:Z

    .line 36
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 42
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 44
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    new-instance v2, Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 45
    .local v2, "networkData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "networkStatus"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "networkOnline"

    :goto_0
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v3, Lcom/outsystems/plugins/broadcaster/events/OSNetworkEvent;

    invoke-direct {v3, v2}, Lcom/outsystems/plugins/broadcaster/events/OSNetworkEvent;-><init>(Ljava/util/Map;)V

    .line 48
    .local v3, "networkEvent":Lcom/outsystems/plugins/broadcaster/interfaces/Event;
    iget-object v4, p0, Lcom/outsystems/plugins/broadcaster/emitters/OSNetworkEventEmitter;->broadcasterListener:Lcom/outsystems/plugins/broadcaster/interfaces/BroadcasterListener;

    invoke-interface {v4, v3}, Lcom/outsystems/plugins/broadcaster/interfaces/BroadcasterListener;->notifyEvent(Lcom/outsystems/plugins/broadcaster/interfaces/Event;)V

    .line 49
    return-void

    .line 45
    .end local v3    # "networkEvent":Lcom/outsystems/plugins/broadcaster/interfaces/Event;
    :cond_0
    const-string v4, "networkOffline"

    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 3

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/outsystems/plugins/broadcaster/emitters/OSNetworkEventEmitter;->isRunning:Z

    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/outsystems/plugins/broadcaster/emitters/OSNetworkEventEmitter;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/outsystems/plugins/broadcaster/emitters/OSNetworkEventEmitter;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_0
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/outsystems/plugins/broadcaster/emitters/OSNetworkEventEmitter;->isRunning:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/outsystems/plugins/broadcaster/emitters/OSNetworkEventEmitter;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/outsystems/plugins/broadcaster/emitters/OSNetworkEventEmitter;->isRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
