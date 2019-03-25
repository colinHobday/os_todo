.class public Lcom/outsystems/plugins/loader/OSCordovaLoader;
.super Lorg/apache/cordova/CordovaPlugin;
.source "OSCordovaLoader.java"


# static fields
.field public static final CORDOVA_SERVICE_NAME:Ljava/lang/String; = "OSCordovaLoader"


# instance fields
.field private cordovaLoader:Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;

.field private logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 28
    invoke-static {}, Lcom/outsystems/plugins/oslogger/OSLogger;->getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/loader/OSCordovaLoader;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 3

    .prologue
    .line 48
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->onStop()V

    .line 50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-le v1, v2, :cond_0

    .line 51
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 52
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 58
    .end local v0    # "cookieManager":Landroid/webkit/CookieManager;
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/outsystems/plugins/loader/OSCordovaLoader;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 56
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_0
.end method

.method protected pluginInitialize()V
    .locals 7

    .prologue
    .line 34
    iget-object v3, p0, Lcom/outsystems/plugins/loader/OSCordovaLoader;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v4, "pluginInitialize: started"

    const-string v5, "OSCordovaLoader"

    invoke-interface {v3, v4, v5}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v3, p0, Lcom/outsystems/plugins/loader/OSCordovaLoader;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaWebView;->getPluginManager()Lorg/apache/cordova/PluginManager;

    move-result-object v2

    .line 37
    .local v2, "pm":Lorg/apache/cordova/PluginManager;
    const-string v3, "OSCache"

    invoke-virtual {v2, v3}, Lorg/apache/cordova/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/CordovaPlugin;

    move-result-object v1

    check-cast v1, Lcom/outsystems/plugins/oscache/OSCache;

    .line 38
    .local v1, "osCachePlugin":Lcom/outsystems/plugins/oscache/OSCache;
    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/OSCache;->getCacheEngine()Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;

    move-result-object v0

    .line 40
    .local v0, "cacheEngine":Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;
    new-instance v3, Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;

    iget-object v4, p0, Lcom/outsystems/plugins/loader/OSCordovaLoader;->webView:Lorg/apache/cordova/CordovaWebView;

    iget-object v5, p0, Lcom/outsystems/plugins/loader/OSCordovaLoader;->cordova:Lorg/apache/cordova/CordovaInterface;

    iget-object v6, p0, Lcom/outsystems/plugins/loader/OSCordovaLoader;->preferences:Lorg/apache/cordova/CordovaPreferences;

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;-><init>(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;Lorg/apache/cordova/CordovaPreferences;)V

    iput-object v3, p0, Lcom/outsystems/plugins/loader/OSCordovaLoader;->cordovaLoader:Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;

    .line 41
    iget-object v3, p0, Lcom/outsystems/plugins/loader/OSCordovaLoader;->cordovaLoader:Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;

    invoke-virtual {v3}, Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;->deploy()V

    .line 43
    iget-object v3, p0, Lcom/outsystems/plugins/loader/OSCordovaLoader;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v4, "pluginInitialize: finished"

    const-string v5, "OSCordovaLoader"

    invoke-interface {v3, v4, v5}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public declared-synchronized setSSLSecurityImpl(Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;)V
    .locals 1
    .param p1, "sslSecurity"    # Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;

    .prologue
    .line 61
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/outsystems/plugins/loader/OSCordovaLoader;->cordovaLoader:Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;

    invoke-virtual {v0, p1}, Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;->setSSLSecurity(Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
