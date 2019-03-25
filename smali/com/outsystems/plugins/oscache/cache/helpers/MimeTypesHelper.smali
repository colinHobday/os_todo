.class public Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;
.super Ljava/lang/Object;
.source "MimeTypesHelper.java"


# static fields
.field private static final DEFAULT_MIMETYPE:Ljava/lang/String; = "*/*"

.field private static final INITIAL_CAPACITY:I = 0x1ef

.field private static final MIMETYPE_JSON_OBJECT:Ljava/lang/String; = "mimeTypes"

.field private static instance:Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

.field final supportedMimeTypes:Ljava/util/Map;
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


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lcom/outsystems/plugins/oslogger/OSLogger;->getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->assetManager:Landroid/content/res/AssetManager;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x1ef

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->supportedMimeTypes:Ljava/util/Map;

    .line 37
    return-void
.end method

.method public static getInstance()Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->instance:Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;

    return-object v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 40
    const-class v1, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->instance:Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;

    invoke-direct {v0, p0}, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->instance:Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_0
    monitor-exit v1

    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "extension"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 105
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->supportedMimeTypes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 107
    .local v0, "mimeType":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid extension "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " while fetching MIME type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OSCache"

    invoke-interface {v1, v2, v3}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "*/*"

    .line 112
    :cond_0
    return-object v0
.end method

.method loadDefaultMimeTypes()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v1, "Loading default mime types"

    const-string v2, "OSCache"

    invoke-interface {v0, v1, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->supportedMimeTypes:Ljava/util/Map;

    const-string v1, "js"

    const-string v2, "text/javascript"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->supportedMimeTypes:Ljava/util/Map;

    const-string v1, "css"

    const-string v2, "text/css"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->supportedMimeTypes:Ljava/util/Map;

    const-string v1, "png"

    const-string v2, "image/png"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->supportedMimeTypes:Ljava/util/Map;

    const-string v1, "gif"

    const-string v2, "image/gif"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->supportedMimeTypes:Ljava/util/Map;

    const-string v1, "wav"

    const-string v2, "audio/wav"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->supportedMimeTypes:Ljava/util/Map;

    const-string v1, "svg"

    const-string v2, "img/svg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->supportedMimeTypes:Ljava/util/Map;

    const-string v1, "html"

    const-string v2, "text/html"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->supportedMimeTypes:Ljava/util/Map;

    const-string v1, "woff"

    const-string v2, "application/font-woff"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->supportedMimeTypes:Ljava/util/Map;

    const-string v1, "woff2"

    const-string v2, "application/font-woff2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->supportedMimeTypes:Ljava/util/Map;

    const-string v1, "ttf"

    const-string v2, "application/octet-stream"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->supportedMimeTypes:Ljava/util/Map;

    const-string v1, "json"

    const-string v2, "application/json"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public loadMimeTypes(Ljava/lang/String;)V
    .locals 12
    .param p1, "assetPath"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    const/4 v3, 0x0

    .line 68
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v8, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v8, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 72
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v8

    new-array v1, v8, [B

    .line 73
    .local v1, "data":[B
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    .line 75
    new-instance v4, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v4, v1, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 76
    .local v4, "json":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 77
    .local v6, "manifest":Lorg/json/JSONObject;
    const-string v8, "mimeTypes"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 79
    .local v7, "mimeTypes":Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 81
    .local v5, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 82
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    .local v0, "currentKey":Ljava/lang/String;
    iget-object v8, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->supportedMimeTypes:Ljava/util/Map;

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    .end local v0    # "currentKey":Ljava/lang/String;
    .end local v1    # "data":[B
    .end local v4    # "json":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "manifest":Lorg/json/JSONObject;
    .end local v7    # "mimeTypes":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v8, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to load mime types from manifest: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "OSCache"

    invoke-interface {v8, v9, v10, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    invoke-virtual {p0}, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->loadDefaultMimeTypes()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    if-eqz v3, :cond_0

    .line 94
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 101
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 92
    .restart local v1    # "data":[B
    .restart local v4    # "json":Ljava/lang/String;
    .restart local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v6    # "manifest":Lorg/json/JSONObject;
    .restart local v7    # "mimeTypes":Lorg/json/JSONObject;
    :cond_1
    if-eqz v3, :cond_0

    .line 94
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 96
    :catch_1
    move-exception v2

    .line 97
    .local v2, "e":Ljava/io/IOException;
    iget-object v8, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v9, "Could not close InputStream while loading mimetypes"

    const-string v10, "OSCache"

    invoke-interface {v8, v9, v10, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 96
    .end local v1    # "data":[B
    .end local v4    # "json":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "manifest":Lorg/json/JSONObject;
    .end local v7    # "mimeTypes":Lorg/json/JSONObject;
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 97
    .local v2, "e":Ljava/io/IOException;
    iget-object v8, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v9, "Could not close InputStream while loading mimetypes"

    const-string v10, "OSCache"

    invoke-interface {v8, v9, v10, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 92
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v3, :cond_2

    .line 94
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 100
    :cond_2
    :goto_2
    throw v8

    .line 96
    :catch_3
    move-exception v2

    .line 97
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v9, p0, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v10, "Could not close InputStream while loading mimetypes"

    const-string v11, "OSCache"

    invoke-interface {v9, v10, v11, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
