.class public Lcom/cookpad/puree/PureeConfiguration$Builder;
.super Ljava/lang/Object;
.source "PureeConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cookpad/puree/PureeConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private gson:Lcom/google/gson/Gson;

.field private sourceOutputMap:Ljava/util/Map;
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

.field private storage:Lcom/cookpad/puree/storage/PureeStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cookpad/puree/PureeConfiguration$Builder;->sourceOutputMap:Ljava/util/Map;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/cookpad/puree/PureeConfiguration$Builder;->context:Landroid/content/Context;

    .line 94
    return-void
.end method


# virtual methods
.method public build()Lcom/cookpad/puree/PureeConfiguration;
    .locals 6

    .prologue
    .line 144
    iget-object v0, p0, Lcom/cookpad/puree/PureeConfiguration$Builder;->gson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/cookpad/puree/PureeConfiguration$Builder;->gson:Lcom/google/gson/Gson;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/cookpad/puree/PureeConfiguration$Builder;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Lcom/cookpad/puree/storage/PureeSQLiteStorage;

    iget-object v1, p0, Lcom/cookpad/puree/PureeConfiguration$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cookpad/puree/storage/PureeSQLiteStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cookpad/puree/PureeConfiguration$Builder;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/cookpad/puree/PureeConfiguration$Builder;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_2

    .line 152
    invoke-static {}, Lcom/cookpad/puree/PureeConfiguration;->newBackgroundExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/cookpad/puree/PureeConfiguration$Builder;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 154
    :cond_2
    new-instance v0, Lcom/cookpad/puree/PureeConfiguration;

    iget-object v1, p0, Lcom/cookpad/puree/PureeConfiguration$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cookpad/puree/PureeConfiguration$Builder;->gson:Lcom/google/gson/Gson;

    iget-object v3, p0, Lcom/cookpad/puree/PureeConfiguration$Builder;->sourceOutputMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/cookpad/puree/PureeConfiguration$Builder;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    iget-object v5, p0, Lcom/cookpad/puree/PureeConfiguration$Builder;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct/range {v0 .. v5}, Lcom/cookpad/puree/PureeConfiguration;-><init>(Landroid/content/Context;Lcom/google/gson/Gson;Ljava/util/Map;Lcom/cookpad/puree/storage/PureeStorage;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-object v0
.end method

.method public executor(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/cookpad/puree/PureeConfiguration$Builder;
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/cookpad/puree/PureeConfiguration$Builder;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 135
    return-object p0
.end method

.method public gson(Lcom/google/gson/Gson;)Lcom/cookpad/puree/PureeConfiguration$Builder;
    .locals 0
    .param p1, "gson"    # Lcom/google/gson/Gson;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/cookpad/puree/PureeConfiguration$Builder;->gson:Lcom/google/gson/Gson;

    .line 104
    return-object p0
.end method

.method public register(Ljava/lang/Class;Lcom/cookpad/puree/outputs/PureeOutput;)Lcom/cookpad/puree/PureeConfiguration$Builder;
    .locals 2
    .param p2, "output"    # Lcom/cookpad/puree/outputs/PureeOutput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/cookpad/puree/outputs/PureeOutput;",
            ")",
            "Lcom/cookpad/puree/PureeConfiguration$Builder;"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "logClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/cookpad/puree/PureeConfiguration$Builder;->sourceOutputMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 120
    .local v0, "outputs":Ljava/util/List;, "Ljava/util/List<Lcom/cookpad/puree/outputs/PureeOutput;>;"
    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "outputs":Ljava/util/List;, "Ljava/util/List<Lcom/cookpad/puree/outputs/PureeOutput;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .restart local v0    # "outputs":Ljava/util/List;, "Ljava/util/List<Lcom/cookpad/puree/outputs/PureeOutput;>;"
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, p0, Lcom/cookpad/puree/PureeConfiguration$Builder;->sourceOutputMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-object p0
.end method

.method public source(Ljava/lang/Class;)Lcom/cookpad/puree/Source;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/cookpad/puree/PureeLog;",
            ">;)",
            "Lcom/cookpad/puree/Source;"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "logClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/cookpad/puree/PureeLog;>;"
    new-instance v0, Lcom/cookpad/puree/Source;

    invoke-direct {v0, p0, p1}, Lcom/cookpad/puree/Source;-><init>(Lcom/cookpad/puree/PureeConfiguration$Builder;Ljava/lang/Class;)V

    return-object v0
.end method

.method public storage(Lcom/cookpad/puree/storage/PureeStorage;)Lcom/cookpad/puree/PureeConfiguration$Builder;
    .locals 0
    .param p1, "storage"    # Lcom/cookpad/puree/storage/PureeStorage;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/cookpad/puree/PureeConfiguration$Builder;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    .line 130
    return-object p0
.end method
