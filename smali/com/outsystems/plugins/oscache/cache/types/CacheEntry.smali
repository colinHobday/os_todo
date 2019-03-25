.class public Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
.super Ljava/lang/Object;
.source "CacheEntry.java"


# static fields
.field private static final CACHE_ENTRY_CACHE_VERSIONS:Ljava/lang/String; = "cacheVersions"

.field private static final CACHE_ENTRY_ENCODING:Ljava/lang/String; = "encoding"

.field private static final CACHE_ENTRY_FILENAME:Ljava/lang/String; = "fileName"

.field private static final CACHE_ENTRY_MIME_TYPE:Ljava/lang/String; = "mimeType"

.field private static final CACHE_ENTRY_NO_CACHE:Ljava/lang/String; = "noCache"

.field private static final CACHE_ENTRY_PREBUNDLED:Ljava/lang/String; = "preBundled"

.field private static final CACHE_ENTRY_RESOURCE_MAPPING:Ljava/lang/String; = "resourceMapping"

.field private static final CACHE_ENTRY_RESOURCE_TO_DELETE:Ljava/lang/String; = "resourceToDelete"

.field private static final CACHE_ENTRY_STATUS:Ljava/lang/String; = "status"

.field private static final CACHE_ENTRY_URL:Ljava/lang/String; = "url"

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"


# instance fields
.field private cacheVersions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private encoding:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private noCache:Z

.field private preBundled:Z

.field private resourceMapping:Z

.field private resourceToDelete:Z

.field private status:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;)V
    .locals 2
    .param p1, "cacheEntry"    # Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-object v0, p1, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->url:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->fileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->fileName:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->mimeType:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->encoding:Ljava/lang/String;

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->encoding:Ljava/lang/String;

    .line 64
    iget-boolean v0, p1, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->preBundled:Z

    iput-boolean v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->preBundled:Z

    .line 65
    iget-boolean v0, p1, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->resourceMapping:Z

    iput-boolean v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->resourceMapping:Z

    .line 66
    iget-boolean v0, p1, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->noCache:Z

    iput-boolean v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->noCache:Z

    .line 67
    iget-object v0, p1, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->status:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->status:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->cacheVersions:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->cacheVersions:Ljava/util/Map;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fileName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "mimeType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "preBundled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->url:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->fileName:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->mimeType:Ljava/lang/String;

    .line 48
    iput-boolean p4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->preBundled:Z

    .line 51
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->encoding:Ljava/lang/String;

    .line 52
    iput-boolean v1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->resourceMapping:Z

    .line 53
    iput-boolean v1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->noCache:Z

    .line 54
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->UNCACHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->status:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->cacheVersions:Ljava/util/Map;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v4, "url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    const-string v4, "url"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->url:Ljava/lang/String;

    .line 77
    :cond_0
    const-string v4, "fileName"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    const-string v4, "fileName"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->fileName:Ljava/lang/String;

    .line 81
    :cond_1
    const-string v4, "mimeType"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 82
    const-string v4, "mimeType"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->mimeType:Ljava/lang/String;

    .line 85
    :cond_2
    const-string v4, "encoding"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 86
    const-string v4, "encoding"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->encoding:Ljava/lang/String;

    .line 92
    :goto_0
    const-string v4, "preBundled"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 93
    const-string v4, "preBundled"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->preBundled:Z

    .line 96
    :cond_3
    const-string v4, "resourceMapping"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 97
    const-string v4, "resourceMapping"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->resourceMapping:Z

    .line 100
    :cond_4
    const-string v4, "noCache"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 101
    const-string v4, "noCache"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->noCache:Z

    .line 104
    :cond_5
    const-string v4, "status"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 105
    const-string v4, "status"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 106
    .local v2, "value":I
    invoke-static {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->getStatusForValue(I)Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    move-result-object v4

    iput-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->status:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    .line 112
    .end local v2    # "value":I
    :goto_1
    const-string v4, "resourceToDelete"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 113
    const-string v4, "resourceToDelete"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->resourceToDelete:Z

    .line 116
    :cond_6
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->cacheVersions:Ljava/util/Map;

    .line 117
    const-string v4, "cacheVersions"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 118
    const-string v4, "cacheVersions"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 119
    .local v3, "versions":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 120
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 122
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "value":Ljava/lang/String;
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->cacheVersions:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 89
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    .end local v3    # "versions":Lorg/json/JSONObject;
    :cond_7
    const-string v4, "UTF-8"

    iput-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->encoding:Ljava/lang/String;

    goto/16 :goto_0

    .line 109
    :cond_8
    sget-object v4, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->UNCACHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    iput-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->status:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    goto :goto_1

    .line 127
    :cond_9
    return-void
.end method


# virtual methods
.method public getCacheVersions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->cacheVersions:Ljava/util/Map;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getStatus()Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;
    .locals 1

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->status:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->url:Ljava/lang/String;

    return-object v0
.end method

.method public healMimeType()V
    .locals 2

    .prologue
    .line 155
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "extension":Ljava/lang/String;
    invoke-static {}, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->getInstance()Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->mimeType:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public isNoCache()Z
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->noCache:Z

    return v0
.end method

.method public isPreBundled()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->preBundled:Z

    return v0
.end method

.method public isResourceMapping()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->resourceMapping:Z

    return v0
.end method

.method public isResourceToDelete()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->resourceToDelete:Z

    return v0
.end method

.method public setCacheVersions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "cacheVersions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->cacheVersions:Ljava/util/Map;

    .line 227
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->encoding:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->fileName:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->mimeType:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setNoCache(Z)V
    .locals 0
    .param p1, "noCache"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->noCache:Z

    .line 211
    return-void
.end method

.method public setPreBundled(Z)V
    .locals 0
    .param p1, "preBundled"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->preBundled:Z

    .line 195
    return-void
.end method

.method public setResourceMapping(Z)V
    .locals 0
    .param p1, "resourceMapping"    # Z

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->resourceMapping:Z

    .line 203
    return-void
.end method

.method public setResourceToDelete(Z)V
    .locals 0
    .param p1, "resourceToDelete"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->resourceToDelete:Z

    return-void
.end method

.method public declared-synchronized setStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->status:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit p0

    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->url:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 132
    .local v1, "result":Lorg/json/JSONObject;
    const-string v3, "url"

    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->url:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v3, "fileName"

    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v3, "mimeType"

    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v3, "encoding"

    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v3, "preBundled"

    iget-boolean v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->preBundled:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 137
    const-string v3, "resourceMapping"

    iget-boolean v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->resourceMapping:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 138
    const-string v3, "noCache"

    iget-boolean v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->noCache:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 139
    const-string v3, "status"

    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->status:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    invoke-virtual {v4}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->getValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 141
    iget-boolean v3, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->resourceToDelete:Z

    if-eqz v3, :cond_0

    .line 142
    const-string v3, "resourceToDelete"

    iget-boolean v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->resourceToDelete:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 145
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 146
    .local v2, "versions":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->cacheVersions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v2, v0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 149
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    const-string v3, "cacheVersions"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    return-object v1
.end method
