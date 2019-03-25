.class Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1;
.super Ljava/lang/Object;
.source "OSDeepLinks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->loadUrlIntoWebview(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/outsystems/plugins/deeplinks/OSDeepLinks;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$weakWebView:Lorg/apache/cordova/CordovaWebView;


# direct methods
.method constructor <init>(Lcom/outsystems/plugins/deeplinks/OSDeepLinks;Lorg/apache/cordova/CordovaWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/outsystems/plugins/deeplinks/OSDeepLinks;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1;->this$0:Lcom/outsystems/plugins/deeplinks/OSDeepLinks;

    iput-object p2, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1;->val$weakWebView:Lorg/apache/cordova/CordovaWebView;

    iput-object p3, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 161
    const/16 v1, 0x3e8

    .line 162
    .local v1, "interval":I
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 163
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1$1;

    invoke-direct {v2, p0}, Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1$1;-><init>(Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1;)V

    .line 169
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 170
    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    return-void
.end method
