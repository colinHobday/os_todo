.class Lio/sqlc/SQLitePlugin$DBRunner;
.super Ljava/lang/Object;
.source "SQLitePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sqlc/SQLitePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DBRunner"
.end annotation


# instance fields
.field private bugWorkaround:Z

.field final dbConnectionName:Ljava/lang/String;

.field final dbname:Ljava/lang/String;

.field mydb:Lio/sqlc/SQLiteAndroidDatabase;

.field private oldImpl:Z

.field final openCbc:Lorg/apache/cordova/CallbackContext;

.field final q:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lio/sqlc/SQLitePlugin$DBQuery;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/sqlc/SQLitePlugin;


# direct methods
.method constructor <init>(Lio/sqlc/SQLitePlugin;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p2, "dbname"    # Ljava/lang/String;
    .param p3, "dbConnectionName"    # Ljava/lang/String;
    .param p4, "options"    # Lorg/json/JSONObject;
    .param p5, "cbc"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    .line 334
    iput-object p1, p0, Lio/sqlc/SQLitePlugin$DBRunner;->this$0:Lio/sqlc/SQLitePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p2, p0, Lio/sqlc/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    .line 336
    iput-object p3, p0, Lio/sqlc/SQLitePlugin$DBRunner;->dbConnectionName:Ljava/lang/String;

    .line 337
    const-string v0, "androidOldDatabaseImplementation"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lio/sqlc/SQLitePlugin$DBRunner;->oldImpl:Z

    .line 338
    const-class v0, Lio/sqlc/SQLitePlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Android db implementation: built-in android.database.sqlite package"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-boolean v0, p0, Lio/sqlc/SQLitePlugin$DBRunner;->oldImpl:Z

    if-eqz v0, :cond_1

    const-string v0, "androidBugWorkaround"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lio/sqlc/SQLitePlugin$DBRunner;->bugWorkaround:Z

    .line 340
    iget-boolean v0, p0, Lio/sqlc/SQLitePlugin$DBRunner;->bugWorkaround:Z

    if-eqz v0, :cond_0

    .line 341
    const-class v0, Lio/sqlc/SQLitePlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Android db closing/locking workaround applied"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lio/sqlc/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    .line 344
    iput-object p5, p0, Lio/sqlc/SQLitePlugin$DBRunner;->openCbc:Lorg/apache/cordova/CallbackContext;

    .line 345
    return-void

    .line 339
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 349
    :try_start_0
    iget-object v3, p0, Lio/sqlc/SQLitePlugin$DBRunner;->this$0:Lio/sqlc/SQLitePlugin;

    iget-object v4, p0, Lio/sqlc/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    iget-object v5, p0, Lio/sqlc/SQLitePlugin$DBRunner;->openCbc:Lorg/apache/cordova/CallbackContext;

    iget-boolean v6, p0, Lio/sqlc/SQLitePlugin$DBRunner;->oldImpl:Z

    invoke-static {v3, v4, v5, v6}, Lio/sqlc/SQLitePlugin;->access$000(Lio/sqlc/SQLitePlugin;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;Z)Lio/sqlc/SQLiteAndroidDatabase;

    move-result-object v3

    iput-object v3, p0, Lio/sqlc/SQLitePlugin$DBRunner;->mydb:Lio/sqlc/SQLiteAndroidDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    const/4 v1, 0x0

    .line 359
    .local v1, "dbq":Lio/sqlc/SQLitePlugin$DBQuery;
    :try_start_1
    iget-object v3, p0, Lio/sqlc/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lio/sqlc/SQLitePlugin$DBQuery;

    move-object v1, v0

    .line 361
    :goto_0
    iget-boolean v3, v1, Lio/sqlc/SQLitePlugin$DBQuery;->stop:Z

    if-nez v3, :cond_2

    .line 362
    iget-object v3, p0, Lio/sqlc/SQLitePlugin$DBRunner;->mydb:Lio/sqlc/SQLiteAndroidDatabase;

    iget-object v4, v1, Lio/sqlc/SQLitePlugin$DBQuery;->queries:[Ljava/lang/String;

    iget-object v5, v1, Lio/sqlc/SQLitePlugin$DBQuery;->jsonparams:[Lorg/json/JSONArray;

    iget-object v6, v1, Lio/sqlc/SQLitePlugin$DBQuery;->cbc:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v3, v4, v5, v6}, Lio/sqlc/SQLiteAndroidDatabase;->executeSqlBatch([Ljava/lang/String;[Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    .line 364
    iget-boolean v3, p0, Lio/sqlc/SQLitePlugin$DBRunner;->bugWorkaround:Z

    if-eqz v3, :cond_0

    iget-object v3, v1, Lio/sqlc/SQLitePlugin$DBQuery;->queries:[Ljava/lang/String;

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, v1, Lio/sqlc/SQLitePlugin$DBQuery;->queries:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, "COMMIT"

    if-ne v3, v4, :cond_0

    .line 365
    iget-object v3, p0, Lio/sqlc/SQLitePlugin$DBRunner;->mydb:Lio/sqlc/SQLiteAndroidDatabase;

    invoke-virtual {v3}, Lio/sqlc/SQLiteAndroidDatabase;->bugWorkaround()V

    .line 367
    :cond_0
    iget-object v3, p0, Lio/sqlc/SQLitePlugin$DBRunner;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lio/sqlc/SQLitePlugin$DBQuery;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 350
    .end local v1    # "dbq":Lio/sqlc/SQLitePlugin$DBQuery;
    :catch_0
    move-exception v2

    .line 351
    .local v2, "e":Ljava/lang/Exception;
    const-class v3, Lio/sqlc/SQLitePlugin;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unexpected error, stopping db thread"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    sget-object v3, Lio/sqlc/SQLitePlugin;->dbrmap:Ljava/util/Map;

    iget-object v4, p0, Lio/sqlc/SQLitePlugin$DBRunner;->dbConnectionName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 369
    .restart local v1    # "dbq":Lio/sqlc/SQLitePlugin$DBQuery;
    :catch_1
    move-exception v2

    .line 370
    .restart local v2    # "e":Ljava/lang/Exception;
    const-class v3, Lio/sqlc/SQLitePlugin;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "unexpected error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz v1, :cond_1

    iget-boolean v3, v1, Lio/sqlc/SQLitePlugin$DBQuery;->close:Z

    if-eqz v3, :cond_1

    .line 375
    :try_start_2
    iget-object v3, p0, Lio/sqlc/SQLitePlugin$DBRunner;->this$0:Lio/sqlc/SQLitePlugin;

    iget-object v4, p0, Lio/sqlc/SQLitePlugin$DBRunner;->dbConnectionName:Ljava/lang/String;

    invoke-static {v3, v4}, Lio/sqlc/SQLitePlugin;->access$100(Lio/sqlc/SQLitePlugin;Ljava/lang/String;)V

    .line 377
    sget-object v3, Lio/sqlc/SQLitePlugin;->dbrmap:Ljava/util/Map;

    iget-object v4, p0, Lio/sqlc/SQLitePlugin$DBRunner;->dbConnectionName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-boolean v3, v1, Lio/sqlc/SQLitePlugin$DBQuery;->delete:Z

    if-nez v3, :cond_3

    .line 380
    iget-object v3, v1, Lio/sqlc/SQLitePlugin$DBQuery;->cbc:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v3}, Lorg/apache/cordova/CallbackContext;->success()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 384
    :catch_2
    move-exception v2

    .line 385
    .restart local v2    # "e":Ljava/lang/Exception;
    const-class v3, Lio/sqlc/SQLitePlugin;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "couldn\'t close database"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    iget-object v3, v1, Lio/sqlc/SQLitePlugin$DBQuery;->cbc:Lorg/apache/cordova/CallbackContext;

    if-eqz v3, :cond_1

    .line 387
    iget-object v3, v1, Lio/sqlc/SQLitePlugin$DBQuery;->cbc:Lorg/apache/cordova/CallbackContext;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t close database: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 382
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_3
    iget-object v3, p0, Lio/sqlc/SQLitePlugin$DBRunner;->this$0:Lio/sqlc/SQLitePlugin;

    iget-object v4, p0, Lio/sqlc/SQLitePlugin$DBRunner;->dbname:Ljava/lang/String;

    iget-object v5, v1, Lio/sqlc/SQLitePlugin$DBQuery;->cbc:Lorg/apache/cordova/CallbackContext;

    invoke-static {v3, v4, v5}, Lio/sqlc/SQLitePlugin;->access$200(Lio/sqlc/SQLitePlugin;Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1
.end method
