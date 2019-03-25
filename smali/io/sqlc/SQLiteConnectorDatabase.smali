.class Lio/sqlc/SQLiteConnectorDatabase;
.super Lio/sqlc/SQLiteAndroidDatabase;
.source "SQLiteConnectorDatabase.java"


# static fields
.field static connector:Lio/liteglue/SQLiteConnector;


# instance fields
.field mydb:Lio/liteglue/SQLiteConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lio/liteglue/SQLiteConnector;

    invoke-direct {v0}, Lio/liteglue/SQLiteConnector;-><init>()V

    sput-object v0, Lio/sqlc/SQLiteConnectorDatabase;->connector:Lio/liteglue/SQLiteConnector;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lio/sqlc/SQLiteAndroidDatabase;-><init>()V

    return-void
.end method

.method private executeSqlStatementNDK(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Lorg/json/JSONObject;
    .locals 18
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "paramsAsJson"    # Lorg/json/JSONArray;
    .param p3, "cbc"    # Lorg/apache/cordova/CallbackContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 161
    .local v14, "rowsResult":Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 163
    .local v6, "hasRows":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lio/sqlc/SQLiteConnectorDatabase;->mydb:Lio/liteglue/SQLiteConnection;

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Lio/liteglue/SQLiteConnection;->prepareStatement(Ljava/lang/String;)Lio/liteglue/SQLiteStatement;

    move-result-object v9

    .line 166
    .local v9, "myStatement":Lio/liteglue/SQLiteStatement;
    const/4 v11, 0x0

    .line 168
    .local v11, "params":[Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v15

    new-array v11, v15, [Ljava/lang/String;

    .line 170
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v7, v15, :cond_4

    .line 171
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 172
    add-int/lit8 v15, v7, 0x1

    invoke-interface {v9, v15}, Lio/liteglue/SQLiteStatement;->bindNull(I)V

    .line 170
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 174
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 175
    .local v10, "p":Ljava/lang/Object;
    instance-of v15, v10, Ljava/lang/Float;

    if-nez v15, :cond_1

    instance-of v15, v10, Ljava/lang/Double;

    if-eqz v15, :cond_2

    .line 176
    :cond_1
    add-int/lit8 v15, v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-interface {v9, v15, v0, v1}, Lio/liteglue/SQLiteStatement;->bindDouble(ID)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 185
    .end local v7    # "i":I
    .end local v10    # "p":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 186
    .local v5, "ex":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, "errorMessage":Ljava/lang/String;
    const-string v15, "executeSqlBatch"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "SQLitePlugin.executeSql[Batch](): Error="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-interface {v9}, Lio/liteglue/SQLiteStatement;->dispose()V

    .line 192
    throw v5

    .line 177
    .end local v4    # "errorMessage":Ljava/lang/String;
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v7    # "i":I
    .restart local v10    # "p":Ljava/lang/Object;
    :cond_2
    :try_start_1
    instance-of v15, v10, Ljava/lang/Number;

    if-eqz v15, :cond_3

    .line 178
    add-int/lit8 v15, v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-interface {v9, v15, v0, v1}, Lio/liteglue/SQLiteStatement;->bindLong(IJ)V

    goto :goto_1

    .line 180
    :cond_3
    add-int/lit8 v15, v7, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lio/liteglue/SQLiteStatement;->bindTextNativeString(ILjava/lang/String;)V

    goto :goto_1

    .line 184
    .end local v10    # "p":Ljava/lang/Object;
    :cond_4
    invoke-interface {v9}, Lio/liteglue/SQLiteStatement;->step()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    .line 196
    if-eqz v6, :cond_6

    .line 197
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 198
    .local v13, "rowsArrayResult":Lorg/json/JSONArray;
    const-string v8, ""

    .line 199
    .local v8, "key":Ljava/lang/String;
    invoke-interface {v9}, Lio/liteglue/SQLiteStatement;->getColumnCount()I

    move-result v2

    .line 203
    .local v2, "colCount":I
    :cond_5
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 205
    .local v12, "row":Lorg/json/JSONObject;
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v2, :cond_7

    .line 206
    :try_start_2
    invoke-interface {v9, v7}, Lio/liteglue/SQLiteStatement;->getColumnName(I)Ljava/lang/String;

    move-result-object v8

    .line 208
    invoke-interface {v9, v7}, Lio/liteglue/SQLiteStatement;->getColumnType(I)I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 224
    :pswitch_0
    invoke-interface {v9, v7}, Lio/liteglue/SQLiteStatement;->getColumnTextNativeString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v8, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 210
    :pswitch_1
    sget-object v15, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v12, v8, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 231
    :catch_1
    move-exception v3

    .line 232
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 234
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_4
    invoke-interface {v9}, Lio/liteglue/SQLiteStatement;->step()Z

    move-result v15

    if-nez v15, :cond_5

    .line 237
    :try_start_3
    const-string v15, "rows"

    invoke-virtual {v14, v15, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 243
    .end local v2    # "colCount":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v12    # "row":Lorg/json/JSONObject;
    .end local v13    # "rowsArrayResult":Lorg/json/JSONArray;
    :cond_6
    :goto_5
    invoke-interface {v9}, Lio/liteglue/SQLiteStatement;->dispose()V

    .line 245
    return-object v14

    .line 214
    .restart local v2    # "colCount":I
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v12    # "row":Lorg/json/JSONObject;
    .restart local v13    # "rowsArrayResult":Lorg/json/JSONArray;
    :pswitch_2
    :try_start_4
    invoke-interface {v9, v7}, Lio/liteglue/SQLiteStatement;->getColumnDouble(I)D

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v12, v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_3

    .line 218
    :pswitch_3
    invoke-interface {v9, v7}, Lio/liteglue/SQLiteStatement;->getColumnLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v12, v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_3

    .line 229
    :cond_7
    invoke-virtual {v13, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 238
    :catch_2
    move-exception v3

    .line 239
    .restart local v3    # "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 208
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method bugWorkaround()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method closeDatabaseNow()V
    .locals 3

    .prologue
    .line 62
    :try_start_0
    iget-object v1, p0, Lio/sqlc/SQLiteConnectorDatabase;->mydb:Lio/liteglue/SQLiteConnection;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lio/sqlc/SQLiteConnectorDatabase;->mydb:Lio/liteglue/SQLiteConnection;

    invoke-interface {v1}, Lio/liteglue/SQLiteConnection;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    const-class v1, Lio/sqlc/SQLitePlugin;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "couldn\'t close database, ignoring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method executeSqlBatch([Ljava/lang/String;[Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 26
    .param p1, "queryarr"    # [Ljava/lang/String;
    .param p2, "jsonparams"    # [Lorg/json/JSONArray;
    .param p3, "cbc"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/sqlc/SQLiteConnectorDatabase;->mydb:Lio/liteglue/SQLiteConnection;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 88
    const-string v23, "database has been closed"

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 92
    :cond_0
    move-object/from16 v0, p1

    array-length v9, v0

    .line 93
    .local v9, "len":I
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 95
    .local v4, "batchResults":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v9, :cond_3

    .line 96
    const/16 v22, 0x0

    .line 97
    .local v22, "rowsAffectedCompat":I
    const/4 v14, 0x0

    .line 99
    .local v14, "needRowsAffectedCompat":Z
    const/16 v18, 0x0

    .line 100
    .local v18, "queryResult":Lorg/json/JSONObject;
    const-string v6, "unknown"

    .line 103
    .local v6, "errorMessage":Ljava/lang/String;
    :try_start_0
    aget-object v15, p1, v8

    .line 105
    .local v15, "query":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/sqlc/SQLiteConnectorDatabase;->mydb:Lio/liteglue/SQLiteConnection;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lio/liteglue/SQLiteConnection;->getTotalChanges()I

    move-result v23

    move/from16 v0, v23

    int-to-long v12, v0

    .line 106
    .local v12, "lastTotal":J
    aget-object v23, p2, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p3

    invoke-direct {v0, v15, v1, v2}, Lio/sqlc/SQLiteConnectorDatabase;->executeSqlStatementNDK(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Lorg/json/JSONObject;

    move-result-object v18

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/sqlc/SQLiteConnectorDatabase;->mydb:Lio/liteglue/SQLiteConnection;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lio/liteglue/SQLiteConnection;->getTotalChanges()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 108
    .local v16, "newTotal":J
    sub-long v20, v16, v12

    .line 110
    .local v20, "rowsAffected":J
    const-string v23, "rowsAffected"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 111
    const-wide/16 v24, 0x0

    cmp-long v23, v20, v24

    if-lez v23, :cond_1

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/sqlc/SQLiteConnectorDatabase;->mydb:Lio/liteglue/SQLiteConnection;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lio/liteglue/SQLiteConnection;->getLastInsertRowid()J

    move-result-wide v10

    .line 113
    .local v10, "insertId":J
    const-wide/16 v24, 0x0

    cmp-long v23, v10, v24

    if-lez v23, :cond_1

    .line 114
    const-string v23, "insertId"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v10    # "insertId":J
    .end local v12    # "lastTotal":J
    .end local v15    # "query":Ljava/lang/String;
    .end local v16    # "newTotal":J
    .end local v20    # "rowsAffected":J
    :cond_1
    :goto_2
    if-eqz v18, :cond_2

    .line 125
    :try_start_1
    new-instance v19, Lorg/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    .line 127
    .local v19, "r":Lorg/json/JSONObject;
    const-string v23, "type"

    const-string v24, "success"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    const-string v23, "result"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 95
    .end local v19    # "r":Lorg/json/JSONObject;
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 117
    :catch_0
    move-exception v7

    .line 118
    .local v7, "ex":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 120
    const-string v23, "executeSqlBatch"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SQLitePlugin.executeSql[Batch](): Error="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 132
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    new-instance v19, Lorg/json/JSONObject;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONObject;-><init>()V

    .line 133
    .restart local v19    # "r":Lorg/json/JSONObject;
    const-string v23, "type"

    const-string v24, "error"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 136
    .local v5, "er":Lorg/json/JSONObject;
    const-string v23, "message"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v23, "result"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 141
    .end local v5    # "er":Lorg/json/JSONObject;
    .end local v19    # "r":Lorg/json/JSONObject;
    :catch_1
    move-exception v7

    .line 142
    .local v7, "ex":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 143
    const-string v23, "executeSqlBatch"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "SQLitePlugin.executeSql[Batch](): Error="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 148
    .end local v6    # "errorMessage":Ljava/lang/String;
    .end local v7    # "ex":Lorg/json/JSONException;
    .end local v14    # "needRowsAffectedCompat":Z
    .end local v18    # "queryResult":Lorg/json/JSONObject;
    .end local v22    # "rowsAffectedCompat":I
    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    goto/16 :goto_0
.end method

.method open(Ljava/io/File;)V
    .locals 3
    .param p1, "dbFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    sget-object v0, Lio/sqlc/SQLiteConnectorDatabase;->connector:Lio/liteglue/SQLiteConnector;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lio/liteglue/SQLiteConnector;->newSQLiteConnection(Ljava/lang/String;I)Lio/liteglue/SQLiteConnection;

    move-result-object v0

    iput-object v0, p0, Lio/sqlc/SQLiteConnectorDatabase;->mydb:Lio/liteglue/SQLiteConnection;

    .line 54
    return-void
.end method
