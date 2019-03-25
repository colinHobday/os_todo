.class public Lcom/outsystems/plugins/ossecurity/OSSecurity;
.super Lorg/apache/cordova/CordovaPlugin;
.source "OSSecurity.java"


# static fields
.field public static CORDOVA_SERVICE_NAME:Ljava/lang/String;


# instance fields
.field private sslSecurity:Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "OSSecurity"

    sput-object v0, Lcom/outsystems/plugins/ossecurity/OSSecurity;->CORDOVA_SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method


# virtual methods
.method public getSSLSecurityImpl()Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/outsystems/plugins/ossecurity/OSSecurity;->sslSecurity:Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;

    return-object v0
.end method

.method public setSSLSecurityImpl(Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;)V
    .locals 5
    .param p1, "sslSecurityImpl"    # Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/outsystems/plugins/ossecurity/OSSecurity;->sslSecurity:Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;

    .line 25
    iget-object v4, p0, Lcom/outsystems/plugins/ossecurity/OSSecurity;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v4}, Lorg/apache/cordova/CordovaWebView;->getPluginManager()Lorg/apache/cordova/PluginManager;

    move-result-object v3

    .line 28
    .local v3, "pluginManager":Lorg/apache/cordova/PluginManager;
    const-string v4, "OSLogger"

    invoke-virtual {v3, v4}, Lorg/apache/cordova/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/CordovaPlugin;

    move-result-object v2

    check-cast v2, Lcom/outsystems/plugins/oslogger/OSLoggerPlugin;

    .line 29
    .local v2, "osLoggerPlugin":Lcom/outsystems/plugins/oslogger/OSLoggerPlugin;
    invoke-virtual {v2, p1}, Lcom/outsystems/plugins/oslogger/OSLoggerPlugin;->setSSLSecurityImpl(Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;)V

    .line 32
    const-string v4, "OSCache"

    invoke-virtual {v3, v4}, Lorg/apache/cordova/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/CordovaPlugin;

    move-result-object v0

    check-cast v0, Lcom/outsystems/plugins/oscache/OSCache;

    .line 33
    .local v0, "osCache":Lcom/outsystems/plugins/oscache/OSCache;
    invoke-virtual {v0, p1}, Lcom/outsystems/plugins/oscache/OSCache;->setSSLSecurityImpl(Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;)V

    .line 36
    const-string v4, "OSCordovaLoader"

    invoke-virtual {v3, v4}, Lorg/apache/cordova/PluginManager;->getPlugin(Ljava/lang/String;)Lorg/apache/cordova/CordovaPlugin;

    move-result-object v1

    check-cast v1, Lcom/outsystems/plugins/loader/OSCordovaLoader;

    .line 37
    .local v1, "osCordovaLoader":Lcom/outsystems/plugins/loader/OSCordovaLoader;
    invoke-virtual {v1, p1}, Lcom/outsystems/plugins/loader/OSCordovaLoader;->setSSLSecurityImpl(Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;)V

    .line 38
    return-void
.end method
