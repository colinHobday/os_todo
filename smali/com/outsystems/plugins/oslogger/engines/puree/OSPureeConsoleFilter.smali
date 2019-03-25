.class public Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeConsoleFilter;
.super Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeBaseFilter;
.source "OSPureeConsoleFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeBaseFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;
    .locals 1
    .param p1, "jsonLog"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeBaseFilter;->apply(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v0

    return-object v0
.end method
