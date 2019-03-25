.class public Lcom/outsystems/plugins/oscache/cache/NativeCache;
.super Ljava/lang/Object;
.source "NativeCache.java"

# interfaces
.implements Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;


# static fields
.field private static final ASSET_MIMETYPES_MANIFEST:Ljava/lang/String; = "www/mimetypes.manifest"

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final HTTP_STATUS_CODE_OK:I = 0xc8

.field private static final NATIVE_CACHE_APPLICATION_OBJECT:Ljava/lang/String; = "cachedApplication"

.field private static final NATIVE_CACHE_CHECKPOINT_RATE:D = 0.5

.field private static final NATIVE_CACHE_DEFAULT_RETRIES_PERCENTAGE:D = 0.2

.field private static final NATIVE_CACHE_DEFAULT_RETRIES_THRESHOLD:I = 0xa

.field private static final NATIVE_CACHE_DIRECTORY:Ljava/lang/String; = "OSNativeCache"

.field private static final NATIVE_CACHE_ENTRIES_OBJECT:Ljava/lang/String; = "cachedEntries"

.field private static final NATIVE_CACHE_MANIFEST:Ljava/lang/String; = "nativeCache.manifest"

.field private static final NATIVE_CACHE_MAX_NUMBER_OF_RETRIES_OPTION:Ljava/lang/String; = "maxNumberOfRetries"

.field private static final NATIVE_CACHE_MAX_NUMBER_OF_RETRIES_UNSET:I = -0x1

.field private static final NATIVE_CACHE_NOCACHE_CONNECT_TIMEOUT:I = 0x4

.field private static final NATIVE_CACHE_NOCACHE_READ_TIMEOUT:I = 0x4

.field private static final NATIVE_CACHE_RESOURCE_CONNECT_TIMEOUT_OPTION:Ljava/lang/String; = "resourceConnectTimeout"

.field private static final NATIVE_CACHE_RESOURCE_READ_TIMEOUT_OPTION:Ljava/lang/String; = "resourceReadTimeout"

.field private static final NATIVE_CACHE_VERSION:Ljava/lang/String; = "2.0.0"

.field private static final NATIVE_CACHE_VERSION_OBJECT:Ljava/lang/String; = "nativeCacheVersion"

.field private static final NATIVE_CACHE_WINDOW_SIZE:I = 0x5

.field private static final NATIVE_CACHE_WINDOW_SIZE_OPTION:Ljava/lang/String; = "windowSize"

.field private static final PREFERENCE_CACHE_MANIFEST_FILE_HASH:Ljava/lang/String; = "OSCacheManifestFileHash"

.field private static final SHARED_PREFERENCES_FILE:Ljava/lang/String; = "OSCachePreferences"

.field private static instance:Lcom/outsystems/plugins/oscache/cache/NativeCache;


# instance fields
.field applicationEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;",
            ">;"
        }
    .end annotation
.end field

.field cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

.field cacheUpgrade:Z

.field private certificatePinner:Lokhttp3/CertificatePinner;

.field checksumValidation:Z

.field currentApplication:Ljava/lang/String;

.field currentStatus:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

.field defaultHttpClient:Lokhttp3/OkHttpClient;

.field firstRun:Z

.field private logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

.field maxNumberOfRetries:I

.field noCacheHttpClient:Lokhttp3/OkHttpClient;

.field ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

.field resourceConnectTimeout:I

.field resourceReadTimeout:I

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private startCachingDownloadListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;

.field private trustManager:Ljavax/net/ssl/X509TrustManager;

.field userAgentInterceptor:Lcom/outsystems/plugins/oscache/cache/helpers/UserAgentInterceptor;


# direct methods
.method private constructor <init>(Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;ZZLjava/lang/String;II)V
    .locals 3
    .param p1, "cacheListener"    # Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "firstRun"    # Z
    .param p3, "checksumValidation"    # Z
    .param p4, "userAgent"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "connectTimeout"    # I
    .param p6, "readTimeout"    # I

    .prologue
    const/4 v1, 0x4

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;

    invoke-direct {v0, p0}, Lcom/outsystems/plugins/oscache/cache/NativeCache$1;-><init>(Lcom/outsystems/plugins/oscache/cache/NativeCache;)V

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->startCachingDownloadListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;

    .line 175
    invoke-static {}, Lcom/outsystems/plugins/oslogger/OSLogger;->getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    .line 185
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->instance:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Use getInstance() method to get the single instance of this class."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    .line 190
    iput-boolean p2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->firstRun:Z

    .line 191
    iput-boolean p3, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->checksumValidation:Z

    .line 192
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/helpers/UserAgentInterceptor;

    invoke-direct {v0, p4}, Lcom/outsystems/plugins/oscache/cache/helpers/UserAgentInterceptor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->userAgentInterceptor:Lcom/outsystems/plugins/oscache/cache/helpers/UserAgentInterceptor;

    .line 193
    iput p5, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->resourceConnectTimeout:I

    .line 194
    iput p6, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->resourceReadTimeout:I

    .line 196
    invoke-direct {p0, p5, p6}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->buildHttpClient(II)Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->defaultHttpClient:Lokhttp3/OkHttpClient;

    .line 197
    invoke-direct {p0, v1, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->buildHttpClient(II)Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->noCacheHttpClient:Lokhttp3/OkHttpClient;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->applicationEntries:Ljava/util/Map;

    .line 201
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->UNCACHED:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentStatus:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    .line 203
    invoke-interface {p1}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->init(Landroid/content/Context;)V

    .line 204
    invoke-static {}, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->getInstance()Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;

    move-result-object v0

    const-string v1, "www/mimetypes.manifest"

    invoke-virtual {v0, v1}, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->loadMimeTypes(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->readCacheManifest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v1, "Native cache successfully loaded"

    const-string v2, "OSCache"

    invoke-interface {v0, v1, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->clearUnusedContent()V

    .line 211
    :cond_1
    return-void
.end method

.method private abortCacheDownload(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 527
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v0, p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->abortDownload(Ljava/lang/String;)V

    .line 535
    :goto_0
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 536
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->IDLE:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    invoke-direct {p0, v0}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->changeCacheStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;)V

    .line 542
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 543
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    invoke-interface {v0, p1}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->fireOnErrorEvent(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->defaultHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Dispatcher;->cancelAll()V

    .line 532
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    invoke-interface {v0}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->fireOnFinishEvent()V

    goto :goto_0

    .line 539
    :cond_1
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->UNCACHED:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    invoke-direct {p0, v0}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->changeCacheStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/outsystems/plugins/oscache/cache/NativeCache;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/outsystems/plugins/oscache/cache/NativeCache;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->createCheckpoint(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/outsystems/plugins/oscache/cache/NativeCache;Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/outsystems/plugins/oscache/cache/NativeCache;
    .param p1, "x1"    # Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->changeCacheStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;)V

    return-void
.end method

.method static synthetic access$200(Lcom/outsystems/plugins/oscache/cache/NativeCache;)Lcom/outsystems/plugins/oslogger/interfaces/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/outsystems/plugins/oscache/cache/NativeCache;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/outsystems/plugins/oscache/cache/NativeCache;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/outsystems/plugins/oscache/cache/NativeCache;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->deleteFilesFromLocalStorage(Ljava/util/List;)V

    return-void
.end method

.method private applyOptions(Ljava/util/Map;)V
    .locals 11
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, -0x1

    .line 591
    const/4 v6, 0x5

    .line 592
    .local v6, "windowSize":I
    const/4 v0, 0x0

    .line 595
    .local v0, "applyOptions":Z
    iput v8, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->maxNumberOfRetries:I

    .line 597
    if-eqz p1, :cond_3

    .line 598
    const-string v7, "windowSize"

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 599
    const-string v7, "windowSize"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 601
    .local v5, "newWindowSize":I
    if-eq v6, v5, :cond_0

    .line 602
    move v6, v5

    .line 603
    const/4 v0, 0x1

    .line 607
    .end local v5    # "newWindowSize":I
    :cond_0
    const-string v7, "resourceConnectTimeout"

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 608
    const-string v7, "resourceConnectTimeout"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 610
    .local v3, "newResourceConnectTimeout":I
    iget v7, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->resourceConnectTimeout:I

    if-eq v7, v3, :cond_1

    .line 611
    iput v3, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->resourceConnectTimeout:I

    .line 612
    const/4 v0, 0x1

    .line 616
    .end local v3    # "newResourceConnectTimeout":I
    :cond_1
    const-string v7, "resourceReadTimeout"

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 617
    const-string v7, "resourceReadTimeout"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 619
    .local v4, "newResourceReadTimeout":I
    iget v7, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->resourceReadTimeout:I

    if-eq v7, v4, :cond_2

    .line 620
    iput v4, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->resourceReadTimeout:I

    .line 621
    const/4 v0, 0x1

    .line 625
    .end local v4    # "newResourceReadTimeout":I
    :cond_2
    const-string v7, "maxNumberOfRetries"

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 626
    const-string v7, "maxNumberOfRetries"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 627
    .local v2, "newMaxNumberOfRetries":I
    if-le v2, v8, :cond_3

    .line 628
    iput v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->maxNumberOfRetries:I

    .line 633
    .end local v2    # "newMaxNumberOfRetries":I
    :cond_3
    if-eqz v0, :cond_5

    .line 634
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 635
    .local v1, "clientBuilder":Lokhttp3/OkHttpClient$Builder;
    new-instance v7, Lokhttp3/ConnectionPool;

    const-wide/16 v8, 0x5

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v7, v6, v8, v9, v10}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v1, v7}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;

    .line 636
    iget v7, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->resourceConnectTimeout:I

    int-to-long v8, v7

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9, v7}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 637
    iget v7, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->resourceReadTimeout:I

    int-to-long v8, v7

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v8, v9, v7}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 638
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 640
    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->certificatePinner:Lokhttp3/CertificatePinner;

    if-eqz v7, :cond_6

    .line 641
    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->certificatePinner:Lokhttp3/CertificatePinner;

    invoke-virtual {v1, v7}, Lokhttp3/OkHttpClient$Builder;->certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;

    .line 646
    :cond_4
    :goto_0
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v7

    iput-object v7, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->defaultHttpClient:Lokhttp3/OkHttpClient;

    .line 649
    .end local v1    # "clientBuilder":Lokhttp3/OkHttpClient$Builder;
    :cond_5
    return-void

    .line 642
    .restart local v1    # "clientBuilder":Lokhttp3/OkHttpClient$Builder;
    :cond_6
    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->trustManager:Ljavax/net/ssl/X509TrustManager;

    if-eqz v7, :cond_4

    .line 643
    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v8, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v1, v7, v8}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_0
