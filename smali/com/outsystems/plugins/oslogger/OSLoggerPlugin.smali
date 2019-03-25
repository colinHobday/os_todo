.class public Lcom/outsystems/plugins/oslogger/OSLoggerPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "OSLoggerPlugin.java"


# static fields
.field private static final ACTION_LOG_DEBUG:Ljava/lang/String; = "logDebug"

.field private static final ACTION_LOG_ERROR:Ljava/lang/String; = "logError"

.field private static final ACTION_LOG_INFO:Ljava/lang/String; = "logInfo"

.field private static final ACTION_LOG_VERBOSE:Ljava/lang/String; = "logVerbose"

.field private static final ACTION_LOG_WARNING:Ljava/lang/String; = "logWarning"

.field public static final CORDOVA_SERVICE_NAME:Ljava/lang/String; = "OSLogger"

.field private static final PREFERENCE_DEFAULT_APPLICATION_URL:Ljava/lang/String; = "DefaultApplicationURL"

.field private static final PREFERENCE_DEFAULT_HOSTNAME:Ljava/lang/String; = "DefaultHostname"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method private toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 8
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 111
    .local v2, "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 122
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Lorg/json/JSONObject;

    if-nez v5, :cond_0

    instance-of v5, v4, Lorg/json/JSONArray;

    if-nez v5, :cond_0

    .line 126
    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 117
    .end local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/outsystems/plugins/oslogger/OSLogger;->getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JSONObject could not be parsed while processing extra information: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OSLogger"

    invoke-interface {v5, v6, v7, v0}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-object v3
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 49
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v7, v8, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v5

    .line 53
    :cond_1
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "moduleName":Ljava/lang/String;
    const-string v7, "logVerbose"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 57
    invoke-static {}, Lcom/outsystems/plugins/oslogger/OSLogger;->getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    move v5, v6

    .line 60
    goto :goto_0

    .line 63
    :cond_2
    const-string v7, "logDebug"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 64
    invoke-static {}, Lcom/outsystems/plugins/oslogger/OSLogger;->getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    move v5, v6

    .line 67
    goto :goto_0

    .line 70
    :cond_3
    const-string v7, "logInfo"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 71
    invoke-static {}, Lcom/outsystems/plugins/oslogger/OSLogger;->getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    move v5, v6

    .line 74
    goto :goto_0

    .line 77
    :cond_4
    const-string v7, "logWarning"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 78
    invoke-static {}, Lcom/outsystems/plugins/oslogger/OSLogger;->getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    move v5, v6

    .line 81
    goto :goto_0

    .line 84
    :cond_5
    const-string v7, "logError"

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 87
    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/outsystems/plugins/oslogger/OSLoggerPlugin;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    .local v1, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    const/4 v5, 0x3

    :try_start_1
    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 99
    .local v4, "stack":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/outsystems/plugins/oslogger/OSLogger;->getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v5

    invoke-interface {v5, v2, v3, v1, v4}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    move v5, v6

    .line 102
    goto :goto_0

    .line 88
    .end local v1    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "stack":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    .restart local v1    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_1

    .line 95
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 96
    .restart local v0    # "e":Lorg/json/JSONException;
    const/4 v4, 0x0

    .restart local v4    # "stack":Ljava/lang/String;
    goto :goto_2
.end method

.method protected pluginInitialize()V
    .locals 6

    .prologue
    .line 37
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/OSLoggerPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/OSLoggerPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 38
    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->getEngine()Lorg/apache/cordova/CordovaWebViewEngine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/outsystems/plugins/oslogger/OSLoggerPlugin;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v3, "DefaultHostname"

    const-string v4, ""

    .line 39
    invoke-virtual {v2, v3, v4}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/outsystems/plugins/oslogger/OSLoggerPlugin;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v4, "DefaultApplicationURL"

    const-string v5, ""

    .line 40
    invoke-virtual {v3, v4, v5}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-static {v1, v0, v2, v3}, Lcom/outsystems/plugins/oslogger/OSLogger;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public declared-synchronized setSSLSecurityImpl(Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;)V
    .locals 1
    .param p1, "sslSecurity"    # Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;

    .prologue
    .line 132
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;->getCertificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {p1}, Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;->getCertificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v0

    invoke-static {v0}, Lcom/outsystems/plugins/oslogger/OSLogger;->setSSLSecurity(Lokhttp3/CertificatePinner;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :cond_0
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
