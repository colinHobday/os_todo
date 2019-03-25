.class public Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLog;
.super Ljava/lang/Object;
.source "OSPureeLog.java"

# interfaces
.implements Lcom/cookpad/puree/PureeLog;


# static fields
.field public static final FIELD_EXTRA:Ljava/lang/String; = "extra"

.field public static final FIELD_INSTANT:Ljava/lang/String; = "instant"

.field public static final FIELD_LOG_TYPE:Ljava/lang/String; = "logType"

.field public static final FIELD_MESSAGE:Ljava/lang/String; = "message"

.field public static final FIELD_MODULE_NAME:Ljava/lang/String; = "moduleName"

.field public static final FIELD_STACK:Ljava/lang/String; = "stack"


# instance fields
.field private extra:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extra"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private logType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logType"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private moduleName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "moduleName"
    .end annotation
.end field

.field private stack:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stack"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "moduleName"    # Ljava/lang/String;
    .param p3, "logType"    # I
    .param p5, "stack"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p4, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLog;->message:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLog;->moduleName:Ljava/lang/String;

    .line 35
    iput p3, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLog;->logType:I

    .line 36
    iput-object p4, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLog;->extra:Ljava/util/Map;

    .line 37
    iput-object p5, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLog;->stack:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method getExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLog;->extra:Ljava/util/Map;

    return-object v0
.end method

.method getLogType()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLog;->logType:I

    return v0
.end method

.method getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLog;->message:Ljava/lang/String;

    return-object v0
.end method

.method getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLog;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method getStack()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeLog;->stack:Ljava/lang/String;

    return-object v0
.end method
