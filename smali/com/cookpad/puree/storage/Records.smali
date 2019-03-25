.class public Lcom/cookpad/puree/storage/Records;
.super Ljava/util/ArrayList;
.source "Records.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/cookpad/puree/storage/Record;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public getIdsAsString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/cookpad/puree/storage/Records;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    const-string v2, ""

    .line 18
    :goto_0
    return-object v2

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/cookpad/puree/storage/Records;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cookpad/puree/storage/Record;

    .line 16
    .local v1, "record":Lcom/cookpad/puree/storage/Record;
    invoke-virtual {v1}, Lcom/cookpad/puree/storage/Record;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 18
    .end local v1    # "record":Lcom/cookpad/puree/storage/Record;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getJsonLogs()Lcom/google/gson/JsonArray;
    .locals 4

    .prologue
    .line 22
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    .line 23
    .local v0, "jsonLogs":Lcom/google/gson/JsonArray;
    invoke-virtual {p0}, Lcom/cookpad/puree/storage/Records;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cookpad/puree/storage/Record;

    .line 24
    .local v1, "record":Lcom/cookpad/puree/storage/Record;
    invoke-virtual {v1}, Lcom/cookpad/puree/storage/Record;->getJsonLog()Lcom/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 26
    .end local v1    # "record":Lcom/cookpad/puree/storage/Record;
    :cond_0
    return-object v0
.end method
