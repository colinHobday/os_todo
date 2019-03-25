.class public Lcom/outsystems/plugins/loader/clients/WebClient;
.super Lorg/apache/cordova/engine/SystemWebViewClient;
.source "WebClient.java"


# static fields
.field private static final CON_KEEP_ALIVE_DEFAULT:I = 0x12c

.field private static final CON_KEEP_ALIVE_PREF:Ljava/lang/String; = "sslpinning-connection-keep-alive"

.field private static final CON_MAX_IDLE_CONNECTIONS_DEFAULT:I = 0x5

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "utf-8"

.field private static final HTTP_STATUS_CODE_CLOSED_REQUEST:I = 0x1f3

.field private static final LOADER_CACHE_RESOURCE_READ_TIMEOUT:I = 0xa

.field private static final LOADER_RESOURCE_CONNECT_TIMEOUT:I = 0x4

.field private static final OPEN_URL_EXTERNAL_BROWSER_PREFIX:Ljava/lang/String; = "external:"

.field private static final moduleName:Ljava/lang/String; = "OSCordovaLoader"


# instance fields
.field private activity:Lorg/apache/cordova/CordovaActivity;

.field private cacheEngine:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;

.field private context:Landroid/content/Context;

.field private failingUrl:Ljava/lang/String;

.field private httpClient:Lokhttp3/OkHttpClient;

.field private logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

.field private preferences:Lorg/apache/cordova/CordovaPreferences;

.field sslSecurity:Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;

