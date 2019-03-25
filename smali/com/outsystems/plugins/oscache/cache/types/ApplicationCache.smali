.class public Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
.super Ljava/lang/Object;
.source "ApplicationCache.java"


# static fields
.field private static final APPLICATION_CACHED_FRAMES_OBJECT:Ljava/lang/String; = "cachedFrames"

.field private static final APPLICATION_CACHE_ENTRIES_OBJECT:Ljava/lang/String; = "cachedEntries"

.field private static final APPLICATION_CACHE_OBJECT:Ljava/lang/String; = "cachedApplication"

.field private static final APPLICATION_CACHE_VERSION_OBJECT:Ljava/lang/String; = "cachedVersion"

.field private static final APPLICATION_HOSTNAME_OBJECT:Ljava/lang/String; = "applicationHostname"

.field private static final APPLICATION_PATH_OBJECT:Ljava/lang/String; = "applicationPath"

.field private static final APPLICATION_PREBUNDLE_VERSION_OBJECT:Ljava/lang/String; = "preBundleVersion"


# instance fields
.field private application:Ljava/lang/String;

.field private cacheApplicationKey:Ljava/lang/String;

.field private cacheEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private cacheFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/outsystems/plugins/oscache/cache/types/CacheResources;",
            ">;"
        }
    .end annotation
.end field

.field private hostname:Ljava/lang/String;

.field private logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

.field private preBundleVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

.field private previousVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

