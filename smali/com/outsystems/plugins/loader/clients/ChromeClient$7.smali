.class Lcom/outsystems/plugins/loader/clients/ChromeClient$7;
.super Lorg/apache/cordova/CordovaPlugin;
.source "ChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/outsystems/plugins/loader/clients/ChromeClient;->launchSingleIntent(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/outsystems/plugins/loader/clients/ChromeClient;

.field final synthetic val$filePathsCallback:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lcom/outsystems/plugins/loader/clients/ChromeClient;Landroid/webkit/ValueCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/outsystems/plugins/loader/clients/ChromeClient;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient$7;->this$0:Lcom/outsystems/plugins/loader/clients/ChromeClient;

    iput-object p2, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient$7;->val$filePathsCallback:Landroid/webkit/ValueCallback;

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
    .line 315
    invoke-static {p2, p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v0

    .line 316
    .local v0, "result":[Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 317
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 318
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/net/Uri;

    .end local v0    # "result":[Landroid/net/Uri;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient$7;->this$0:Lcom/outsystems/plugins/loader/clients/ChromeClient;

    invoke-static {v2}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->access$200(Lcom/outsystems/plugins/loader/clients/ChromeClient;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    .line 320
    .restart local v0    # "result":[Landroid/net/Uri;
    :cond_0
    iget-object v1, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient$7;->this$0:Lcom/outsystems/plugins/loader/clients/ChromeClient;

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

    .line 321
    iget-object v1, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient$7;->val$filePathsCallback:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 322
    return-void
.end method
