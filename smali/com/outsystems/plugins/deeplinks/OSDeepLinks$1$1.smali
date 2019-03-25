.class Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1$1;
.super Ljava/lang/Object;
.source "OSDeepLinks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1;


# direct methods
.method constructor <init>(Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1$1;->this$1:Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1$1;->this$1:Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1;

    iget-object v0, v0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1;->val$weakWebView:Lorg/apache/cordova/CordovaWebView;

    iget-object v1, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1$1;->this$1:Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1;

    iget-object v1, v1, Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1;->val$url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    .line 166
    return-void
.end method
