.class public Lcom/outsystems/plugins/broadcaster/OSBroadcaster;
.super Ljava/lang/Object;
.source "OSBroadcaster.java"

# interfaces
.implements Lcom/outsystems/plugins/broadcaster/interfaces/BroadcasterListener;


# instance fields
.field private final context:Landroid/content/Context;

.field private networkEventEmitter:Lcom/outsystems/plugins/broadcaster/interfaces/EventEmitter;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/broadcaster/OSBroadcaster;->context:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/outsystems/plugins/broadcaster/emitters/OSNetworkEventEmitter;

    iget-object v1, p0, Lcom/outsystems/plugins/broadcaster/OSBroadcaster;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/outsystems/plugins/broadcaster/emitters/OSNetworkEventEmitter;-><init>(Landroid/content/Context;Lcom/outsystems/plugins/broadcaster/interfaces/BroadcasterListener;)V

    iput-object v0, p0, Lcom/outsystems/plugins/broadcaster/OSBroadcaster;->networkEventEmitter:Lcom/outsystems/plugins/broadcaster/interfaces/EventEmitter;

    .line 30
    iget-object v0, p0, Lcom/outsystems/plugins/broadcaster/OSBroadcaster;->networkEventEmitter:Lcom/outsystems/plugins/broadcaster/interfaces/EventEmitter;

    invoke-interface {v0}, Lcom/outsystems/plugins/broadcaster/interfaces/EventEmitter;->start()V

    .line 31
    return-void
.end method


# virtual methods
.method public notifyEvent(Lcom/outsystems/plugins/broadcaster/interfaces/Event;)V
    .locals 2
    .param p1, "event"    # Lcom/outsystems/plugins/broadcaster/interfaces/Event;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 49
    instance-of v1, p1, Lcom/outsystems/plugins/broadcaster/events/OSNetworkEvent;

    if-eqz v1, :cond_0

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v1, "networkEvent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "networkEvent"

    check-cast p1, Landroid/os/Parcelable;

    .end local p1    # "event":Lcom/outsystems/plugins/broadcaster/interfaces/Event;
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 52
    iget-object v1, p0, Lcom/outsystems/plugins/broadcaster/OSBroadcaster;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 54
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method declared-synchronized terminate()V
    .locals 1

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/outsystems/plugins/broadcaster/OSBroadcaster;->networkEventEmitter:Lcom/outsystems/plugins/broadcaster/interfaces/EventEmitter;

    invoke-interface {v0}, Lcom/outsystems/plugins/broadcaster/interfaces/EventEmitter;->stop()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/outsystems/plugins/broadcaster/OSBroadcaster;->networkEventEmitter:Lcom/outsystems/plugins/broadcaster/interfaces/EventEmitter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
