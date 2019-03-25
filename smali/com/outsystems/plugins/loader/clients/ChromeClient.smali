.class public Lcom/outsystems/plugins/loader/clients/ChromeClient;
.super Lorg/apache/cordova/engine/SystemWebChromeClient;
.source "ChromeClient.java"


# static fields
.field private static final FILECHOOSER_RESULTCODE:I = 0x1435

.field private static final LOG_TAG:Ljava/lang/String; = "CDVLoaderChromeClient"

.field public static final MIME_TYPE_AUDIO:Ljava/lang/String; = "audio/*"

.field public static final MIME_TYPE_IMAGE:Ljava/lang/String; = "image/*"

.field public static final MIME_TYPE_VIDEO:Ljava/lang/String; = "video/*"

.field private static final REQUEST_PERMISSION:I = 0x64


# instance fields
.field private cordovaInterface:Lorg/apache/cordova/CordovaInterface;

.field private fileUri:Landroid/net/Uri;

.field private logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;


# direct methods
.method public constructor <init>(Lorg/apache/cordova/engine/SystemWebViewEngine;Lorg/apache/cordova/CordovaInterface;)V
    .locals 1
    .param p1, "parentEngine"    # Lorg/apache/cordova/engine/SystemWebViewEngine;
    .param p2, "cordovaInterface"    # Lorg/apache/cordova/CordovaInterface;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/apache/cordova/engine/SystemWebChromeClient;-><init>(Lorg/apache/cordova/engine/SystemWebViewEngine;)V

    .line 56
    invoke-static {}, Lcom/outsystems/plugins/oslogger/OSLogger;->getInstance()Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    .line 60
    iput-object p2, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->cordovaInterface:Lorg/apache/cordova/CordovaInterface;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/outsystems/plugins/loader/clients/ChromeClient;)Lcom/outsystems/plugins/oslogger/interfaces/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/outsystems/plugins/loader/clients/ChromeClient;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/outsystems/plugins/loader/clients/ChromeClient;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 1
    .param p0, "x0"    # Lcom/outsystems/plugins/loader/clients/ChromeClient;
    .param p1, "x1"    # Landroid/webkit/ValueCallback;
    .param p2, "x2"    # Landroid/webkit/WebChromeClient$FileChooserParams;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->openFileChooserAfterPermissions(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/outsystems/plugins/loader/clients/ChromeClient;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/outsystems/plugins/loader/clients/ChromeClient;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->fileUri:Landroid/net/Uri;

    return-object v0
.end method

.method private final getImageIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 398
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {p0, v1}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->getOutputMediaFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->fileUri:Landroid/net/Uri;

    .line 400
    const-string v1, "output"

    iget-object v2, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 401
    return-object v0
.end method

.method private final getMyFilesIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 417
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.myfiles.PICK_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CONTENT_TYPE"

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    return-object v0
.end method

