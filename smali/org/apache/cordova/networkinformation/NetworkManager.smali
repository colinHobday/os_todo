.class public Lorg/apache/cordova/networkinformation/NetworkManager;
.super Lorg/apache/cordova/CordovaPlugin;
.source "NetworkManager.java"


# static fields
.field public static final CDMA:Ljava/lang/String; = "cdma"

.field public static final CELLULAR:Ljava/lang/String; = "cellular"

.field public static final EDGE:Ljava/lang/String; = "edge"

.field public static final EHRPD:Ljava/lang/String; = "ehrpd"

.field public static final FOUR_G:Ljava/lang/String; = "4g"

.field public static final GPRS:Ljava/lang/String; = "gprs"

.field public static final GSM:Ljava/lang/String; = "gsm"

.field public static final HSDPA:Ljava/lang/String; = "hsdpa"

.field public static final HSPA:Ljava/lang/String; = "hspa"

.field public static final HSPA_PLUS:Ljava/lang/String; = "hspa+"

.field public static final HSUPA:Ljava/lang/String; = "hsupa"

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkManager"

.field public static final LTE:Ljava/lang/String; = "lte"

.field public static final MOBILE:Ljava/lang/String; = "mobile"

.field public static NOT_REACHABLE:I = 0x0

.field public static final ONEXRTT:Ljava/lang/String; = "1xrtt"

.field public static REACHABLE_VIA_CARRIER_DATA_NETWORK:I = 0x0

.field public static REACHABLE_VIA_WIFI_NETWORK:I = 0x0

.field public static final THREE_G:Ljava/lang/String; = "3g"

.field public static final TWO_G:Ljava/lang/String; = "2g"

.field public static final TYPE_2G:Ljava/lang/String; = "2g"

.field public static final TYPE_3G:Ljava/lang/String; = "3g"

.field public static final TYPE_4G:Ljava/lang/String; = "4g"

.field public static final TYPE_ETHERNET:Ljava/lang/String; = "ethernet"

.field public static final TYPE_ETHERNET_SHORT:Ljava/lang/String; = "eth"

.field public static final TYPE_NONE:Ljava/lang/String; = "none"

.field public static final TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final TYPE_WIFI:Ljava/lang/String; = "wifi"

.field public static final UMB:Ljava/lang/String; = "umb"

.field public static final UMTS:Ljava/lang/String; = "umts"

.field public static final WIFI:Ljava/lang/String; = "wifi"

.field public static final WIMAX:Ljava/lang/String; = "wimax"


# instance fields
.field private connectionCallbackContext:Lorg/apache/cordova/CallbackContext;

.field private lastInfo:Lorg/json/JSONObject;

.field receiver:Landroid/content/BroadcastReceiver;

