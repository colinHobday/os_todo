.class public Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
.super Ljava/lang/Object;
.source "CacheResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/outsystems/plugins/oscache/cache/types/CacheResources$InvalidResourceException;
    }
.end annotation


# static fields
.field private static final CACHE_RESOURCES_APPLICATION:Ljava/lang/String; = "application"

.field private static final CACHE_RESOURCES_FRAME_TO_DELETE:Ljava/lang/String; = "frameToDelete"

.field private static final CACHE_RESOURCES_HOSTNAME:Ljava/lang/String; = "hostname"

.field private static final CACHE_RESOURCES_RESOURCES:Ljava/lang/String; = "resources"

.field private static final CACHE_RESOURCES_STATUS:Ljava/lang/String; = "status"

.field private static final CACHE_RESOURCES_URL_MAPPINGS:Ljava/lang/String; = "urlMappings"

.field private static final CACHE_RESOURCES_URL_MAPPINGS_NO_CACHE:Ljava/lang/String; = "urlMappingsNoCache"

.field private static final CACHE_RESOURCES_VERSION_TOKEN:Ljava/lang/String; = "versionToken"

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final NATIVE_CACHE_DIRECTORY:Ljava/lang/String; = "OSNativeCache"

.field private static final PATTERN_CONTENT_TYPE:Ljava/util/regex/Pattern;


# instance fields
.field allResourcesDownloaded:Z

.field private application:Ljava/lang/String;

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

.field private context:Landroid/content/Context;

.field private downloadListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;

.field private frameToDelete:Z

.field private hostname:Ljava/lang/String;

.field private httpClient:Lokhttp3/OkHttpClient;

.field initialResourcesCount:I

.field private logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

.field private maxNumberOfRetries:I

.field numberOfRetries:I

.field private preBundled:Z

.field processedResourcesCount:I

.field private status:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

.field totalResourcesCount:I

.field private versionToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "^([a-zA-Z]+\\/[a-zA-Z0-9]+(?:[-+.][a-zA-Z0-9]+)*)(?:.+?(charset=[a-zA-Z0-9]+(?:[-+._][a-zA-Z0-9]+)*).*)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->PATTERN_CONTENT_TYPE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lokhttp3/OkHttpClient;Landroid/content/Context;)V
    .locals 9
    .param p1, "hostname"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "application"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "version"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "httpClient"    # Lokhttp3/OkHttpClient;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;",
            ">;",
            "Lokhttp3/OkHttpClient;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 116
    .local p4, "cacheEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;>;"
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;Lokhttp3/OkHttpClient;Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;Lokhttp3/OkHttpClient;Landroid/content/Context;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "application"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "version"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "preBundled"    # Z
    .param p5    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "downloadListener"    # Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "httpClient"    # Lokhttp3/OkHttpClient;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;",
            ">;",
            "Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;",
            "Lokhttp3/OkHttpClient;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p5, "cacheEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;>;"
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Lcom/outsystems/plugins/oslogger/OSLogger;->getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    .line 93
    iput-object p3, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->versionToken:Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->hostname:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->application:Ljava/lang/String;

    .line 96
    iput-boolean p4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->preBundled:Z

    .line 97
    if-eqz p5, :cond_0

    .end local p5    # "cacheEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;>;"
    :goto_0
    iput-object p5, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->cacheEntries:Ljava/util/Map;

    .line 98
    iput-object p6, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->downloadListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;

    .line 99
    iput-object p7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->httpClient:Lokhttp3/OkHttpClient;

    .line 100
    invoke-virtual {p8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->context:Landroid/content/Context;

    .line 103
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->EMPTY:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->status:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    .line 104
    iput v1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->initialResourcesCount:I

    .line 105
    iput v1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->processedResourcesCount:I

    .line 106
    iput v1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->totalResourcesCount:I

    .line 108
    return-void

    .line 97
    .restart local p5    # "cacheEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;>;"
    :cond_0
    new-instance p5, Ljava/util/HashMap;

    .end local p5    # "cacheEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;>;"
    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/util/Map;Lokhttp3/OkHttpClient;Landroid/content/Context;)V
    .locals 12
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "httpClient"    # Lokhttp3/OkHttpClient;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;",
            ">;",
            "Lokhttp3/OkHttpClient;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 123
    .local p2, "resourcePool":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Lcom/outsystems/plugins/oslogger/OSLogger;->getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    .line 126
    const-string v0, "hostname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const-string v0, "hostname"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->hostname:Ljava/lang/String;

    .line 131
    :cond_0
    const-string v0, "application"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    const-string v0, "application"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->application:Ljava/lang/String;

    .line 136
    :cond_1
    const-string v0, "versionToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    const-string v0, "versionToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->versionToken:Ljava/lang/String;

    .line 141
    :cond_2
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->getStatusForValue(I)Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->status:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    .line 148
    :goto_0
    const-string v0, "frameToDelete"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    const-string v0, "frameToDelete"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->frameToDelete:Z

    .line 152
    :cond_3
    iput-object p3, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->httpClient:Lokhttp3/OkHttpClient;

    .line 153
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->context:Landroid/content/Context;

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->cacheEntries:Ljava/util/Map;

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->initialResourcesCount:I

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->processedResourcesCount:I

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->totalResourcesCount:I

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v3, "resourceUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "resources"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 164
    const-string v0, "resources"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 165
    .local v11, "resources":Lorg/json/JSONArray;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 166
    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 145
    .end local v3    # "resourceUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "j":I
    .end local v11    # "resources":Lorg/json/JSONArray;
    :cond_4
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->EMPTY:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->status:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    goto :goto_0

    .line 171
    .restart local v3    # "resourceUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 172
    .local v4, "urlMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "urlMappings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 173
    const-string v0, "urlMappings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 174
    .local v8, "mappings":Lorg/json/JSONObject;
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 175
    .local v9, "mappingsKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 176
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 177
    .local v6, "currentKey":Ljava/lang/String;
    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 182
    .end local v6    # "currentKey":Ljava/lang/String;
    .end local v8    # "mappings":Lorg/json/JSONObject;
    .end local v9    # "mappingsKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v5, "urlMappingsNoCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "urlMappingsNoCache"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 184
    const-string v0, "urlMappingsNoCache"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 185
    .local v10, "mappingsNoCache":Lorg/json/JSONObject;
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v9

    .line 186
    .restart local v9    # "mappingsKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 187
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 188
    .restart local v6    # "currentKey":Ljava/lang/String;
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 192
    .end local v6    # "currentKey":Ljava/lang/String;
    .end local v9    # "mappingsKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10    # "mappingsNoCache":Lorg/json/JSONObject;
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->populateCacheEntries(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;)Lcom/outsystems/plugins/oslogger/interfaces/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    .param p1, "x1"    # Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->downloadFailedWithError(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->context:Landroid/content/Context;

    return-object v0