.method private final getSoundIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 412
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method private final getVideoIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 406
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method private launchSingleIntent(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 12
    .param p2, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "filePathsCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    const/4 v11, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 266
    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v7

    .line 267
    .local v7, "types":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 268
    .local v5, "single":Z
    const/4 v1, 0x0

    .line 270
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v7, :cond_0

    array-length v10, v7

    if-ne v10, v8, :cond_0

    .line 271
    aget-object v1, v7, v9

    .line 272
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v10, ","

    invoke-direct {v6, v1, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .local v6, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v10

    if-ne v10, v8, :cond_2

    move v5, v8

    .line 276
    .end local v6    # "st":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    if-eqz v5, :cond_4

    .line 278
    invoke-virtual {p0, v1}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->getIntentForType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 280
    .local v4, "intent":Landroid/content/Intent;
    if-nez v4, :cond_1

    .line 281
    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object v4

    .line 284
    :cond_1
    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->isCaptureEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 286
    :try_start_0
    iget-object v8, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->cordovaInterface:Lorg/apache/cordova/CordovaInterface;

    new-instance v9, Lcom/outsystems/plugins/loader/clients/ChromeClient$6;

    invoke-direct {v9, p0, p1}, Lcom/outsystems/plugins/loader/clients/ChromeClient$6;-><init>(Lcom/outsystems/plugins/loader/clients/ChromeClient;Landroid/webkit/ValueCallback;)V

    const/16 v10, 0x1435

    invoke-interface {v8, v9, v4, v10}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_1
    return v5

    .restart local v6    # "st":Ljava/util/StringTokenizer;
    :cond_2
    move v5, v9

    .line 273
    goto :goto_0

    .line 298
    .end local v6    # "st":Ljava/util/StringTokenizer;
    .restart local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 299
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    iget-object v8, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No activity found to handle file chooser intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "OSCordovaLoader"

    invoke-interface {v8, v9, v10, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    invoke-interface {p1, v11}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 305
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object v3

    .line 308
    .local v3, "fileIntent":Landroid/content/Intent;
    const-string v10, "Choose an action"

    invoke-static {v3, v10}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 309
    .local v0, "chooserIntent":Landroid/content/Intent;
    const-string v10, "android.intent.extra.INITIAL_INTENTS"

    new-array v8, v8, [Landroid/os/Parcelable;

    aput-object v4, v8, v9

    invoke-virtual {v0, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 312
    :try_start_1
    iget-object v8, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->cordovaInterface:Lorg/apache/cordova/CordovaInterface;

    new-instance v9, Lcom/outsystems/plugins/loader/clients/ChromeClient$7;

    invoke-direct {v9, p0, p1}, Lcom/outsystems/plugins/loader/clients/ChromeClient$7;-><init>(Lcom/outsystems/plugins/loader/clients/ChromeClient;Landroid/webkit/ValueCallback;)V

    const/16 v10, 0x1435

    invoke-interface {v8, v9, v0, v10}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 324
    :catch_1
    move-exception v2

    .line 325
    .restart local v2    # "e":Landroid/content/ActivityNotFoundException;
    iget-object v8, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No activity found to handle file chooser intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "OSCordovaLoader"

    invoke-interface {v8, v9, v10, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    invoke-interface {p1, v11}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 333
    .end local v0    # "chooserIntent":Landroid/content/Intent;
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "fileIntent":Landroid/content/Intent;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v8, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v9, "Single intent was detected while opening file chooser"

    const-string v10, "OSCordovaLoader"

    invoke-interface {v8, v9, v10}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private launchSingleIntent(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    const/16 v9, 0x1435

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 198
    const/4 v4, 0x0

    .line 200
    .local v4, "single":Z
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 201
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v8, ","

    invoke-direct {v5, p2, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .local v5, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v8

    if-ne v8, v6, :cond_2

    move v4, v6

    .line 205
    .end local v5    # "st":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    if-eqz v4, :cond_4

    .line 207
    invoke-virtual {p0, p2}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->getIntentForType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 209
    .local v3, "intent":Landroid/content/Intent;
    if-nez v3, :cond_1

    .line 210
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v6, "android.intent.action.GET_CONTENT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.OPENABLE"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v6, "*/*"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    :cond_1
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 217
    iget-object v6, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->cordovaInterface:Lorg/apache/cordova/CordovaInterface;

    new-instance v7, Lcom/outsystems/plugins/loader/clients/ChromeClient$4;

    invoke-direct {v7, p0, p1}, Lcom/outsystems/plugins/loader/clients/ChromeClient$4;-><init>(Lcom/outsystems/plugins/loader/clients/ChromeClient;Landroid/webkit/ValueCallback;)V

    invoke-interface {v6, v7, v3, v9}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    .line 259
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_1
    return v4

    .restart local v5    # "st":Ljava/util/StringTokenizer;
    :cond_2
    move v4, v7

    .line 202
    goto :goto_0

    .line 229
    .end local v5    # "st":Ljava/util/StringTokenizer;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_3
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v2, "fileIntent":Landroid/content/Intent;
    const-string v6, "android.intent.category.OPENABLE"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v6, "*/*"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v6, "Choose an action"

    invoke-static {v2, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 235
    .local v0, "chooserIntent":Landroid/content/Intent;
    const-string v6, "android.intent.extra.INITIAL_INTENTS"

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/os/Parcelable;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 237
    iget-object v6, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->cordovaInterface:Lorg/apache/cordova/CordovaInterface;

    new-instance v7, Lcom/outsystems/plugins/loader/clients/ChromeClient$5;

    invoke-direct {v7, p0, p1}, Lcom/outsystems/plugins/loader/clients/ChromeClient$5;-><init>(Lcom/outsystems/plugins/loader/clients/ChromeClient;Landroid/webkit/ValueCallback;)V

    const/16 v8, 0x1435

    invoke-interface {v6, v7, v0, v8}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 249
    .end local v0    # "chooserIntent":Landroid/content/Intent;
    .end local v2    # "fileIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    iget-object v6, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No activity found to handle file chooser intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OSCordovaLoader"

    invoke-interface {v6, v7, v8, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 256
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v6, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v7, "Single intent was detected while opening file chooser"

    const-string v8, "OSCordovaLoader"

    invoke-interface {v6, v7, v8}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private openFileChooserAfterPermissions(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 10
    .param p2, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "filePathsCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    invoke-direct {p0, p1, p2}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->launchSingleIntent(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result v6

    .line 147
    .local v6, "singleIntent":Z
    if-nez v6, :cond_1

    .line 149
    invoke-virtual {p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->createIntent()Landroid/content/Intent;

    move-result-object v3

    .line 152
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "Choose an action"

    invoke-static {v3, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 155
    .local v0, "chooserIntent":Landroid/content/Intent;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v4, "otherIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    invoke-direct {p0}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->getImageIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-direct {p0}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->getVideoIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-direct {p0}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->getSoundIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-direct {p0}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->getMyFilesIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Landroid/os/Parcelable;

    .line 163
    .local v5, "parcelables":[Landroid/os/Parcelable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v5

    if-ge v2, v7, :cond_0

    .line 164
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    aput-object v7, v5, v2

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_0
    const-string v7, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 170
    :try_start_0
    iget-object v7, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->cordovaInterface:Lorg/apache/cordova/CordovaInterface;

    new-instance v8, Lcom/outsystems/plugins/loader/clients/ChromeClient$3;

    invoke-direct {v8, p0, p1}, Lcom/outsystems/plugins/loader/clients/ChromeClient$3;-><init>(Lcom/outsystems/plugins/loader/clients/ChromeClient;Landroid/webkit/ValueCallback;)V

    const/16 v9, 0x1435

    invoke-interface {v7, v8, v0, v9}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v0    # "chooserIntent":Landroid/content/Intent;
    .end local v2    # "i":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "otherIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v5    # "parcelables":[Landroid/os/Parcelable;
    :goto_1
    const/4 v7, 0x1

    return v7

    .line 183
    .restart local v0    # "chooserIntent":Landroid/content/Intent;
    .restart local v2    # "i":I
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "otherIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v5    # "parcelables":[Landroid/os/Parcelable;
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    iget-object v7, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No activity found to handle file chooser intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OSCordovaLoader"

    invoke-interface {v7, v8, v9, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 185
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 189
    .end local v0    # "chooserIntent":Landroid/content/Intent;
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "i":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "otherIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v5    # "parcelables":[Landroid/os/Parcelable;
    :cond_1
    iget-object v7, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v8, "Single intent was detected while opening file chooser"

    const-string v9, "OSCordovaLoader"

    invoke-interface {v7, v8, v9}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method getIntentForType(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 376
    const/4 v0, 0x0

    .line 378
    .local v0, "result":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    invoke-direct {p0}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->getImageIntent()Landroid/content/Intent;

    move-result-object v0

    .line 392
    :cond_0
    :goto_0
    return-object v0

    .line 382
    :cond_1
    const-string v1, "video/*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 383
    invoke-direct {p0}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->getVideoIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 386
    :cond_2
    const-string v1, "audio/*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->getSoundIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public getOutputMediaFile(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 340
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 341
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "timeStamp":Ljava/lang/String;
    const-string v3, "image/*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 344
    new-instance v1, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 346
    .local v1, "mediaStorageDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "IMG_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .local v0, "mediaFile":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 372
    .end local v0    # "mediaFile":Ljava/io/File;
    .end local v1    # "mediaStorageDir":Ljava/io/File;
    .end local v2    # "timeStamp":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 351
    .restart local v2    # "timeStamp":Ljava/lang/String;
    :cond_0
    const-string v3, "audio/*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 352
    new-instance v1, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 354
    .restart local v1    # "mediaStorageDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "AUD_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".3gp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .restart local v0    # "mediaFile":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 359
    .end local v0    # "mediaFile":Ljava/io/File;
    .end local v1    # "mediaStorageDir":Ljava/io/File;
    :cond_1
    const-string v3, "video/*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 360
    new-instance v1, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 362
    .restart local v1    # "mediaStorageDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "VID_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    .restart local v0    # "mediaFile":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_0

    .line 370
    .end local v0    # "mediaFile":Ljava/io/File;
    .end local v1    # "mediaStorageDir":Ljava/io/File;
    .end local v2    # "timeStamp":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    const-string v4, "Unable to reach external storage"

    const-string v5, "OSCordovaLoader"

    invoke-interface {v3, v4, v5}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 7
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p3, "fileChooserParams"    # Landroid/webkit/WebChromeClient$FileChooserParams;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "filePathsCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    const/4 v0, 0x1

    .line 116
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 119
    iget-object v1, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->cordovaInterface:Lorg/apache/cordova/CordovaInterface;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v1, v2}, Lorg/apache/cordova/CordovaInterface;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->cordovaInterface:Lorg/apache/cordova/CordovaInterface;

    new-instance v2, Lcom/outsystems/plugins/loader/clients/ChromeClient$2;

    invoke-direct {v2, p0, p2, p3}, Lcom/outsystems/plugins/loader/clients/ChromeClient$2;-><init>(Lcom/outsystems/plugins/loader/clients/ChromeClient;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)V

    const/16 v3, 0x64

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v6, v4, v5

    const-string v5, "android.permission.CAMERA"

    aput-object v5, v4, v0

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/cordova/CordovaInterface;->requestPermissions(Lorg/apache/cordova/CordovaPlugin;I[Ljava/lang/String;)V

    .line 140
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->openFileChooserAfterPermissions(Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z

    move-result v0

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "capture"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "uploadMsg":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->launchSingleIntent(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 69
    .local v6, "singleIntent":Z
    if-nez v6, :cond_1

    .line 71
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.GET_CONTENT"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "android.intent.category.OPENABLE"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v7, "*/*"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v7, "Choose an action"

    invoke-static {v3, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 79
    .local v0, "chooserIntent":Landroid/content/Intent;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v4, "otherIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    invoke-direct {p0}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->getImageIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-direct {p0}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->getVideoIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-direct {p0}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->getSoundIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-direct {p0}, Lcom/outsystems/plugins/loader/clients/ChromeClient;->getMyFilesIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Landroid/os/Parcelable;

    .line 87
    .local v5, "parcelables":[Landroid/os/Parcelable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v5

    if-ge v2, v7, :cond_0

    .line 88
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    aput-object v7, v5, v2

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    :cond_0
    const-string v7, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 94
    :try_start_0
    iget-object v7, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->cordovaInterface:Lorg/apache/cordova/CordovaInterface;

    new-instance v8, Lcom/outsystems/plugins/loader/clients/ChromeClient$1;

    invoke-direct {v8, p0, p1}, Lcom/outsystems/plugins/loader/clients/ChromeClient$1;-><init>(Lcom/outsystems/plugins/loader/clients/ChromeClient;Landroid/webkit/ValueCallback;)V

    const/16 v9, 0x1435

    invoke-interface {v7, v8, v0, v9}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0    # "chooserIntent":Landroid/content/Intent;
    .end local v2    # "i":I
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "otherIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v5    # "parcelables":[Landroid/os/Parcelable;
    :cond_1
    :goto_1
    return-void

    .line 102
    .restart local v0    # "chooserIntent":Landroid/content/Intent;
    .restart local v2    # "i":I
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v4    # "otherIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v5    # "parcelables":[Landroid/os/Parcelable;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    iget-object v7, p0, Lcom/outsystems/plugins/loader/clients/ChromeClient;->logger:Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No activity found to handle file chooser intent: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "OSCordovaLoader"

    invoke-interface {v7, v8, v9, v1}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    const/4 v7, 0x0

    invoke-interface {p1, v7}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_1
.end method
