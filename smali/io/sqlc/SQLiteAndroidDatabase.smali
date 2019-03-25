.class Lio/sqlc/SQLiteAndroidDatabase;
.super Ljava/lang/Object;
.source "SQLiteAndroidDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sqlc/SQLiteAndroidDatabase$QueryType;
    }
.end annotation


# static fields
.field private static final DELETE_TABLE_NAME:Ljava/util/regex/Pattern;

.field private static final FIRST_WORD:Ljava/util/regex/Pattern;

.field private static final UPDATE_TABLE_NAME:Ljava/util/regex/Pattern;

.field private static final WHERE_CLAUSE:Ljava/util/regex/Pattern;


# instance fields
.field dbFile:Ljava/io/File;

.field mydb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 38
    const-string v0, "^\\s*(\\S+)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sqlc/SQLiteAndroidDatabase;->FIRST_WORD:Ljava/util/regex/Pattern;

    .line 41
    const-string v0, "\\s+WHERE\\s+(.+)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sqlc/SQLiteAndroidDatabase;->WHERE_CLAUSE:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, "^\\s*UPDATE\\s+(\\S+)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sqlc/SQLiteAndroidDatabase;->UPDATE_TABLE_NAME:Ljava/util/regex/Pattern;

    .line 47
    const-string v0, "^\\s*DELETE\\s+FROM\\s+(\\S+)"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sqlc/SQLiteAndroidDatabase;->DELETE_TABLE_NAME:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bindArgsToStatement(Landroid/database/sqlite/SQLiteStatement;Lorg/json/JSONArray;)V
    .locals 4
    .param p1, "myStatement"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "sqlArgs"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 361
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 362
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Float;

    if-nez v1, :cond_0

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 363
    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 361
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_1
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 365
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_1

    .line 366
    :cond_2
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 367
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 369
    :cond_3
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 372
    :cond_4
    return-void
.end method

