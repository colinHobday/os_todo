.class public Lcom/cookpad/puree/storage/PureeSQLiteStorage;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PureeSQLiteStorage.java"

# interfaces
.implements Lcom/cookpad/puree/storage/PureeStorage;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final COLUMN_NAME_LOG:Ljava/lang/String; = "log"

.field private static final COLUMN_NAME_TYPE:Ljava/lang/String; = "type"

.field private static final DATABASE_NAME:Ljava/lang/String; = "puree.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TABLE_NAME:Ljava/lang/String; = "logs"


# instance fields
.field private final db:Landroid/database/sqlite/SQLiteDatabase;

.field private final jsonParser:Lcom/google/gson/JsonParser;

.field private final lock:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-static {p1}, Lcom/cookpad/puree/storage/PureeSQLiteStorage;->databaseName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 33
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    iput-object v0, p0, Lcom/cookpad/puree/storage/PureeSQLiteStorage;->jsonParser:Lcom/google/gson/JsonParser;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/cookpad/puree/storage/PureeSQLiteStorage;->lock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    invoke-virtual {p0}, Lcom/cookpad/puree/storage/PureeSQLiteStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/cookpad/puree/storage/PureeSQLiteStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 52
    return-void
.end method

.method private buildRecord(Landroid/database/Cursor;)Lcom/cookpad/puree/storage/Record;
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 99
    new-instance v0, Lcom/cookpad/puree/storage/Record;

    const/4 v1, 0x0

    .line 100
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    .line 101
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 102
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/cookpad/puree/storage/PureeSQLiteStorage;->parseJsonString(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/cookpad/puree/storage/Record;-><init>(ILjava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 99
    return-object v0
.end method

.method static databaseName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-static {p0}, Lcom/cookpad/puree/internal/ProcessName;->getAndroidProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "processName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const-string v1, "puree.db"

    .line 45
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "puree.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private parseJsonString(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 1
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cookpad/puree/storage/PureeSQLiteStorage;->jsonParser:Lcom/google/gson/JsonParser;

    invoke-virtual {v0, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method private recordsFromCursor(Landroid/database/Cursor;)Lcom/cookpad/puree/storage/Records;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 90
    new-instance v1, Lcom/cookpad/puree/storage/Records;

    invoke-direct {v1}, Lcom/cookpad/puree/storage/Records;-><init>()V

    .line 91
    .local v1, "records":Lcom/cookpad/puree/storage/Records;
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-direct {p0, p1}, Lcom/cookpad/puree/storage/PureeSQLiteStorage;->buildRecord(Landroid/database/Cursor;)Lcom/cookpad/puree/storage/Record;

    move-result-object v0

    .line 93
    .local v0, "record":Lcom/cookpad/puree/storage/Record;
    invoke-virtual {v1, v0}, Lcom/cookpad/puree/storage/Records;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v0    # "record":Lcom/cookpad/puree/storage/Record;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 145
    const-string v0, "DELETE FROM logs"

    .line 146
    .local v0, "query":Ljava/lang/String;
    iget-object v1, p0, Lcom/cookpad/puree/storage/PureeSQLiteStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public count()I
    .locals 5

    .prologue
    .line 108
    const-string v2, "SELECT COUNT(*) FROM logs"

    .line 109
    .local v2, "query":Ljava/lang/String;
    iget-object v3, p0, Lcom/cookpad/puree/storage/PureeSQLiteStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 110
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 111
    .local v0, "count":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 115
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 116
    return v0
.end method

.method public delete(Lcom/cookpad/puree/storage/Records;)V
    .locals 3
    .param p1, "records"    # Lcom/cookpad/puree/storage/Records;

    .prologue
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETE FROM logs WHERE id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 127
    invoke-virtual {p1}, Lcom/cookpad/puree/storage/Records;->getIdsAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "query":Ljava/lang/String;
    iget-object v1, p0, Lcom/cookpad/puree/storage/PureeSQLiteStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cookpad/puree/storage/PureeSQLiteStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 167
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 168
    return-void
.end method

.method public insert(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "jsonLog"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 56
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "log"

    invoke-virtual {p2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/cookpad/puree/storage/PureeSQLiteStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "logs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 60
    return-void
.end method

.method public lock()Z
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/cookpad/puree/storage/PureeSQLiteStorage;->lock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 151
    const-string v0, "CREATE TABLE IF NOT EXISTS logs (id INTEGER PRIMARY KEY AUTOINCREMENT,type TEXT,log TEXT)"

    .line 156
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 161
    const-string v0, "PureeDbHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected onUpgrade(db, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public select(Ljava/lang/String;I)Lcom/cookpad/puree/storage/Records;
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "logsPerRequest"    # I

    .prologue
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM logs WHERE type = ? ORDER BY id ASC LIMIT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "query":Ljava/lang/String;
    iget-object v2, p0, Lcom/cookpad/puree/storage/PureeSQLiteStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 71
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/cookpad/puree/storage/PureeSQLiteStorage;->recordsFromCursor(Landroid/database/Cursor;)Lcom/cookpad/puree/storage/Records;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 73
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 71
    return-object v2

    .line 73
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public selectAll()Lcom/cookpad/puree/storage/Records;
    .locals 4

    .prologue
    .line 79
    const-string v1, "SELECT * FROM logs ORDER BY id ASC"

    .line 80
    .local v1, "query":Ljava/lang/String;
    iget-object v2, p0, Lcom/cookpad/puree/storage/PureeSQLiteStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 83
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/cookpad/puree/storage/PureeSQLiteStorage;->recordsFromCursor(Landroid/database/Cursor;)Lcom/cookpad/puree/storage/Records;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 85
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 83
    return-object v2

    .line 85
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public truncateBufferedLogs(I)V
    .locals 4
    .param p1, "maxRecords"    # I

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/cookpad/puree/storage/PureeSQLiteStorage;->count()I

    move-result v1

    .line 134
    .local v1, "recordSize":I
    if-le v1, p1, :cond_0

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM logs WHERE id IN ( SELECT id FROM logs ORDER BY id ASC LIMIT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int v3, v1, p1

    .line 137
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "query":Ljava/lang/String;
    iget-object v2, p0, Lcom/cookpad/puree/storage/PureeSQLiteStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 141
    .end local v0    # "query":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/cookpad/puree/storage/PureeSQLiteStorage;->lock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 178
    return-void
.end method
