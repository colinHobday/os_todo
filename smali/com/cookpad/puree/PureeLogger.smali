.class public Lcom/cookpad/puree/PureeLogger;
.super Ljava/lang/Object;
.source "PureeLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cookpad/puree/PureeLogger$NoRegisteredOutputPluginException;,
        Lcom/cookpad/puree/PureeLogger$Consumer;
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field final gson:Lcom/google/gson/Gson;

.field final sourceOutputMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lcom/cookpad/puree/outputs/PureeOutput;",
            ">;>;"
        }
    .end annotation
.end field

.field final storage:Lcom/cookpad/puree/storage/PureeStorage;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/google/gson/Gson;Lcom/cookpad/puree/storage/PureeStorage;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1
    .param p2, "gson"    # Lcom/google/gson/Gson;
    .param p3, "storage"    # Lcom/cookpad/puree/storage/PureeStorage;
    .param p4, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lcom/cookpad/puree/outputs/PureeOutput;",
            ">;>;",
            "Lcom/google/gson/Gson;",
            "Lcom/cookpad/puree/storage/PureeStorage;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "sourceOutputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/List<Lcom/cookpad/puree/outputs/PureeOutput;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cookpad/puree/PureeLogger;->sourceOutputMap:Ljava/util/Map;

    .line 32
    iget-object v0, p0, Lcom/cookpad/puree/PureeLogger;->sourceOutputMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 33
    iput-object p2, p0, Lcom/cookpad/puree/PureeLogger;->gson:Lcom/google/gson/Gson;

    .line 34
    iput-object p3, p0, Lcom/cookpad/puree/PureeLogger;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    .line 35
    iput-object p4, p0, Lcom/cookpad/puree/PureeLogger;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 37
    new-instance v0, Lcom/cookpad/puree/PureeLogger$1;

    invoke-direct {v0, p0}, Lcom/cookpad/puree/PureeLogger$1;-><init>(Lcom/cookpad/puree/PureeLogger;)V

    invoke-virtual {p0, v0}, Lcom/cookpad/puree/PureeLogger;->forEachOutput(Lcom/cookpad/puree/PureeLogger$Consumer;)V

    .line 43
    return-void
.end method


# virtual methods
.method public discardBufferedLogs()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/cookpad/puree/PureeLogger;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    invoke-interface {v0}, Lcom/cookpad/puree/storage/PureeStorage;->clear()V

    .line 67
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/cookpad/puree/PureeLogger$2;

    invoke-direct {v0, p0}, Lcom/cookpad/puree/PureeLogger$2;-><init>(Lcom/cookpad/puree/PureeLogger;)V

    invoke-virtual {p0, v0}, Lcom/cookpad/puree/PureeLogger;->forEachOutput(Lcom/cookpad/puree/PureeLogger$Consumer;)V

    .line 80
    return-void
.end method

.method public forEachOutput(Lcom/cookpad/puree/PureeLogger$Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cookpad/puree/PureeLogger$Consumer",
            "<",
            "Lcom/cookpad/puree/outputs/PureeOutput;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "f":Lcom/cookpad/puree/PureeLogger$Consumer;, "Lcom/cookpad/puree/PureeLogger$Consumer<Lcom/cookpad/puree/outputs/PureeOutput;>;"
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/cookpad/puree/PureeLogger;->sourceOutputMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 114
    .local v1, "outputs":Ljava/util/List;, "Ljava/util/List<Lcom/cookpad/puree/outputs/PureeOutput;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cookpad/puree/outputs/PureeOutput;

    .line 115
    .local v0, "output":Lcom/cookpad/puree/outputs/PureeOutput;
    invoke-interface {p1, v0}, Lcom/cookpad/puree/PureeLogger$Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    .end local v0    # "output":Lcom/cookpad/puree/outputs/PureeOutput;
    .end local v1    # "outputs":Ljava/util/List;, "Ljava/util/List<Lcom/cookpad/puree/outputs/PureeOutput;>;"
    :cond_1
    return-void
.end method

.method public getBufferedLogs()Lcom/cookpad/puree/storage/Records;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cookpad/puree/PureeLogger;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    invoke-interface {v0}, Lcom/cookpad/puree/storage/PureeStorage;->selectAll()Lcom/cookpad/puree/storage/Records;

    move-result-object v0

    return-object v0
.end method

.method public getExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/cookpad/puree/PureeLogger;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public getRegisteredOutputPlugins(Lcom/cookpad/puree/PureeLog;)Ljava/util/List;
    .locals 1
    .param p1, "log"    # Lcom/cookpad/puree/PureeLog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cookpad/puree/PureeLog;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/cookpad/puree/outputs/PureeOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cookpad/puree/PureeLogger;->getRegisteredOutputPlugins(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRegisteredOutputPlugins(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/cookpad/puree/PureeLog;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/cookpad/puree/outputs/PureeOutput;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 100
    .local p1, "logClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/cookpad/puree/PureeLog;>;"
    iget-object v1, p0, Lcom/cookpad/puree/PureeLogger;->sourceOutputMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 101
    .local v0, "outputs":Ljava/util/List;, "Ljava/util/List<Lcom/cookpad/puree/outputs/PureeOutput;>;"
    if-nez v0, :cond_0

    .line 102
    new-instance v1, Lcom/cookpad/puree/PureeLogger$NoRegisteredOutputPluginException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No output plugin registered for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/cookpad/puree/PureeLogger$NoRegisteredOutputPluginException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    :cond_0
    return-object v0
.end method

.method public getStorage()Lcom/cookpad/puree/storage/PureeStorage;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/cookpad/puree/PureeLogger;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    return-object v0
.end method

.method public send(Lcom/cookpad/puree/PureeLog;)V
    .locals 5
    .param p1, "log"    # Lcom/cookpad/puree/PureeLog;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/cookpad/puree/PureeLogger;->getRegisteredOutputPlugins(Lcom/cookpad/puree/PureeLog;)Ljava/util/List;

    move-result-object v2

    .line 47
    .local v2, "outputs":Ljava/util/List;, "Ljava/util/List<Lcom/cookpad/puree/outputs/PureeOutput;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cookpad/puree/outputs/PureeOutput;

    .line 48
    .local v1, "output":Lcom/cookpad/puree/outputs/PureeOutput;
    invoke-virtual {p0, p1}, Lcom/cookpad/puree/PureeLogger;->serializeLog(Lcom/cookpad/puree/PureeLog;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 49
    .local v0, "jsonLog":Lcom/google/gson/JsonObject;
    invoke-virtual {v1, v0}, Lcom/cookpad/puree/outputs/PureeOutput;->receive(Lcom/google/gson/JsonObject;)V

    goto :goto_0

    .line 51
    .end local v0    # "jsonLog":Lcom/google/gson/JsonObject;
    .end local v1    # "output":Lcom/cookpad/puree/outputs/PureeOutput;
    :cond_0
    return-void
.end method

.method public serializeLog(Lcom/cookpad/puree/PureeLog;)Lcom/google/gson/JsonObject;
    .locals 1
    .param p1, "log"    # Lcom/cookpad/puree/PureeLog;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/cookpad/puree/PureeLogger;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public truncateBufferedLogs(I)V
    .locals 1
    .param p1, "truncateThresholdInRows"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/cookpad/puree/PureeLogger;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    invoke-interface {v0, p1}, Lcom/cookpad/puree/storage/PureeStorage;->truncateBufferedLogs(I)V

    .line 71
    return-void
.end method