.field private runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "application"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "applicationKey"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/outsystems/plugins/oslogger/OSLogger;->getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    .line 45
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->hostname:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->application:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheApplicationKey:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheEntries:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheFrames:Ljava/util/List;

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;ZLokhttp3/OkHttpClient;Landroid/content/Context;)V
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cacheUpgrade"    # Z
    .param p3, "defaultHttpClient"    # Lokhttp3/OkHttpClient;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/outsystems/plugins/oslogger/OSLogger;->getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v1

    iput-object v1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheEntries:Ljava/util/Map;

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheFrames:Ljava/util/List;

    .line 60
    const-string v1, "applicationHostname"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const-string v1, "applicationHostname"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->hostname:Ljava/lang/String;

    .line 65
    :cond_0
    const-string v1, "applicationPath"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    const-string v1, "applicationPath"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->application:Ljava/lang/String;

    .line 70
    :cond_1
    const-string v1, "cachedApplication"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    const-string v1, "cachedApplication"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheApplicationKey:Ljava/lang/String;

    .line 75
    :cond_2
    const-string v0, ""

    .line 76
    .local v0, "runningVersionToken":Ljava/lang/String;
    const-string v1, "cachedVersion"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    const-string v1, "cachedVersion"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_3
    const-string v1, "cachedEntries"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 82
    if-eqz p2, :cond_6

    .line 83
    const-string v1, "cachedEntries"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1, v0, p3, p4}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->upgradeCacheEntries(Lorg/json/JSONObject;Ljava/lang/String;Lokhttp3/OkHttpClient;Landroid/content/Context;)V

    .line 91
    :cond_4
    :goto_0
    const-string v1, "cachedFrames"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    const-string v1, "cachedFrames"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1, v0, p3, p4}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->processCacheFrames(Lorg/json/JSONArray;Ljava/lang/String;Lokhttp3/OkHttpClient;Landroid/content/Context;)V

    .line 94
    :cond_5
    return-void

    .line 86
    :cond_6
    const-string v1, "cachedEntries"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->processCacheEntries(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private processCacheEntries(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "cacheEntriesObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 136
    .local v1, "cacheEntryKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 137
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 140
    .local v2, "currentKey":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 142
    .local v0, "cacheEntry":Lorg/json/JSONObject;
    new-instance v3, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    invoke-direct {v3, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;-><init>(Lorg/json/JSONObject;)V

    .line 143
    .local v3, "localResource":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheEntries:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 145
    .end local v0    # "cacheEntry":Lorg/json/JSONObject;
    .end local v2    # "currentKey":Ljava/lang/String;
    .end local v3    # "localResource":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    :cond_0
    return-void
.end method

.method private processCacheFrames(Lorg/json/JSONArray;Ljava/lang/String;Lokhttp3/OkHttpClient;Landroid/content/Context;)V
    .locals 4
    .param p1, "cacheFramesArray"    # Lorg/json/JSONArray;
    .param p2, "runningVersionToken"    # Ljava/lang/String;
    .param p3, "defaultHttpClient"    # Lokhttp3/OkHttpClient;
    .param p4, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 151
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 154
    .local v0, "cacheFrameObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheEntries:Ljava/util/Map;

    invoke-direct {v1, v0, v3, p3, p4}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;-><init>(Lorg/json/JSONObject;Ljava/util/Map;Lokhttp3/OkHttpClient;Landroid/content/Context;)V

    .line 156
    .local v1, "cacheResources":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getVersionToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    iput-object v1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 161
    :cond_0
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheFrames:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "cacheFrameObject":Lorg/json/JSONObject;
    .end local v1    # "cacheResources":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    :cond_1
    return-void
.end method

.method private upgradeCacheEntries(Lorg/json/JSONObject;Ljava/lang/String;Lokhttp3/OkHttpClient;Landroid/content/Context;)V
    .locals 11
    .param p1, "cacheEntriesObject"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "runningVersionToken"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "defaultHttpClient"    # Lokhttp3/OkHttpClient;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 100
    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 102
    .local v4, "cacheEntriesTemp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 104
    .local v8, "cacheEntryKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 108
    .local v9, "currentKey":Ljava/lang/String;
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 109
    .local v7, "cacheEntry":Lorg/json/JSONObject;
    new-instance v10, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    invoke-direct {v10, v7}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;-><init>(Lorg/json/JSONObject;)V

    .line 111
    .local v10, "localResource":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    invoke-virtual {v10}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->isPreBundled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->UNCACHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    invoke-virtual {v10, v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V

    .line 115
    :cond_0
    invoke-virtual {v10}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {v10, v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setResourceMapping(Z)V

    .line 117
    invoke-virtual {v10, v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setNoCache(Z)V

    .line 123
    :goto_1
    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 120
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setResourceMapping(Z)V

    goto :goto_1

    .line 126
    .end local v7    # "cacheEntry":Lorg/json/JSONObject;
    .end local v9    # "currentKey":Ljava/lang/String;
    .end local v10    # "localResource":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    :cond_2
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->hostname:Ljava/lang/String;

    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->application:Ljava/lang/String;

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lokhttp3/OkHttpClient;Landroid/content/Context;)V

    .line 127
    .local v0, "cacheFrame":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->UPGRADE:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    invoke-virtual {v0, v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->setStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;)V

    .line 129
    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 130
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheFrames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method


# virtual methods
.method public clearPreviousVersion()V
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->previousVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 451
    return-void
.end method

.method public gatherResourcesToDelete()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v1, "cacheFramesToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/outsystems/plugins/oscache/cache/types/CacheResources;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v3, "resourceEntriesToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;>;"
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheFrames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 382
    .local v0, "cacheFrame":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    iget-object v5, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    if-eq v0, v5, :cond_0

    iget-object v5, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->preBundleVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    if-eq v0, v5, :cond_0

    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->isFrameToDelete()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 383
    iget-object v5, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing files from cache frame with version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getVersionToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OSCache"

    invoke-interface {v5, v6, v7}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getCacheEntries()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .line 386
    .local v2, "entry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->isResourceToDelete()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 387
    iget-object v6, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing resource from cache: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OSCache"

    invoke-interface {v6, v7, v8}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v6, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheEntries:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 392
    .end local v2    # "entry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 396
    .end local v0    # "cacheFrame":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 397
    .restart local v0    # "cacheFrame":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    iget-object v5, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheFrames:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 398
    iget-object v5, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removed cache frame with version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getVersionToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OSCache"

    invoke-interface {v5, v6, v7}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 401
    .end local v0    # "cacheFrame":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    :cond_4
    return-object v3
.end method

.method public getApplication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->application:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheApplicationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheApplicationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheEntries()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheEntries:Ljava/util/Map;

    return-object v0
.end method

.method public getCacheEntryForUrl(Ljava/lang/String;)Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 235
    .local v0, "cacheEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getCacheEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cacheEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    check-cast v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .line 240
    .restart local v0    # "cacheEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    :cond_0
    if-nez v0, :cond_1

    .line 241
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cacheEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    check-cast v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .line 245
    .restart local v0    # "cacheEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->preBundleVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    if-eqz v1, :cond_2

    .line 246
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->preBundleVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getCacheEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cacheEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    check-cast v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .line 249
    .restart local v0    # "cacheEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    :cond_2
    return-object v0
.end method

.method public getCacheFrameByVersion(Ljava/lang/String;)Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    .locals 4
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 335
    const/4 v1, 0x0

    .line 337
    .local v1, "frame":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 338
    .local v0, "currentFrame":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getVersionToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    move-object v1, v0

    .line 344
    .end local v0    # "currentFrame":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    :cond_1
    return-object v1
.end method

.method public getCacheFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/outsystems/plugins/oscache/cache/types/CacheResources;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheFrames:Ljava/util/List;

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getPreBundleVersion()Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->preBundleVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    return-object v0
.end method

.method public getPreviousVersion()Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->previousVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    return-object v0
.end method

.method public getRunningVersion()Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    return-object v0
.end method

.method public healingCacheEntry(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getCacheEntries()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .line 259
    .local v0, "cacheEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    if-eqz v0, :cond_0

    .line 261
    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->FETCHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    invoke-virtual {v0, v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V

    .line 264
    .end local v0    # "cacheEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    :cond_0
    return-void
.end method

.method public markForDeletion()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 349
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheFrames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 350
    .local v1, "cacheFrame":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->preBundleVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    if-eq v1, v3, :cond_0

    .line 351
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Defining files from cache frame with version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getVersionToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OSCache"

    invoke-interface {v3, v5, v6}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getCacheEntries()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 354
    .local v0, "cacheEntriesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 355
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .line 357
    .local v2, "entry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->isResourceMapping()Z

    move-result v3

    if-nez v3, :cond_1

    .line 358
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing frame version from resource with key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OSCache"

    invoke-interface {v3, v5, v6}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getCacheVersions()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getVersionToken()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resource with key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is used by another "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getCacheVersions()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " frame versions"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OSCache"

    invoke-interface {v3, v5, v6}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getCacheVersions()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 365
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Defining resource from cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to be deleted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OSCache"

    invoke-interface {v3, v5, v6}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {v2, v7}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setResourceToDelete(Z)V

    goto/16 :goto_1

    .line 372
    .end local v2    # "entry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    :cond_2
    invoke-virtual {v1, v7}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->setFrameToDelete(Z)V

    goto/16 :goto_0

    .line 375
    .end local v0    # "cacheEntriesIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;>;>;"
    .end local v1    # "cacheFrame":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    :cond_3
    return-void
.end method

.method public rollbackToPreviousVersion()V
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->previousVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->previousVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 445
    invoke-virtual {p0}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->clearPreviousVersion()V

    .line 447
    :cond_0
    return-void
.end method

.method public setApplication(Ljava/lang/String;)V
    .locals 0
    .param p1, "application"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->application:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setCacheApplicationKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheApplicationKey"    # Ljava/lang/String;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheApplicationKey:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setCacheEntries(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, "cacheEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;>;"
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheEntries:Ljava/util/Map;

    .line 324
    return-void
.end method

.method public setCacheFrames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/outsystems/plugins/oscache/cache/types/CacheResources;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "cacheFrames":Ljava/util/List;, "Ljava/util/List<Lcom/outsystems/plugins/oscache/cache/types/CacheResources;>;"
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheFrames:Ljava/util/List;

    .line 328
    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->hostname:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setPreBundleVersion(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;)V
    .locals 0
    .param p1, "preBundleVersion"    # Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->preBundleVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 316
    return-void
.end method

.method public setPreviousVersion(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;)V
    .locals 0
    .param p1, "previousVersion"    # Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->previousVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 308
    return-void
.end method

.method public setRunningVersion(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;)V
    .locals 0
    .param p1, "runningVersion"    # Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 300
    return-void
.end method

.method public swapCache(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;)Z
    .locals 7
    .param p1, "cacheResources"    # Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 200
    const/4 v3, 0x1

    .line 202
    .local v3, "resultSwapCache":Z
    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getCacheEntries()Ljava/util/Map;

    move-result-object v1

    .line 203
    .local v1, "newResources":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    .local v0, "key":Ljava/lang/String;
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .line 206
    .local v2, "resource":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->isResourceMapping()Z

    move-result v5

    if-nez v5, :cond_0

    .line 207
    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getStatus()Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    move-result-object v5

    sget-object v6, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->FETCHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    if-ne v5, v6, :cond_1

    .line 208
    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->isPreBundled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 209
    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getCacheVersions()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 210
    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getMimeType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 211
    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 212
    iget-object v5, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheEntries:Ljava/util/Map;

    invoke-interface {v5, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 215
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 221
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "resource":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    :cond_2
    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getStatus()Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    move-result-object v4

    sget-object v5, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->FETCHED:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    if-eq v4, v5, :cond_3

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getStatus()Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    move-result-object v4

    sget-object v5, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->UPGRADE:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    if-ne v4, v5, :cond_5

    .line 223
    :cond_3
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    if-eqz v4, :cond_4

    .line 224
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    iput-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->previousVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 226
    :cond_4
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 228
    :cond_5
    return v3
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 167
    .local v5, "result":Lorg/json/JSONObject;
    const-string v6, "applicationHostname"

    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->hostname:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v6, "applicationPath"

    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->application:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string v6, "cachedApplication"

    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheApplicationKey:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    iget-object v6, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    if-eqz v6, :cond_0

    .line 172
    const-string v6, "cachedVersion"

    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v7}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getVersionToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    :cond_0
    iget-object v6, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->preBundleVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    if-eqz v6, :cond_1

    .line 176
    const-string v6, "preBundleVersion"

    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->preBundleVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v7}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getVersionToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 180
    .local v2, "cachedEntries":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheEntries:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 181
    .local v4, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheEntries:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .line 182
    .local v0, "cacheEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 185
    .end local v0    # "cacheEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    const-string v6, "cachedEntries"

    invoke-virtual {v5, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 188
    .local v3, "cachedFrames":Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->cacheFrames:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 189
    .local v1, "cacheResource":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->isPreBundled()Z

    move-result v7

    if-nez v7, :cond_3

    .line 190
    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 194
    .end local v1    # "cacheResource":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    :cond_4
    const-string v6, "cachedFrames"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    return-object v5
.end method

.method public upgradeIfNeeded()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 405
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v3}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getStatus()Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    move-result-object v3

    sget-object v4, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->UPGRADE:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    if-ne v3, v4, :cond_4

    .line 407
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading cache for application: https://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->hostname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->application:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OSCache"

    invoke-interface {v3, v4, v5}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v3}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getCacheEntries()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 410
    .local v2, "currentKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v4}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getCacheEntries()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .line 412
    .local v0, "cacheEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->isPreBundled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->preBundleVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    if-eqz v4, :cond_0

    .line 413
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->preBundleVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v4}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getCacheEntries()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .line 415
    .local v1, "cacheEntryPreBundle":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    if-nez v1, :cond_1

    .line 416
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->preBundleVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v4}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getCacheEntries()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cacheEntryPreBundle":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    check-cast v1, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .line 419
    .restart local v1    # "cacheEntryPreBundle":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    :cond_1
    if-eqz v1, :cond_2

    .line 420
    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 421
    invoke-virtual {v4, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->fileExistsAtPreBundle(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 422
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v4, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->copyPreBundleResource(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;)V

    .line 423
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    sget-object v5, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->FETCHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    invoke-virtual {v4, v0, v5}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->updateResourceStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V

    .line 430
    :goto_1
    invoke-virtual {v0, v6}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setPreBundled(Z)V

    goto :goto_0

    .line 426
    :cond_2
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getFileNameForUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setFileName(Ljava/lang/String;)V

    .line 427
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    sget-object v5, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->FAILED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    invoke-virtual {v4, v0, v5}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->updateResourceStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V

    goto :goto_1

    .line 434
    .end local v0    # "cacheEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .end local v1    # "cacheEntryPreBundle":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .end local v2    # "currentKey":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    sget-object v4, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->FETCHED:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    invoke-virtual {v3, v4}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->setStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;)V

    .line 435
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v3, v6}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->setPreBundled(Z)V

    .line 437
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->runningVersion:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {p0, v3}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->swapCache(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;)Z

    .line 438
    invoke-virtual {p0}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->clearPreviousVersion()V

    .line 440
    :cond_4
    return-void
.end method
