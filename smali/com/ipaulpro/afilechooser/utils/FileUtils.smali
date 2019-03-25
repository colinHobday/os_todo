.class public Lcom/ipaulpro/afilechooser/utils/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final HIDDEN_PREFIX:Ljava/lang/String; = "."

.field public static final MIME_TYPE_APP:Ljava/lang/String; = "application/*"

.field public static final MIME_TYPE_AUDIO:Ljava/lang/String; = "audio/*"

.field public static final MIME_TYPE_IMAGE:Ljava/lang/String; = "image/*"

.field public static final MIME_TYPE_TEXT:Ljava/lang/String; = "text/*"

.field public static final MIME_TYPE_VIDEO:Ljava/lang/String; = "video/*"

.field static final TAG:Ljava/lang/String; = "FileUtils"

.field public static sComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static sDirFilter:Ljava/io/FileFilter;

.field public static sFileFilter:Ljava/io/FileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 476
    new-instance v0, Lcom/ipaulpro/afilechooser/utils/FileUtils$1;

    invoke-direct {v0}, Lcom/ipaulpro/afilechooser/utils/FileUtils$1;-><init>()V

    sput-object v0, Lcom/ipaulpro/afilechooser/utils/FileUtils;->sComparator:Ljava/util/Comparator;

    .line 490
    new-instance v0, Lcom/ipaulpro/afilechooser/utils/FileUtils$2;

    invoke-direct {v0}, Lcom/ipaulpro/afilechooser/utils/FileUtils$2;-><init>()V

    sput-object v0, Lcom/ipaulpro/afilechooser/utils/FileUtils;->sFileFilter:Ljava/io/FileFilter;

    .line 504
    new-instance v0, Lcom/ipaulpro/afilechooser/utils/FileUtils$3;

    invoke-direct {v0}, Lcom/ipaulpro/afilechooser/utils/FileUtils$3;-><init>()V

    sput-object v0, Lcom/ipaulpro/afilechooser/utils/FileUtils;->sDirFilter:Ljava/io/FileFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGetContentIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 521
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    return-object v0
.end method

