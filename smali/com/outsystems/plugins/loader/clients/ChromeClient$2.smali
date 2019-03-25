.class Lcom/outsystems/plugins/loader/clients/ChromeClient$2;
.super Lorg/apache/cordova/CordovaPlugin;
.source "ChromeClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/outsystems/plugins/loader/clients/ChromeClient;->onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/outsystems/plugins/loader/clients/ChromeClient;

.field final synthetic val$fileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

.field final synthetic val$filePathsCallback:Landroid/webkit/ValueCallback;


# direct methods
.method constructor <init>(Lcom/outsystems/plugins/loader/clients/ChromeClient;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V
    .locals 0
    .param p1, "this$0"    # Lcom/outsystems/plugins/loader/clients/ChromeClient;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient$2;->this$0:Lcom/outsystems/plugins/loader/clients/ChromeClient;

    iput-object p2, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient$2;->val$filePathsCallback:Landroid/webkit/ValueCallback;

    iput-object p3, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient$2;->val$fileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->onRequestPermissionResult(I[Ljava/lang/String;[I)V

    .line 126
    aget v0, p3, v1

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient$2;->this$0:Lcom/outsystems/plugins/loader/clients/ChromeClient;

    iget-object v1, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient$2;->val$filePathsCallback:Landroid/webkit/ValueCallback;

    iget-object v2, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient$2;->val$fileChooserParams:Landroid/webkit/WebChromeClient$FileChooserParams;

    invoke-static {v0, v1, v2}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->access$100(Lcom/outsystems/plugins/loader/clients/ChromeClient;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient$2;->val$filePathsCallback:Landroid/webkit/ValueCallback;

    new-array v1, v1, [Landroid/net/Uri;

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient$2;->this$0:Lcom/outsystems/plugins/loader/clients/ChromeClient;

    invoke-static {v0}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->access$000(Lcom/outsystems/plugins/loader/clients/ChromeClient;)Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v0

    const-string v1, "Permission request was denied while opening file chooser"

    const-string v2, "OSCordovaLoader"

    invoke-interface {v0, v1, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
