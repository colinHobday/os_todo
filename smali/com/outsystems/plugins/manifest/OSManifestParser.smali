.class public Lcom/outsystems/plugins/manifest/OSManifestParser;
.super Ljava/lang/Object;
.source "OSManifestParser.java"

# interfaces
.implements Lcom/outsystems/plugins/manifest/interfaces/ManifestParserEngine;


# static fields
.field private static final INSTANCE:Lcom/outsystems/plugins/manifest/OSManifestParser;

.field private static final MANIFEST_FILE:Ljava/lang/String; = "manifest.json"

.field private static final MANIFEST_JSON_OBJECT:Ljava/lang/String; = "manifest"

.field private static final RESOURCE_JSON_OBJECT:Ljava/lang/String; = "urlVersions"

.field private static final URLMAPPINGS_JSON_OBJECT:Ljava/lang/String; = "urlMappings"

.field private static final URLMAPPINGS_NOCACHE_JSON_OBJECT:Ljava/lang/String; = "urlMappingsNoCache"

.field private static final VERSION_JSON_OBJECT:Ljava/lang/String; = "versionToken"


# instance fields
.field private logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/outsystems/plugins/manifest/OSManifestParser;

    invoke-direct {v0}, Lcom/outsystems/plugins/manifest/OSManifestParser;-><init>()V

    sput-object v0, Lcom/outsystems/plugins/manifest/OSManifestParser;->INSTANCE:Lcom/outsystems/plugins/manifest/OSManifestParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/outsystems/plugins/oslogger/OSLogger;->getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/manifest/OSManifestParser;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    return-void
.end method

.method public static getInstance()Lcom/outsystems/plugins/manifest/OSManifestParser;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/outsystems/plugins/manifest/OSManifestParser;->INSTANCE:Lcom/outsystems/plugins/manifest/OSManifestParser;

    return-object v0
.end method


# virtual methods
.method public getManifestInfo(Lorg/json/JSONObject;)Lcom/outsystems/plugins/manifest/types/Manifest;
    .locals 8
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 83
    :try_start_0
    const-string v5, "manifest"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 85
    .local v2, "manifestObject":Lorg/json/JSONObject;
    const-string v5, "versionToken"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "versionToken":Ljava/lang/String;
    new-instance v1, Lcom/outsystems/plugins/manifest/types/Manifest;

    invoke-direct {v1, v4}, Lcom/outsystems/plugins/manifest/types/Manifest;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "manifest":Lcom/outsystems/plugins/manifest/types/Manifest;
    const-string v5, "urlVersions"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 90
    invoke-virtual {p0, v2}, Lcom/outsystems/plugins/manifest/OSManifestParser;->getUrlVersionsFromJSON(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/outsystems/plugins/manifest/types/Manifest;->setUrlVersions(Ljava/util/List;)V

    .line 93
    :cond_0
    const-string v5, "urlMappings"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 94
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/outsystems/plugins/manifest/OSManifestParser;->getUrlMappingsFromJSON(Lorg/json/JSONObject;Z)Ljava/util/Map;

    move-result-object v3

    .line 95
    .local v3, "urlMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1, v3}, Lcom/outsystems/plugins/manifest/types/Manifest;->setUrlMappings(Ljava/util/Map;)V

    .line 98
    .end local v3    # "urlMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string v5, "urlMappingsNoCache"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 99
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Lcom/outsystems/plugins/manifest/OSManifestParser;->getUrlMappingsFromJSON(Lorg/json/JSONObject;Z)Ljava/util/Map;

    move-result-object v3

    .line 100
    .restart local v3    # "urlMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1, v3}, Lcom/outsystems/plugins/manifest/types/Manifest;->setUrlMappingsNoCache(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1    # "manifest":Lcom/outsystems/plugins/manifest/types/Manifest;
    .end local v2    # "manifestObject":Lorg/json/JSONObject;
    .end local v3    # "urlMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "versionToken":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/outsystems/plugins/manifest/OSManifestParser;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to parse manifest file with error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OSManifest"

    invoke-interface {v5, v6, v7, v0}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getManifestUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "version"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 126
    const-string v0, "manifest.json"

    .line 128
    .local v0, "url":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_0
    return-object v0
.end method

.method public getManifestVersion(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 114
    :try_start_0
    const-string v2, "manifest"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 116
    .local v1, "manifestObject":Lorg/json/JSONObject;
    const-string v2, "versionToken"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 121
    .end local v1    # "manifestObject":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lorg/json/JSONException;
    iget-object v2, p0, Lcom/outsystems/plugins/manifest/OSManifestParser;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse manifest file with error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OSManifest"

    invoke-interface {v2, v3, v4, v0}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getUrlMappingsFromJSON(Lorg/json/JSONObject;Z)Ljava/util/Map;
    .locals 8
    .param p1, "manifest"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "withCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 44
    if-eqz p2, :cond_0

    const-string v7, "urlMappings"

    :goto_0
    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 45
    .local v5, "urlMappingsObject":Lorg/json/JSONObject;
    const-string v7, "urlVersions"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 47
    .local v6, "urlVersionsObject":Lorg/json/JSONObject;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v4, "urlMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 50
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 52
    .local v3, "url":Ljava/lang/String;
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "resourceUrl":Ljava/lang/String;
    const-string v7, "?"

    invoke-virtual {v1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 55
    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 44
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "resourceUrl":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    .end local v4    # "urlMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "urlMappingsObject":Lorg/json/JSONObject;
    .end local v6    # "urlVersionsObject":Lorg/json/JSONObject;
    :cond_0
    const-string v7, "urlMappingsNoCache"

    goto :goto_0

    .line 60
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v1    # "resourceUrl":Ljava/lang/String;
    .restart local v3    # "url":Ljava/lang/String;
    .restart local v4    # "urlMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5    # "urlMappingsObject":Lorg/json/JSONObject;
    .restart local v6    # "urlVersionsObject":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "resourceVersion":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 64
    .end local v1    # "resourceUrl":Ljava/lang/String;
    .end local v2    # "resourceVersion":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method getUrlVersionsFromJSON(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .param p1, "manifest"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 68
    const-string v5, "urlVersions"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 69
    .local v3, "urlVersions":Lorg/json/JSONObject;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v2, "resources":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 72
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "value":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    return-object v2
.end method
