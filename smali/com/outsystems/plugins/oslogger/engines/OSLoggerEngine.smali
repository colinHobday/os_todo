.class public interface abstract Lcom/outsystems/plugins/oslogger/engines/OSLoggerEngine;
.super Ljava/lang/Object;
.source "OSLoggerEngine.java"


# virtual methods
.method public abstract processLog(Ljava/lang/String;Ljava/lang/String;Lcom/outsystems/plugins/oslogger/enums/OSLogType;Ljava/util/Map;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/outsystems/plugins/oslogger/enums/OSLogType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/outsystems/plugins/oslogger/enums/OSLogType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract setSSLSecurity(Lokhttp3/CertificatePinner;)V
    .param p1    # Lokhttp3/CertificatePinner;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