.field private webViewLoadingFailed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/apache/cordova/CordovaWebView;Lorg/apache/cordova/CordovaInterface;Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;Lorg/apache/cordova/CordovaPreferences;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webView"    # Lorg/apache/cordova/CordovaWebView;
    .param p3, "cordova"    # Lorg/apache/cordova/CordovaInterface;
    .param p4, "cacheEngine"    # Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;
    .param p5, "preferences"    # Lorg/apache/cordova/CordovaPreferences;

    .prologue
    .line 84
    invoke-interface {p2}, Lorg/apache/cordova/CordovaWebView;->getEngine()Lorg/apache/cordova/CordovaWebViewEngine;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/engine/SystemWebViewEngine;

    invoke-direct {p0, v0}, Lorg/apache/cordova/engine/SystemWebViewClient;-><init>(Lorg/apache/cordova/engine/SystemWebViewEngine;)V

    .line 81
    invoke-static {}, Lcom/outsystems/plugins/oslogger/OSLogger;->getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    .line 86
    iput-object p1, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->context:Landroid/content/Context;

    .line 87
    iput-object p4, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->cacheEngine:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;

    .line 88
    invoke-interface {p3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/CordovaActivity;

    iput-object v0, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->activity:Lorg/apache/cordova/CordovaActivity;

    .line 89
    iput-object p5, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->preferences:Lorg/apache/cordova/CordovaPreferences;

    .line 90
    return-void
.end method

.method private getCordovaResource(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 302
    move-object v5, p1

    .line 303
    .local v5, "urlString":Ljava/lang/String;
    :try_start_0
    const-string v3, "(\\/([\\da-zA-Z\\-_]+))?(\\/(cdvload|scripts)\\/)"

    .line 305
    .local v3, "regex":Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-nez v7, :cond_0

    .line 324
    .end local v3    # "regex":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 309
    .restart local v3    # "regex":Ljava/lang/String;
    :cond_0
    const-string v7, "www/"

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 311
    iget-object v7, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 312
    .local v4, "stream":Ljava/io/InputStream;
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "extension":Ljava/lang/String;
    invoke-static {}, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->getInstance()Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "mimeType":Ljava/lang/String;
    new-instance v7, Landroid/webkit/WebResourceResponse;

    const-string v8, "UTF-8"

    invoke-direct {v7, v2, v8, v4}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v7

    goto :goto_0

    .line 318
    .end local v1    # "extension":Ljava/lang/String;
    .end local v2    # "mimeType":Ljava/lang/String;
    .end local v3    # "regex":Ljava/lang/String;
    .end local v4    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not get Cordova resource while intercepting request: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OSCordovaLoader"

    invoke-interface {v7, v8, v9}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 322
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error getting Cordova resource while intercepting request: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OSCordovaLoader"

    invoke-interface {v7, v8, v9, v0}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getPinnedResource(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 31
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .prologue
    .line 193
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 195
    .local v13, "errorMsg":Ljava/lang/String;
    const-string v3, "GET"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v6, "http"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 197
    :try_start_0
    new-instance v27, Lokhttp3/Request$Builder;

    invoke-direct/range {v27 .. v27}, Lokhttp3/Request$Builder;-><init>()V

    .line 198
    .local v27, "requestBuilder":Lokhttp3/Request$Builder;
    const/4 v3, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 201
    if-eqz p3, :cond_1

    .line 202
    move-object/from16 v26, p3

    .line 203
    .local v26, "originalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v20

    .line 204
    .local v20, "headersKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v22, Lokhttp3/Headers$Builder;

    invoke-direct/range {v22 .. v22}, Lokhttp3/Headers$Builder;-><init>()V

    .line 205
    .local v22, "httpRequestHeaders":Lokhttp3/Headers$Builder;
    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 206
    .local v25, "key":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 207
    .local v30, "value":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 269
    .end local v20    # "headersKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22    # "httpRequestHeaders":Lokhttp3/Headers$Builder;
    .end local v25    # "key":Ljava/lang/String;
    .end local v26    # "originalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v27    # "requestBuilder":Lokhttp3/Request$Builder;
    .end local v30    # "value":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 270
    .local v18, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/outsystems/plugins/loader/clients/WebClient;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not get resource with pinning while intercepting request: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "OSCordovaLoader"

    invoke-interface {v3, v6, v9}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    .line 273
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v3, v6, :cond_8

    .line 274
    new-instance v9, Landroid/webkit/WebResourceResponse;

    const/4 v10, 0x0

    const-string v11, "utf-8"

    const/16 v12, 0x1f3

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v15}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 296
    .end local v18    # "e":Ljava/io/IOException;
    :goto_1
    return-object v9

    .line 209
    .restart local v20    # "headersKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v22    # "httpRequestHeaders":Lokhttp3/Headers$Builder;
    .restart local v26    # "originalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v27    # "requestBuilder":Lokhttp3/Request$Builder;
    :cond_0
    :try_start_1
    invoke-virtual/range {v22 .. v22}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 212
    .end local v20    # "headersKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v22    # "httpRequestHeaders":Lokhttp3/Headers$Builder;
    .end local v26    # "originalHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual/range {v27 .. v27}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v21

    .line 213
    .local v21, "httpRequest":Lokhttp3/Request;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/outsystems/plugins/loader/clients/WebClient;->httpClient:Lokhttp3/OkHttpClient;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v3

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v23

    .line 215
    .local v23, "httpResponse":Lokhttp3/Response;
    invoke-virtual/range {v23 .. v23}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v28

    .line 216
    .local v28, "response":Lokhttp3/Response;
    const-string v3, "Content-Type"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 218
    .local v16, "contentType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 219
    .local v4, "mimeType":Ljava/lang/String;
    const-string v5, "utf-8"

    .line 222
    .local v5, "encoding":Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 223
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 225
    .local v17, "contentTypeList":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v3, v0

    if-lez v3, :cond_2

    .line 226
    const/4 v3, 0x0

    aget-object v4, v17, v3

    .line 228
    const/16 v24, 0x1

    .local v24, "i":I
    :goto_2
    move-object/from16 v0, v17

    array-length v3, v0

    move/from16 v0, v24

    if-ge v0, v3, :cond_2

    .line 229
    aget-object v3, v17, v24

    const-string v6, "charset="

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 230
    aget-object v3, v17, v24

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    aget-object v5, v3, v6

    .line 239
    .end local v17    # "contentTypeList":[Ljava/lang/String;
    .end local v24    # "i":I
    :cond_2
    if-nez v4, :cond_3

    .line 240
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 241
    .local v19, "extension":Ljava/lang/String;
    invoke-static {}, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->getInstance()Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/outsystems/plugins/oscache/cache/helpers/MimeTypesHelper;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 244
    .end local v19    # "extension":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v28 .. v28}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v29

    .line 245
    .local v29, "responseHeaders":Lokhttp3/Headers;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 247
    .local v8, "httpResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_3
    invoke-virtual/range {v29 .. v29}, Lokhttp3/Headers;->size()I

    move-result v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_5

    .line 248
    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 228
    .end local v8    # "httpResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v29    # "responseHeaders":Lokhttp3/Headers;
    .restart local v17    # "contentTypeList":[Ljava/lang/String;
    :cond_4
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 251
    .end local v17    # "contentTypeList":[Ljava/lang/String;
    .restart local v8    # "httpResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v29    # "responseHeaders":Lokhttp3/Headers;
    :cond_5
    const-string v3, "status"

    invoke-virtual/range {v28 .. v28}, Lokhttp3/Response;->code()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v3, v6, :cond_7

    .line 255
    invoke-virtual/range {v23 .. v23}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 256
    .local v7, "responseMessage":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual/range {v28 .. v28}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 257
    invoke-virtual/range {v28 .. v28}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v7

    .line 260
    :cond_6
    new-instance v3, Landroid/webkit/WebResourceResponse;

    invoke-virtual/range {v28 .. v28}, Lokhttp3/Response;->code()I

    move-result v6

    .line 262
    invoke-virtual/range {v23 .. v23}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct/range {v3 .. v9}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    move-object v9, v3

    .line 260
    goto/16 :goto_1

    .line 265
    .end local v7    # "responseMessage":Ljava/lang/String;
    :cond_7
    new-instance v9, Landroid/webkit/WebResourceResponse;

    .line 266
    invoke-virtual/range {v23 .. v23}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v9, v4, v5, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 280
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "encoding":Ljava/lang/String;
    .end local v8    # "httpResponseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "contentType":Ljava/lang/String;
    .end local v21    # "httpRequest":Lokhttp3/Request;
    .end local v23    # "httpResponse":Lokhttp3/Response;
    .end local v24    # "i":I
    .end local v27    # "requestBuilder":Lokhttp3/Request$Builder;
    .end local v28    # "response":Lokhttp3/Response;
    .end local v29    # "responseHeaders":Lokhttp3/Headers;
    :catch_1
    move-exception v18

    .line 281
    .local v18, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/outsystems/plugins/loader/clients/WebClient;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error getting resource with pinning while intercepting request: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "OSCordovaLoader"

    move-object/from16 v0, v18

    invoke-interface {v3, v6, v9, v0}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 282
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    .line 284
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v3, v6, :cond_9

    .line 285
    new-instance v9, Landroid/webkit/WebResourceResponse;

    const/4 v10, 0x0

    const-string v11, "utf-8"

    const/16 v12, 0x1f3

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v15}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    goto/16 :goto_1

    .line 277
    .local v18, "e":Ljava/io/IOException;
    :cond_8
    new-instance v9, Landroid/webkit/WebResourceResponse;

    const/4 v3, 0x0

    const-string v6, "utf-8"

    const/4 v10, 0x0

    invoke-direct {v9, v3, v6, v10}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_1

    .line 288
    .local v18, "e":Ljava/lang/Exception;
    :cond_9
    new-instance v9, Landroid/webkit/WebResourceResponse;

    const/4 v3, 0x0

    const-string v6, "utf-8"

    const/4 v10, 0x0

    invoke-direct {v9, v3, v6, v10}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto/16 :goto_1

    .line 293
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/outsystems/plugins/loader/clients/WebClient;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to fetch pinned resource: URL method "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " or scheme "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " are not supported"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "OSCordovaLoader"

    invoke-interface {v3, v6, v9}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const/4 v9, 0x0

    goto/16 :goto_1
.end method

.method private setHttpClient()V
    .locals 9

    .prologue
    .line 162
    iget-object v5, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->sslSecurity:Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;

    invoke-interface {v5}, Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;->getCertificatePinner()Lokhttp3/CertificatePinner;

    move-result-object v1

    .line 163
    .local v1, "certificatePinner":Lokhttp3/CertificatePinner;
    const/4 v3, 0x0

    .line 168
    .local v3, "httpClientBuilder":Lokhttp3/OkHttpClient$Builder;
    iget-object v5, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->sslSecurity:Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;

    invoke-interface {v5}, Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;->getOkHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v5

    iput-object v5, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->httpClient:Lokhttp3/OkHttpClient;

    .line 169
    iget-object v5, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->httpClient:Lokhttp3/OkHttpClient;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->httpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v5}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    .line 171
    :goto_0
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v3, v1}, Lokhttp3/OkHttpClient$Builder;->certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    .line 176
    :cond_0
    const-wide/16 v6, 0x4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v6, v7, v5}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    const-wide/16 v6, 0xa

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 177
    invoke-virtual {v5, v6, v7, v8}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 178
    invoke-virtual {v5, v6}, Lokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    .line 182
    :try_start_0
    iget-object v5, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->preferences:Lorg/apache/cordova/CordovaPreferences;

    const-string v6, "sslpinning-connection-keep-alive"

    const/16 v7, 0x12c

    invoke-virtual {v5, v6, v7}, Lorg/apache/cordova/CordovaPreferences;->getInteger(Ljava/lang/String;I)I

    move-result v4

    .line 183
    .local v4, "keepAliveConnection":I
    new-instance v0, Lokhttp3/ConnectionPool;

    const/4 v5, 0x5

    int-to-long v6, v4

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v5, v6, v7, v8}, Lokhttp3/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    .line 184
    .local v0, "cP":Lokhttp3/ConnectionPool;
    invoke-virtual {v3, v0}, Lokhttp3/OkHttpClient$Builder;->connectionPool(Lokhttp3/ConnectionPool;)Lokhttp3/OkHttpClient$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 189
    .end local v0    # "cP":Lokhttp3/ConnectionPool;
    .end local v4    # "keepAliveConnection":I
    :goto_1
    invoke-virtual {v3}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v5

    iput-object v5, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->httpClient:Lokhttp3/OkHttpClient;

    .line 190
    return-void

    .line 169
    :cond_1
    new-instance v3, Lokhttp3/OkHttpClient$Builder;

    .end local v3    # "httpClientBuilder":Lokhttp3/OkHttpClient$Builder;
    invoke-direct {v3}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    goto :goto_0

    .line 185
    .restart local v3    # "httpClientBuilder":Lokhttp3/OkHttpClient$Builder;
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get preference sslpinning-connection-keep-alive. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OSCordovaLoader"

    invoke-interface {v5, v6, v7}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 365
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/engine/SystemWebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 366
    iget-boolean v0, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->webViewLoadingFailed:Z

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->activity:Lorg/apache/cordova/CordovaActivity;

    const/16 v1, 0x1f7

    const-string v2, "Unable to process your request."

    iget-object v3, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->failingUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/cordova/CordovaActivity;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 345
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/engine/SystemWebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->webViewLoadingFailed:Z

    .line 347
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 357
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/cordova/engine/SystemWebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 358
    iput-object p4, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->failingUrl:Ljava/lang/String;

    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->webViewLoadingFailed:Z

    .line 360
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 351
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->failingUrl:Ljava/lang/String;

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->webViewLoadingFailed:Z

    .line 353
    return-void
