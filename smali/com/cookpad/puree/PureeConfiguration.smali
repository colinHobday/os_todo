.class public Lcom/cookpad/puree/PureeConfiguration;
.super Ljava/lang/Object;
.source "PureeConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cookpad/puree/PureeConfiguration$BackgroundThreadFactory;,
        Lcom/cookpad/puree/PureeConfiguration$Builder;
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final gson:Lcom/google/gson/Gson;

.field private final sourceOutputMap:Ljava/util/Map;
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

.field private final storage:Lcom/cookpad/puree/storage/PureeStorage;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/gson/Gson;Ljava/util/Map;Lcom/cookpad/puree/storage/PureeStorage;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gson"    # Lcom/google/gson/Gson;
    .param p4, "storage"    # Lcom/cookpad/puree/storage/PureeStorage;
    .param p5, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/gson/Gson;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lcom/cookpad/puree/outputs/PureeOutput;",
            ">;>;",
            "Lcom/cookpad/puree/storage/PureeStorage;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p3, "sourceOutputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/List<Lcom/cookpad/puree/outputs/PureeOutput;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/cookpad/puree/PureeConfiguration;->context:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/cookpad/puree/PureeConfiguration;->gson:Lcom/google/gson/Gson;

    .line 63
    iput-object p3, p0, Lcom/cookpad/puree/PureeConfiguration;->sourceOutputMap:Ljava/util/Map;

    .line 64
    iput-object p4, p0, Lcom/cookpad/puree/PureeConfiguration;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    .line 65
    iput-object p5, p0, Lcom/cookpad/puree/PureeConfiguration;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 67
    return-void
.end method

.method static newBackgroundExecutor()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2

    .prologue
    .line 159
    const/4 v0, 0x1

    new-instance v1, Lcom/cookpad/puree/PureeConfiguration$BackgroundThreadFactory;

    invoke-direct {v1}, Lcom/cookpad/puree/PureeConfiguration$BackgroundThreadFactory;-><init>()V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createPureeLogger()Lcom/cookpad/puree/PureeLogger;
    .locals 5

    .prologue
    .line 56
    new-instance v0, Lcom/cookpad/puree/PureeLogger;

    iget-object v1, p0, Lcom/cookpad/puree/PureeConfiguration;->sourceOutputMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/cookpad/puree/PureeConfiguration;->gson:Lcom/google/gson/Gson;

    iget-object v3, p0, Lcom/cookpad/puree/PureeConfiguration;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    iget-object v4, p0, Lcom/cookpad/puree/PureeConfiguration;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/cookpad/puree/PureeLogger;-><init>(Ljava/util/Map;Lcom/google/gson/Gson;Lcom/cookpad/puree/storage/PureeStorage;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cookpad/puree/PureeConfiguration;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getGson()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cookpad/puree/PureeConfiguration;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public getRegisteredOutputPlugins(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
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

    .prologue
    .line 52
    .local p1, "logClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/cookpad/puree/PureeLog;>;"
    iget-object v0, p0, Lcom/cookpad/puree/PureeConfiguration;->sourceOutputMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getSourceOutputMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .prologue
    .line 44
    iget-object v0, p0, Lcom/cookpad/puree/PureeConfiguration;->sourceOutputMap:Ljava/util/Map;

    return-object v0
.end method

.method public getStorage()Lcom/cookpad/puree/storage/PureeStorage;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cookpad/puree/PureeConfiguration;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    return-object v0
.end method

.method public printMapping()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cookpad/puree/PureeConfiguration;->sourceOutputMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/cookpad/puree/internal/LogDumper;->out(Ljava/util/Map;)V

    .line 74
    return-void
.end method
