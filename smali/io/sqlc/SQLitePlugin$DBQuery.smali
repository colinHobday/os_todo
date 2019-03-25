.class final Lio/sqlc/SQLitePlugin$DBQuery;
.super Ljava/lang/Object;
.source "SQLitePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sqlc/SQLitePlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DBQuery"
.end annotation


# instance fields
.field final cbc:Lorg/apache/cordova/CallbackContext;

.field final close:Z

.field final delete:Z

.field final jsonparams:[Lorg/json/JSONArray;

.field final queries:[Ljava/lang/String;

.field final stop:Z

.field final synthetic this$0:Lio/sqlc/SQLitePlugin;


# direct methods
.method constructor <init>(Lio/sqlc/SQLitePlugin;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 431
    iput-object p1, p0, Lio/sqlc/SQLitePlugin$DBQuery;->this$0:Lio/sqlc/SQLitePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/sqlc/SQLitePlugin$DBQuery;->stop:Z

    .line 433
    iput-boolean v2, p0, Lio/sqlc/SQLitePlugin$DBQuery;->close:Z

    .line 434
    iput-boolean v2, p0, Lio/sqlc/SQLitePlugin$DBQuery;->delete:Z

    .line 435
    iput-object v1, p0, Lio/sqlc/SQLitePlugin$DBQuery;->queries:[Ljava/lang/String;

    .line 436
    iput-object v1, p0, Lio/sqlc/SQLitePlugin$DBQuery;->jsonparams:[Lorg/json/JSONArray;

    .line 437
    iput-object v1, p0, Lio/sqlc/SQLitePlugin$DBQuery;->cbc:Lorg/apache/cordova/CallbackContext;

    .line 438
    return-void
.end method

.method constructor <init>(Lio/sqlc/SQLitePlugin;ZLorg/apache/cordova/CallbackContext;)V
    .locals 2
    .param p2, "delete"    # Z
    .param p3, "cbc"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 421
    iput-object p1, p0, Lio/sqlc/SQLitePlugin$DBQuery;->this$0:Lio/sqlc/SQLitePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-boolean v0, p0, Lio/sqlc/SQLitePlugin$DBQuery;->stop:Z

    .line 423
    iput-boolean v0, p0, Lio/sqlc/SQLitePlugin$DBQuery;->close:Z

    .line 424
    iput-boolean p2, p0, Lio/sqlc/SQLitePlugin$DBQuery;->delete:Z

    .line 425
    iput-object v1, p0, Lio/sqlc/SQLitePlugin$DBQuery;->queries:[Ljava/lang/String;

    .line 426
    iput-object v1, p0, Lio/sqlc/SQLitePlugin$DBQuery;->jsonparams:[Lorg/json/JSONArray;

    .line 427
    iput-object p3, p0, Lio/sqlc/SQLitePlugin$DBQuery;->cbc:Lorg/apache/cordova/CallbackContext;

    .line 428
    return-void
.end method

.method constructor <init>(Lio/sqlc/SQLitePlugin;[Ljava/lang/String;[Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 1
    .param p2, "myqueries"    # [Ljava/lang/String;
    .param p3, "params"    # [Lorg/json/JSONArray;
    .param p4, "c"    # Lorg/apache/cordova/CallbackContext;

    .prologue
    const/4 v0, 0x0

    .line 412
    iput-object p1, p0, Lio/sqlc/SQLitePlugin$DBQuery;->this$0:Lio/sqlc/SQLitePlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-boolean v0, p0, Lio/sqlc/SQLitePlugin$DBQuery;->stop:Z

    .line 414
    iput-boolean v0, p0, Lio/sqlc/SQLitePlugin$DBQuery;->close:Z

    .line 415
    iput-boolean v0, p0, Lio/sqlc/SQLitePlugin$DBQuery;->delete:Z

    .line 416
    iput-object p2, p0, Lio/sqlc/SQLitePlugin$DBQuery;->queries:[Ljava/lang/String;

    .line 417
    iput-object p3, p0, Lio/sqlc/SQLitePlugin$DBQuery;->jsonparams:[Lorg/json/JSONArray;

    .line 418
    iput-object p4, p0, Lio/sqlc/SQLitePlugin$DBQuery;->cbc:Lorg/apache/cordova/CallbackContext;

    .line 419
    return-void
.end method