.field sockMan:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput v0, Lorg/apache/cordova/networkinformation/NetworkManager;->NOT_REACHABLE:I

    .line 43
    const/4 v0, 0x1

    sput v0, Lorg/apache/cordova/networkinformation/NetworkManager;->REACHABLE_VIA_CARRIER_DATA_NETWORK:I

    .line 44
    const/4 v0, 0x2

    sput v0, Lorg/apache/cordova/networkinformation/NetworkManager;->REACHABLE_VIA_WIFI_NETWORK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/networkinformation/NetworkManager;->lastInfo:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/networkinformation/NetworkManager;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/networkinformation/NetworkManager;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/apache/cordova/networkinformation/NetworkManager;->updateConnectionInfo(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/cordova/networkinformation/NetworkManager;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "x0"    # Lorg/apache/cordova/networkinformation/NetworkManager;

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/cordova/networkinformation/NetworkManager;->lastInfo:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/cordova/networkinformation/NetworkManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/networkinformation/NetworkManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/apache/cordova/networkinformation/NetworkManager;->sendUpdate(Ljava/lang/String;)V

    return-void
.end method

.method private getConnectionInfo(Landroid/net/NetworkInfo;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 241
    const-string v3, "none"

    .line 242
    .local v3, "type":Ljava/lang/String;
    const-string v2, ""

    .line 243
    .local v2, "extraInfo":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1

    .line 246
    const-string v3, "none"

    .line 251
    :goto_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    .line 254
    :cond_0
    const-string v4, "NetworkManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection Type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v4, "NetworkManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connection Extra Info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 260
    .local v0, "connectionInfo":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "type"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    const-string v4, "extraInfo"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_1
    return-object v0

    .line 249
    .end local v0    # "connectionInfo":Lorg/json/JSONObject;
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/cordova/networkinformation/NetworkManager;->getType(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 262
    .restart local v0    # "connectionInfo":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "NetworkManager"

    invoke-virtual {v1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getType(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 290
    if-eqz p1, :cond_9

    .line 291
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "type":Ljava/lang/String;
    const-string v1, "NetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toLower : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v1, "NetworkManager"

    const-string v2, "wifi : wifi"

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    const-string v1, "wifi"

    .line 330
    .end local v0    # "type":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 298
    .restart local v0    # "type":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ethernet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "eth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    :cond_1
    const-string v1, "ethernet"

    goto :goto_0

    .line 301
    :cond_2
    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "cellular"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 302
    :cond_3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 303
    const-string v1, "gsm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "gprs"

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "edge"

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "2g"

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 307
    :cond_4
    const-string v1, "2g"

    goto :goto_0

    .line 309
    :cond_5
    const-string v1, "cdma"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "umts"

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "1xrtt"

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "ehrpd"

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "hsupa"

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "hsdpa"

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "hspa"

    .line 315
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "3g"

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 317
    :cond_6
    const-string v1, "3g"

    goto/16 :goto_0

    .line 319
    :cond_7
    const-string v1, "lte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "umb"

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "hspa+"

    .line 321
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "4g"

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 323
    :cond_8
    const-string v1, "4g"

    goto/16 :goto_0

    .line 328
    .end local v0    # "type":Ljava/lang/String;
    :cond_9
    const-string v1, "none"

    goto/16 :goto_0

    .line 330
    .restart local v0    # "type":Ljava/lang/String;
    :cond_a
    const-string v1, "unknown"

    goto/16 :goto_0
.end method

.method private registerConnectivityActionReceiver()V
    .locals 3

    .prologue
    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lorg/apache/cordova/networkinformation/NetworkManager;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 161
    new-instance v1, Lorg/apache/cordova/networkinformation/NetworkManager$1;

    invoke-direct {v1, p0}, Lorg/apache/cordova/networkinformation/NetworkManager$1;-><init>(Lorg/apache/cordova/networkinformation/NetworkManager;)V

    iput-object v1, p0, Lorg/apache/cordova/networkinformation/NetworkManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 195
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/networkinformation/NetworkManager;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/networkinformation/NetworkManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    return-void
.end method

.method private sendUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v1, p0, Lorg/apache/cordova/networkinformation/NetworkManager;->connectionCallbackContext:Lorg/apache/cordova/CallbackContext;

    if-eqz v1, :cond_0

    .line 276
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 277
    .local v0, "result":Lorg/apache/cordova/PluginResult;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 278
    iget-object v1, p0, Lorg/apache/cordova/networkinformation/NetworkManager;->connectionCallbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 280
    .end local v0    # "result":Lorg/apache/cordova/PluginResult;
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/networkinformation/NetworkManager;->webView:Lorg/apache/cordova/CordovaWebView;

    const-string v2, "networkconnection"

    invoke-interface {v1, v2, p1}, Lorg/apache/cordova/CordovaWebView;->postMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    return-void
.end method

.method private unregisterReceiver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 199
    iget-object v1, p0, Lorg/apache/cordova/networkinformation/NetworkManager;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 201
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/networkinformation/NetworkManager;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/cordova/networkinformation/NetworkManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    iput-object v4, p0, Lorg/apache/cordova/networkinformation/NetworkManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "NetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error unregistering network receiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    iput-object v4, p0, Lorg/apache/cordova/networkinformation/NetworkManager;->receiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lorg/apache/cordova/networkinformation/NetworkManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 206
    throw v1
.end method

.method private updateConnectionInfo(Landroid/net/NetworkInfo;)V
    .locals 5
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lorg/apache/cordova/networkinformation/NetworkManager;->getConnectionInfo(Landroid/net/NetworkInfo;)Lorg/json/JSONObject;

    move-result-object v2

    .line 220
    .local v2, "thisInfo":Lorg/json/JSONObject;
    iget-object v3, p0, Lorg/apache/cordova/networkinformation/NetworkManager;->lastInfo:Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 222
    const-string v0, ""

    .line 224
    .local v0, "connectionType":Ljava/lang/String;
    :try_start_0
    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 229
    :goto_0
    invoke-direct {p0, v0}, Lorg/apache/cordova/networkinformation/NetworkManager;->sendUpdate(Ljava/lang/String;)V

    .line 230
    iput-object v2, p0, Lorg/apache/cordova/networkinformation/NetworkManager;->lastInfo:Lorg/json/JSONObject;

    .line 232
    .end local v0    # "connectionType":Ljava/lang/String;
    :cond_0
    return-void

    .line 225
    .restart local v0    # "connectionType":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "NetworkManager"

    invoke-virtual {v1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    const/4 v4, 0x1

    .line 114
    const-string v5, "getConnectionInfo"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 115
    iput-object p3, p0, Lorg/apache/cordova/networkinformation/NetworkManager;->connectionCallbackContext:Lorg/apache/cordova/CallbackContext;

    .line 116
    iget-object v5, p0, Lorg/apache/cordova/networkinformation/NetworkManager;->sockMan:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 117
    .local v2, "info":Landroid/net/NetworkInfo;
    const-string v0, ""

    .line 119
    .local v0, "connectionType":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v2}, Lorg/apache/cordova/networkinformation/NetworkManager;->getConnectionInfo(Landroid/net/NetworkInfo;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 124
    :goto_0
    new-instance v3, Lorg/apache/cordova/PluginResult;

    sget-object v5, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v3, v5, v0}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    .line 125
    .local v3, "pluginResult":Lorg/apache/cordova/PluginResult;
    invoke-virtual {v3, v4}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 126
    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 129
    .end local v0    # "connectionType":Ljava/lang/String;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "pluginResult":Lorg/apache/cordova/PluginResult;
    :goto_1
    return v4

    .line 120
    .restart local v0    # "connectionType":Ljava/lang/String;
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Lorg/json/JSONException;
    const-string v5, "NetworkManager"

    invoke-virtual {v1}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/cordova/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    .end local v0    # "connectionType":Ljava/lang/String;
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_0
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
    .locals 2
    .param p1, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/CordovaPlugin;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V

    .line 99
    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lorg/apache/cordova/networkinformation/NetworkManager;->sockMan:Landroid/net/ConnectivityManager;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/cordova/networkinformation/NetworkManager;->connectionCallbackContext:Lorg/apache/cordova/CallbackContext;

    .line 102
    invoke-direct {p0}, Lorg/apache/cordova/networkinformation/NetworkManager;->registerConnectivityActionReceiver()V

    .line 103
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lorg/apache/cordova/networkinformation/NetworkManager;->unregisterReceiver()V

    .line 137
    return-void
.end method

.method public onPause(Z)V
    .locals 0
    .param p1, "multitasking"    # Z

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/apache/cordova/networkinformation/NetworkManager;->unregisterReceiver()V

    .line 142
    return-void
.end method

.method public onResume(Z)V
    .locals 0
    .param p1, "multitasking"    # Z

    .prologue
    .line 146
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onResume(Z)V

    .line 148
    invoke-direct {p0}, Lorg/apache/cordova/networkinformation/NetworkManager;->unregisterReceiver()V

    .line 149
    invoke-direct {p0}, Lorg/apache/cordova/networkinformation/NetworkManager;->registerConnectivityActionReceiver()V

    .line 150
    return-void
.end method
