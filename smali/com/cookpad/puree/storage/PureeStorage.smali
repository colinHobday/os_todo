.class public interface abstract Lcom/cookpad/puree/storage/PureeStorage;
.super Ljava/lang/Object;
.source "PureeStorage.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract count()I
.end method

.method public abstract delete(Lcom/cookpad/puree/storage/Records;)V
.end method

.method public abstract insert(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
.end method

.method public abstract lock()Z
.end method

.method public abstract select(Ljava/lang/String;I)Lcom/cookpad/puree/storage/Records;
.end method

.method public abstract selectAll()Lcom/cookpad/puree/storage/Records;
.end method

.method public abstract truncateBufferedLogs(I)V
.end method

.method public abstract unlock()V
.end method
