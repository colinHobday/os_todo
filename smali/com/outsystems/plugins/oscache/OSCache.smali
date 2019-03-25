.class public Lcom/outsystems/plugins/oscache/OSCache;
.super Lorg/apache/cordova/CordovaPlugin;
.source "OSCache.java"

# interfaces
.implements Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;


# static fields
.field private static final CHECKSUM_MINIMUM_SUPPORTED_PLATFORM_VERSION:Ljava/lang/String; = "10.0.811.0"

.field public static final CORDOVA_SERVICE_NAME:Ljava/lang/String; = "OSCache"

.field private static final CORDOVA_STATIC_CHANNEL:Ljava/lang/String; = "OSCacheStaticChannel"

.field private static final DEFAULT_RESOURCE_CONNECT_TIMEOUT:Ljava/lang/String; = "DefaultResourceConnectTimeout"

.field private static final DEFAULT_RESOURCE_READ_TIMEOUT:Ljava/lang/String; = "DefaultResourceReadTimeout"

.field private static final NATIVE_CACHE_RESOURCE_CONNECT_TIMEOUT:I = 0x4

.field private static final NATIVE_CACHE_RESOURCE_READ_TIMEOUT:I = 0x1e

.field private static final PREFERENCE_FIRST_RUN:Ljava/lang/String; = "FirstRun"

.field private static final SHARED_PREFERENCES_FILE:Ljava/lang/String; = "OSCachePreferences"

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
.field private cacheEngine:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;

.field private logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

.field private sslSecurity:Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/outsystems/plugins/oscache/OSCache;->staticWebView:Lorg/apache/cordova/CordovaWebView;

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/outsystems/plugins/oscache/OSCache;->deviceready:Ljava/lang/Boolean;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/outsystems/plugins/oscache/OSCache;->eventQueue:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 66
    invoke-static {}, Lcom/outsystems/plugins/oslogger/OSLogger;->getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    return-void
.end method

.method static synthetic access$000(Lcom/outsystems/plugins/oscache/OSCache;)Lcom/outsystems/plugins/oslogger/interfaces/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/outsystems/plugins/oscache/OSCache;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/outsystems/plugins/oscache/OSCache;)Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;
    .locals 1
    .param p0, "x0"    # Lcom/outsystems/plugins/oscache/OSCache;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache;->cacheEngine:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;

    return-object v0
.end method