.end method

.method public setSslSecurity(Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;)V
    .locals 3
    .param p1, "sslSecurity"    # Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->sslSecurity:Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;

    .line 95
    iget-object v0, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->sslSecurity:Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/outsystems/plugins/loader/clients/WebClient;->setHttpClient()V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v1, "SSLSecurity was not set"

    const-string v2, "OSCordovaLoader"

    invoke-interface {v0, v1, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "request"    # Landroid/webkit/WebResourceRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 107
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/outsystems/plugins/loader/clients/WebClient;->shouldInterceptRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    return-object v0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 114
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/engine/SystemWebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/outsystems/plugins/loader/clients/WebClient;->shouldInterceptRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    goto :goto_0
.end method

.method shouldInterceptRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    .prologue
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 123
    const/4 v7, 0x0

    .line 124
    .local v7, "response":Landroid/webkit/WebResourceResponse;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 126
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-object v1

    .line 130
    :cond_1
    const-string v0, "blob:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/favicon.ico"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_2

    .line 136
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v2, "UTF-8"

    const/16 v3, 0x194

    const-string v4, "Not found"

    move-object v5, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    move-object v1, v0

    goto :goto_0

    .line 138
    :cond_2
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    move-object v1, v0

    goto :goto_0

    .line 142
    :cond_3
    iget-object v0, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->cacheEngine:Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;

    invoke-interface {v0, p1}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;->getResourceFromCache(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v7

    .line 143
    if-eqz v7, :cond_4

    .line 144
    iget-object v0, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource loaded from cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OSCordovaLoader"

    invoke-interface {v0, v1, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 145
    goto :goto_0

    .line 148
    :cond_4
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 150
    .local v9, "urlString":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/outsystems/plugins/loader/clients/WebClient;->getCordovaResource(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v7

    .line 153
    if-nez v7, :cond_5

    iget-object v0, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->sslSecurity:Lcom/outsystems/plugins/ossecurity/interfaces/SSLSecurity;

    if-eqz v0, :cond_5

    .line 154
    invoke-direct {p0, v8, p2, p3}, Lcom/outsystems/plugins/loader/clients/WebClient;->getPinnedResource(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object v7

    :cond_5
    move-object v1, v7

    .line 157
    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 331
    const-string v2, "external:"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    const-string v2, "external:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "urlString":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 334
    .local v0, "browserIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 335
    iget-object v2, p0, Lcom/outsystems/plugins/loader/clients/WebClient;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 336
    const/4 v2, 0x1

    .line 339
    .end local v0    # "browserIntent":Landroid/content/Intent;
    .end local v1    # "urlString":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/engine/SystemWebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method