.method private bindPostHoneycomb(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;I)V
    .locals 4
    .param p1, "row"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "cur"    # Landroid/database/Cursor;
    .param p4, "i"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    .line 456
    .local v0, "curType":I
    packed-switch v0, :pswitch_data_0

    .line 473
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    :goto_0
    return-void

    .line 458
    :pswitch_0
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 461
    :pswitch_1
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 464
    :pswitch_2
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {p1, p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private bindPreHoneycomb(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;I)V
    .locals 6
    .param p1, "row"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 482
    move-object v2, p3

    check-cast v2, Landroid/database/sqlite/SQLiteCursor;

    .line 483
    .local v2, "sqLiteCursor":Landroid/database/sqlite/SQLiteCursor;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    .line 484
    .local v0, "cursorWindow":Landroid/database/CursorWindow;
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 485
    .local v1, "pos":I
    invoke-virtual {v0, v1, p4}, Landroid/database/CursorWindow;->isNull(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 486
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    :goto_0
    return-void

    .line 487
    :cond_0
    invoke-virtual {v0, v1, p4}, Landroid/database/CursorWindow;->isLong(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 488
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {p1, p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_0

    .line 489
    :cond_1
    invoke-virtual {v0, v1, p4}, Landroid/database/CursorWindow;->isFloat(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 490
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-virtual {p1, p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_0

    .line 496
    :cond_2
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private final countRowsAffectedCompat(Lio/sqlc/SQLiteAndroidDatabase$QueryType;Ljava/lang/String;Lorg/json/JSONArray;Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 16
    .param p1, "queryType"    # Lio/sqlc/SQLiteAndroidDatabase$QueryType;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "json_params"    # Lorg/json/JSONArray;
    .param p4, "mydb"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 289
    sget-object v14, Lio/sqlc/SQLiteAndroidDatabase;->WHERE_CLAUSE:Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 291
    .local v13, "whereMatcher":Ljava/util/regex/Matcher;
    const-string v12, ""

    .line 293
    .local v12, "where":Ljava/lang/String;
    const/4 v6, 0x0

    .line 294
    .local v6, "pos":I
    :goto_0
    invoke-virtual {v13, v6}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 295
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " WHERE "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 296
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/util/regex/Matcher;->start(I)I

    move-result v6

    goto :goto_0

    .line 302
    :cond_0
    const/4 v4, 0x0

    .line 303
    .local v4, "numQuestionMarks":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v3, v14, :cond_2

    .line 304
    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x3f

    if-ne v14, v15, :cond_1

    .line 305
    add-int/lit8 v4, v4, 0x1

    .line 303
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 309
    :cond_2
    const/4 v9, 0x0

    .line 311
    .local v9, "subParams":Lorg/json/JSONArray;
    if-eqz p3, :cond_3

    .line 313
    move-object/from16 v5, p3

    .line 314
    .local v5, "origArray":Lorg/json/JSONArray;
    new-instance v9, Lorg/json/JSONArray;

    .end local v9    # "subParams":Lorg/json/JSONArray;
    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 315
    .restart local v9    # "subParams":Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v14

    sub-int v7, v14, v4

    .line 316
    .local v7, "startPos":I
    move v3, v7

    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v3, v14, :cond_3

    .line 317
    sub-int v14, v3, v7

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 316
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 321
    .end local v5    # "origArray":Lorg/json/JSONArray;
    .end local v7    # "startPos":I
    :cond_3
    sget-object v14, Lio/sqlc/SQLiteAndroidDatabase$QueryType;->update:Lio/sqlc/SQLiteAndroidDatabase$QueryType;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_6

    .line 322
    sget-object v14, Lio/sqlc/SQLiteAndroidDatabase;->UPDATE_TABLE_NAME:Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 323
    .local v11, "tableMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 324
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 326
    .local v10, "table":Ljava/lang/String;
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SELECT count(*) FROM "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    .line 329
    .local v8, "statement":Landroid/database/sqlite/SQLiteStatement;
    if-eqz v9, :cond_4

    .line 330
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lio/sqlc/SQLiteAndroidDatabase;->bindArgsToStatement(Landroid/database/sqlite/SQLiteStatement;Lorg/json/JSONArray;)V

    .line 333
    :cond_4
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    long-to-int v14, v14

    .line 357
    .end local v8    # "statement":Landroid/database/sqlite/SQLiteStatement;
    .end local v10    # "table":Ljava/lang/String;
    :goto_3
    return v14

    .line 334
    .restart local v10    # "table":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 336
    .local v2, "e":Ljava/lang/Exception;
    const-class v14, Lio/sqlc/SQLiteAndroidDatabase;

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "uncaught"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v10    # "table":Ljava/lang/String;
    :cond_5
    :goto_4
    const/4 v14, 0x0

    goto :goto_3

    .line 340
    .end local v11    # "tableMatcher":Ljava/util/regex/Matcher;
    :cond_6
    sget-object v14, Lio/sqlc/SQLiteAndroidDatabase;->DELETE_TABLE_NAME:Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 341
    .restart local v11    # "tableMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 342
    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 344
    .restart local v10    # "table":Ljava/lang/String;
    :try_start_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SELECT count(*) FROM "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    .line 346
    .restart local v8    # "statement":Landroid/database/sqlite/SQLiteStatement;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lio/sqlc/SQLiteAndroidDatabase;->bindArgsToStatement(Landroid/database/sqlite/SQLiteStatement;Lorg/json/JSONArray;)V

    .line 348
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v14

    long-to-int v14, v14

    goto :goto_3

    .line 349
    .end local v8    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :catch_1
    move-exception v2

    .line 351
    .restart local v2    # "e":Ljava/lang/Exception;
    const-class v14, Lio/sqlc/SQLiteAndroidDatabase;

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "uncaught"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private executeSqlBatchStatement(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 21
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "json_params"    # Lorg/json/JSONArray;
    .param p3, "batchResults"    # Lorg/json/JSONArray;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/sqlc/SQLiteAndroidDatabase;->mydb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 283
    :goto_0
    return-void

    .line 117
    :cond_0
    const/16 v17, 0x0

    .line 118
    .local v17, "rowsAffectedCompat":I
    const/4 v11, 0x0

    .line 120
    .local v11, "needRowsAffectedCompat":Z
    const/4 v12, 0x0

    .line 121
    .local v12, "queryResult":Lorg/json/JSONObject;
    const-string v5, "unknown"

    .line 124
    .local v5, "errorMessage":Ljava/lang/String;
    const/4 v10, 0x1

    .line 126
    .local v10, "needRawQuery":Z
    :try_start_0
    invoke-static/range {p1 .. p1}, Lio/sqlc/SQLiteAndroidDatabase;->getQueryType(Ljava/lang/String;)Lio/sqlc/SQLiteAndroidDatabase$QueryType;

    move-result-object v14

    .line 128
    .local v14, "queryType":Lio/sqlc/SQLiteAndroidDatabase$QueryType;
    sget-object v18, Lio/sqlc/SQLiteAndroidDatabase$QueryType;->update:Lio/sqlc/SQLiteAndroidDatabase$QueryType;

    move-object/from16 v0, v18

    if-eq v14, v0, :cond_1

    sget-object v18, Lio/sqlc/SQLiteAndroidDatabase$QueryType;->delete:Lio/sqlc/SQLiteAndroidDatabase$QueryType;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_b

    .line 129
    :cond_1
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0xb

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/sqlc/SQLiteAndroidDatabase;->mydb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    .line 132
    .local v7, "myStatement":Landroid/database/sqlite/SQLiteStatement;
    if-eqz p2, :cond_2

    .line 133
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v1}, Lio/sqlc/SQLiteAndroidDatabase;->bindArgsToStatement(Landroid/database/sqlite/SQLiteStatement;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 136
    :cond_2
    const/16 v16, -0x1

    .line 140
    .local v16, "rowsAffected":I
    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result v16

    .line 142
    const/4 v10, 0x0

    .line 155
    :goto_1
    :try_start_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 157
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    .line 158
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 159
    .end local v12    # "queryResult":Lorg/json/JSONObject;
    .local v13, "queryResult":Lorg/json/JSONObject;
    :try_start_3
    const-string v18, "rowsAffected"

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    move-object v12, v13

    .line 163
    .end local v7    # "myStatement":Landroid/database/sqlite/SQLiteStatement;
    .end local v13    # "queryResult":Lorg/json/JSONObject;
    .end local v16    # "rowsAffected":I
    .restart local v12    # "queryResult":Lorg/json/JSONObject;
    :cond_3
    if-eqz v10, :cond_b

    .line 164
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/sqlc/SQLiteAndroidDatabase;->mydb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-direct {v0, v14, v1, v2, v3}, Lio/sqlc/SQLiteAndroidDatabase;->countRowsAffectedCompat(Lio/sqlc/SQLiteAndroidDatabase$QueryType;Ljava/lang/String;Lorg/json/JSONArray;Landroid/database/sqlite/SQLiteDatabase;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v17

    .line 165
    const/4 v11, 0x1

    move-object v13, v12

    .line 170
    .end local v12    # "queryResult":Lorg/json/JSONObject;
    .restart local v13    # "queryResult":Lorg/json/JSONObject;
    :goto_2
    :try_start_5
    sget-object v18, Lio/sqlc/SQLiteAndroidDatabase$QueryType;->insert:Lio/sqlc/SQLiteAndroidDatabase$QueryType;

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_4

    if-eqz p2, :cond_4

    .line 171
    const/4 v10, 0x0

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/sqlc/SQLiteAndroidDatabase;->mydb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    .line 175
    .restart local v7    # "myStatement":Landroid/database/sqlite/SQLiteStatement;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v1}, Lio/sqlc/SQLiteAndroidDatabase;->bindArgsToStatement(Landroid/database/sqlite/SQLiteStatement;Lorg/json/JSONArray;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 177
    const-wide/16 v8, -0x1

    .line 180
    .local v8, "insertId":J
    :try_start_6
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v8

    .line 183
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 184
    .end local v13    # "queryResult":Lorg/json/JSONObject;
    .restart local v12    # "queryResult":Lorg/json/JSONObject;
    const-wide/16 v18, -0x1

    cmp-long v18, v8, v18

    if-eqz v18, :cond_8

    .line 185
    :try_start_7
    const-string v18, "insertId"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 186
    const-string v18, "rowsAffected"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 199
    :goto_3
    :try_start_8
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    move-object v13, v12

    .line 202
    .end local v7    # "myStatement":Landroid/database/sqlite/SQLiteStatement;
    .end local v8    # "insertId":J
    .end local v12    # "queryResult":Lorg/json/JSONObject;
    .restart local v13    # "queryResult":Lorg/json/JSONObject;
    :cond_4
    :try_start_9
    sget-object v18, Lio/sqlc/SQLiteAndroidDatabase$QueryType;->begin:Lio/sqlc/SQLiteAndroidDatabase$QueryType;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_5

    .line 203
    const/4 v10, 0x0

    .line 205
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/sqlc/SQLiteAndroidDatabase;->mydb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 207
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 208
    .end local v13    # "queryResult":Lorg/json/JSONObject;
    .restart local v12    # "queryResult":Lorg/json/JSONObject;
    :try_start_b
    const-string v18, "rowsAffected"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    move-object v13, v12

    .line 216
    .end local v12    # "queryResult":Lorg/json/JSONObject;
    .restart local v13    # "queryResult":Lorg/json/JSONObject;
    :cond_5
    :goto_4
    :try_start_c
    sget-object v18, Lio/sqlc/SQLiteAndroidDatabase$QueryType;->commit:Lio/sqlc/SQLiteAndroidDatabase$QueryType;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_6

    .line 217
    const/4 v10, 0x0

    .line 219
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/sqlc/SQLiteAndroidDatabase;->mydb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/sqlc/SQLiteAndroidDatabase;->mydb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 222
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 223
    .end local v13    # "queryResult":Lorg/json/JSONObject;
    .restart local v12    # "queryResult":Lorg/json/JSONObject;
    :try_start_e
    const-string v18, "rowsAffected"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    move-object v13, v12

    .line 231
    .end local v12    # "queryResult":Lorg/json/JSONObject;
    .restart local v13    # "queryResult":Lorg/json/JSONObject;
    :cond_6
    :goto_5
    :try_start_f
    sget-object v18, Lio/sqlc/SQLiteAndroidDatabase$QueryType;->rollback:Lio/sqlc/SQLiteAndroidDatabase$QueryType;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    move-object/from16 v0, v18

    if-ne v14, v0, :cond_a

    .line 232
    const/4 v10, 0x0

    .line 234
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/sqlc/SQLiteAndroidDatabase;->mydb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 236
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    .line 237
    .end local v13    # "queryResult":Lorg/json/JSONObject;
    .restart local v12    # "queryResult":Lorg/json/JSONObject;
    :try_start_11
    const-string v18, "rowsAffected"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    .line 246
    :goto_6
    if-eqz v10, :cond_7

    .line 247
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/sqlc/SQLiteAndroidDatabase;->mydb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lio/sqlc/SQLiteAndroidDatabase;->executeSqlStatementQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v12

    .line 249
    if-eqz v11, :cond_7

    .line 250
    const-string v18, "rowsAffected"

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    .line 260
    .end local v14    # "queryType":Lio/sqlc/SQLiteAndroidDatabase$QueryType;
    :cond_7
    :goto_7
    if-eqz v12, :cond_9

    .line 261
    :try_start_13
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 263
    .local v15, "r":Lorg/json/JSONObject;
    const-string v18, "type"

    const-string v19, "success"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v18, "result"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_0

    goto/16 :goto_0

    .line 277
    .end local v15    # "r":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 278
    .local v6, "ex":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    .line 279
    const-string v18, "executeSqlBatch"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SQLiteAndroidDatabase.executeSql[Batch](): Error="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v6}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 143
    .end local v6    # "ex":Lorg/json/JSONException;
    .restart local v7    # "myStatement":Landroid/database/sqlite/SQLiteStatement;
    .restart local v14    # "queryType":Lio/sqlc/SQLiteAndroidDatabase$QueryType;
    .restart local v16    # "rowsAffected":I
    :catch_1
    move-exception v6

    .line 145
    .local v6, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_14
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 146
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 147
    const-string v18, "executeSqlBatch"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SQLiteStatement.executeUpdateDelete(): Error="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    .line 148
    const/4 v10, 0x0

    .line 152
    goto/16 :goto_1

    .line 188
    .end local v6    # "ex":Landroid/database/sqlite/SQLiteException;
    .end local v16    # "rowsAffected":I
    .restart local v8    # "insertId":J
    :cond_8
    :try_start_15
    const-string v18, "rowsAffected"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3

    goto/16 :goto_3

    .line 190
    :catch_2
    move-exception v6

    .line 193
    .restart local v6    # "ex":Landroid/database/sqlite/SQLiteException;
    :goto_8
    :try_start_16
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 194
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 195
    const-string v18, "executeSqlBatch"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SQLiteDatabase.executeInsert(): Error="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3

    goto/16 :goto_3

    .line 253
    .end local v6    # "ex":Landroid/database/sqlite/SQLiteException;
    .end local v7    # "myStatement":Landroid/database/sqlite/SQLiteStatement;
    .end local v8    # "insertId":J
    .end local v14    # "queryType":Lio/sqlc/SQLiteAndroidDatabase$QueryType;
    :catch_3
    move-exception v6

    .line 254
    .local v6, "ex":Ljava/lang/Exception;
    :goto_9
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 256
    const-string v18, "executeSqlBatch"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SQLiteAndroidDatabase.executeSql[Batch](): Error="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 209
    .end local v6    # "ex":Ljava/lang/Exception;
    .end local v12    # "queryResult":Lorg/json/JSONObject;
    .restart local v13    # "queryResult":Lorg/json/JSONObject;
    .restart local v14    # "queryType":Lio/sqlc/SQLiteAndroidDatabase$QueryType;
    :catch_4
    move-exception v6

    move-object v12, v13

    .line 210
    .end local v13    # "queryResult":Lorg/json/JSONObject;
    .local v6, "ex":Landroid/database/sqlite/SQLiteException;
    .restart local v12    # "queryResult":Lorg/json/JSONObject;
    :goto_a
    :try_start_17
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 211
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 212
    const-string v18, "executeSqlBatch"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SQLiteDatabase.beginTransaction(): Error="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v12

    .end local v12    # "queryResult":Lorg/json/JSONObject;
    .restart local v13    # "queryResult":Lorg/json/JSONObject;
    goto/16 :goto_4

    .line 224
    .end local v6    # "ex":Landroid/database/sqlite/SQLiteException;
    :catch_5
    move-exception v6

    move-object v12, v13

    .line 225
    .end local v13    # "queryResult":Lorg/json/JSONObject;
    .restart local v6    # "ex":Landroid/database/sqlite/SQLiteException;
    .restart local v12    # "queryResult":Lorg/json/JSONObject;
    :goto_b
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 226
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 227
    const-string v18, "executeSqlBatch"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SQLiteDatabase.setTransactionSuccessful/endTransaction(): Error="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v12

    .end local v12    # "queryResult":Lorg/json/JSONObject;
    .restart local v13    # "queryResult":Lorg/json/JSONObject;
    goto/16 :goto_5

    .line 238
    .end local v6    # "ex":Landroid/database/sqlite/SQLiteException;
    :catch_6
    move-exception v6

    move-object v12, v13

    .line 239
    .end local v13    # "queryResult":Lorg/json/JSONObject;
    .restart local v6    # "ex":Landroid/database/sqlite/SQLiteException;
    .restart local v12    # "queryResult":Lorg/json/JSONObject;
    :goto_c
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 240
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 241
    const-string v18, "executeSqlBatch"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SQLiteDatabase.endTransaction(): Error="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3

    goto/16 :goto_6

    .line 268
    .end local v6    # "ex":Landroid/database/sqlite/SQLiteException;
    .end local v14    # "queryType":Lio/sqlc/SQLiteAndroidDatabase$QueryType;
    :cond_9
    :try_start_18
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 269
    .restart local v15    # "r":Lorg/json/JSONObject;
    const-string v18, "type"

    const-string v19, "error"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 272
    .local v4, "er":Lorg/json/JSONObject;
    const-string v18, "message"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string v18, "result"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_0

    goto/16 :goto_0

    .line 149
    .end local v4    # "er":Lorg/json/JSONObject;
    .end local v15    # "r":Lorg/json/JSONObject;
    .restart local v7    # "myStatement":Landroid/database/sqlite/SQLiteStatement;
    .restart local v14    # "queryType":Lio/sqlc/SQLiteAndroidDatabase$QueryType;
    .restart local v16    # "rowsAffected":I
    :catch_7
    move-exception v18

    goto/16 :goto_1

    .line 253
    .end local v7    # "myStatement":Landroid/database/sqlite/SQLiteStatement;
    .end local v12    # "queryResult":Lorg/json/JSONObject;
    .end local v16    # "rowsAffected":I
    .restart local v13    # "queryResult":Lorg/json/JSONObject;
    :catch_8
    move-exception v6

    move-object v12, v13

    .end local v13    # "queryResult":Lorg/json/JSONObject;
    .restart local v12    # "queryResult":Lorg/json/JSONObject;
    goto/16 :goto_9

    .line 238
    :catch_9
    move-exception v6

    goto :goto_c

    .line 224
    :catch_a
    move-exception v6

    goto :goto_b

    .line 209
    :catch_b
    move-exception v6

    goto/16 :goto_a

    .line 190
    .end local v12    # "queryResult":Lorg/json/JSONObject;
    .restart local v7    # "myStatement":Landroid/database/sqlite/SQLiteStatement;
    .restart local v8    # "insertId":J
    .restart local v13    # "queryResult":Lorg/json/JSONObject;
    :catch_c
    move-exception v6

    move-object v12, v13

    .end local v13    # "queryResult":Lorg/json/JSONObject;
    .restart local v12    # "queryResult":Lorg/json/JSONObject;
    goto/16 :goto_8

    .end local v7    # "myStatement":Landroid/database/sqlite/SQLiteStatement;
    .end local v8    # "insertId":J
    .end local v12    # "queryResult":Lorg/json/JSONObject;
    .restart local v13    # "queryResult":Lorg/json/JSONObject;
    :cond_a
    move-object v12, v13

    .end local v13    # "queryResult":Lorg/json/JSONObject;
    .restart local v12    # "queryResult":Lorg/json/JSONObject;
    goto/16 :goto_6

    :cond_b
    move-object v13, v12

    .end local v12    # "queryResult":Lorg/json/JSONObject;
    .restart local v13    # "queryResult":Lorg/json/JSONObject;
    goto/16 :goto_2
.end method

.method private executeSqlStatementQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 17
    .param p1, "mydb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "paramsAsJson"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 382
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 384
    .local v13, "rowsResult":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 386
    .local v3, "cur":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 388
    .local v10, "params":[Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-array v10, v14, [Ljava/lang/String;

    .line 390
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v8, v14, :cond_1

    .line 391
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 392
    const-string v14, ""

    aput-object v14, v10, v8

    .line 390
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 394
    :cond_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v10, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 398
    .end local v8    # "j":I
    :catch_0
    move-exception v6

    .line 399
    .local v6, "ex":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 400
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 401
    .local v5, "errorMessage":Ljava/lang/String;
    const-string v14, "executeSqlBatch"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SQLiteAndroidDatabase.executeSql[Batch](): Error="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    throw v6

    .line 397
    .end local v5    # "errorMessage":Ljava/lang/String;
    .end local v6    # "ex":Ljava/lang/Exception;
    .restart local v8    # "j":I
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 406
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 407
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 408
    .local v12, "rowsArrayResult":Lorg/json/JSONArray;
    const-string v9, ""

    .line 409
    .local v9, "key":Ljava/lang/String;
    invoke-interface {v3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    .line 413
    .local v2, "colCount":I
    :cond_2
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 415
    .local v11, "row":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v2, :cond_6

    .line 416
    :try_start_2
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v9

    .line 418
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    const/16 v15, 0xb

    if-lt v14, v15, :cond_5

    .line 422
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v3, v7}, Lio/sqlc/SQLiteAndroidDatabase;->bindPostHoneycomb(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 415
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 423
    :catch_1
    move-exception v6

    .line 424
    .restart local v6    # "ex":Ljava/lang/Exception;
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v3, v7}, Lio/sqlc/SQLiteAndroidDatabase;->bindPreHoneycomb(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;I)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 433
    .end local v6    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 434
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 436
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-nez v14, :cond_2

    .line 439
    :try_start_5
    const-string v14, "rows"

    invoke-virtual {v13, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    .line 445
    .end local v2    # "colCount":I
    .end local v7    # "i":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v11    # "row":Lorg/json/JSONObject;
    .end local v12    # "rowsArrayResult":Lorg/json/JSONArray;
    :cond_3
    :goto_5
    if-eqz v3, :cond_4

    .line 446
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 449
    :cond_4
    return-object v13

    .line 427
    .restart local v2    # "colCount":I
    .restart local v7    # "i":I
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v11    # "row":Lorg/json/JSONObject;
    .restart local v12    # "rowsArrayResult":Lorg/json/JSONArray;
    :cond_5
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v9, v3, v7}, Lio/sqlc/SQLiteAndroidDatabase;->bindPreHoneycomb(Lorg/json/JSONObject;Ljava/lang/String;Landroid/database/Cursor;I)V

    goto :goto_3

    .line 431
    :cond_6
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 440
    :catch_3
    move-exception v4

    .line 441
    .restart local v4    # "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5
.end method

.method static getQueryType(Ljava/lang/String;)Lio/sqlc/SQLiteAndroidDatabase$QueryType;
    .locals 2
    .param p0, "query"    # Ljava/lang/String;

    .prologue
    .line 501
    sget-object v1, Lio/sqlc/SQLiteAndroidDatabase;->FIRST_WORD:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 502
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/sqlc/SQLiteAndroidDatabase$QueryType;->valueOf(Ljava/lang/String;)Lio/sqlc/SQLiteAndroidDatabase$QueryType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 509
    :goto_0
    return-object v1

    .line 505
    :catch_0
    move-exception v1

    .line 509
    :cond_0
    sget-object v1, Lio/sqlc/SQLiteAndroidDatabase$QueryType;->other:Lio/sqlc/SQLiteAndroidDatabase$QueryType;

    goto :goto_0
.end method


# virtual methods
.method bugWorkaround()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Lio/sqlc/SQLiteAndroidDatabase;->closeDatabaseNow()V

    .line 80
    iget-object v0, p0, Lio/sqlc/SQLiteAndroidDatabase;->dbFile:Ljava/io/File;

    invoke-virtual {p0, v0}, Lio/sqlc/SQLiteAndroidDatabase;->open(Ljava/io/File;)V

    .line 81
    return-void
.end method

.method closeDatabaseNow()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lio/sqlc/SQLiteAndroidDatabase;->mydb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lio/sqlc/SQLiteAndroidDatabase;->mydb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sqlc/SQLiteAndroidDatabase;->mydb:Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    :cond_0
    return-void
.end method

.method executeSqlBatch([Ljava/lang/String;[Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 5
    .param p1, "queryarr"    # [Ljava/lang/String;
    .param p2, "jsonparamsArr"    # [Lorg/json/JSONArray;
    .param p3, "cbc"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 92
    iget-object v3, p0, Lio/sqlc/SQLiteAndroidDatabase;->mydb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    .line 94
    const-string v3, "database has been closed"

    invoke-virtual {p3, v3}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 98
    :cond_0
    array-length v2, p1

    .line 99
    .local v2, "len":I
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 101
    .local v0, "batchResults":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 102
    aget-object v3, p1, v1

    aget-object v4, p2, v1

    invoke-direct {p0, v3, v4, v0}, Lio/sqlc/SQLiteAndroidDatabase;->executeSqlBatchStatement(Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 105
    :cond_1
    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    goto :goto_0
.end method

.method open(Ljava/io/File;)V
    .locals 1
    .param p1, "dbfile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    iput-object p1, p0, Lio/sqlc/SQLiteAndroidDatabase;->dbFile:Ljava/io/File;

    .line 65
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lio/sqlc/SQLiteAndroidDatabase;->mydb:Landroid/database/sqlite/SQLiteDatabase;

    .line 66
    return-void
.end method
