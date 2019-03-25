.class public Lcom/outsystems/plugins/filechooser/FileChooser;
.super Lorg/apache/cordova/CordovaPlugin;
.source "FileChooser.java"


# static fields
.field private static final ACTION_OPEN:Ljava/lang/String; = "open"

.field private static final ACTION_SELECT:Ljava/lang/String; = "select"

.field private static final MIME_TYPE_AUDIO:Ljava/lang/String; = "audio/*"

.field private static final MIME_TYPE_IMAGE:Ljava/lang/String; = "image/*"

.field private static final MIME_TYPE_VIDEO:Ljava/lang/String; = "video/*"

.field private static final OPENFILE_REQUESTCODE:I = 0x7d1

.field private static final PARAM_ACCEPT:Ljava/lang/String; = "accept"

.field private static final PARAM_CAPTURE:Ljava/lang/String; = "capture"

.field private static final SELECTFILE_REQUESTCODE:I = 0x7d2

.field private static final TAG:Ljava/lang/String; = "FileChooser"


# instance fields
.field callback:Lorg/apache/cordova/CallbackContext;

.field private fileUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method private getFileContent(Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x0

    .line 349
    const/4 v3, 0x0

    .line 350
    .local v3, "file":Ljava/io/File;
    const/4 v6, 0x0

    .line 352
    .local v6, "inputStream":Ljava/io/InputStream;
    const/16 v11, 0x2000

    new-array v0, v11, [B

    .line 354
    .local v0, "buffer":[B
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 355
    .local v8, "output":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Landroid/util/Base64OutputStream;

    invoke-direct {v9, v8, v12}, Landroid/util/Base64OutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 357
    .local v9, "output64":Landroid/util/Base64OutputStream;
    const/4 v10, 0x0

    .line 361
    .local v10, "result":Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v11}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, p1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 363
    .local v5, "filePath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 364
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 367
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .local v7, "inputStream":Ljava/io/InputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v11, -0x1

    if-eq v1, v11, :cond_0

    .line 368
    const/4 v11, 0x0

    invoke-virtual {v9, v0, v11, v1}, Landroid/util/Base64OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 370
    .end local v1    # "bytesRead":I
    :catch_0
    move-exception v2

    .line 371
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    const-string v11, "FileChooser"

    const-string v12, "Failed to read file"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v9}, Landroid/util/Base64OutputStream;->close()V

    .line 375
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v10

    move-object v6, v7

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    move-object v3, v4

    .line 380
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "filePath":Ljava/lang/String;
    .restart local v3    # "file":Ljava/io/File;
    :goto_1
    return-object v10

    .line 377
    :catch_1
    move-exception v2

    .line 378
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    const-string v11, "FileChooser"

    const-string v12, "Failed to get file contents"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 377
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v5    # "filePath":Ljava/lang/String;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_2

    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v2

    move-object v6, v7

    .end local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_2
.end method

.method private final getImageIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {p0, v1}, Lcom/outsystems/plugins/filechooser/FileChooser;->getOutputMediaFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->fileUri:Landroid/net/Uri;

    .line 224
    const-string v1, "output"

    iget-object v2, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 225
    return-object v0
.end method

.method private final getIntentForType(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, "result":Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    invoke-direct {p0}, Lcom/outsystems/plugins/filechooser/FileChooser;->getImageIntent()Landroid/content/Intent;

    move-result-object v0

    .line 212
    :cond_0
    :goto_0
    return-object v0

    .line 202
    :cond_1
    const-string v1, "video/*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    invoke-direct {p0}, Lcom/outsystems/plugins/filechooser/FileChooser;->getVideoIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_2
    const-string v1, "audio/*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/outsystems/plugins/filechooser/FileChooser;->getSoundIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private final getMyFilesIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 276
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.myfiles.PICK_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CONTENT_TYPE"

    const-string v2, "*/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    return-object v0
.end method

.method private getResponseObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 283
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 285
    .local v1, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "FileName"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string v2, "FileContent"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-object v1

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "FileChooser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to upload file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private final getSoundIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.MediaStore.RECORD_SOUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method private final getVideoIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "intent":Landroid/content/Intent;
    return-object v0
.end method

.method private launchSingleIntent(Ljava/lang/String;ZI)Z
    .locals 8
    .param p1, "acceptType"    # Ljava/lang/String;
    .param p2, "capture"    # Z
    .param p3, "requestCode"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 148
    const/4 v3, 0x0

    .line 150
    .local v3, "single":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v5, :cond_0

    .line 151
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v4, p1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v4, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v7

    if-ne v7, v5, :cond_3

    move v3, v5

    .line 156
    .end local v4    # "st":Ljava/util/StringTokenizer;
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    .line 158
    invoke-direct {p0, p1}, Lcom/outsystems/plugins/filechooser/FileChooser;->getIntentForType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 160
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_1

    .line 161
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    const-string v7, "android.intent.action.GET_CONTENT"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v7, "android.intent.category.OPENABLE"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v7, "*/*"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    :cond_1
    if-eqz p2, :cond_4

    .line 167
    iget-object v5, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5, p0, v2, p3}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    .line 185
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    return v3

    .restart local v4    # "st":Ljava/util/StringTokenizer;
    :cond_3
    move v3, v6

    .line 152
    goto :goto_0

    .line 171
    .end local v4    # "st":Ljava/util/StringTokenizer;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v1, "fileIntent":Landroid/content/Intent;
    const-string v7, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v7, "*/*"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v7, "Choose an action"

    invoke-static {v1, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 177
    .local v0, "chooserIntent":Landroid/content/Intent;
    const-string v7, "android.intent.extra.INITIAL_INTENTS"

    new-array v5, v5, [Landroid/os/Parcelable;

    aput-object v2, v5, v6

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 179
    iget-object v5, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5, p0, v0, p3}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    goto :goto_1
.end method


# virtual methods
.method public chooseFile(Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;I)V
    .locals 15
    .param p1, "args"    # Lorg/apache/cordova/CordovaArgs;
    .param p2, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .param p3, "requestCode"    # I

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 89
    .local v1, "acceptType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 92
    .local v2, "capture":Z
    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/apache/cordova/CordovaArgs;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 93
    .local v8, "obj":Lorg/json/JSONObject;
    const-string v13, "accept"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v13, "capture"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 96
    .local v3, "captureString":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 98
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    if-eqz v13, :cond_2

    :cond_0
    const/4 v2, 0x1

    .line 109
    .end local v3    # "captureString":Ljava/lang/String;
    .end local v8    # "obj":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    move/from16 v0, p3

    invoke-direct {p0, v1, v2, v0}, Lcom/outsystems/plugins/filechooser/FileChooser;->launchSingleIntent(Ljava/lang/String;ZI)Z

    move-result v12

    .line 111
    .local v12, "singleIntent":Z
    if-nez v12, :cond_4

    .line 112
    new-instance v7, Landroid/content/Intent;

    const-string v13, "android.intent.action.GET_CONTENT"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v7, "intent":Landroid/content/Intent;
    const-string v13, "android.intent.category.OPENABLE"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v13, "*/*"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v9, "otherIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    invoke-direct {p0}, Lcom/outsystems/plugins/filechooser/FileChooser;->getImageIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-direct {p0}, Lcom/outsystems/plugins/filechooser/FileChooser;->getVideoIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-direct {p0}, Lcom/outsystems/plugins/filechooser/FileChooser;->getSoundIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-direct {p0}, Lcom/outsystems/plugins/filechooser/FileChooser;->getMyFilesIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v10, v13, [Landroid/os/Parcelable;

    .line 124
    .local v10, "parcelables":[Landroid/os/Parcelable;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v13, v10

    if-ge v6, v13, :cond_3

    .line 125
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Parcelable;

    aput-object v13, v10, v6

    .line 124
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 98
    .end local v6    # "i":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "otherIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v10    # "parcelables":[Landroid/os/Parcelable;
    .end local v12    # "singleIntent":Z
    .restart local v3    # "captureString":Ljava/lang/String;
    .restart local v8    # "obj":Lorg/json/JSONObject;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v5

    .line 101
    .local v5, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    goto :goto_0

    .line 104
    .end local v3    # "captureString":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v8    # "obj":Lorg/json/JSONObject;
    :catch_1
    move-exception v5

    .line 105
    .local v5, "e":Lorg/json/JSONException;
    const-string v13, "FileChooser"

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v6    # "i":I
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v9    # "otherIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .restart local v10    # "parcelables":[Landroid/os/Parcelable;
    .restart local v12    # "singleIntent":Z
    :cond_3
    const-string v13, "Choose an action"

    invoke-static {v7, v13}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    .line 129
    .local v4, "chooserIntent":Landroid/content/Intent;
    const-string v13, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v4, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 130
    iget-object v13, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->cordova:Lorg/apache/cordova/CordovaInterface;

    move/from16 v0, p3

    invoke-interface {v13, p0, v4, v0}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    .line 133
    .end local v4    # "chooserIntent":Landroid/content/Intent;
    .end local v6    # "i":I
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v9    # "otherIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v10    # "parcelables":[Landroid/os/Parcelable;
    :cond_4
    new-instance v11, Lorg/apache/cordova/PluginResult;

    sget-object v13, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v11, v13}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 134
    .local v11, "pluginResult":Lorg/apache/cordova/PluginResult;
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lorg/apache/cordova/PluginResult;->setKeepCallback(Z)V

    .line 135
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->callback:Lorg/apache/cordova/CallbackContext;

    .line 136
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 137
    return-void
.end method

.method public execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/apache/cordova/CordovaArgs;
    .param p3, "callbackContext"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 53
    const-string v1, "open"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/outsystems/plugins/filechooser/FileChooser$1;

    invoke-direct {v2, p0, p2, p3}, Lcom/outsystems/plugins/filechooser/FileChooser$1;-><init>(Lcom/outsystems/plugins/filechooser/FileChooser;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 76
    :goto_0
    return v0

    .line 64
    :cond_0
    const-string v1, "select"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/outsystems/plugins/filechooser/FileChooser$2;

    invoke-direct {v2, p0, p2, p3}, Lcom/outsystems/plugins/filechooser/FileChooser$2;-><init>(Lcom/outsystems/plugins/filechooser/FileChooser;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOutputMediaFile(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 230
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 232
    new-instance v1, Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 234
    .local v1, "mediaStorageDir":Ljava/io/File;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMdd_HHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "timeStamp":Ljava/lang/String;
    const-string v4, "image/*"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
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

    .line 243
    .local v0, "mediaFile":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 246
    .end local v0    # "mediaFile":Ljava/io/File;
    .end local v1    # "mediaStorageDir":Ljava/io/File;
    .end local v2    # "timeStamp":Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x7d1

    .line 298
    if-eq p1, v6, :cond_0

    const/16 v5, 0x7d2

    if-ne p1, v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->callback:Lorg/apache/cordova/CallbackContext;

    if-eqz v5, :cond_1

    .line 300
    const/4 v5, -0x1

    if-ne p2, v5, :cond_7

    .line 301
    if-eqz p3, :cond_4

    .line 302
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 304
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_3

    .line 305
    invoke-direct {p0, v4}, Lcom/outsystems/plugins/filechooser/FileChooser;->getFileContent(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "base64":Ljava/lang/String;
    if-ne p1, v6, :cond_2

    .line 308
    iget-object v5, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v5, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    .line 346
    .end local v0    # "base64":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 311
    .restart local v0    # "base64":Ljava/lang/String;
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_2
    iget-object v5, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v5}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "fileName":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/outsystems/plugins/filechooser/FileChooser;->getResponseObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 313
    .local v3, "responseObject":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v5, v3}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 316
    .end local v0    # "base64":Ljava/lang/String;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "responseObject":Lorg/json/JSONObject;
    :cond_3
    iget-object v5, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->callback:Lorg/apache/cordova/CallbackContext;

    const-string v6, "File uri was null"

    invoke-virtual {v5, v6}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_4
    iget-object v5, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->fileUri:Landroid/net/Uri;

    if-eqz v5, :cond_6

    .line 321
    iget-object v5, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->fileUri:Landroid/net/Uri;

    invoke-direct {p0, v5}, Lcom/outsystems/plugins/filechooser/FileChooser;->getFileContent(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .restart local v0    # "base64":Ljava/lang/String;
    if-ne p1, v6, :cond_5

    .line 324
    iget-object v5, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v5, v0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    .line 332
    :goto_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->fileUri:Landroid/net/Uri;

    goto :goto_0

    .line 327
    :cond_5
    iget-object v5, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->fileUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 328
    .restart local v1    # "fileName":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/outsystems/plugins/filechooser/FileChooser;->getResponseObject(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 329
    .restart local v3    # "responseObject":Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v5, v3}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_1

    .line 334
    .end local v0    # "base64":Ljava/lang/String;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v3    # "responseObject":Lorg/json/JSONObject;
    :cond_6
    iget-object v5, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->callback:Lorg/apache/cordova/CallbackContext;

    const-string v6, "File uri was null"

    invoke-virtual {v5, v6}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 338
    :cond_7
    if-nez p2, :cond_8

    .line 339
    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v5, Lorg/apache/cordova/PluginResult$Status;->NO_RESULT:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v2, v5}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    .line 340
    .local v2, "pluginResult":Lorg/apache/cordova/PluginResult;
    iget-object v5, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v5, v2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    goto :goto_0

    .line 342
    .end local v2    # "pluginResult":Lorg/apache/cordova/PluginResult;
    :cond_8
    iget-object v5, p0, Lcom/outsystems/plugins/filechooser/FileChooser;->callback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v5, p2}, Lorg/apache/cordova/CallbackContext;->error(I)V

    goto :goto_0
.end method
