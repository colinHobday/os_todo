.class public interface abstract Lcom/outsystems/plugins/manifest/interfaces/ManifestParserEngine;
.super Ljava/lang/Object;
.source "ManifestParserEngine.java"


# virtual methods
.method public abstract getManifestInfo(Lorg/json/JSONObject;)Lcom/outsystems/plugins/manifest/types/Manifest;
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getManifestUrl(Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getManifestVersion(Lorg/json/JSONObject;)Ljava/lang/String;
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