.method private createUpdateObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "task"    # Ljava/lang/String;
    .param p2, "content"    # Lorg/json/JSONObject;

    .prologue
    .line 252
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 253
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "Task"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v2, "Content"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/OSCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to build task content object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OSCache"

    invoke-interface {v2, v3, v4, v0}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private declared-synchronized deviceready(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "application"    # Ljava/lang/String;

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/OSCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v2, "deviceReady: started"

    const-string v3, "OSCache"

    invoke-interface {v1, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 220
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/OSCache;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/outsystems/plugins/oscache/OSCache$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/outsystems/plugins/oscache/OSCache$3;-><init>(Lcom/outsystems/plugins/oscache/OSCache;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 227
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/outsystems/plugins/oscache/OSCache;->deviceready:Ljava/lang/Boolean;

    .line 229
    sget-object v1, Lcom/outsystems/plugins/oscache/OSCache;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 230
    .local v0, "js":Lorg/json/JSONObject;
    invoke-direct {p0, v0}, Lcom/outsystems/plugins/oscache/OSCache;->sendUpdateToJSApi(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 217
    .end local v0    # "js":Lorg/json/JSONObject;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 233
    :cond_1
    :try_start_1
    sget-object v1, Lcom/outsystems/plugins/oscache/OSCache;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized sendUpdateToJSApi(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/outsystems/plugins/oscache/OSCache;->deviceready:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 243
    .local v0, "pluginResult":Lorg/apache/cordova/PluginResult;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 244
    sget-object v1, Lcom/outsystems/plugins/oscache/OSCache;->staticWebView:Lorg/apache/cordova/CordovaWebView;

    const-string v2, "OSCacheStaticChannel"

    invoke-interface {v1, v0, v2}, Lorg/apache/cordova/CordovaWebView;->sendPluginResult(Lorg/apache/cordova/PluginResult;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local v0    # "pluginResult":Lorg/apache/cordova/PluginResult;
    :goto_0
    monitor-exit p0

    return-void

    .line 246
    :cond_0
    :try_start_1
    sget-object v1, Lcom/outsystems/plugins/oscache/OSCache;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private startCaching(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 10
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "application"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p4, "resources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "urls":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "noCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v9

    new-instance v0, Lcom/outsystems/plugins/oscache/OSCache$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/outsystems/plugins/oscache/OSCache$1;-><init>(Lcom/outsystems/plugins/oscache/OSCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method

.method private switchToVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "application"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/outsystems/plugins/oscache/OSCache$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/outsystems/plugins/oscache/OSCache$2;-><init>(Lcom/outsystems/plugins/oscache/OSCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 214
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z
    .locals 23
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/apache/cordova/CordovaArgs;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 112
    if-eqz p2, :cond_4

    const-string v2, "startCaching"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 113
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "hostname":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "application":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 117
    .local v5, "version":Ljava/lang/String;
    const/16 v17, 0x0

    .line 118
    .local v17, "resources":Lorg/json/JSONArray;
    const/16 v19, 0x0

    .line 119
    .local v19, "urls":Lorg/json/JSONObject;
    const/4 v13, 0x0

    .line 120
    .local v13, "noCache":Lorg/json/JSONObject;
    const/4 v15, 0x0

    .line 123
    .local v15, "options":Lorg/json/JSONObject;
    const/4 v2, 0x3

    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CordovaArgs;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v17

    .line 124
    const/4 v2, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CordovaArgs;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 125
    const/4 v2, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CordovaArgs;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 126
    const/4 v2, 0x6

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CordovaArgs;->optJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 132
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v6, "resourcesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v17, :cond_0

    .line 134
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v11, v2, :cond_0

    .line 135
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 127
    .end local v6    # "resourcesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    :catch_0
    move-exception v10

    .line 128
    .local v10, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/outsystems/plugins/oscache/OSCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unable to read startCaching arguments: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "OSCache"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v2, v0, v1, v10}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    const/4 v2, 0x0

    .line 188
    .end local v3    # "hostname":Ljava/lang/String;
    .end local v4    # "application":Ljava/lang/String;
    .end local v5    # "version":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v13    # "noCache":Lorg/json/JSONObject;
    .end local v15    # "options":Lorg/json/JSONObject;
    .end local v17    # "resources":Lorg/json/JSONArray;
    .end local v19    # "urls":Lorg/json/JSONObject;
    :goto_1
    return v2

    .line 139
    .restart local v3    # "hostname":Ljava/lang/String;
    .restart local v4    # "application":Ljava/lang/String;
    .restart local v5    # "version":Ljava/lang/String;
    .restart local v6    # "resourcesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "noCache":Lorg/json/JSONObject;
    .restart local v15    # "options":Lorg/json/JSONObject;
    .restart local v17    # "resources":Lorg/json/JSONArray;
    .restart local v19    # "urls":Lorg/json/JSONObject;
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v7, "urlMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v19, :cond_1

    .line 141
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v18

    .line 142
    .local v18, "urlIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 144
    .local v12, "key":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 145
    .local v20, "value":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-interface {v7, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 149
    .end local v12    # "key":Ljava/lang/String;
    .end local v18    # "urlIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v20    # "value":Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v8, "noCacheMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v13, :cond_2

    .line 151
    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    .line 152
    .local v14, "noCacheIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 154
    .restart local v12    # "key":Ljava/lang/String;
    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 155
    .restart local v20    # "value":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-interface {v8, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 159
    .end local v12    # "key":Ljava/lang/String;
    .end local v14    # "noCacheIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v20    # "value":Ljava/lang/String;
    :cond_2
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v9, "optionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v15, :cond_3

    .line 161
    invoke-virtual {v15}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    .line 162
    .local v16, "optionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 164
    .restart local v12    # "key":Ljava/lang/String;
    invoke-virtual {v15, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 165
    .restart local v20    # "value":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-interface {v9, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .end local v12    # "key":Ljava/lang/String;
    .end local v16    # "optionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v20    # "value":Ljava/lang/String;
    :cond_3
    move-object/from16 v2, p0

    .line 169
    invoke-direct/range {v2 .. v9}, Lcom/outsystems/plugins/oscache/OSCache;->startCaching(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 188
    .end local v5    # "version":Ljava/lang/String;
    .end local v6    # "resourcesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "urlMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "noCacheMaps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "optionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "noCache":Lorg/json/JSONObject;
    .end local v15    # "options":Lorg/json/JSONObject;
    .end local v17    # "resources":Lorg/json/JSONArray;
    .end local v19    # "urls":Lorg/json/JSONObject;
    :goto_5
    const/4 v2, 0x1

    goto :goto_1

    .line 171
    .end local v3    # "hostname":Ljava/lang/String;
    .end local v4    # "application":Ljava/lang/String;
    :cond_4
    if-eqz p2, :cond_5

    const-string v2, "switchToVersion"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 173
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 174
    .restart local v3    # "hostname":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 175
    .restart local v4    # "application":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 176
    .restart local v5    # "version":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/outsystems/plugins/oscache/OSCache;->switchToVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 178
    .end local v3    # "hostname":Ljava/lang/String;
    .end local v4    # "application":Ljava/lang/String;
    .end local v5    # "version":Ljava/lang/String;
    :cond_5
    if-eqz p2, :cond_6

    const-string v2, "deviceready"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 180
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 181
    .restart local v3    # "hostname":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lorg/apache/cordova/CordovaArgs;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 182
    .restart local v4    # "application":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/outsystems/plugins/oscache/OSCache;->deviceready(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 185
    .end local v3    # "hostname":Ljava/lang/String;
    .end local v4    # "application":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method public fireOnErrorEvent(Ljava/lang/String;)V
    .locals 7
    .param p1, "error"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 307
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 308
    .local v0, "contentObject":Lorg/json/JSONObject;
    const-string v4, "Event"

    const-string v5, "onerror"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 309
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 310
    .local v2, "errorObject":Lorg/json/JSONObject;
    const-string v4, "Message"

    invoke-virtual {v2, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 311
    const-string v4, "Error"

    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 313
    const-string v4, "FireEvent"

    invoke-direct {p0, v4, v0}, Lcom/outsystems/plugins/oscache/OSCache;->createUpdateObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 314
    .local v3, "jsonObject":Lorg/json/JSONObject;
    invoke-direct {p0, v3}, Lcom/outsystems/plugins/oscache/OSCache;->sendUpdateToJSApi(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v0    # "contentObject":Lorg/json/JSONObject;
    .end local v2    # "errorObject":Lorg/json/JSONObject;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/OSCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnError event could not send task to JS API: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OSCache"

    invoke-interface {v4, v5, v6, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public fireOnFinishEvent()V
    .locals 6

    .prologue
    .line 324
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 325
    .local v0, "contentObject":Lorg/json/JSONObject;
    const-string v3, "Event"

    const-string v4, "onfinish"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 327
    const-string v3, "FireEvent"

    invoke-direct {p0, v3, v0}, Lcom/outsystems/plugins/oscache/OSCache;->createUpdateObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 328
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-direct {p0, v2}, Lcom/outsystems/plugins/oscache/OSCache;->sendUpdateToJSApi(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v0    # "contentObject":Lorg/json/JSONObject;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/OSCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OnFinish event could not send task to JS API: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OSCache"

    invoke-interface {v3, v4, v5, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public fireOnProgressEvent(JJ)V
    .locals 7
    .param p1, "loaded"    # J
    .param p3, "total"    # J

    .prologue
    .line 289
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 290
    .local v0, "contentObject":Lorg/json/JSONObject;
    const-string v4, "Event"

    const-string v5, "onprogress"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 292
    .local v3, "progressObject":Lorg/json/JSONObject;
    const-string v4, "Loaded"

    invoke-virtual {v3, v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 293
    const-string v4, "Total"

    invoke-virtual {v3, v4, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 294
    const-string v4, "Progress"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    const-string v4, "FireEvent"

    invoke-direct {p0, v4, v0}, Lcom/outsystems/plugins/oscache/OSCache;->createUpdateObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 297
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-direct {p0, v2}, Lcom/outsystems/plugins/oscache/OSCache;->sendUpdateToJSApi(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .end local v0    # "contentObject":Lorg/json/JSONObject;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "progressObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/OSCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OnProgress event could not send task to JS API: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OSCache"

    invoke-interface {v4, v5, v6, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCacheEngine()Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache;->cacheEngine:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method isChecksumValidationSupported(Ljava/lang/String;)Z
    .locals 2
    .param p1, "platformVersion"    # Ljava/lang/String;

    .prologue
    .line 366
    const/4 v0, 0x0

    .line 368
    .local v0, "result":Z
    if-eqz p1, :cond_0

    .line 369
    const-string v1, "10.0.811.0"

    invoke-static {v1, p1}, Lcom/outsystems/plugins/oscache/cache/helpers/VersionComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_1

    const/4 v0, 0x1

    .line 372
    :cond_0
    :goto_0
    return v0

    .line 369
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/outsystems/plugins/oscache/OSCache;->deviceready:Ljava/lang/Boolean;

    .line 102
    return-void
.end method

.method public onResume(Z)V
    .locals 1
    .param p1, "multitasking"    # Z

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onResume(Z)V

    .line 96
    invoke-direct {p0, v0, v0}, Lcom/outsystems/plugins/oscache/OSCache;->deviceready(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method protected pluginInitialize()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 70
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v3, "pluginInitialize: started"

    const-string v4, "OSCache"

    invoke-interface {v0, v3, v4}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/outsystems/plugins/oscache/OSCache;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "OSCachePreferences"

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "FirstRun"

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 73
    .local v1, "firstRun":Z
    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/outsystems/plugins/oscache/OSCache;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "OSCachePreferences"

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "FirstRun"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 77
    :cond_0
    invoke-static {}, Lcom/outsystems/plugins/applicationinfo/OSApplicationInfo;->getInstance()Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/outsystems/plugins/applicationinfo/interfaces/ApplicationInfo;->getPlatformVersion()Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "defaultPlatformVersion":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/outsystems/plugins/oscache/OSCache;->isChecksumValidationSupported(Ljava/lang/String;)Z

    move-result v2

    .line 80
    .local v2, "checksumValidation":Z
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 83
    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->getEngine()Lorg/apache/cordova/CordovaWebViewEngine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebViewEngine;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v4, "DefaultResourceConnectTimeout"

    const/4 v5, 0x4

    .line 84
    invoke-virtual {v0, v4, v5}, Lorg/apache/cordova/CordovaPreferences;->getInteger(Ljava/lang/String;I)I

    move-result v4

    iget-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v5, "DefaultResourceReadTimeout"

    const/16 v7, 0x1e

    .line 85
    invoke-virtual {v0, v5, v7}, Lorg/apache/cordova/CordovaPreferences;->getInteger(Ljava/lang/String;I)I

    move-result v5

    move-object v0, p0

    .line 80
    invoke-static/range {v0 .. v5}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->init(Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;ZZLjava/lang/String;II)V

    .line 86
    invoke-static {}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->getInstance()Lcom/outsystems/plugins/oscache/cache/NativeCache;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache;->cacheEngine:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;

    .line 88
    iget-object v0, p0, Lorg/apache/cordova/CordovaPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    sput-object v0, Lcom/outsystems/plugins/oscache/OSCache;->staticWebView:Lorg/apache/cordova/CordovaWebView;

    .line 90
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v3, "pluginInitialize: finished"

    const-string v4, "OSCache"

    invoke-interface {v0, v3, v4}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public setSSLSecurityImpl(Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;)V
    .locals 3
    .param p1, "sslSecurity"    # Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 268
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/OSCache;->sslSecurity:Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;

    .line 270
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache;->sslSecurity:Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache;->sslSecurity:Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;

    invoke-interface {v0}, Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;->getCertificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache;->cacheEngine:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;

    iget-object v1, p0, Lcom/outsystems/plugins/oscache/OSCache;->sslSecurity:Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;

    invoke-interface {v1}, Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;->getCertificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;->setCertificatePinner(Lokhttp3/CertificatePinner;)V

    .line 272
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v1, "Valid SSLPinning configuration"

    const-string v2, "OSCache"

    invoke-interface {v0, v1, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_0
    return-void
.end method

.method public throwException(Ljava/lang/String;)V
    .locals 6
    .param p1, "errorMessage"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 351
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 352
    .local v0, "contentObject":Lorg/json/JSONObject;
    const-string v3, "Error"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 354
    const-string v3, "Exception"

    invoke-direct {p0, v3, v0}, Lcom/outsystems/plugins/oscache/OSCache;->createUpdateObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 355
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-direct {p0, v2}, Lcom/outsystems/plugins/oscache/OSCache;->sendUpdateToJSApi(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .end local v0    # "contentObject":Lorg/json/JSONObject;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v1

    .line 357
    .local v1, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/OSCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "throwException could not send task to JS API: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OSCache"

    invoke-interface {v3, v4, v5, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;)V
    .locals 6
    .param p1, "status"    # Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 338
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 339
    .local v0, "contentObject":Lorg/json/JSONObject;
    const-string v3, "Status"

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->getValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 341
    const-string v3, "UpdateStatus"

    invoke-direct {p0, v3, v0}, Lcom/outsystems/plugins/oscache/OSCache;->createUpdateObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    .line 342
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-direct {p0, v2}, Lcom/outsystems/plugins/oscache/OSCache;->sendUpdateToJSApi(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v0    # "contentObject":Lorg/json/JSONObject;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v1

    .line 344
    .local v1, "e":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/OSCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateStatus could not send task to JS API: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OSCache"

    invoke-interface {v3, v4, v5, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