.method public static getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 220
    const/4 v8, 0x0

    .line 221
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v6, "_data"

    .line 222
    .local v6, "column":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 227
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 229
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    const-string v0, "_data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 234
    .local v7, "column_index":I
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 237
    if-eqz v8, :cond_0

    .line 238
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 240
    .end local v7    # "column_index":I
    :cond_0
    :goto_0
    return-object v0

    .line 237
    :cond_1
    if-eqz v8, :cond_2

    .line 238
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v9

    .line 240
    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 238
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 239
    :cond_3
    throw v0
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "uri"    # Ljava/lang/String;

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v1, 0x0

    .line 79
    :goto_0
    return-object v1

    .line 74
    :cond_0
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, "dot":I
    if-ltz v0, :cond_1

    .line 76
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 79
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static getFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 349
    if-eqz p1, :cond_0

    .line 350
    invoke-static {p0, p1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->isLocal(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 355
    .end local v0    # "path":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 158
    new-instance v0, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMimeType(Ljava/io/File;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 146
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 149
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "application/octet-stream"

    goto :goto_0
.end method

.method public static getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    .line 270
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x13

    if-lt v11, v12, :cond_1

    move v3, v9

    .line 273
    .local v3, "isKitKat":Z
    :goto_0
    if-eqz v3, :cond_8

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 275
    invoke-static {p1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->isLocalStorageDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 277
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 337
    :cond_0
    :goto_1
    return-object v8

    .end local v3    # "isKitKat":Z
    :cond_1
    move v3, v10

    .line 270
    goto :goto_0

    .line 280
    .restart local v3    # "isKitKat":Z
    :cond_2
    invoke-static {p1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->isExternalStorageDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 281
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "docId":Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 283
    .local v6, "split":[Ljava/lang/String;
    aget-object v7, v6, v10

    .line 285
    .local v7, "type":Ljava/lang/String;
    const-string v10, "primary"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 286
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 292
    .end local v1    # "docId":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->isDownloadsDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 294
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "id":Ljava/lang/String;
    const-string v9, "content://downloads/public_downloads"

    .line 296
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 295
    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 298
    .local v0, "contentUri":Landroid/net/Uri;
    invoke-static {p0, v0, v8, v8}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 301
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v2    # "id":Ljava/lang/String;
    :cond_4
    invoke-static {p1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->isMediaDocument(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 302
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .restart local v1    # "docId":Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 304
    .restart local v6    # "split":[Ljava/lang/String;
    aget-object v7, v6, v10

    .line 306
    .restart local v7    # "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 307
    .restart local v0    # "contentUri":Landroid/net/Uri;
    const-string v8, "image"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 308
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 315
    :cond_5
    :goto_2
    const-string v4, "_id=?"

    .line 316
    .local v4, "selection":Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    aget-object v8, v6, v9

    aput-object v8, v5, v10

    .line 320
    .local v5, "selectionArgs":[Ljava/lang/String;
    const-string v8, "_id=?"

    invoke-static {p0, v0, v8, v5}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 309
    .end local v4    # "selection":Ljava/lang/String;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    :cond_6
    const-string v8, "video"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 310
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 311
    :cond_7
    const-string v8, "audio"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 312
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 324
    .end local v0    # "contentUri":Landroid/net/Uri;
    .end local v1    # "docId":Ljava/lang/String;
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_8
    const-string v9, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 327
    invoke-static {p1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->isGooglePhotosUri(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 328
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 330
    :cond_9
    invoke-static {p0, p1, v8, v8}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getDataColumn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 333
    :cond_a
    const-string v9, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 334
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1
.end method

.method public static getPathWithoutFilename(Ljava/io/File;)Ljava/io/File;
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 121
    if-eqz p0, :cond_2

    .line 122
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    .end local p0    # "file":Ljava/io/File;
    :goto_0
    return-object p0

    .line 126
    .restart local p0    # "file":Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "filename":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "filepath":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    .line 130
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "pathwithoutname":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 135
    :cond_1
    new-instance p0, Ljava/io/File;

    .end local p0    # "file":Ljava/io/File;
    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 138
    .end local v0    # "filename":Ljava/lang/String;
    .end local v1    # "filepath":Ljava/lang/String;
    .end local v2    # "pathwithoutname":Ljava/lang/String;
    .restart local p0    # "file":Ljava/io/File;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getReadableFileSize(I)Ljava/lang/String;
    .locals 10
    .param p0, "size"    # I

    .prologue
    const/high16 v8, 0x44800000    # 1024.0f

    .line 366
    const/16 v0, 0x400

    .line 367
    .local v0, "BYTES_IN_KILOBYTES":I
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v7, "###.#"

    invoke-direct {v4, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 368
    .local v4, "dec":Ljava/text/DecimalFormat;
    const-string v2, " KB"

    .line 369
    .local v2, "KILOBYTES":Ljava/lang/String;
    const-string v3, " MB"

    .line 370
    .local v3, "MEGABYTES":Ljava/lang/String;
    const-string v1, " GB"

    .line 371
    .local v1, "GIGABYTES":Ljava/lang/String;
    const/4 v5, 0x0

    .line 372
    .local v5, "fileSize":F
    const-string v6, " KB"

    .line 374
    .local v6, "suffix":Ljava/lang/String;
    const/16 v7, 0x400

    if-le p0, v7, :cond_0

    .line 375
    div-int/lit16 v7, p0, 0x400

    int-to-float v5, v7

    .line 376
    cmpl-float v7, v5, v8

    if-lez v7, :cond_0

    .line 377
    div-float/2addr v5, v8

    .line 378
    cmpl-float v7, v5, v8

    if-lez v7, :cond_1

    .line 379
    div-float/2addr v5, v8

    .line 380
    const-string v6, " GB"

    .line 386
    :cond_0
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v8, v5

    invoke-virtual {v4, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 382
    :cond_1
    const-string v6, " MB"

    goto :goto_0
.end method

.method public static getThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 412
    invoke-static {p0, p1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getThumbnail(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getThumbnail(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 429
    invoke-static {p1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->isMediaUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 430
    const-string v1, "FileUtils"

    const-string v2, "You can only retrieve thumbnails for images and videos."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    :goto_0
    return-object v6

    .line 434
    :cond_1
    const/4 v6, 0x0

    .line 435
    .local v6, "bm":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    .line 436
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 437
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v7, 0x0

    .line 439
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 440
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 441
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 445
    .local v8, "id":I
    const-string v1, "video"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 446
    int-to-long v2, v8

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 464
    .end local v8    # "id":I
    :cond_2
    :goto_1
    if-eqz v7, :cond_0

    .line 465
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 452
    .restart local v8    # "id":I
    :cond_3
    :try_start_1
    const-string v1, "image/*"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 453
    int-to-long v2, v8

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    goto :goto_1

    .line 460
    .end local v8    # "id":I
    :catch_0
    move-exception v1

    .line 464
    if-eqz v7, :cond_0

    .line 465
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 464
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_4

    .line 465
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 466
    :cond_4
    throw v1
.end method

.method public static getThumbnail(Landroid/content/Context;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 399
    invoke-static {p1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/ipaulpro/afilechooser/utils/FileUtils;->getThumbnail(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getUri(Ljava/io/File;)Landroid/net/Uri;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 108
    if-eqz p0, :cond_0

    .line 109
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDownloadsDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 186
    const-string v0, "com.android.providers.downloads.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isExternalStorageDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 177
    const-string v0, "com.android.externalstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isGooglePhotosUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 203
    const-string v0, "com.google.android.apps.photos.content"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLocal(Ljava/lang/String;)Z
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 87
    if-eqz p0, :cond_0

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLocalStorageDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 168
    const-string v0, "com.ianhanniballake.localstorage.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMediaDocument(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 195
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMediaUri(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 98
    const-string v0, "media"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
