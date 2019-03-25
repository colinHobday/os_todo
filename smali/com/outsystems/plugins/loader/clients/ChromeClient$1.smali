.class Lcom/outsystems/plugins/loader/clients/ChromeClient$1;
.super Lorg/apache/cordova/CordovaPlugin;
.source "ChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/outsystems/plugins/loader/clients/ChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/outsystems/plugins/loader/clients/ChromeClient;

.field final synthetic val$uploadMsg:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lcom/outsystems/plugins/loader/clients/ChromeClient;Landroid/webkit/ValueCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/outsystems/plugins/loader/clients/ChromeClient;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient$1;->this$0:Lcom/outsystems/plugins/loader/clients/ChromeClient;

    iput-object p2, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient$1;->val$uploadMsg:Landroid/webkit/ValueCallback;

    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    if-eqz p3, :cond_0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 98
    .local v0, "result":Landroid/net/Uri;
    :goto_0
    iget-object v1, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient$1;->this$0:Lcom/outsystems/plugins/loader/clients/ChromeClient;

    invoke-static {v1}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->access$000(Lcom/outsystems/plugins/loader/clients/ChromeClient;)Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive file chooser URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OSCordovaLoader"

    invoke-interface {v1, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient$1;->val$uploadMsg:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 100
    return-void

    .line 97
    .end local v0    # "result":Landroid/net/Uri;
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
