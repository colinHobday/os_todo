.class public Lcom/outsystems/plugins/prebundle/OSPreBundle;
.super Ljava/lang/Object;
.source "OSPreBundle.java"

# interfaces
.implements Lcom/outsystems/plugins/prebundle/interfaces/PreBundle;


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final PRECACHE_MANIFEST:Ljava/lang/String; = "www/manifest.json"


# instance fields
.field private cacheEngine:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;

.field private context:Landroid/content/Context;

.field private defaultHostname:Ljava/lang/String;

.field private defaultURL:Ljava/lang/String;

.field private logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

.field private manifestEngine:Lcom/outsystems/plugins/manifest/interfaces/ManifestParserEngine;


# direct methods
.method public constructor <init>(Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;Lcom/outsystems/plugins/manifest/OSManifestParser;Lcom/outsystems/plugins/oslogger/interfaces/Logger;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "cacheEngine"    # Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;
    .param p2, "manifestEngine"    # Lcom/outsystems/plugins/manifest/OSManifestParser;
    .param p3, "loggerEngine"    # Lcom/outsystems/plugins/oslogger/interfaces/Logger;
    .param p4, "defaultHostname"    # Ljava/lang/String;
    .param p5, "defaultURL"    # Ljava/lang/String;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->cacheEngine:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;

    .line 33
    iput-object p2, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->manifestEngine:Lcom/outsystems/plugins/manifest/interfaces/ManifestParserEngine;

    .line 34
    iput-object p3, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    .line 35
    iput-object p4, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->defaultHostname:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->defaultURL:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->context:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private readManifestFromAssets(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p1, "manifestFile"    # Ljava/lang/String;

    .prologue
    .line 51
    const/4 v2, 0x0

    .line 53
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 54
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 60
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    :goto_0
    return-object v2

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read manifest file from assets: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OSPreBundle"

    invoke-interface {v3, v4, v5, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public bootstrapCacheWithPreBundle()V
    .locals 5

    .prologue
    .line 41
    iget-object v2, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v3, "Loading PreBundle manifest"

    const-string v4, "OSPreBundle"

    invoke-interface {v2, v3, v4}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v2, "www/manifest.json"

    invoke-direct {p0, v2}, Lcom/outsystems/plugins/prebundle/OSPreBundle;->readManifestFromAssets(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 43
    .local v1, "manifestStream":Ljava/io/InputStream;
    invoke-virtual {p0, v1}, Lcom/outsystems/plugins/prebundle/OSPreBundle;->getManifest(Ljava/io/InputStream;)Lcom/outsystems/plugins/manifest/types/Manifest;

    move-result-object v0

    .line 44
    .local v0, "manifest":Lcom/outsystems/plugins/manifest/types/Manifest;
    invoke-virtual {p0, v0}, Lcom/outsystems/plugins/prebundle/OSPreBundle;->loadPreBundleManifest(Lcom/outsystems/plugins/manifest/types/Manifest;)V

    .line 46
    iget-object v2, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v3, "Upgrading cache model if needed"

    const-string v4, "OSPreBundle"

    invoke-interface {v2, v3, v4}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v2, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->cacheEngine:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;

    invoke-interface {v2}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;->upgradeCacheIfNeeded()V

    .line 48
    return-void
.end method

.method getManifest(Ljava/io/InputStream;)Lcom/outsystems/plugins/manifest/types/Manifest;
    .locals 9
    .param p1, "manifestStream"    # Ljava/io/InputStream;

    .prologue
    .line 64
    const/4 v3, 0x0

    .line 68
    .local v3, "manifestData":Lcom/outsystems/plugins/manifest/types/Manifest;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v0, v5, [B

    .line 69
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 71
    new-instance v2, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v2, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 72
    .local v2, "json":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    .local v4, "manifestJson":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->manifestEngine:Lcom/outsystems/plugins/manifest/interfaces/ManifestParserEngine;

    invoke-interface {v5, v4}, Lcom/outsystems/plugins/manifest/interfaces/ManifestParserEngine;->getManifestInfo(Lorg/json/JSONObject;)Lcom/outsystems/plugins/manifest/types/Manifest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 80
    if-eqz p1, :cond_0

    .line 82
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    .end local v0    # "data":[B
    .end local v2    # "json":Ljava/lang/String;
    .end local v4    # "manifestJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v3

    .line 83
    .restart local v0    # "data":[B
    .restart local v2    # "json":Ljava/lang/String;
    .restart local v4    # "manifestJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v6, "Could not close InputStream after reading pre-cache manifest file"

    const-string v7, "OSPreBundle"

    invoke-interface {v5, v6, v7, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 76
    .end local v0    # "data":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "json":Ljava/lang/String;
    .end local v4    # "manifestJson":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v5, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to load pre-bundle manifest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OSPreBundle"

    invoke-interface {v5, v6, v7, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    if-eqz p1, :cond_0

    .line 82
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 83
    :catch_2
    move-exception v1

    .line 84
    .local v1, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v6, "Could not close InputStream after reading pre-cache manifest file"

    const-string v7, "OSPreBundle"

    invoke-interface {v5, v6, v7, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 80
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz p1, :cond_1

    .line 82
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 87
    :cond_1
    :goto_1
    throw v5

    .line 83
    :catch_3
    move-exception v1

    .line 84
    .restart local v1    # "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v7, "Could not close InputStream after reading pre-cache manifest file"

    const-string v8, "OSPreBundle"

    invoke-interface {v6, v7, v8, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method loadPreBundleManifest(Lcom/outsystems/plugins/manifest/types/Manifest;)V
    .locals 5
    .param p1, "manifest"    # Lcom/outsystems/plugins/manifest/types/Manifest;

    .prologue
    .line 92
    if-eqz p1, :cond_3

    .line 93
    invoke-virtual {p1}, Lcom/outsystems/plugins/manifest/types/Manifest;->getVersionToken()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "manifestVersion":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 97
    iget-object v1, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->defaultHostname:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->defaultURL:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v2, "Could not load pre-bundle resources: hostname or url are null"

    const-string v3, "OSPreBundle"

    invoke-interface {v1, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .end local v0    # "manifestVersion":Ljava/lang/String;
    :goto_0
    return-void

    .line 102
    .restart local v0    # "manifestVersion":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->cacheEngine:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;

    iget-object v2, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->defaultHostname:Ljava/lang/String;

    iget-object v3, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->defaultURL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;->setCurrentApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lcom/outsystems/plugins/manifest/types/Manifest;->getUrlVersions()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->manifestEngine:Lcom/outsystems/plugins/manifest/interfaces/ManifestParserEngine;

    invoke-interface {v2, v0}, Lcom/outsystems/plugins/manifest/interfaces/ManifestParserEngine;->getManifestUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->cacheEngine:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;

    invoke-virtual {p1}, Lcom/outsystems/plugins/manifest/types/Manifest;->getUrlVersions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/outsystems/plugins/manifest/types/Manifest;->getUrlMappings()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcom/outsystems/plugins/manifest/types/Manifest;->getUrlMappingsNoCache()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v1, v0, v2, v3, v4}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;->bootstrapCache(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v2, "Could not load pre-bundle resources: manifest version is null"

    const-string v3, "OSPreBundle"

    invoke-interface {v1, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v0    # "manifestVersion":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/outsystems/plugins/prebundle/OSPreBundle;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v2, "Could not load pre-bundle resources: manifest data is null"

    const-string v3, "OSPreBundle"

    invoke-interface {v1, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
