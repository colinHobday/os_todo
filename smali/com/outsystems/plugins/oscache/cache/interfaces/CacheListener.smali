.class public interface abstract Lcom/outsystems/plugins/oscache/cache/interfaces/CacheListener;
.super Ljava/lang/Object;
.source "CacheListener.java"


# virtual methods
.method public abstract fireOnErrorEvent(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract fireOnFinishEvent()V
.end method

.method public abstract fireOnProgressEvent(JJ)V
.end method

.method public abstract getContext()Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract throwException(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract updateStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;)V
    .param p1    # Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