.end method

.method private downloadFailedWithError(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "cacheEntry"    # Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "checksumValidation"    # Z

    .prologue
    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to download resource "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 659
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v1, "OSCache"

    invoke-interface {v0, p2, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-direct {p0}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getNumberOfRetries()I

    move-result v0

    iget v1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->maxNumberOfRetries:I

    if-le v0, v1, :cond_0

    .line 662
    invoke-virtual {p0, p2}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->abortDownload(Ljava/lang/String;)V

    .line 663
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->FAILED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    invoke-virtual {p0, p1, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->updateResourceStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V

    .line 670
    :goto_0
    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retrying resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OSCache"

    invoke-interface {v0, v1, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-direct {p0}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->incrementNumberOfRetries()V

    .line 668
    invoke-virtual {p0, p1, p3}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->downloadResourceAsync(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Z)V

    goto :goto_0
.end method

.method private declared-synchronized getNumberOfRetries()I
    .locals 1

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->numberOfRetries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized incrementNumberOfRetries()V
    .locals 1

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->numberOfRetries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->numberOfRetries:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    monitor-exit p0

    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public abortDownload(Ljava/lang/String;)V
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aborting resources download. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 734
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v1, "OSCache"

    invoke-interface {v0, p1, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->FAILED:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->status:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    .line 737
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->downloadListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;

    invoke-interface {v0, p1}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;->onError(Ljava/lang/String;)V

    .line 739
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V

    .line 740
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->downloadListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;->onFinish(Z)V

    .line 741
    return-void
.end method

.method public copyPreBundleResource(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;)V
    .locals 11
    .param p1, "resource"    # Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .prologue
    .line 500
    const/4 v6, 0x0

    .line 501
    .local v6, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 503
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    sget-object v7, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->DOWNLOADING:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    invoke-virtual {p0, p1, v7}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->updateResourceStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V

    .line 505
    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 506
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 508
    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getFileNameForUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setFileName(Ljava/lang/String;)V

    .line 509
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setPreBundled(Z)V

    .line 513
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v7

    new-array v1, v7, [B

    .line 514
    .local v1, "data":[B
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I

    .line 516
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 517
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 518
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 521
    :cond_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 523
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 525
    sget-object v7, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->FETCHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    invoke-virtual {p0, p1, v7}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->updateResourceStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V

    .line 527
    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Copied prebundled resource "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OSCache"

    invoke-interface {v7, v8, v9}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 537
    if-eqz v6, :cond_1

    .line 539
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 544
    :cond_1
    :goto_0
    if-eqz v5, :cond_6

    .line 546
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v5

    .line 552
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "data":[B
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_2
    :goto_1
    return-void

    .line 540
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v1    # "data":[B
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 541
    .local v2, "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v8, "Could not close InputStream while copying prebundle resource to cache directory"

    const-string v9, "OSCache"

    invoke-interface {v7, v8, v9, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 547
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 548
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v8, "Could not close FileOutputStream while copying prebundle resource to cache directory"

    const-string v9, "OSCache"

    invoke-interface {v7, v8, v9, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v5

    .line 549
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 529
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    :catch_2
    move-exception v2

    .line 531
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getFileNameForUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setFileName(Ljava/lang/String;)V

    .line 532
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setPreBundled(Z)V

    .line 533
    sget-object v7, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->UNCACHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    invoke-virtual {p0, p1, v7}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->updateResourceStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V

    .line 534
    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not copy resource "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from prebundle with error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OSCache"

    invoke-interface {v7, v8, v9, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 537
    if-eqz v6, :cond_3

    .line 539
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 544
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    if-eqz v4, :cond_2

    .line 546
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 547
    :catch_3
    move-exception v2

    .line 548
    .local v2, "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v8, "Could not close FileOutputStream while copying prebundle resource to cache directory"

    const-string v9, "OSCache"

    invoke-interface {v7, v8, v9, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 540
    .local v2, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 541
    .local v2, "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v8, "Could not close InputStream while copying prebundle resource to cache directory"

    const-string v9, "OSCache"

    invoke-interface {v7, v8, v9, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 537
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v6, :cond_4

    .line 539
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 544
    :cond_4
    :goto_5
    if-eqz v4, :cond_5

    .line 546
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 551
    :cond_5
    :goto_6
    throw v7

    .line 540
    :catch_5
    move-exception v2

    .line 541
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v8, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v9, "Could not close InputStream while copying prebundle resource to cache directory"

    const-string v10, "OSCache"

    invoke-interface {v8, v9, v10, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 547
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 548
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v8, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v9, "Could not close FileOutputStream while copying prebundle resource to cache directory"

    const-string v10, "OSCache"

    invoke-interface {v8, v9, v10, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 537
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v1    # "data":[B
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 529
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_6
    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method downloadResourceAsync(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Z)V
    .locals 6
    .param p1, "resource"    # Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .param p2, "checksumValidation"    # Z

    .prologue
    .line 581
    sget-object v3, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->DOWNLOADING:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    invoke-virtual {p0, p1, v3}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->updateResourceStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V

    .line 583
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->hostname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "resourceUrl":Ljava/lang/String;
    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 587
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 590
    :cond_0
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    .line 591
    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    const-string v4, "Accept"

    const-string v5, "*/*"

    .line 592
    invoke-virtual {v3, v4, v5}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 593
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 596
    .local v1, "request":Lokhttp3/Request;
    :try_start_0
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    new-instance v4, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;-><init>(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Z)V

    invoke-interface {v3, v4}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 655
    :goto_0
    return-void

    .line 651
    :catch_0
    move-exception v0

    .line 652
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to download resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OSCache"

    invoke-interface {v3, v4, v5, v0}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 653
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to download resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->abortDownload(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public downloadResourceSync(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Z)V
    .locals 13
    .param p1, "cacheEntry"    # Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .param p2, "checksumValidation"    # Z

    .prologue
    .line 673
    sget-object v9, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->DOWNLOADING:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    invoke-virtual {p0, p1, v9}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->updateResourceStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V

    .line 675
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->hostname:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 678
    .local v7, "resourceUrl":Ljava/lang/String;
    const-string v9, "http://"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "https://"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 679
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "https://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 682
    :cond_0
    new-instance v9, Lokhttp3/Request$Builder;

    invoke-direct {v9}, Lokhttp3/Request$Builder;-><init>()V

    .line 683
    invoke-virtual {v9, v7}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    const-string v10, "Accept"

    const-string v11, "*/*"

    .line 684
    invoke-virtual {v9, v10, v11}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    .line 685
    invoke-virtual {v9}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v6

    .line 688
    .local v6, "request":Lokhttp3/Request;
    :try_start_0
    iget-object v9, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v9, v6}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v9

    invoke-interface {v9}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v8

    .line 689
    .local v8, "response":Lokhttp3/Response;
    invoke-virtual {v8}, Lokhttp3/Response;->isSuccessful()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-eqz v9, :cond_1

    .line 690
    const/4 v4, 0x0

    .line 693
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v8}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v1

    .line 695
    .local v1, "data":[B
    new-instance v3, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getFileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 696
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 698
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v5, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 700
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 702
    invoke-virtual {v8}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v9

    const-string v10, "Content-Type"

    invoke-virtual {v9, v10}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    .local v0, "contentType":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->processContentType(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Ljava/lang/String;)V

    .line 705
    invoke-virtual {p0, p1, v3, p2}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->validateDownloadedResourceFile(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Ljava/io/File;Z)V

    .line 706
    sget-object v9, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->FETCHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    invoke-virtual {p0, p1, v9}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->updateResourceStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V

    .line 707
    iget-object v9, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Downloaded resource "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "OSCache"

    invoke-interface {v9, v10, v11}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 715
    if-eqz v5, :cond_1

    .line 717
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 730
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v1    # "data":[B
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v8    # "response":Lokhttp3/Response;
    :cond_1
    :goto_0
    return-void

    .line 719
    .restart local v0    # "contentType":Ljava/lang/String;
    .restart local v1    # "data":[B
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "response":Lokhttp3/Response;
    :catch_0
    move-exception v2

    .line 720
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    iget-object v9, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v10, "Could not close FileOutputStream while trying to write the downloaded resource"

    const-string v11, "OSCache"

    invoke-interface {v9, v10, v11}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 726
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v8    # "response":Lokhttp3/Response;
    :catch_1
    move-exception v2

    .line 727
    .local v2, "e":Ljava/lang/Exception;
    sget-object v9, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->FAILED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    invoke-virtual {p0, p1, v9}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->updateResourceStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V

    .line 728
    iget-object v9, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to download resource "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "OSCache"

    invoke-interface {v9, v10, v11, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 710
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v8    # "response":Lokhttp3/Response;
    :catch_2
    move-exception v2

    .line 711
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_5
    sget-object v9, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->UNCACHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    invoke-virtual {p0, p1, v9}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->updateResourceStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V

    .line 712
    iget-object v9, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to store downloaded resource "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "OSCache"

    invoke-interface {v9, v10, v11, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 715
    if-eqz v4, :cond_1

    .line 717
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 719
    :catch_3
    move-exception v2

    .line 720
    .local v2, "e":Ljava/io/IOException;
    :try_start_7
    iget-object v9, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v10, "Could not close FileOutputStream while trying to write the downloaded resource"

    const-string v11, "OSCache"

    invoke-interface {v9, v10, v11}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 715
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v4, :cond_2

    .line 717
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 723
    :cond_2
    :goto_3
    :try_start_9
    throw v9

    .line 719
    :catch_4
    move-exception v2

    .line 720
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v10, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v11, "Could not close FileOutputStream while trying to write the downloaded resource"

    const-string v12, "OSCache"

    invoke-interface {v10, v11, v12}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    .line 715
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "data":[B
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 710
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v2

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method fileExistsAtCacheDirectory(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;)Z
    .locals 8
    .param p1, "cacheEntry"    # Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .prologue
    .line 766
    const/4 v2, 0x0

    .line 768
    .local v2, "result":Z
    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->isPreBundled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 770
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 771
    .local v1, "filePath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    const/4 v2, 0x1

    .line 777
    .end local v1    # "filePath":Ljava/io/File;
    :cond_0
    :goto_0
    return v2

    .line 771
    .restart local v1    # "filePath":Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 772
    .end local v1    # "filePath":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to locate file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OSCache"

    invoke-interface {v3, v4, v5}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fileExistsAtPreBundle(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;)Z
    .locals 8
    .param p1, "cacheEntry"    # Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .prologue
    .line 781
    const/4 v3, 0x0

    .line 782
    .local v3, "success":Z
    const/4 v2, 0x0

    .line 785
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 786
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 788
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-lez v4, :cond_1

    const/4 v3, 0x1

    .line 794
    :goto_0
    if-eqz v2, :cond_0

    .line 796
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 803
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    :cond_0
    :goto_1
    return v3

    .line 788
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 797
    :catch_0
    move-exception v1

    .line 798
    .local v1, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v5, "Could not close InputStream while trying to check if prebundle file exists"

    const-string v6, "OSCache"

    invoke-interface {v4, v5, v6, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 790
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 791
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to check if file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exists at prebundle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OSCache"

    invoke-interface {v4, v5, v6, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 794
    if-eqz v2, :cond_0

    .line 796
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 797
    :catch_2
    move-exception v1

    .line 798
    .local v1, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v5, "Could not close InputStream while trying to check if prebundle file exists"

    const-string v6, "OSCache"

    invoke-interface {v4, v5, v6, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 794
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    .line 796
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 801
    :cond_2
    :goto_2
    throw v4

    .line 797
    :catch_3
    move-exception v1

    .line 798
    .restart local v1    # "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v6, "Could not close InputStream while trying to check if prebundle file exists"

    const-string v7, "OSCache"

    invoke-interface {v5, v6, v7, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public getApplication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->application:Ljava/lang/String;

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
    .line 394
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->cacheEntries:Ljava/util/Map;

    return-object v0
.end method

.method public getDownloadListener()Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->downloadListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;

    return-object v0
.end method

.method public getFileNameForUrl(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "preBundled"    # Z

    .prologue
    .line 746
    if-eqz p2, :cond_0

    .line 747
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 753
    .local v2, "uri":Landroid/net/Uri;
    const-string v1, "(^\\/([\\da-zA-Z\\-_]+)\\/)"

    .line 754
    .local v1, "regex":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "www/"

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 762
    .end local v1    # "regex":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    .local v0, "fileName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 757
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OSNativeCache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->hostname:Ljava/lang/String;

    iget-object v5, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->application:Ljava/lang/String;

    .line 758
    invoke-static {v4, v5}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->getKeyForHostnameAndApplication(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 759
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxNumberOfRetries()I
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->maxNumberOfRetries:I

    return v0
.end method

.method public getStatus()Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->status:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    return-object v0
.end method

.method public getVersionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->versionToken:Ljava/lang/String;

    return-object v0
.end method

.method public isFrameToDelete()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->frameToDelete:Z

    return v0
.end method

.method public isPreBundled()Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->preBundled:Z

    return v0
.end method

.method isResourceFileCorrupted(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Ljava/io/File;)Z
    .locals 9
    .param p1, "cacheEntry"    # Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 837
    :try_start_0
    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v7

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 838
    .local v4, "hashIndex":I
    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, "checksum":Ljava/lang/String;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v7}, Lcom/outsystems/plugins/oscache/cache/helpers/FileChecksum;->getContentHash(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 844
    .local v3, "fileContentHash":Ljava/lang/String;
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 846
    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getMimeType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "application/json"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getMimeType()Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/html"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 847
    :cond_0
    invoke-virtual {p0, p2, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->resourceContentContainsVersionToken(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 848
    .local v1, "containsVersion":Z
    if-nez v1, :cond_2

    .line 859
    .end local v0    # "checksum":Ljava/lang/String;
    .end local v1    # "containsVersion":Z
    .end local v3    # "fileContentHash":Ljava/lang/String;
    .end local v4    # "hashIndex":I
    :cond_1
    :goto_0
    return v5

    .restart local v0    # "checksum":Ljava/lang/String;
    .restart local v1    # "containsVersion":Z
    .restart local v3    # "fileContentHash":Ljava/lang/String;
    .restart local v4    # "hashIndex":I
    :cond_2
    move v5, v6

    .line 848
    goto :goto_0

    .line 855
    .end local v0    # "checksum":Ljava/lang/String;
    .end local v1    # "containsVersion":Z
    .end local v3    # "fileContentHash":Ljava/lang/String;
    .end local v4    # "hashIndex":I
    :catch_0
    move-exception v2

    .line 856
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to check the integrity of the file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OSCache"

    invoke-interface {v5, v7, v8, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    move v5, v6

    .line 859
    goto :goto_0
.end method

.method public populateCacheEntries(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 21
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;",
            ">;",
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "resourcePool":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;>;"
    .local p2, "preBundleEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;>;"
    .local p3, "resourceUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "urlMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p5, "urlMappingsNoCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_3

    .line 202
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->totalResourcesCount:I

    .line 205
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 206
    .local v15, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->cacheEntries:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 212
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .line 214
    .local v13, "previousResourceEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    if-eqz v13, :cond_1

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->cacheEntries:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    move-object/from16 v0, p0

    iget v0, v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->initialResourcesCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->initialResourcesCount:I

    goto :goto_0

    .line 220
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->preBundled:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getFileNameForUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, "fileName":Ljava/lang/String;
    invoke-static {v15}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "extension":Ljava/lang/String;
    invoke-static {}, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->getInstance()Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 224
    .local v8, "mimeType":Ljava/lang/String;
    new-instance v14, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->preBundled:Z

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-direct {v14, v15, v5, v8, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 226
    .local v14, "resourceEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    if-eqz p2, :cond_2

    .line 227
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .line 228
    .local v10, "preBundleResourceEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    if-eqz v10, :cond_2

    .line 229
    invoke-virtual {v10}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getFileName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setFileName(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v10}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getMimeType()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setMimeType(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v10}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getEncoding()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setEncoding(Ljava/lang/String;)V

    .line 233
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setPreBundled(Z)V

    .line 237
    .end local v10    # "preBundleResourceEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->cacheEntries:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 242
    .end local v4    # "extension":Ljava/lang/String;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v8    # "mimeType":Ljava/lang/String;
    .end local v13    # "previousResourceEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .end local v14    # "resourceEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .end local v15    # "url":Ljava/lang/String;
    :cond_3
    if-eqz p4, :cond_6

    .line 244
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 245
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p4

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 249
    .local v16, "value":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .line 252
    .local v11, "previousMappedResourceEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    if-eqz v11, :cond_4

    .line 255
    new-instance v7, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    invoke-direct {v7, v11}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;-><init>(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;)V

    .line 256
    .local v7, "mappingEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setResourceMapping(Z)V

    .line 257
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setNoCache(Z)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->cacheEntries:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 263
    .end local v7    # "mappingEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->cacheEntries:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .line 264
    .local v2, "currentVersionMappingEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    if-eqz v2, :cond_5

    .line 266
    new-instance v7, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    invoke-direct {v7, v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;-><init>(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;)V

    .line 267
    .restart local v7    # "mappingEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setResourceMapping(Z)V

    .line 268
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setNoCache(Z)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->cacheEntries:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 271
    .end local v7    # "mappingEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-object/from16 v18, v0

    const-string v19, "Manifest inconsistency: URL for mapping was not found"

    const-string v20, "OSCache"

    invoke-interface/range {v18 .. v20}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 277
    .end local v2    # "currentVersionMappingEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .end local v6    # "key":Ljava/lang/String;
    .end local v11    # "previousMappedResourceEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .end local v16    # "value":Ljava/lang/String;
    :cond_6
    if-eqz p5, :cond_9

    .line 279
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 280
    .restart local v6    # "key":Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 284
    .restart local v16    # "value":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .line 287
    .local v12, "previousNoCacheMappingEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    if-eqz v12, :cond_7

    .line 290
    new-instance v9, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    invoke-direct {v9, v12}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;-><init>(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;)V

    .line 291
    .local v9, "noCacheMappingEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setResourceMapping(Z)V

    .line 292
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setNoCache(Z)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->cacheEntries:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 297
    .end local v9    # "noCacheMappingEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->cacheEntries:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .line 298
    .local v3, "currentVersionNoCacheMappingEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    if-eqz v3, :cond_8

    .line 300
    new-instance v9, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    invoke-direct {v9, v3}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;-><init>(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;)V

    .line 301
    .restart local v9    # "noCacheMappingEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setResourceMapping(Z)V

    .line 302
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setNoCache(Z)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->cacheEntries:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 305
    .end local v9    # "noCacheMappingEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-object/from16 v18, v0

    const-string v19, "Manifest inconsistency: URL for mapping no cache was not found"

    const-string v20, "OSCache"

    invoke-interface/range {v18 .. v20}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 310
    .end local v3    # "currentVersionNoCacheMappingEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .end local v6    # "key":Ljava/lang/String;
    .end local v12    # "previousNoCacheMappingEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .end local v16    # "value":Ljava/lang/String;
    :cond_9
    return-void
.end method

.method processContentType(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Ljava/lang/String;)V
    .locals 4
    .param p1, "resource"    # Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 562
    if-eqz p2, :cond_0

    .line 563
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 565
    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->PATTERN_CONTENT_TYPE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 567
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setMimeType(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 574
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setEncoding(Ljava/lang/String;)V

    .line 578
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    return-void
.end method

.method resourceContentContainsVersionToken(Ljava/io/File;Ljava/lang/String;)Z
    .locals 12
    .param p1, "file"    # Ljava/io/File;
    .param p2, "versionToken"    # Ljava/lang/String;

    .prologue
    .line 863
    const/4 v7, 0x0

    .line 865
    .local v7, "resourceStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    .end local v7    # "resourceStream":Ljava/io/InputStream;
    .local v8, "resourceStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 868
    .local v3, "inputStringBuilder":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    const-string v10, "UTF-8"

    invoke-direct {v9, v8, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 869
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 870
    .local v4, "line":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_0

    .line 871
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 872
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 874
    :cond_0
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 876
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 881
    .local v2, "fileContent":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ".*(OSManifestLoader\\.indexVersionToken.*=.*|\"versionToken\":)\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\".*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 882
    .local v6, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 884
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    move-object v7, v8

    .line 888
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "fileContent":Ljava/lang/String;
    .end local v3    # "inputStringBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    .end local v6    # "pattern":Ljava/util/regex/Pattern;
    .end local v8    # "resourceStream":Ljava/io/InputStream;
    .restart local v7    # "resourceStream":Ljava/io/InputStream;
    :goto_1
    return v9

    .line 886
    :catch_0
    move-exception v1

    .line 887
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    iget-object v9, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to validate the content of the resource: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "OSCache"

    invoke-interface {v9, v10, v11, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 888
    const/4 v9, 0x0

    goto :goto_1

    .line 886
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "resourceStream":Ljava/io/InputStream;
    .restart local v8    # "resourceStream":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    move-object v7, v8

    .end local v8    # "resourceStream":Ljava/io/InputStream;
    .restart local v7    # "resourceStream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public setApplication(Ljava/lang/String;)V
    .locals 0
    .param p1, "application"    # Ljava/lang/String;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->application:Ljava/lang/String;

    .line 363
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
    .line 398
    .local p1, "cacheEntries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;>;"
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->cacheEntries:Ljava/util/Map;

    .line 399
    return-void
.end method

.method public setDownloadListener(Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;)V
    .locals 0
    .param p1, "downloadListener"    # Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->downloadListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;

    .line 423
    return-void
.end method

.method public setFrameToDelete(Z)V
    .locals 0
    .param p1, "frameToDelete"    # Z

    .prologue
    .line 391
    iput-boolean p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->frameToDelete:Z

    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->hostname:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setMaxNumberOfRetries(I)V
    .locals 0
    .param p1, "maxNumberOfRetries"    # I

    .prologue
    .line 418
    iput p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->maxNumberOfRetries:I

    .line 419
    return-void
.end method

.method public setPreBundled(Z)V
    .locals 0
    .param p1, "preBundled"    # Z

    .prologue
    .line 378
    iput-boolean p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->preBundled:Z

    .line 379
    return-void
.end method

.method public setStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->status:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    .line 387
    return-void
.end method

.method public setVersionToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionToken"    # Ljava/lang/String;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->versionToken:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public startDownload(Z)V
    .locals 6
    .param p1, "checksumValidation"    # Z

    .prologue
    const/4 v5, 0x0

    .line 464
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloading resources for the cache version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->versionToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OSCache"

    invoke-interface {v2, v3, v4}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    sget-object v2, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->DOWNLOADING:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    iput-object v2, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->status:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    .line 469
    iput v5, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->numberOfRetries:I

    .line 470
    iput v5, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->processedResourcesCount:I

    .line 471
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->allResourcesDownloaded:Z

    .line 473
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->cacheEntries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 474
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->cacheEntries:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .line 477
    .local v0, "cacheEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->isResourceMapping()Z

    move-result v3

    if-nez v3, :cond_0

    .line 480
    sget-object v3, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$2;->$SwitchMap$com$outsystems$plugins$oscache$cache$types$CacheEntryStatus:[I

    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getStatus()Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 489
    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->isPreBundled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 490
    invoke-virtual {p0, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->copyPreBundleResource(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;)V

    goto :goto_0

    .line 482
    :pswitch_0
    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getStatus()Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->updateResourceStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V

    goto :goto_0

    .line 485
    :pswitch_1
    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getStatus()Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->updateResourceStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V

    .line 486
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource already fetched: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OSCache"

    invoke-interface {v3, v4, v5}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 493
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->downloadResourceAsync(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Z)V

    goto :goto_0

    .line 497
    .end local v0    # "cacheEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    return-void

    .line 480
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 314
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 315
    .local v3, "result":Lorg/json/JSONObject;
    const-string v6, "hostname"

    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->hostname:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v6, "application"

    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->application:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v6, "versionToken"

    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->versionToken:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v6, "status"

    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->status:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    invoke-virtual {v7}, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->getValue()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 320
    iget-boolean v6, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->frameToDelete:Z

    if-eqz v6, :cond_0

    .line 321
    const-string v6, "frameToDelete"

    iget-boolean v7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->frameToDelete:Z

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 324
    :cond_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 325
    .local v2, "resources":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 326
    .local v4, "urlMappings":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 327
    .local v5, "urlMappingsNoCache":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->cacheEntries:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 328
    .local v1, "currentKey":Ljava/lang/String;
    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->cacheEntries:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .line 330
    .local v0, "currentCacheEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->isResourceMapping()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 332
    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->isNoCache()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 333
    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 335
    :cond_1
    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 342
    .end local v0    # "currentCacheEntry":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .end local v1    # "currentKey":Ljava/lang/String;
    :cond_3
    const-string v6, "resources"

    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 343
    const-string v6, "urlMappings"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    const-string v6, "urlMappingsNoCache"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    return-object v3
.end method

.method declared-synchronized updateProgress(Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V
    .locals 4
    .param p1, "status"    # Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->DOWNLOADING:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 433
    :cond_1
    :try_start_1
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->FETCHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->FAILED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    if-ne p1, v0, :cond_3

    .line 434
    :cond_2
    iget v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->processedResourcesCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->processedResourcesCount:I

    .line 437
    :cond_3
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->downloadListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;

    iget v1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->initialResourcesCount:I

    iget v2, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->processedResourcesCount:I

    iget v3, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->totalResourcesCount:I

    invoke-interface {v0, v1, v2, v3}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;->onProgress(III)V

    .line 439
    iget-boolean v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->allResourcesDownloaded:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->FETCHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    if-ne p1, v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->allResourcesDownloaded:Z

    .line 440
    iget v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->processedResourcesCount:I

    iget v1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->totalResourcesCount:I

    if-ne v0, v1, :cond_0

    .line 441
    iget-boolean v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->allResourcesDownloaded:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->FETCHED:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    :goto_2
    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->status:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    .line 442
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->downloadListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;

    iget-boolean v1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->allResourcesDownloaded:Z

    invoke-interface {v0, v1}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;->onFinish(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 439
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 441
    :cond_5
    :try_start_2
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->FAILED:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized updateResourceStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V
    .locals 3
    .param p1, "resource"    # Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .param p2, "status"    # Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    .prologue
    .line 449
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->FETCHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->fileExistsAtCacheDirectory(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 450
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->FAILED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    invoke-virtual {p1, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V

    .line 456
    :goto_0
    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getCacheVersions()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->versionToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->versionToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->downloadListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getStatus()Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->updateProgress(Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    :cond_0
    monitor-exit p0

    return-void

    .line 453
    :cond_1
    :try_start_1
    invoke-virtual {p1, p2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method validateDownloadedResourceFile(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Ljava/io/File;Z)V
    .locals 6
    .param p1, "cacheEntry"    # Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "checksumEnable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/outsystems/plugins/oscache/cache/types/CacheResources$InvalidResourceException;
        }
    .end annotation

    .prologue
    .line 813
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 815
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 816
    .local v0, "validResource":Z
    :goto_0
    if-nez v0, :cond_1

    .line 817
    new-instance v1, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$InvalidResourceException;

    const-string v2, "File not found or is empty"

    invoke-direct {v1, p0, v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$InvalidResourceException;-><init>(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;Ljava/lang/String;)V

    throw v1

    .line 815
    .end local v0    # "validResource":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 821
    .restart local v0    # "validResource":Z
    :cond_1
    if-eqz p3, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->isResourceFileCorrupted(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 822
    new-instance v1, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$InvalidResourceException;

    const-string v2, "File is corrput or invalid"

    invoke-direct {v1, p0, v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$InvalidResourceException;-><init>(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;Ljava/lang/String;)V

    throw v1

    .line 827
    .end local v0    # "validResource":Z
    :cond_2
    new-instance v1, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$InvalidResourceException;

    const-string v2, "Unable to validate downloaded file"

    invoke-direct {v1, p0, v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$InvalidResourceException;-><init>(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;Ljava/lang/String;)V

    throw v1

    .line 830
    .restart local v0    # "validResource":Z
    :cond_3
    return-void
.end method
