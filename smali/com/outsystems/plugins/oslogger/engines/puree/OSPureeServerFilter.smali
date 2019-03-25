.class public Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerFilter;
.super Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeBaseFilter;
.source "OSPureeServerFilter.java"


# instance fields
.field private final sdf:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeBaseFilter;-><init>()V

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerFilter;->sdf:Ljava/text/SimpleDateFormat;

    .line 24
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerFilter;->sdf:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 25
    return-void
.end method


# virtual methods
.method public apply(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;
    .locals 4
    .param p1, "jsonLog"    # Lcom/google/gson/JsonObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-super {p0, p1}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeBaseFilter;->apply(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object p1

    .line 31
    if-nez p1, :cond_0

    move-object p1, v1

    .line 45
    .end local p1    # "jsonLog":Lcom/google/gson/JsonObject;
    :goto_0
    return-object p1

    .line 35
    .restart local p1    # "jsonLog":Lcom/google/gson/JsonObject;
    :cond_0
    invoke-static {}, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->values()[Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    move-result-object v2

    iget v3, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerFilter;->logTypeIndex:I

    aget-object v0, v2, v3

    .line 37
    .local v0, "logType":Lcom/outsystems/plugins/oslogger/enums/OSLogType;
    sget-object v2, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->INFO:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->WARNING:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->ERROR:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->FATAL:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    if-eq v0, v2, :cond_1

    move-object p1, v1

    .line 38
    goto :goto_0

    .line 41
    :cond_1
    const-string v1, "instant"

    iget-object v2, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerFilter;->sdf:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "logType"

    invoke-virtual {v0}, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