.end method

.method private buildHttpClient(II)Lokhttp3/OkHttpClient;
    .locals 4
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 234
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 236
    .local v0, "clientBuilder":Lokhttp3/OkHttpClient$Builder;
    int-to-long v2, p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 237
    int-to-long v2, p2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 238
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    .line 239
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->userAgentInterceptor:Lcom/outsystems/plugins/oscache/cache/helpers/UserAgentInterceptor;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 241
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->certificatePinner:Lokhttp3/CertificatePinner;

    if-eqz v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->certificatePinner:Lokhttp3/CertificatePinner;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;

    .line 247
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    return-object v1

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->trustManager:Ljavax/net/ssl/X509TrustManager;

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-virtual {v0, v1, v2}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_0
.end method

.method private buildResponse(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;Lokhttp3/ResponseBody;)Ljava/lang/Object;
    .locals 10
    .param p1, "isFromLoader"    # Z
    .param p2, "responseMessage"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "responseCode"    # I
    .param p7, "stream"    # Ljava/io/InputStream;
    .param p8, "responseBody"    # Lokhttp3/ResponseBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "Lokhttp3/ResponseBody;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 679
    .local p6, "httpResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 680
    .local v1, "webResourceResponse":Landroid/webkit/WebResourceResponse;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 681
    .local v9, "jsonObject":Lorg/json/JSONObject;
    if-eqz p1, :cond_2

    .line 682
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 683
    new-instance v1, Landroid/webkit/WebResourceResponse;

    .end local v1    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .restart local v1    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :goto_0
    move-object v9, v1

    .line 704
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-object v9

    .line 687
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    new-instance v1, Landroid/webkit/WebResourceResponse;

    .end local v1    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    move-object/from16 v0, p7

    invoke-direct {v1, p3, p4, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .restart local v1    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    goto :goto_0

    .line 693
    :cond_2
    :try_start_0
    const-string v2, "statusCode"

    invoke-virtual {v9, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 694
    const-string v3, "data"

    if-nez p8, :cond_3

    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v9, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 695
    const-string v2, "statusText"

    invoke-virtual {v9, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 696
    if-eqz p6, :cond_0

    .line 697
    const-string v2, "headers"

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 699
    :catch_0
    move-exception v8

    .line 700
    .local v8, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to build JSON response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OSCache"

    invoke-interface {v2, v3, v4, v8}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 694
    .end local v8    # "e":Lorg/json/JSONException;
    :cond_3
    :try_start_1
    invoke-virtual/range {p8 .. p8}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_2

    .line 701
    :catch_1
    move-exception v8

    .line 702
    .local v8, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An IOException occurred while building a JSON response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OSCache"

    invoke-interface {v2, v3, v4, v8}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private changeCacheStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;)V
    .locals 1
    .param p1, "cacheStatus"    # Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 452
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentStatus:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    .line 453
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    invoke-interface {v0, p1}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->updateStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;)V

    .line 454
    return-void
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 852
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 854
    .local v3, "result":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0x400

    :try_start_0
    new-array v0, v4, [B

    .line 856
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "length":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 857
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 861
    .end local v0    # "buffer":[B
    .end local v2    # "length":I
    :catch_0
    move-exception v1

    .line 862
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to convert stream to string: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OSCache"

    invoke-interface {v4, v5, v6, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 865
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 870
    :goto_1
    const-string v4, ""

    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    return-object v4

    .line 860
    .restart local v0    # "buffer":[B
    .restart local v2    # "length":I
    :cond_0
    :try_start_3
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .line 865
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 866
    :catch_1
    move-exception v1

    .line 867
    .restart local v1    # "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v6, "Could not close ByteArrayOutputStream while trying to convert stream to string"

    const-string v7, "OSCache"

    invoke-interface {v5, v6, v7, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 866
    .end local v0    # "buffer":[B
    .end local v2    # "length":I
    :catch_2
    move-exception v1

    .line 867
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v5, "Could not close ByteArrayOutputStream while trying to convert stream to string"

    const-string v6, "OSCache"

    invoke-interface {v4, v5, v6, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 864
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 865
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 869
    :goto_3
    throw v4

    .line 866
    :catch_3
    move-exception v1

    .line 867
    .restart local v1    # "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v6, "Could not close ByteArrayOutputStream while trying to convert stream to string"

    const-string v7, "OSCache"

    invoke-interface {v5, v6, v7, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private createCacheManifest()Lorg/json/JSONObject;
    .locals 9

    .prologue
    .line 278
    const/4 v4, 0x0

    .line 280
    .local v4, "result":Lorg/json/JSONObject;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 281
    .end local v4    # "result":Lorg/json/JSONObject;
    .local v5, "result":Lorg/json/JSONObject;
    :try_start_1
    const-string v6, "nativeCacheVersion"

    const-string v7, "2.0.0"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    const-string v6, "cachedApplication"

    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 285
    .local v1, "cachedContentObject":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->applicationEntries:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 286
    .local v3, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->applicationEntries:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;

    .line 287
    .local v0, "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 292
    .end local v0    # "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    .end local v1    # "cachedContentObject":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 293
    .end local v5    # "result":Lorg/json/JSONObject;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "result":Lorg/json/JSONObject;
    :goto_1
    iget-object v6, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to create cache manifest object: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OSCache"

    invoke-interface {v6, v7, v8, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 295
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    return-object v4

    .line 290
    .end local v4    # "result":Lorg/json/JSONObject;
    .restart local v1    # "cachedContentObject":Lorg/json/JSONObject;
    .restart local v5    # "result":Lorg/json/JSONObject;
    :cond_0
    :try_start_2
    const-string v6, "cachedEntries"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 294
    .end local v5    # "result":Lorg/json/JSONObject;
    .restart local v4    # "result":Lorg/json/JSONObject;
    goto :goto_2

    .line 292
    .end local v1    # "cachedContentObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private createCheckpoint(Ljava/lang/String;)V
    .locals 4
    .param p1, "currentApplication"    # Ljava/lang/String;

    .prologue
    .line 458
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    if-nez v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v2, "OngoingCacheResources is null, potential race condition reached"

    const-string v3, "OSCache"

    invoke-interface {v1, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :goto_0
    return-void

    .line 463
    :cond_0
    if-nez p1, :cond_1

    .line 464
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getHostname()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getApplication()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->getKeyForHostnameAndApplication(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 467
    :cond_1
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create checkpoint for application cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OSCache"

    invoke-interface {v1, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->applicationEntries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;

    .line 471
    .local v0, "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    if-nez v0, :cond_2

    .line 472
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;

    .end local v0    # "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getHostname()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 473
    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getApplication()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .restart local v0    # "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->applicationEntries:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_2
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v0, v1}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->swapCache(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;)Z

    .line 479
    invoke-virtual {p0}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->writeCacheManifest()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 480
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v2, "Checkpoint was created with success"

    const-string v3, "OSCache"

    invoke-interface {v1, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 483
    :cond_3
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v2, "Failed to serialize application cache while creating a checkpoint"

    const-string v3, "OSCache"

    invoke-interface {v1, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteFilesFromLocalStorage(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p1, "resources":Ljava/util/List;, "Ljava/util/List<Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .line 575
    .local v2, "resource":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    if-eqz v2, :cond_1

    .line 576
    :try_start_0
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting cache file for URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OSCache"

    invoke-interface {v4, v5, v6}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    invoke-interface {v5}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 578
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 579
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 584
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to delete deprecated cache file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OSCache"

    invoke-interface {v4, v5, v6}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 582
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v5, "Invalid resource to be deleted"

    const-string v6, "OSCache"

    invoke-interface {v4, v5, v6}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logWarning(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 588
    .end local v2    # "resource":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/outsystems/plugins/oscache/cache/NativeCache;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->instance:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    return-object v0
.end method

.method public static getKeyForHostnameAndApplication(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "hostname"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "application"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1021
    .local v0, "appKey":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getResourceFromCache(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 34
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isFromLoader"    # Z

    .prologue
    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->applicationEntries:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;

    .line 712
    .local v18, "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v31

    .line 714
    .local v31, "uri":Landroid/net/Uri;
    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v32

    .line 716
    .local v32, "urlString":Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 717
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v31 .. v31}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 719
    :cond_0
    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->getCacheEntryForUrl(Ljava/lang/String;)Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    move-result-object v27

    .line 721
    .local v27, "resource":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    :goto_0
    if-eqz v27, :cond_f

    .line 724
    invoke-virtual/range {v27 .. v27}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getMimeType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 725
    invoke-virtual/range {v27 .. v27}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->healMimeType()V

    .line 726
    invoke-direct/range {p0 .. p0}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->serializeCacheHealed()V

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Healing resource mime type: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "OSCache"

    invoke-interface {v2, v3, v7}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_1
    invoke-virtual/range {v27 .. v27}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->isNoCache()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 732
    const/16 v33, 0x0

    .line 734
    .local v33, "webResponse":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    invoke-interface {v2}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->isNetworkAvailable(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_6

    .line 737
    :try_start_1
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 738
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->get()Lokhttp3/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v21

    .line 740
    .local v21, "httpRequest":Lokhttp3/Request;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->noCacheHttpClient:Lokhttp3/OkHttpClient;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v22

    .line 742
    .local v22, "httpResponse":Lokhttp3/Response;
    invoke-virtual/range {v22 .. v22}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v28

    .line 743
    .local v28, "response":Lokhttp3/Response;
    const-string v2, "Content-Type"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 745
    .local v5, "contentType":Ljava/lang/String;
    const-string v6, "UTF-8"

    .line 746
    .local v6, "encoding":Ljava/lang/String;
    const-string v2, "Content-Encoding"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 747
    const-string v2, "Content-Encoding"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 750
    :cond_2
    invoke-virtual/range {v28 .. v28}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v29

    .line 751
    .local v29, "responseHeaders":Lokhttp3/Headers;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 752
    .local v8, "httpResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v23, 0x0

    .local v23, "i":I
    :goto_1
    invoke-virtual/range {v29 .. v29}, Lokhttp3/Headers;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_4

    .line 753
    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 719
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v6    # "encoding":Ljava/lang/String;
    .end local v8    # "httpResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "httpRequest":Lokhttp3/Request;
    .end local v22    # "httpResponse":Lokhttp3/Response;
    .end local v23    # "i":I
    .end local v27    # "resource":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .end local v28    # "response":Lokhttp3/Response;
    .end local v29    # "responseHeaders":Lokhttp3/Headers;
    .end local v33    # "webResponse":Ljava/lang/Object;
    :cond_3
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 755
    .restart local v5    # "contentType":Ljava/lang/String;
    .restart local v6    # "encoding":Ljava/lang/String;
    .restart local v8    # "httpResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "httpRequest":Lokhttp3/Request;
    .restart local v22    # "httpResponse":Lokhttp3/Response;
    .restart local v23    # "i":I
    .restart local v27    # "resource":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .restart local v28    # "response":Lokhttp3/Response;
    .restart local v29    # "responseHeaders":Lokhttp3/Headers;
    .restart local v33    # "webResponse":Ljava/lang/Object;
    :cond_4
    const-string v2, "status"

    invoke-virtual/range {v28 .. v28}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    invoke-virtual/range {v22 .. v22}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 758
    .local v4, "responseMessage":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual/range {v28 .. v28}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 759
    invoke-virtual/range {v28 .. v28}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v4

    .line 762
    :cond_5
    invoke-virtual/range {v28 .. v28}, Lokhttp3/Response;->code()I

    move-result v7

    invoke-virtual/range {v22 .. v22}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual/range {v22 .. v22}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v10

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-direct/range {v2 .. v10}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->buildResponse(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;Lokhttp3/ResponseBody;)Ljava/lang/Object;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v33

    .line 772
    .end local v4    # "responseMessage":Ljava/lang/String;
    .end local v5    # "contentType":Ljava/lang/String;
    .end local v6    # "encoding":Ljava/lang/String;
    .end local v8    # "httpResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "httpRequest":Lokhttp3/Request;
    .end local v22    # "httpResponse":Lokhttp3/Response;
    .end local v23    # "i":I
    .end local v28    # "response":Lokhttp3/Response;
    .end local v29    # "responseHeaders":Lokhttp3/Headers;
    .end local v33    # "webResponse":Ljava/lang/Object;
    :cond_6
    :goto_2
    if-nez v33, :cond_7

    .line 773
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->getResourceInputStream(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;)Ljava/io/InputStream;

    move-result-object v16

    .line 774
    .local v16, "stream":Ljava/io/InputStream;
    const-string v11, "Ok"

    invoke-virtual/range {v27 .. v27}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v27 .. v27}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getEncoding()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xc8

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v9, p0

    move/from16 v10, p2

    invoke-direct/range {v9 .. v17}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->buildResponse(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;Lokhttp3/ResponseBody;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v33

    .line 848
    .end local v16    # "stream":Ljava/io/InputStream;
    .end local v27    # "resource":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .end local v31    # "uri":Landroid/net/Uri;
    .end local v32    # "urlString":Ljava/lang/String;
    :cond_7
    :goto_3
    return-object v33

    .line 764
    .restart local v27    # "resource":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .restart local v31    # "uri":Landroid/net/Uri;
    .restart local v32    # "urlString":Ljava/lang/String;
    .restart local v33    # "webResponse":Ljava/lang/Object;
    :catch_0
    move-exception v30

    .line 765
    .local v30, "sslException":Ljavax/net/ssl/SSLException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to download resource "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " with pinning or SSL error: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v30 .. v30}, Ljavax/net/ssl/SSLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "OSCache"

    move-object/from16 v0, v30

    invoke-interface {v2, v3, v7, v0}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 845
    .end local v27    # "resource":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .end local v30    # "sslException":Ljavax/net/ssl/SSLException;
    .end local v31    # "uri":Landroid/net/Uri;
    .end local v32    # "urlString":Ljava/lang/String;
    .end local v33    # "webResponse":Ljava/lang/Object;
    :catch_1
    move-exception v20

    .line 846
    .local v20, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load resource from storage: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "OSCache"

    move-object/from16 v0, v20

    invoke-interface {v2, v3, v7, v0}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 848
    .end local v20    # "e":Ljava/lang/Exception;
    :goto_4
    const/16 v33, 0x0

    goto :goto_3

    .line 766
    .restart local v27    # "resource":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .restart local v31    # "uri":Landroid/net/Uri;
    .restart local v32    # "urlString":Ljava/lang/String;
    .restart local v33    # "webResponse":Ljava/lang/Object;
    :catch_2
    move-exception v20

    .line 767
    .restart local v20    # "e":Ljava/lang/Exception;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to download resource "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ": "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "OSCache"

    move-object/from16 v0, v20

    invoke-interface {v2, v3, v7, v0}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 778
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v33    # "webResponse":Ljava/lang/Object;
    :catch_3
    move-exception v20

    .line 779
    .restart local v20    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load resource "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " from storage: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "OSCache"

    move-object/from16 v0, v20

    invoke-interface {v2, v3, v7, v0}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 780
    const/16 v33, 0x0

    goto/16 :goto_3

    .line 784
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->isApplicationCacheEnabled(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 786
    const/16 v33, 0x0

    goto/16 :goto_3

    .line 788
    :cond_9
    const/16 v33, 0x0

    .line 789
    .restart local v33    # "webResponse":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->getResourceInputStream(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;)Ljava/io/InputStream;

    move-result-object v16

    .line 792
    .restart local v16    # "stream":Ljava/io/InputStream;
    if-nez v16, :cond_a

    invoke-virtual/range {v27 .. v27}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->isPreBundled()Z

    move-result v2

    if-nez v2, :cond_a

    .line 793
    invoke-virtual/range {v18 .. v18}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->getPreBundleVersion()Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    move-result-object v25

    .line 794
    .local v25, "preBundleFrame":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    if-eqz v25, :cond_c

    invoke-virtual/range {v25 .. v25}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getCacheEntries()Ljava/util/Map;

    move-result-object v2

    invoke-virtual/range {v27 .. v27}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    move-object/from16 v26, v2

    .line 796
    .local v26, "preBundleResource":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    :goto_5
    if-eqz v26, :cond_a

    .line 797
    invoke-virtual/range {v26 .. v26}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getFileName()Ljava/lang/String;

    move-result-object v19

    .line 798
    .local v19, "cacheFileName":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getFileNameForUrl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v24

    .line 800
    .local v24, "preBundleFileName":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setFileName(Ljava/lang/String;)V

    .line 801
    invoke-virtual/range {v25 .. v26}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->copyPreBundleResource(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;)V

    .line 804
    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setFileName(Ljava/lang/String;)V

    .line 805
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setPreBundled(Z)V

    .line 808
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->getResourceInputStream(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;)Ljava/io/InputStream;

    move-result-object v16

    .line 810
    if-eqz v16, :cond_d

    .line 811
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->healingEntry(Ljava/lang/String;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Healing resource "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " from prebundle: SUCCEEDED"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "OSCache"

    invoke-interface {v2, v3, v7}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    .end local v19    # "cacheFileName":Ljava/lang/String;
    .end local v24    # "preBundleFileName":Ljava/lang/String;
    .end local v25    # "preBundleFrame":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    .end local v26    # "preBundleResource":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    :cond_a
    :goto_6
    if-nez v16, :cond_b

    .line 822
    invoke-virtual/range {v18 .. v18}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->getRunningVersion()Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->checksumValidation:Z

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v3}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->downloadResourceSync(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Z)V

    .line 823
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->getResourceInputStream(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;)Ljava/io/InputStream;

    move-result-object v16

    .line 824
    if-eqz v16, :cond_e

    .line 825
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->healingEntry(Ljava/lang/String;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Healing resource "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " from web: SUCCEEDED"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "OSCache"

    invoke-interface {v2, v3, v7}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    :cond_b
    :goto_7
    if-eqz v16, :cond_7

    .line 833
    const-string v11, "Ok"

    invoke-virtual/range {v27 .. v27}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getMimeType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v27 .. v27}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getEncoding()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xc8

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object/from16 v9, p0

    move/from16 v10, p2

    invoke-direct/range {v9 .. v17}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->buildResponse(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/io/InputStream;Lokhttp3/ResponseBody;)Ljava/lang/Object;

    move-result-object v33

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resource loaded from cache "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "OSCache"

    invoke-interface {v2, v3, v7}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 794
    .restart local v25    # "preBundleFrame":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    :cond_c
    const/16 v26, 0x0

    goto/16 :goto_5

    .line 814
    .restart local v19    # "cacheFileName":Ljava/lang/String;
    .restart local v24    # "preBundleFileName":Ljava/lang/String;
    .restart local v26    # "preBundleResource":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Healing resource "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " from prebundle: FAILED"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "OSCache"

    invoke-interface {v2, v3, v7}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 828
    .end local v19    # "cacheFileName":Ljava/lang/String;
    .end local v24    # "preBundleFileName":Ljava/lang/String;
    .end local v25    # "preBundleFrame":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    .end local v26    # "preBundleResource":Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Healing resource "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v27 .. v27}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " from web: FAILED"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "OSCache"

    invoke-interface {v2, v3, v7}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 842
    .end local v16    # "stream":Ljava/io/InputStream;
    .end local v33    # "webResponse":Ljava/lang/Object;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find resource: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "OSCache"

    invoke-interface {v2, v3, v7}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4
.end method

.method private getResourceInputStream(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;)Ljava/io/InputStream;
    .locals 8
    .param p1, "resource"    # Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 420
    const/4 v3, 0x0

    .line 422
    .local v3, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->isPreBundled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 423
    iget-object v5, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    invoke-interface {v5}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 424
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 432
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    :goto_0
    return-object v3

    .line 426
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    invoke-interface {v6}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 427
    .local v1, "cachedFile":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "stream":Ljava/io/InputStream;
    .local v4, "stream":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "stream":Ljava/io/InputStream;
    .restart local v3    # "stream":Ljava/io/InputStream;
    goto :goto_0

    .line 429
    .end local v1    # "cachedFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 430
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not get InputStream while trying to get cache resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OSCache"

    invoke-interface {v5, v6, v7, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private healingEntry(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 878
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->applicationEntries:Ljava/util/Map;

    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;

    .line 880
    .local v0, "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    if-nez v0, :cond_0

    .line 887
    :goto_0
    return-void

    .line 885
    :cond_0
    invoke-virtual {v0, p1}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->healingCacheEntry(Ljava/lang/String;)V

    .line 886
    invoke-direct {p0}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->serializeCacheHealed()V

    goto :goto_0
.end method

.method public static declared-synchronized init(Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;ZZLjava/lang/String;II)V
    .locals 8
    .param p0, "cacheListener"    # Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "firstRun"    # Z
    .param p2, "checksumValidation"    # Z
    .param p3, "userAgent"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "connectTimeout"    # I
    .param p5, "readTimeout"    # I

    .prologue
    .line 227
    const-class v7, Lcom/outsystems/plugins/oscache/cache/NativeCache;

    monitor-enter v7

    :try_start_0
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->instance:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/outsystems/plugins/oscache/cache/NativeCache;-><init>(Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;ZZLjava/lang/String;II)V

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->instance:Lcom/outsystems/plugins/oscache/cache/NativeCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_0
    monitor-exit v7

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private isApplicationCacheEnabled(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;)Z
    .locals 11
    .param p1, "resource"    # Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    .prologue
    const/4 v7, 0x0

    .line 1120
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getMimeType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "text/html"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1122
    :try_start_0
    invoke-direct {p0, p1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->getResourceInputStream(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;)Ljava/io/InputStream;

    move-result-object v6

    .line 1124
    .local v6, "resourceStream":Ljava/io/InputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1125
    .local v3, "inputStringBuilder":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    const-string v9, "UTF-8"

    invoke-direct {v8, v6, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1126
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 1127
    .local v4, "line":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_0

    .line 1128
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    const/16 v8, 0xa

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1130
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1133
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1134
    .local v2, "fileContent":Ljava/lang/String;
    const-string v8, "manifest="

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 1136
    .local v5, "matches":Z
    iget-object v8, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Application enabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "OSCache"

    invoke-interface {v8, v9, v10}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "fileContent":Ljava/lang/String;
    .end local v3    # "inputStringBuilder":Ljava/lang/StringBuilder;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "matches":Z
    .end local v6    # "resourceStream":Ljava/io/InputStream;
    :goto_1
    return v5

    .line 1140
    :catch_0
    move-exception v1

    .line 1141
    .local v1, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to parse HTML file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "OSCache"

    invoke-interface {v8, v9, v10, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v5, v7

    .line 1142
    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    move v5, v7

    .line 1146
    goto :goto_1
.end method

.method private isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1112
    const-string v2, "connectivity"

    .line 1113
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1114
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1115
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private serializeCacheHealed()V
    .locals 7

    .prologue
    .line 1173
    invoke-direct {p0}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->createCacheManifest()Lorg/json/JSONObject;

    move-result-object v3

    .line 1176
    .local v3, "manifest":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v4}, Lcom/outsystems/plugins/oscache/cache/helpers/FileChecksum;->getContentHash(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 1178
    .local v2, "jsonDataContentHash":Ljava/lang/String;
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    invoke-interface {v4}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1179
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    invoke-interface {v4}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "OSCachePreferences"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "OSCacheManifestFileHash"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1182
    .local v0, "checksum":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1183
    invoke-virtual {p0}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->writeCacheManifest()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    .end local v0    # "checksum":Ljava/lang/String;
    .end local v2    # "jsonDataContentHash":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1186
    :catch_0
    move-exception v1

    .line 1187
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v5, "Failed to check the integrity of the cache manifest file."

    const-string v6, "OSCache"

    invoke-interface {v4, v5, v6}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeCacheManifestHash(Ljava/io/File;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 1153
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2}, Lcom/outsystems/plugins/oscache/cache/helpers/FileChecksum;->getContentHash(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 1155
    .local v1, "fileContentHash":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1156
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cache manifest Hash: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OSCache"

    invoke-interface {v2, v3, v4}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    invoke-interface {v2}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1159
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    invoke-interface {v2}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "OSCachePreferences"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "OSCacheManifestFileHash"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1166
    .end local v1    # "fileContentHash":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1163
    :catch_0
    move-exception v0

    .line 1164
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get and save the hash of manifest file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OSCache"

    invoke-interface {v2, v3, v4, v0}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public bootstrapCache(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 10
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "resources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "urlMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "noCacheUrlMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1038
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1039
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v2, "Invalid application key"

    const-string v3, "OSCache"

    invoke-interface {v1, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    :goto_0
    return-void

    .line 1043
    :cond_0
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->applicationEntries:Ljava/util/Map;

    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;

    .line 1045
    .local v9, "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    if-nez v9, :cond_1

    .line 1046
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to bootstrap application cache: No application cache available for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OSCache"

    invoke-interface {v1, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1050
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_3

    .line 1051
    :cond_2
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v2, "Failed to bootstrap application cache: resource list and url mappings dictionary are not valid"

    const-string v3, "OSCache"

    invoke-interface {v1, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1055
    :cond_3
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->createCacheDirectoryForApplication(Ljava/lang/String;)V

    .line 1058
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 1059
    invoke-virtual {v9}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->getHostname()Ljava/lang/String;

    move-result-object v1

    .line 1060
    invoke-virtual {v9}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->getApplication()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    .line 1066
    invoke-interface {v3}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->getContext()Landroid/content/Context;

    move-result-object v8

    move-object v3, p1

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v8}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;Lokhttp3/OkHttpClient;Landroid/content/Context;)V

    .line 1067
    .local v0, "preBundleCacheResources":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    invoke-virtual {v9}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->getCacheEntries()Ljava/util/Map;

    move-result-object v1

    .line 1068
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1067
    invoke-virtual/range {v0 .. v5}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->populateCacheEntries(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    .line 1073
    invoke-virtual {v9}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->getCacheFrames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    invoke-virtual {v9, v0}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->setPreBundleVersion(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;)V

    .line 1077
    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->IDLE:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    invoke-direct {p0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->changeCacheStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;)V

    goto :goto_0
.end method

.method calculateMaxNumberOfRetries(I)V
    .locals 6
    .param p1, "resourcesCount"    # I

    .prologue
    const/16 v1, 0xa

    .line 656
    iget v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->maxNumberOfRetries:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 657
    int-to-double v2, p1

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 658
    .local v0, "retries":I
    if-le v0, v1, :cond_1

    .end local v0    # "retries":I
    :goto_0
    iput v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->maxNumberOfRetries:I

    .line 660
    :cond_0
    return-void

    .restart local v0    # "retries":I
    :cond_1
    move v0, v1

    .line 658
    goto :goto_0
.end method

.method declared-synchronized clearUnusedContent()V
    .locals 5

    .prologue
    .line 556
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->applicationEntries:Ljava/util/Map;

    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;

    .line 557
    .local v0, "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->gatherResourcesToDelete()Ljava/util/List;

    move-result-object v1

    .line 559
    .local v1, "resourcesToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;>;"
    invoke-virtual {p0}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->writeCacheManifest()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 560
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/outsystems/plugins/oscache/cache/NativeCache$2;

    invoke-direct {v3, p0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache$2;-><init>(Lcom/outsystems/plugins/oscache/cache/NativeCache;Ljava/util/List;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 564
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    .end local v1    # "resourcesToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 567
    .restart local v1    # "resourcesToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;>;"
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v3, "Failed to clean unused content from cache filesystem"

    const-string v4, "OSCache"

    invoke-interface {v2, v3, v4}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 556
    .end local v0    # "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    .end local v1    # "resourcesToDelete":Ljava/util/List;, "Ljava/util/List<Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method createCacheDirectoryForApplication(Ljava/lang/String;)V
    .locals 6
    .param p1, "applicationKey"    # Ljava/lang/String;

    .prologue
    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    invoke-interface {v4}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "OSNativeCache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, "path":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 439
    .local v0, "applicationCacheDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_0

    .line 440
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create cache directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OSCache"

    invoke-interface {v3, v4, v5}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v0    # "applicationCacheDirectory":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v1

    .line 444
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create cache directory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OSCache"

    invoke-interface {v3, v4, v5, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getJSONResourceFromCache(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 671
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->getResourceFromCache(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 672
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 673
    check-cast v0, Lorg/json/JSONObject;

    .line 675
    .end local v0    # "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResourceFromCache(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 663
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->getResourceFromCache(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 664
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/webkit/WebResourceResponse;

    if-eqz v1, :cond_0

    .line 665
    check-cast v0, Landroid/webkit/WebResourceResponse;

    .line 667
    .end local v0    # "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCacheManifestFileCorrupted(Ljava/io/File;)Z
    .locals 7
    .param p1, "file"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 1194
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v4}, Lcom/outsystems/plugins/oscache/cache/helpers/FileChecksum;->getContentHash(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 1196
    .local v2, "fileContentHash":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1197
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cache manifest hash : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OSCache"

    invoke-interface {v4, v5, v6}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    invoke-interface {v4}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1201
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    invoke-interface {v4}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "OSCachePreferences"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "OSCacheManifestFileHash"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1204
    .local v0, "checksum":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 1205
    const/4 v3, 0x1

    .line 1213
    .end local v0    # "checksum":Ljava/lang/String;
    .end local v2    # "fileContentHash":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 1209
    :catch_0
    move-exception v1

    .line 1210
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to check the integrity of the cache manifest file : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OSCache"

    invoke-interface {v4, v5, v6, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method declared-synchronized markForDeletion(Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;)V
    .locals 3
    .param p1, "applicationCache"    # Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;

    .prologue
    .line 546
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->markForDeletion()V

    .line 547
    invoke-virtual {p0}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->writeCacheManifest()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v1, "Manifest serialized with success"

    const-string v2, "OSCache"

    invoke-interface {v0, v1, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    :goto_0
    monitor-exit p0

    return-void

    .line 551
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v1, "Failed to clean unused content from cache filesystem"

    const-string v2, "OSCache"

    invoke-interface {v0, v1, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method readCacheManifest()Z
    .locals 22

    .prologue
    .line 327
    const/16 v17, 0x1

    .line 329
    .local v17, "success":Z
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "OSNativeCache"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "nativeCache.manifest"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 334
    .local v9, "fileName":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .local v6, "cacheManifestFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 343
    const/4 v10, 0x0

    .line 345
    .local v10, "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->isCacheManifestFileCorrupted(Ljava/io/File;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-object/from16 v18, v0

    const-string v19, "Cache manifest file is corrupt or invalid"

    const-string v20, "OSCache"

    invoke-interface/range {v18 .. v20}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const/16 v18, 0x0

    .line 411
    .end local v6    # "cacheManifestFile":Ljava/io/File;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return v18

    .line 336
    :catch_0
    move-exception v8

    .line 337
    .local v8, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to load cache manifest file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ": "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "OSCache"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v8}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 338
    const/16 v18, 0x0

    goto :goto_0

    .line 351
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "cacheManifestFile":Ljava/io/File;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    :cond_1
    :try_start_1
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .local v11, "inputStream":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v18

    if-nez v18, :cond_2

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to read cache manifest file: file "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " is invalid or corrupted"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "OSCache"

    invoke-interface/range {v18 .. v20}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 355
    const/16 v18, 0x0

    .line 395
    if-eqz v11, :cond_0

    .line 397
    :try_start_3
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 398
    :catch_1
    move-exception v8

    .line 399
    .local v8, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-object/from16 v19, v0

    const-string v20, "Could not close InputStream while trying to read cache manifest"

    const-string v21, "OSCache"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2, v8}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 360
    .end local v8    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_4
    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v18

    move/from16 v0, v18

    new-array v7, v0, [B

    .line 361
    .local v7, "data":[B
    invoke-virtual {v11, v7}, Ljava/io/InputStream;->read([B)I

    .line 363
    new-instance v12, Ljava/lang/String;

    const-string v18, "UTF-8"

    move-object/from16 v0, v18

    invoke-direct {v12, v7, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 364
    .local v12, "json":Ljava/lang/String;
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 367
    .local v15, "manifest":Lorg/json/JSONObject;
    const-string v18, "nativeCacheVersion"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 368
    .local v16, "nativeCacheVersion":Ljava/lang/String;
    if-eqz v16, :cond_3

    const-string v18, "2.0.0"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 369
    :cond_3
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheUpgrade:Z

    .line 373
    :cond_4
    const-string v18, "cachedApplication"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    .line 376
    const-string v18, "cachedEntries"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 379
    .local v5, "applicationCacheObject":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    .line 380
    .local v14, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 381
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 384
    .local v13, "key":Ljava/lang/String;
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 386
    .local v3, "appCacheJSON":Lorg/json/JSONObject;
    new-instance v4, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheUpgrade:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->defaultHttpClient:Lokhttp3/OkHttpClient;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->getContext()Landroid/content/Context;

    move-result-object v20

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v4, v3, v0, v1, v2}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;-><init>(Lorg/json/JSONObject;ZLokhttp3/OkHttpClient;Landroid/content/Context;)V

    .line 387
    .local v4, "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->applicationEntries:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 390
    .end local v3    # "appCacheJSON":Lorg/json/JSONObject;
    .end local v4    # "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    .end local v5    # "applicationCacheObject":Lorg/json/JSONObject;
    .end local v7    # "data":[B
    .end local v12    # "json":Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15    # "manifest":Lorg/json/JSONObject;
    .end local v16    # "nativeCacheVersion":Ljava/lang/String;
    :catch_2
    move-exception v8

    move-object v10, v11

    .line 391
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    :goto_2
    const/16 v17, 0x0

    .line 392
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to parse cache manifest file"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "OSCache"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v8}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 395
    if-eqz v10, :cond_5

    .line 397
    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    :cond_5
    :goto_3
    move/from16 v18, v17

    .line 411
    goto/16 :goto_0

    .line 395
    .restart local v5    # "applicationCacheObject":Lorg/json/JSONObject;
    .restart local v7    # "data":[B
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "json":Ljava/lang/String;
    .restart local v14    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v15    # "manifest":Lorg/json/JSONObject;
    .restart local v16    # "nativeCacheVersion":Ljava/lang/String;
    :cond_6
    if-eqz v11, :cond_9

    .line 397
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-object v10, v11

    .line 400
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 398
    .end local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v8

    .line 399
    .local v8, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-object/from16 v18, v0

    const-string v19, "Could not close InputStream while trying to read cache manifest"

    const-string v20, "OSCache"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v8}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v10, v11

    .line 400
    .end local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 398
    .end local v5    # "applicationCacheObject":Lorg/json/JSONObject;
    .end local v7    # "data":[B
    .end local v12    # "json":Ljava/lang/String;
    .end local v14    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v15    # "manifest":Lorg/json/JSONObject;
    .end local v16    # "nativeCacheVersion":Ljava/lang/String;
    .local v8, "e":Ljava/lang/Exception;
    :catch_4
    move-exception v8

    .line 399
    .local v8, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-object/from16 v18, v0

    const-string v19, "Could not close InputStream while trying to read cache manifest"

    const-string v20, "OSCache"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2, v8}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 395
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v18

    :goto_4
    if-eqz v10, :cond_7

    .line 397
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 402
    :cond_7
    :goto_5
    throw v18

    .line 398
    :catch_5
    move-exception v8

    .line 399
    .restart local v8    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-object/from16 v19, v0

    const-string v20, "Could not close InputStream while trying to read cache manifest"

    const-string v21, "OSCache"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2, v8}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 405
    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "inputStream":Ljava/io/InputStream;
    :cond_8
    const/16 v17, 0x0

    .line 406
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->firstRun:Z

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to load cache manifest: File "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " not found"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "OSCache"

    invoke-interface/range {v18 .. v20}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 395
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v18

    move-object v10, v11

    .end local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    goto :goto_4

    .line 390
    :catch_6
    move-exception v8

    goto/16 :goto_2

    .end local v10    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "applicationCacheObject":Lorg/json/JSONObject;
    .restart local v7    # "data":[B
    .restart local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v12    # "json":Ljava/lang/String;
    .restart local v14    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v15    # "manifest":Lorg/json/JSONObject;
    .restart local v16    # "nativeCacheVersion":Ljava/lang/String;
    :cond_9
    move-object v10, v11

    .end local v11    # "inputStream":Ljava/io/InputStream;
    .restart local v10    # "inputStream":Ljava/io/InputStream;
    goto/16 :goto_3
.end method

.method public setCertificatePinner(Lokhttp3/CertificatePinner;)V
    .locals 3
    .param p1, "certificatePinner"    # Lokhttp3/CertificatePinner;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x4

    .line 265
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 266
    if-eqz p1, :cond_0

    .line 268
    iget v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->resourceConnectTimeout:I

    iget v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->resourceReadTimeout:I

    invoke-direct {p0, v0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->buildHttpClient(II)Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->defaultHttpClient:Lokhttp3/OkHttpClient;

    .line 269
    invoke-direct {p0, v2, v2}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->buildHttpClient(II)Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->noCacheHttpClient:Lokhttp3/OkHttpClient;

    .line 271
    :cond_0
    return-void
.end method

.method public setCurrentApplication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "hostname"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "application"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1026
    invoke-static {p1, p2}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->getKeyForHostnameAndApplication(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    .line 1027
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->applicationEntries:Ljava/util/Map;

    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;

    .line 1028
    .local v0, "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    if-nez v0, :cond_0

    .line 1029
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;

    .end local v0    # "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    .restart local v0    # "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->applicationEntries:Ljava/util/Map;

    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    :cond_0
    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)V
    .locals 3
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "trustManager"    # Ljavax/net/ssl/X509TrustManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x4

    .line 252
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 253
    iput-object p2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 255
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->trustManager:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_0

    .line 257
    iget v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->resourceConnectTimeout:I

    iget v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->resourceReadTimeout:I

    invoke-direct {p0, v0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->buildHttpClient(II)Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->defaultHttpClient:Lokhttp3/OkHttpClient;

    .line 258
    invoke-direct {p0, v2, v2}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->buildHttpClient(II)Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->noCacheHttpClient:Lokhttp3/OkHttpClient;

    .line 261
    :cond_0
    return-void
.end method

.method public startCaching(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 14
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
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .line 900
    .local p4, "resources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "urlMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p6, "noCacheUrlMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p7, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCaching started for version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OSCache"

    invoke-interface {v1, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->applyOptions(Ljava/util/Map;)V

    .line 904
    invoke-static/range {p1 .. p2}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->getKeyForHostnameAndApplication(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 906
    .local v10, "appKey":Ljava/lang/String;
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 907
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->applicationEntries:Ljava/util/Map;

    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;

    .line 909
    .local v11, "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->getRunningVersion()Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v11}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->getRunningVersion()Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    move-result-object v1

    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getVersionToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v11}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->getRunningVersion()Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    move-result-object v1

    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getVersionToken()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 911
    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->IDLE:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    invoke-direct {p0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->changeCacheStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;)V

    .line 914
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    invoke-interface {v1}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->fireOnFinishEvent()V

    .line 915
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching operation was skipped: version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already available in cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OSCache"

    invoke-interface {v1, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    .end local v11    # "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    :goto_0
    return-void

    .line 920
    :cond_0
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    if-eqz v1, :cond_1

    .line 921
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getVersionToken()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 923
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->defaultHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Dispatcher;->cancelAll()V

    .line 932
    :cond_1
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 934
    :cond_2
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v2, "Caching operation was rejected: resource list and url mappings dictionary are not valid"

    const-string v3, "OSCache"

    invoke-interface {v1, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    const-string v2, "Caching operation was rejected: resource list and url mappings dictionary are not valid"

    invoke-interface {v1, v2}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->fireOnErrorEvent(Ljava/lang/String;)V

    .line 937
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    invoke-interface {v1}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->fireOnFinishEvent()V

    goto :goto_0

    .line 926
    :cond_3
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching operation was rejected: version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already being cached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OSCache"

    invoke-interface {v1, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 941
    :cond_4
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->applicationEntries:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;

    .line 942
    .restart local v11    # "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    if-nez v11, :cond_5

    .line 943
    new-instance v11, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;

    .end local v11    # "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    move-object/from16 v0, p2

    invoke-direct {v11, p1, v0, v10}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    .restart local v11    # "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->applicationEntries:Ljava/util/Map;

    invoke-interface {v1, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    :cond_5
    invoke-virtual {p0, v10}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->createCacheDirectoryForApplication(Ljava/lang/String;)V

    .line 950
    :try_start_0
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->getCacheFrameByVersion(Ljava/lang/String;)Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    move-result-object v1

    iput-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 952
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->isPreBundled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 953
    :cond_6
    new-instance v1, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->startCachingDownloadListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;

    iget-object v8, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->defaultHttpClient:Lokhttp3/OkHttpClient;

    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    .line 961
    invoke-interface {v2}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v1 .. v9}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;Lokhttp3/OkHttpClient;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 963
    invoke-virtual {v11}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->getPreBundleVersion()Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    move-result-object v13

    .line 965
    .local v13, "preBundleFrameAux":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 966
    invoke-virtual {v11}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->getCacheEntries()Ljava/util/Map;

    move-result-object v2

    if-eqz v13, :cond_7

    .line 967
    invoke-virtual {v13}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getCacheEntries()Ljava/util/Map;

    move-result-object v3

    :goto_1
    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    .line 965
    invoke-virtual/range {v1 .. v6}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->populateCacheEntries(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    .line 971
    invoke-virtual {v11}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->getCacheFrames()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    .end local v13    # "preBundleFrameAux":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    :goto_2
    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->DOWNLOADING:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    invoke-direct {p0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->changeCacheStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;)V

    .line 978
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->calculateMaxNumberOfRetries(I)V

    .line 979
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    iget v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->maxNumberOfRetries:I

    invoke-virtual {v1, v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->setMaxNumberOfRetries(I)V

    .line 980
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    iget-boolean v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->checksumValidation:Z

    invoke-virtual {v1, v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->startDownload(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 981
    :catch_0
    move-exception v12

    .line 982
    .local v12, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to download resources for application version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OSCache"

    invoke-interface {v1, v2, v3, v12}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to download resources for application version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->abortCacheDownload(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 967
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v13    # "preBundleFrameAux":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    :cond_7
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    goto/16 :goto_1

    .line 973
    .end local v13    # "preBundleFrameAux":Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    :cond_8
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->startCachingDownloadListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;

    invoke-virtual {v1, v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->setDownloadListener(Lcom/outsystems/plugins/oscache/cache/interfaces/CacheDownloadListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method declared-synchronized swapCache()Z
    .locals 6

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentStatus:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    sget-object v4, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->UPDATEREADY:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    if-eq v3, v4, :cond_0

    .line 489
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v4, "Unable to swap cache: missing application or wrong cache status"

    const-string v5, "OSCache"

    invoke-interface {v3, v4, v5}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    const/4 v2, 0x0

    .line 523
    :goto_0
    monitor-exit p0

    return v2

    .line 493
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v3}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getHostname()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v4}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getApplication()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->getKeyForHostnameAndApplication(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "applicationKey":Ljava/lang/String;
    iput-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    .line 496
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->applicationEntries:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;

    .line 498
    .local v0, "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    if-nez v0, :cond_1

    .line 499
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;

    .end local v0    # "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 500
    invoke-virtual {v3}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getHostname()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 501
    invoke-virtual {v4}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getApplication()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4, v1}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    .restart local v0    # "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->applicationEntries:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    :cond_1
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-virtual {v0, v3}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->swapCache(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;)Z

    move-result v2

    .line 509
    .local v2, "resultSwapCache":Z
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->ongoingCacheResources:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 511
    sget-object v3, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->IDLE:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    invoke-direct {p0, v3}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->changeCacheStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;)V

    .line 513
    invoke-virtual {p0}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->writeCacheManifest()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 514
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v4, "Cache was swapped with success"

    const-string v5, "OSCache"

    invoke-interface {v3, v4, v5}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->clearPreviousVersion()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 488
    .end local v0    # "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    .end local v1    # "applicationKey":Ljava/lang/String;
    .end local v2    # "resultSwapCache":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 518
    .restart local v0    # "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    .restart local v1    # "applicationKey":Ljava/lang/String;
    .restart local v2    # "resultSwapCache":Z
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v4, "Failed to serialize cache while swapping cache"

    const-string v5, "OSCache"

    invoke-interface {v3, v4, v5}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const/4 v2, 0x0

    .line 520
    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->rollbackToPreviousVersion()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public switchToVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
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

    .prologue
    .line 990
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchToVersion version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OSCache"

    invoke-interface {v2, v3, v4}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    invoke-static {p1, p2}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->getKeyForHostnameAndApplication(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 994
    .local v0, "appKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 995
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->applicationEntries:Ljava/util/Map;

    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentApplication:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;

    .line 997
    .local v1, "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->getRunningVersion()Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 998
    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->getRunningVersion()Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getVersionToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 999
    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->getRunningVersion()Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    move-result-object v2

    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->getVersionToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1000
    invoke-virtual {p0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->markForDeletion(Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;)V

    .line 1010
    .end local v1    # "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    :goto_0
    return-void

    .line 1002
    .restart local v1    # "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    :cond_0
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to switch to cache version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OSCache"

    invoke-interface {v2, v3, v4}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to switch to cache version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->throwException(Ljava/lang/String;)V

    goto :goto_0

    .line 1007
    .end local v1    # "applicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    :cond_1
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to switch version: app https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OSCache"

    invoke-interface {v2, v3, v4}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to switch to cache version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->throwException(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public upgradeCacheIfNeeded()V
    .locals 5

    .prologue
    .line 1082
    iget-boolean v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheUpgrade:Z

    if-eqz v2, :cond_3

    .line 1083
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v3, "Upgrading cache"

    const-string v4, "OSCache"

    invoke-interface {v2, v3, v4}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->applicationEntries:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1087
    .local v1, "currentKey":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->createCacheDirectoryForApplication(Ljava/lang/String;)V

    .line 1089
    iget-object v3, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->applicationEntries:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;

    .line 1091
    .local v0, "currentApplicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    if-eqz v0, :cond_0

    .line 1092
    invoke-virtual {v0}, Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;->upgradeIfNeeded()V

    goto :goto_0

    .line 1096
    .end local v0    # "currentApplicationCache":Lcom/outsystems/plugins/oscache/cache/types/ApplicationCache;
    .end local v1    # "currentKey":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheUpgrade:Z

    .line 1097
    sget-object v2, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->IDLE:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    iput-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->currentStatus:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    .line 1099
    invoke-virtual {p0}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->writeCacheManifest()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1100
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v3, "Cache upgraded with success"

    const-string v4, "OSCache"

    invoke-interface {v2, v3, v4}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    :goto_1
    return-void

    .line 1103
    :cond_2
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v3, "Failed to serialize cache while upgrading cache"

    const-string v4, "OSCache"

    invoke-interface {v2, v3, v4}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1107
    :cond_3
    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v3, "Tried to upgrade cache but was already up to date"

    const-string v4, "OSCache"

    invoke-interface {v2, v3, v4}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method writeCacheManifest()Z
    .locals 11

    .prologue
    .line 299
    const/4 v6, 0x1

    .line 300
    .local v6, "success":Z
    invoke-direct {p0}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->createCacheManifest()Lorg/json/JSONObject;

    move-result-object v0

    .line 301
    .local v0, "cacheManifest":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 303
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->cacheListener:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;

    invoke-interface {v8}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "OSNativeCache"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "nativeCache.manifest"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    .local v5, "manifestFile":Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 306
    .local v1, "data":[B
    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 307
    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v8, "Cache was successfully serialized"

    const-string v9, "OSCache"

    invoke-interface {v7, v8, v9}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-direct {p0, v5}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->writeCacheManifestHash(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 314
    if-eqz v4, :cond_2

    .line 316
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 323
    .end local v1    # "data":[B
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v5    # "manifestFile":Ljava/io/File;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return v6

    .line 317
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "data":[B
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "manifestFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 318
    .local v2, "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v8, "Could not close FileOutputStream while trying to write cache manifest file"

    const-string v9, "OSCache"

    invoke-interface {v7, v8, v9, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v4

    .line 319
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 309
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "manifestFile":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 310
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v6, 0x0

    .line 311
    :try_start_3
    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not write cache manifest file: "

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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    if-eqz v3, :cond_0

    .line 316
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 317
    :catch_2
    move-exception v2

    .line 318
    .local v2, "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v8, "Could not close FileOutputStream while trying to write cache manifest file"

    const-string v9, "OSCache"

    invoke-interface {v7, v8, v9, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 314
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v3, :cond_1

    .line 316
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 321
    :cond_1
    :goto_3
    throw v7

    .line 317
    :catch_3
    move-exception v2

    .line 318
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v8, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v9, "Could not close FileOutputStream while trying to write cache manifest file"

    const-string v10, "OSCache"

    invoke-interface {v8, v9, v10, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 314
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "manifestFile":Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 309
    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "data":[B
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_2
    move-object v3, v4

    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_0
.end method
