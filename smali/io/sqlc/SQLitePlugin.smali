.class public Lio/sqlc/SQLitePlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "SQLitePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sqlc/SQLitePlugin$Action;,
        Lio/sqlc/SQLitePlugin$DBQuery;,
        Lio/sqlc/SQLitePlugin$DBRunner;
    }
.end annotation


# static fields
.field static dbrmap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lio/sqlc/SQLitePlugin$DBRunner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lio/sqlc/SQLitePlugin;->dbrmap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/sqlc/SQLitePlugin;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;Z)Lio/sqlc/SQLiteAndroidDatabase;
    .locals 1
    .param p0, "x0"    # Lio/sqlc/SQLitePlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/apache/cordova/CallbackContext;
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lio/sqlc/SQLitePlugin;->openDatabase(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;Z)Lio/sqlc/SQLiteAndroidDatabase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lio/sqlc/SQLitePlugin;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lio/sqlc/SQLitePlugin;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lio/sqlc/SQLitePlugin;->closeDatabaseNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lio/sqlc/SQLitePlugin;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p0, "x0"    # Lio/sqlc/SQLitePlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lio/sqlc/SQLitePlugin;->deleteDatabase(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method private closeDatabase(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 5
    .param p1, "dbConnectionName"    # Ljava/lang/String;
    .param p2, "cbc"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 242
    sget-object v2, Lio/sqlc/SQLitePlugin;->dbrmap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sqlc/SQLitePlugin$DBRunner;

    .line 243
    .local v1, "r":Lio/sqlc/SQLitePlugin$DBRunner;
    if-eqz v1, :cond_2

    .line 245
    :try_start_0
    iget-object v2, v1, Lio/sqlc/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    new-instance v3, Lio/sqlc/SQLitePlugin$DBQuery;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, p2}, Lio/sqlc/SQLitePlugin$DBQuery;-><init>(Lio/sqlc/SQLitePlugin;ZLorg/apache/cordova/CallbackContext;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_1

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t close database"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 250
    :cond_1
    const-class v2, Lio/sqlc/SQLitePlugin;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "couldn\'t close database"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz p2, :cond_0

    .line 254
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0
.end method

.method private closeDatabaseNow(Ljava/lang/String;)V
    .locals 3
    .param p1, "dbConnectionName"    # Ljava/lang/String;

    .prologue
    .line 265
    sget-object v2, Lio/sqlc/SQLitePlugin;->dbrmap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sqlc/SQLitePlugin$DBRunner;

    .line 267
    .local v1, "r":Lio/sqlc/SQLitePlugin$DBRunner;
    if-eqz v1, :cond_0

    .line 268
    iget-object v0, v1, Lio/sqlc/SQLitePlugin$DBRunner;->mydb:Lio/sqlc/SQLiteAndroidDatabase;

    .line 270
    .local v0, "mydb":Lio/sqlc/SQLiteAndroidDatabase;
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lio/sqlc/SQLiteAndroidDatabase;->closeDatabaseNow()V

    .line 273
    .end local v0    # "mydb":Lio/sqlc/SQLiteAndroidDatabase;
    :cond_0
    return-void
.end method

.method private deleteDatabase(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 6
    .param p1, "dbname"    # Ljava/lang/String;
    .param p2, "cbc"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 276
    invoke-direct {p0, p1}, Lio/sqlc/SQLitePlugin;->getRunnerForDb(Ljava/lang/String;)Lio/sqlc/SQLitePlugin$DBRunner;

    move-result-object v2

    .line 277
    .local v2, "r":Lio/sqlc/SQLitePlugin$DBRunner;
    if-eqz v2, :cond_1

    .line 279
    :try_start_0
    iget-object v3, v2, Lio/sqlc/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    new-instance v4, Lio/sqlc/SQLitePlugin$DBQuery;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5, p2}, Lio/sqlc/SQLitePlugin$DBQuery;-><init>(Lio/sqlc/SQLitePlugin;ZLorg/apache/cordova/CallbackContext;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_0

    .line 282
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t close database"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 284
    :cond_0
    const-class v3, Lio/sqlc/SQLitePlugin;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "couldn\'t close database"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 287
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, p1}, Lio/sqlc/SQLitePlugin;->deleteDatabaseNow(Ljava/lang/String;)Z

    move-result v0

    .line 288
    .local v0, "deleteResult":Z
    if-eqz v0, :cond_2

    .line 289
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 291
    :cond_2
    const-string v3, "couldn\'t delete database"

    invoke-virtual {p2, v3}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteDatabaseNow(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dbname"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v2, p0, Lio/sqlc/SQLitePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Activity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 307
    .local v0, "dbfile":Ljava/io/File;
    :try_start_0
    iget-object v2, p0, Lio/sqlc/SQLitePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 310
    :goto_0
    return v2

    .line 308
    :catch_0
    move-exception v1

    .line 309
    .local v1, "e":Ljava/lang/Exception;
    const-class v2, Lio/sqlc/SQLitePlugin;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "couldn\'t delete database"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private executeAndPossiblyThrow(Lio/sqlc/SQLitePlugin$Action;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 20
    .param p1, "action"    # Lio/sqlc/SQLitePlugin$Action;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "cbc"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 85
    const/16 v16, 0x1

    .line 90
    .local v16, "status":Z
    sget-object v18, Lio/sqlc/SQLitePlugin$1;->$SwitchMap$io$sqlc$SQLitePlugin$Action:[I

    invoke-virtual/range {p1 .. p1}, Lio/sqlc/SQLitePlugin$Action;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    .line 157
    :goto_0
    return v16

    .line 92
    :pswitch_0
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 93
    .local v12, "o":Lorg/json/JSONObject;
    const-string v18, "value"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, "echo_value":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    .end local v8    # "echo_value":Ljava/lang/String;
    .end local v12    # "o":Lorg/json/JSONObject;
    :pswitch_1
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 99
    .restart local v12    # "o":Lorg/json/JSONObject;
    const-string v18, "name"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "dbname":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v12, v1}, Lio/sqlc/SQLitePlugin;->startDatabase(Ljava/lang/String;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 105
    .end local v6    # "dbname":Ljava/lang/String;
    .end local v12    # "o":Lorg/json/JSONObject;
    :pswitch_2
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 106
    .restart local v12    # "o":Lorg/json/JSONObject;
    const-string v18, "dbname"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 109
    .restart local v6    # "dbname":Ljava/lang/String;
    invoke-static {v6, v12}, Lio/sqlc/SQLitePlugin;->getDBConnectionName(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lio/sqlc/SQLitePlugin;->closeDatabase(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 113
    .end local v6    # "dbname":Ljava/lang/String;
    .end local v12    # "o":Lorg/json/JSONObject;
    :pswitch_3
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 114
    .restart local v12    # "o":Lorg/json/JSONObject;
    const-string v18, "path"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 116
    .restart local v6    # "dbname":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v1}, Lio/sqlc/SQLitePlugin;->deleteDatabase(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 122
    .end local v6    # "dbname":Ljava/lang/String;
    .end local v12    # "o":Lorg/json/JSONObject;
    :pswitch_4
    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 123
    .local v4, "allargs":Lorg/json/JSONObject;
    const-string v18, "dbargs"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 124
    .local v5, "dbargs":Lorg/json/JSONObject;
    const-string v18, "dbname"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 125
    .restart local v6    # "dbname":Ljava/lang/String;
    const-string v18, "executes"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 127
    .local v17, "txargs":Lorg/json/JSONArray;
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 128
    const-string v18, "missing executes list"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    :cond_0
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v11

    .line 131
    .local v11, "len":I
    new-array v14, v11, [Ljava/lang/String;

    .line 132
    .local v14, "queries":[Ljava/lang/String;
    new-array v10, v11, [Lorg/json/JSONArray;

    .line 134
    .local v10, "jsonparams":[Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v11, :cond_1

    .line 135
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 136
    .local v3, "a":Lorg/json/JSONObject;
    const-string v18, "sql"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v14, v9

    .line 137
    const-string v18, "params"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    aput-object v18, v10, v9

    .line 134
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 141
    .end local v3    # "a":Lorg/json/JSONObject;
    :cond_1
    new-instance v13, Lio/sqlc/SQLitePlugin$DBQuery;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v13, v0, v14, v10, v1}, Lio/sqlc/SQLitePlugin$DBQuery;-><init>(Lio/sqlc/SQLitePlugin;[Ljava/lang/String;[Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    .line 142
    .local v13, "q":Lio/sqlc/SQLitePlugin$DBQuery;
    sget-object v18, Lio/sqlc/SQLitePlugin;->dbrmap:Ljava/util/Map;

    invoke-static {v6, v5}, Lio/sqlc/SQLitePlugin;->getDBConnectionName(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lio/sqlc/SQLitePlugin$DBRunner;

    .line 143
    .local v15, "r":Lio/sqlc/SQLitePlugin$DBRunner;
    if-eqz v15, :cond_2

    .line 145
    :try_start_0
    iget-object v0, v15, Lio/sqlc/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 146
    :catch_0
    move-exception v7

    .line 147
    .local v7, "e":Ljava/lang/Exception;
    const-class v18, Lio/sqlc/SQLitePlugin;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "couldn\'t add to queue"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    const-string v18, "couldn\'t add to queue"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v18, "database not open"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static getDBConnectionName(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p0, "dbname"    # Ljava/lang/String;
    .param p1, "options"    # Lorg/json/JSONObject;

    .prologue
    .line 315
    const-string v1, "connectionName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "connectionName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 319
    .end local p0    # "dbname":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private getRunnerForDb(Ljava/lang/String;)Lio/sqlc/SQLitePlugin$DBRunner;
    .locals 3
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 395
    sget-object v1, Lio/sqlc/SQLitePlugin;->dbrmap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sqlc/SQLitePlugin$DBRunner;

    .line 396
    .local v0, "runner":Lio/sqlc/SQLitePlugin$DBRunner;
    iget-object v2, v0, Lio/sqlc/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    .end local v0    # "runner":Lio/sqlc/SQLitePlugin$DBRunner;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openDatabase(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;Z)Lio/sqlc/SQLiteAndroidDatabase;
    .locals 6
    .param p1, "dbname"    # Ljava/lang/String;
    .param p2, "cbc"    # Lorg/apache/cordova/CallbackContext;
    .param p3, "old_impl"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 214
    :try_start_0
    iget-object v3, p0, Lio/sqlc/SQLitePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Activity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 216
    .local v0, "dbfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 220
    :cond_0
    const-string v3, "info"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Open sqlite db: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    if-eqz p3, :cond_2

    new-instance v2, Lio/sqlc/SQLiteAndroidDatabase;

    invoke-direct {v2}, Lio/sqlc/SQLiteAndroidDatabase;-><init>()V

    .line 223
    .local v2, "mydb":Lio/sqlc/SQLiteAndroidDatabase;
    :goto_0
    invoke-virtual {v2, v0}, Lio/sqlc/SQLiteAndroidDatabase;->open(Ljava/io/File;)V

    .line 225
    if-eqz p2, :cond_1

    .line 226
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 228
    :cond_1
    return-object v2

    .line 222
    .end local v2    # "mydb":Lio/sqlc/SQLiteAndroidDatabase;
    :cond_2
    new-instance v2, Lio/sqlc/SQLiteConnectorDatabase;

    invoke-direct {v2}, Lio/sqlc/SQLiteConnectorDatabase;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 229
    .end local v0    # "dbfile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 230
    .local v1, "e":Ljava/lang/Exception;
    if-eqz p2, :cond_3

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t open database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 232
    :cond_3
    throw v1
.end method

.method private startDatabase(Ljava/lang/String;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 6
    .param p1, "dbname"    # Ljava/lang/String;
    .param p2, "options"    # Lorg/json/JSONObject;
    .param p3, "cbc"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p1, p2}, Lio/sqlc/SQLitePlugin;->getDBConnectionName(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "dbConnectionName":Ljava/lang/String;
    sget-object v1, Lio/sqlc/SQLitePlugin;->dbrmap:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sqlc/SQLitePlugin$DBRunner;

    .line 193
    .local v0, "r":Lio/sqlc/SQLitePlugin$DBRunner;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    .line 203
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v0, Lio/sqlc/SQLitePlugin$DBRunner;

    .end local v0    # "r":Lio/sqlc/SQLitePlugin$DBRunner;
    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/sqlc/SQLitePlugin$DBRunner;-><init>(Lio/sqlc/SQLitePlugin;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V

    .line 200
    .restart local v0    # "r":Lio/sqlc/SQLitePlugin$DBRunner;
    sget-object v1, Lio/sqlc/SQLitePlugin;->dbrmap:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v1, p0, Lio/sqlc/SQLitePlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 5
    .param p1, "actionAsString"    # Ljava/lang/String;
    .param p2, "args"    # Lorg/json/JSONArray;
    .param p3, "cbc"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    const/4 v2, 0x0

    .line 66
    :try_start_0
    invoke-static {p1}, Lio/sqlc/SQLitePlugin$Action;->valueOf(Ljava/lang/String;)Lio/sqlc/SQLitePlugin$Action;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    .local v0, "action":Lio/sqlc/SQLitePlugin$Action;
    :try_start_1
    invoke-direct {p0, v0, p2, p3}, Lio/sqlc/SQLitePlugin;->executeAndPossiblyThrow(Lio/sqlc/SQLitePlugin$Action;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 78
    .end local v0    # "action":Lio/sqlc/SQLitePlugin$Action;
    :goto_0
    return v2

    .line 67
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-class v3, Lio/sqlc/SQLitePlugin;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unexpected error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 75
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "action":Lio/sqlc/SQLitePlugin$Action;
    :catch_1
    move-exception v1

    .line 77
    .local v1, "e":Lorg/json/JSONException;
    const-class v3, Lio/sqlc/SQLitePlugin;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unexpected error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 165
    :goto_0
    sget-object v3, Lio/sqlc/SQLitePlugin;->dbrmap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    sget-object v3, Lio/sqlc/SQLitePlugin;->dbrmap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .local v0, "dbConnectionName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lio/sqlc/SQLitePlugin;->closeDatabaseNow(Ljava/lang/String;)V

    .line 170
    sget-object v3, Lio/sqlc/SQLitePlugin;->dbrmap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sqlc/SQLitePlugin$DBRunner;

    .line 173
    .local v2, "r":Lio/sqlc/SQLitePlugin$DBRunner;
    :try_start_0
    iget-object v3, v2, Lio/sqlc/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    new-instance v4, Lio/sqlc/SQLitePlugin$DBQuery;

    invoke-direct {v4, p0}, Lio/sqlc/SQLitePlugin$DBQuery;-><init>(Lio/sqlc/SQLitePlugin;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_1
    sget-object v3, Lio/sqlc/SQLitePlugin;->dbrmap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    const-class v3, Lio/sqlc/SQLitePlugin;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "couldn\'t stop db thread"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 179
    .end local v0    # "dbConnectionName":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "r":Lio/sqlc/SQLitePlugin$DBRunner;
    :cond_0
    return-void
.end method
