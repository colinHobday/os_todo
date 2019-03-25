.class public abstract Lcom/cookpad/puree/outputs/PureeOutput;
.super Ljava/lang/Object;
.source "PureeOutput.java"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field protected conf:Lcom/cookpad/puree/outputs/OutputConfiguration;

.field protected filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cookpad/puree/PureeFilter;",
            ">;"
        }
    .end annotation
.end field

.field protected storage:Lcom/cookpad/puree/storage/PureeStorage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cookpad/puree/outputs/PureeOutput;->filters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected applyFilters(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;
    .locals 4
    .param p1, "jsonLog"    # Lcom/google/gson/JsonObject;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 60
    move-object v1, p1

    .line 61
    .local v1, "filteredLog":Lcom/google/gson/JsonObject;
    iget-object v2, p0, Lcom/cookpad/puree/outputs/PureeOutput;->filters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cookpad/puree/PureeFilter;

    .line 62
    .local v0, "filter":Lcom/cookpad/puree/PureeFilter;
    invoke-interface {v0, v1}, Lcom/cookpad/puree/PureeFilter;->apply(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 63
    if-nez v1, :cond_0

    .line 64
    const/4 v2, 0x0

    .line 67
    .end local v0    # "filter":Lcom/cookpad/puree/PureeFilter;
    :goto_0
    return-object v2

    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method public abstract configure(Lcom/cookpad/puree/outputs/OutputConfiguration;)Lcom/cookpad/puree/outputs/OutputConfiguration;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract emit(Lcom/google/gson/JsonObject;)V
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cookpad/puree/PureeFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cookpad/puree/outputs/PureeOutput;->filters:Ljava/util/List;

    return-object v0
.end method

.method public initialize(Lcom/cookpad/puree/PureeLogger;)V
    .locals 2
    .param p1, "logger"    # Lcom/cookpad/puree/PureeLogger;

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/cookpad/puree/PureeLogger;->getStorage()Lcom/cookpad/puree/storage/PureeStorage;

    move-result-object v1

    iput-object v1, p0, Lcom/cookpad/puree/outputs/PureeOutput;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    .line 45
    new-instance v0, Lcom/cookpad/puree/outputs/OutputConfiguration;

    invoke-direct {v0}, Lcom/cookpad/puree/outputs/OutputConfiguration;-><init>()V

    .line 46
    .local v0, "defaultConfiguration":Lcom/cookpad/puree/outputs/OutputConfiguration;
    invoke-virtual {p0, v0}, Lcom/cookpad/puree/outputs/PureeOutput;->configure(Lcom/cookpad/puree/outputs/OutputConfiguration;)Lcom/cookpad/puree/outputs/OutputConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/cookpad/puree/outputs/PureeOutput;->conf:Lcom/cookpad/puree/outputs/OutputConfiguration;

    .line 47
    return-void
.end method

.method public receive(Lcom/google/gson/JsonObject;)V
    .locals 1
    .param p1, "jsonLog"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/cookpad/puree/outputs/PureeOutput;->applyFilters(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 51
    .local v0, "filteredLog":Lcom/google/gson/JsonObject;
    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0, v0}, Lcom/cookpad/puree/outputs/PureeOutput;->emit(Lcom/google/gson/JsonObject;)V

    goto :goto_0
.end method

.method public registerFilter(Lcom/cookpad/puree/PureeFilter;)V
    .locals 1
    .param p1, "filter"    # Lcom/cookpad/puree/PureeFilter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cookpad/puree/outputs/PureeOutput;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public abstract type()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public withFilters(Ljava/util/Collection;)Lcom/cookpad/puree/outputs/PureeOutput;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/cookpad/puree/PureeFilter;",
            ">;)",
            "Lcom/cookpad/puree/outputs/PureeOutput;"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "filters":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/cookpad/puree/PureeFilter;>;"
    iget-object v0, p0, Lcom/cookpad/puree/outputs/PureeOutput;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    return-object p0
.end method

.method public varargs withFilters([Lcom/cookpad/puree/PureeFilter;)Lcom/cookpad/puree/outputs/PureeOutput;
    .locals 1
    .param p1, "filters"    # [Lcom/cookpad/puree/PureeFilter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cookpad/puree/outputs/PureeOutput;->filters:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 30
    return-object p0
.end method
