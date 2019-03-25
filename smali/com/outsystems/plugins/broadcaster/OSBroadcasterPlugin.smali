.class public Lcom/outsystems/plugins/broadcaster/OSBroadcasterPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "OSBroadcasterPlugin.java"


# static fields
.field public static final CORDOVA_SERVICE_NAME:Ljava/lang/String; = "OSBroadcaster"


# instance fields
.field private broadcaster:Lcom/outsystems/plugins/broadcaster/OSBroadcaster;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/outsystems/plugins/broadcaster/OSBroadcasterPlugin;->broadcaster:Lcom/outsystems/plugins/broadcaster/OSBroadcaster;

    invoke-virtual {v0}, Lcom/outsystems/plugins/broadcaster/OSBroadcaster;->terminate()V

    .line 25
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->onDestroy()V

    .line 26
    return-void
.end method

.method protected pluginInitialize()V
    .locals 2

    .prologue
    .line 15
    const-string v0, "OSBroadcaster"

    const-string v1, "pluginInitialize: started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v0, Lcom/outsystems/plugins/broadcaster/OSBroadcaster;

    iget-object v1, p0, Lcom/outsystems/plugins/broadcaster/OSBroadcasterPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/outsystems/plugins/broadcaster/OSBroadcaster;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/outsystems/plugins/broadcaster/OSBroadcasterPlugin;->broadcaster:Lcom/outsystems/plugins/broadcaster/OSBroadcaster;

    .line 19
    const-string v0, "OSBroadcaster"

    const-string v1, "pluginInitialize: finished"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method
