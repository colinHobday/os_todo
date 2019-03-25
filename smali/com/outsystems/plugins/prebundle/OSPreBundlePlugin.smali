.class public Lcom/outsystems/plugins/prebundle/OSPreBundlePlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "OSPreBundlePlugin.java"


# static fields
.field private static final PREFERENCE_DEFAULT_APPLICATION_URL:Ljava/lang/String; = "DefaultApplicationURL"

.field private static final PREFERENCE_DEFAULT_HOSTNAME:Ljava/lang/String; = "DefaultHostname"


# instance fields
.field private preBundle:Lcom/outsystems/plugins/prebundle/interfaces/PreBundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected pluginInitialize()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 26
    iget-object v0, p0, Lcom/outsystems/plugins/prebundle/OSPreBundlePlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->getPluginManager()Lorg/apache/cordova/PluginManager;

    move-result-object v8

    .line 27
    .local v8, "pm":Lorg/apache/cordova/PluginManager;
    const-string v0, "OSCache"

    invoke-virtual {v8, v0}, Lorg/apache/cordova/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/CordovaPlugin;

    move-result-object v7

    check-cast v7, Lcom/outsystems/plugins/oscache/OSCache;

    .line 29
    .local v7, "osCachePlugin":Lcom/outsystems/plugins/oscache/OSCache;
    invoke-virtual {v7}, Lcom/outsystems/plugins/oscache/OSCache;->getCacheEngine()Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;

    move-result-object v1

    .line 30
    .local v1, "cacheEngine":Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;
    invoke-static {}, Lcom/outsystems/plugins/manifest/OSManifestParser;->getInstance()Lcom/outsystems/plugins/manifest/OSManifestParser;

    move-result-object v2

    .line 31
    .local v2, "manifestEngine":Lcom/outsystems/plugins/manifest/OSManifestParser;
    invoke-static {}, Lcom/outsystems/plugins/oslogger/OSLogger;->getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v3

    .line 33
    .local v3, "loggerEngine":Lcom/outsystems/plugins/oslogger/interfaces/Logger;
    iget-object v0, p0, Lcom/outsystems/plugins/prebundle/OSPreBundlePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 35
    .local v6, "context":Landroid/content/Context;
    iget-object v0, p0, Lcom/outsystems/plugins/prebundle/OSPreBundlePlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->getPreferences()Lorg/apache/cordova/CordovaPreferences;

    move-result-object v9

    .line 36
    .local v9, "preferences":Lorg/apache/cordova/CordovaPreferences;
    const-string v0, "DefaultHostname"

    invoke-virtual {v9, v0, v10}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, "defaultHostname":Ljava/lang/String;
    const-string v0, "DefaultApplicationURL"

    invoke-virtual {v9, v0, v10}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 39
    .local v5, "defaultURL":Ljava/lang/String;
    new-instance v0, Lcom/outsystems/plugins/prebundle/OSPreBundle;

    invoke-direct/range {v0 .. v6}, Lcom/outsystems/plugins/prebundle/OSPreBundle;-><init>(Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;Lcom/outsystems/plugins/manifest/OSManifestParser;Lcom/outsystems/plugins/oslogger/interfaces/Logger;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/outsystems/plugins/prebundle/OSPreBundlePlugin;->preBundle:Lcom/outsystems/plugins/prebundle/interfaces/PreBundle;

    .line 40
    iget-object v0, p0, Lcom/outsystems/plugins/prebundle/OSPreBundlePlugin;->preBundle:Lcom/outsystems/plugins/prebundle/interfaces/PreBundle;

    invoke-interface {v0}, Lcom/outsystems/plugins/prebundle/interfaces/PreBundle;->bootstrapCacheWithPreBundle()V

    .line 41
    return-void
.end method
