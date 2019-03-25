.class public Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeBaseFilter;
.super Ljava/lang/Object;
.source "OSPureeBaseFilter.java"

# interfaces
.implements Lcom/cookpad/puree/PureeFilter;


# instance fields
.field protected logTypeIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;
    .locals 2
    .param p1, "jsonLog"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 20
    const-string v0, "logType"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    iput v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeBaseFilter;->logTypeIndex:I

    .line 22
    iget v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeBaseFilter;->logTypeIndex:I

    invoke-static {}, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->values()[Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown log type"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const/4 p1, 0x0

    .line 27
    .end local p1    # "jsonLog":Lcom/google/gson/JsonObject;
    :cond_0
    return-object p1
.end method
