.class public Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;
.super Ljava/lang/Object;
.source "OSCordovaLoaderImpl.java"

# interfaces
.implements Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderEngine;


# instance fields
.field private chromeClient:Lcom/outsystems/plugins/loader/clients/ChromeClient;

.field private context:Landroid/content/Context;

.field private systemWebView:Lorg/apache/cordova/engine/SystemWebView;

.field private webClient:Lcom/outsystems/plugins/loader/clients/WebClient;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;Lorg/apache/cordova/CordovaPreferences;)V
    .locals 6
    .param p1, "webView"    # Lorg/apache/cordova/CordovaWebView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p3, "cacheEngine"    # Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;
    .param p4, "preferences"    # Lorg/apache/cordova/CordovaPreferences;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/outsystems/plugins/loader/clients/WebClient;

    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/outsystems/plugins/loader/clients/WebClient;-><init>(Landroid/content/Context;Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;Lorg/apache/cordova/CordovaPreferences;)V

    iput-object v0, p0, Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;->webClient:Lcom/outsystems/plugins/loader/clients/WebClient;

    .line 31
    invoke-interface {p1}, Lorg/apache/cordova/CordovaWebView;->getEngine()Lorg/apache/cordova/CordovaWebViewEngine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/engine/SystemWebView;

    iput-object v0, p0, Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;->systemWebView:Lorg/apache/cordova/engine/SystemWebView;

    .line 32
    new-instance v1, Lcom/outsystems/plugins/loader/clients/ChromeClient;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaWebView;->getEngine()Lorg/apache/cordova/CordovaWebViewEngine;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/engine/SystemWebViewEngine;

    invoke-direct {v1, v0, p2}, Lcom/outsystems/plugins/loader/clients/ChromeClient;-><init>(Lorg/apache/cordova/engine/SystemWebViewEngine;Lorg/apache/cordova/CordovaInterface;)V

    iput-object v1, p0, Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;->chromeClient:Lcom/outsystems/plugins/loader/clients/ChromeClient;

    .line 33
    invoke-interface {p2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;->context:Landroid/content/Context;

    .line 34
    return-void
.end method


# virtual methods
.method public deploy()V
    .locals 3

    .prologue
    .line 39
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-le v1, v2, :cond_0

    .line 40
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 41
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    new-instance v1, Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl$1;

    invoke-direct {v1, p0}, Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl$1;-><init>(Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;)V

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeSessionCookies(Landroid/webkit/ValueCallback;)V

    .line 47
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;->systemWebView:Lorg/apache/cordova/engine/SystemWebView;

    iget-object v2, p0, Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;->webClient:Lcom/outsystems/plugins/loader/clients/WebClient;

    invoke-virtual {v1, v2}, Lorg/apache/cordova/engine/SystemWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 56
    iget-object v1, p0, Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;->systemWebView:Lorg/apache/cordova/engine/SystemWebView;

    iget-object v2, p0, Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;->chromeClient:Lcom/outsystems/plugins/loader/clients/ChromeClient;

    invoke-virtual {v1, v2}, Lorg/apache/cordova/engine/SystemWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 57
    iget-object v1, p0, Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;->systemWebView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v1}, Lorg/apache/cordova/engine/SystemWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 58
    iget-object v1, p0, Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;->systemWebView:Lorg/apache/cordova/engine/SystemWebView;

    invoke-virtual {v1}, Lorg/apache/cordova/engine/SystemWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 59
    return-void

    .line 49
    .end local v0    # "cookieManager":Landroid/webkit/CookieManager;
    :cond_0
    iget-object v1, p0, Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 50
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 51
    .restart local v0    # "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 52
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_0
.end method

.method public setSSLSecurity(Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;)V
    .locals 1
    .param p1, "sslSecurity"    # Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;->webClient:Lcom/outsystems/plugins/loader/clients/WebClient;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;->webClient:Lcom/outsystems/plugins/loader/clients/WebClient;

    invoke-virtual {v0, p1}, Lcom/outsystems/plugins/loader/clients/WebClient;->setSslSecurity(Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;)V

    .line 65
    :cond_0
    return-void
.end method
