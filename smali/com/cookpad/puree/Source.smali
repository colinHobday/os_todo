.class public Lcom/cookpad/puree/Source;
.super Ljava/lang/Object;
.source "Source.java"


# instance fields
.field private builder:Lcom/cookpad/puree/PureeConfiguration$Builder;

.field private filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/cookpad/puree/PureeFilter;",
            ">;"
        }
    .end annotation
.end field

.field private logClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cookpad/puree/PureeConfiguration$Builder;Ljava/lang/Class;)V
    .locals 1
    .param p1, "builder"    # Lcom/cookpad/puree/PureeConfiguration$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cookpad/puree/PureeConfiguration$Builder;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p2, "logClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cookpad/puree/Source;->filters:Ljava/util/List;

    .line 16
    iput-object p1, p0, Lcom/cookpad/puree/Source;->builder:Lcom/cookpad/puree/PureeConfiguration$Builder;

    .line 17
    iput-object p2, p0, Lcom/cookpad/puree/Source;->logClass:Ljava/lang/Class;

    .line 18
    return-void
.end method


# virtual methods
.method public filter(Lcom/cookpad/puree/PureeFilter;)Lcom/cookpad/puree/Source;
    .locals 1
    .param p1, "filter"    # Lcom/cookpad/puree/PureeFilter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cookpad/puree/Source;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-object p0
.end method

.method public varargs filters([Lcom/cookpad/puree/PureeFilter;)Lcom/cookpad/puree/Source;
    .locals 2
    .param p1, "filters"    # [Lcom/cookpad/puree/PureeFilter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/cookpad/puree/Source;->filters:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 39
    return-object p0
.end method

.method public to(Lcom/cookpad/puree/outputs/PureeOutput;)Lcom/cookpad/puree/PureeConfiguration$Builder;
    .locals 3
    .param p1, "output"    # Lcom/cookpad/puree/outputs/PureeOutput;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/cookpad/puree/Source;->builder:Lcom/cookpad/puree/PureeConfiguration$Builder;

    iget-object v1, p0, Lcom/cookpad/puree/Source;->logClass:Ljava/lang/Class;

    iget-object v2, p0, Lcom/cookpad/puree/Source;->filters:Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/cookpad/puree/outputs/PureeOutput;->withFilters(Ljava/util/Collection;)Lcom/cookpad/puree/outputs/PureeOutput;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/cookpad/puree/PureeConfiguration$Builder;->register(Ljava/lang/Class;Lcom/cookpad/puree/outputs/PureeOutput;)Lcom/cookpad/puree/PureeConfiguration$Builder;

    .line 50
    iget-object v0, p0, Lcom/cookpad/puree/Source;->builder:Lcom/cookpad/puree/PureeConfiguration$Builder;

    return-object v0
.end method
