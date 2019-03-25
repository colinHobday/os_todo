.class public Lcom/outsystems/plugins/deeplinks/OSDeepLinks;
.super Lorg/apache/cordova/CordovaPlugin;
.source "OSDeepLinks.java"


# static fields
.field private static final CORDOVA_STATIC_CHANNEL:Ljava/lang/String; = "OSDeepLinksStaticChannel"

.field private static final DEFAULT_SCHEME:Ljava/lang/String; = "https"

.field private static applicationPaused:Ljava/lang/Boolean;

.field private static deviceready:Ljava/lang/Boolean;

.field private static eventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private static staticWebView:Lorg/apache/cordova/CordovaWebView;


# instance fields
.field private defaultApplication:Ljava/lang/String;

.field private defaultHostname:Ljava/lang/String;

.field private disableOSDeepLinks:Z

.field private logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->applicationPaused:Ljava/lang/Boolean;

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->deviceready:Ljava/lang/Boolean;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->staticWebView:Lorg/apache/cordova/CordovaWebView;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->eventQueue:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 38
    invoke-static {}, Lcom/outsystems/plugins/oslogger/OSLogger;->getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    return-void
.end method

.method private declared-synchronized handleDeviceReady()V
    .locals 4

    .prologue
    .line 90
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->deviceready:Ljava/lang/Boolean;

    .line 92
    sget-object v2, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 93
    sget-object v2, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 94
    .local v1, "js":Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->sendUpdateToJSApi(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 90
    .end local v1    # "js":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 96
    :cond_0
    :try_start_1
    sget-object v2, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 99
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lorg/apache/cordova/CordovaActivity;

    invoke-virtual {v2}, Lorg/apache/cordova/CordovaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {p0, v0}, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->processIntent(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized sendUpdateToJSApi(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->deviceready:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 112
    .local v0, "pluginResult":Lorg/apache/cordova/PluginResult;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 113
    sget-object v1, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->staticWebView:Lorg/apache/cordova/CordovaWebView;

    const-string v2, "OSDeepLinksStaticChannel"

    invoke-interface {v1, v0, v2}, Lorg/apache/cordova/CordovaWebView;->sendPluginResult(Lorg/apache/cordova/PluginResult;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v0    # "pluginResult":Lorg/apache/cordova/PluginResult;
    :goto_0
    monitor-exit p0

    return-void

    .line 115
    :cond_0
    :try_start_1
    sget-object v1, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/apache/cordova/CordovaArgs;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 56
    const-string v0, "deviceready"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->handleDeviceReady()V

    .line 58
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadUrlIntoWebview(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 158
    .local v0, "weakWebView":Lorg/apache/cordova/CordovaWebView;
    iget-object v1, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/outsystems/plugins/deeplinks/OSDeepLinks$1;-><init>(Lcom/outsystems/plugins/deeplinks/OSDeepLinks;Lorg/apache/cordova/CordovaWebView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->deviceready:Ljava/lang/Boolean;

    .line 79
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->applicationPaused:Ljava/lang/Boolean;

    .line 80
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onNewIntent(Landroid/content/Intent;)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {p0, p1}, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->processIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPause(Z)V
    .locals 1
    .param p1, "multitasking"    # Z

    .prologue
    .line 84
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onPause(Z)V

    .line 85
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->applicationPaused:Ljava/lang/Boolean;

    .line 86
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->deviceready:Ljava/lang/Boolean;

    .line 87
    return-void
.end method

.method public onResume(Z)V
    .locals 1
    .param p1, "multitasking"    # Z

    .prologue
    .line 68
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onResume(Z)V

    .line 70
    sget-object v0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->applicationPaused:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->handleDeviceReady()V

    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->applicationPaused:Ljava/lang/Boolean;

    .line 74
    :cond_0
    return-void
.end method

.method protected pluginInitialize()V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->pluginInitialize()V

    .line 44
    iget-object v0, p0, Lorg/apache/cordova/CordovaPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    sput-object v0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->staticWebView:Lorg/apache/cordova/CordovaWebView;

    .line 46
    iget-object v0, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v1, "DisableOSDeepLinks"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/CordovaPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->disableOSDeepLinks:Z

    .line 47
    iget-object v0, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v1, "DefaultHostname"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->defaultHostname:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v1, "DefaultApplicationURL"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->defaultApplication:Ljava/lang/String;

    .line 49
    return-void
.end method

.method protected processIntent(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 132
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "applicationName":Ljava/lang/String;
    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->defaultApplication:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 134
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "urlString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "deeplinkPrefix":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->defaultHostname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->defaultApplication:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "applicationPrefix":Ljava/lang/String;
    invoke-virtual {v4, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 140
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 141
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 142
    iget-boolean v5, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->disableOSDeepLinks:Z

    if-eqz v5, :cond_1

    .line 143
    invoke-virtual {p0, v4}, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->sendURLToWebview(Ljava/lang/String;)V

    .line 153
    .end local v1    # "applicationPrefix":Ljava/lang/String;
    .end local v2    # "deeplinkPrefix":Ljava/lang/String;
    .end local v4    # "urlString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 146
    .restart local v1    # "applicationPrefix":Ljava/lang/String;
    .restart local v2    # "deeplinkPrefix":Ljava/lang/String;
    .restart local v4    # "urlString":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->loadUrlIntoWebview(Ljava/lang/String;)V

    goto :goto_0

    .line 151
    .end local v1    # "applicationPrefix":Ljava/lang/String;
    .end local v2    # "deeplinkPrefix":Ljava/lang/String;
    .end local v4    # "urlString":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to launch application with URL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OSDeepLinks"

    invoke-interface {v5, v6, v7}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sendURLToWebview(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 178
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 179
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "URL"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    invoke-direct {p0, v1}, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->sendUpdateToJSApi(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/outsystems/plugins/deeplinks/OSDeepLinks;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to build URL for the webview: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OSDeepLinks"

    invoke-interface {v2, v3, v4, v0}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
