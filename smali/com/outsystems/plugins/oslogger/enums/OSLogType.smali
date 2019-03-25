.class public final enum Lcom/outsystems/plugins/oslogger/enums/OSLogType;
.super Ljava/lang/Enum;
.source "OSLogType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/outsystems/plugins/oslogger/enums/OSLogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/outsystems/plugins/oslogger/enums/OSLogType;

.field public static final enum DEBUG:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

.field public static final enum ERROR:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

.field public static final enum FATAL:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

.field public static final enum INFO:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

.field public static final enum VERBOSE:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

.field public static final enum WARNING:Lcom/outsystems/plugins/oslogger/enums/OSLogType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    const-string v1, "VERBOSE"

    const-string v2, "trace"

    invoke-direct {v0, v1, v4, v2}, Lcom/outsystems/plugins/oslogger/enums/OSLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->VERBOSE:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    .line 9
    new-instance v0, Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    const-string v1, "DEBUG"

    const-string v2, "trace"

    invoke-direct {v0, v1, v5, v2}, Lcom/outsystems/plugins/oslogger/enums/OSLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->DEBUG:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    .line 10
    new-instance v0, Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    const-string v1, "INFO"

    const-string v2, "general"

    invoke-direct {v0, v1, v6, v2}, Lcom/outsystems/plugins/oslogger/enums/OSLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->INFO:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    .line 11
    new-instance v0, Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    const-string v1, "WARNING"

    const-string v2, "general"

    invoke-direct {v0, v1, v7, v2}, Lcom/outsystems/plugins/oslogger/enums/OSLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->WARNING:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    .line 12
    new-instance v0, Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    const-string v1, "ERROR"

    const-string v2, "error"

    invoke-direct {v0, v1, v8, v2}, Lcom/outsystems/plugins/oslogger/enums/OSLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->ERROR:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    .line 13
    new-instance v0, Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    const-string v1, "FATAL"

    const/4 v2, 0x5

    const-string v3, "error"

    invoke-direct {v0, v1, v2, v3}, Lcom/outsystems/plugins/oslogger/enums/OSLogType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->FATAL:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    sget-object v1, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->VERBOSE:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->DEBUG:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->INFO:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->WARNING:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->ERROR:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->FATAL:Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->$VALUES:[Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->value:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/outsystems/plugins/oslogger/enums/OSLogType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    return-object v0
.end method

.method public static values()[Lcom/outsystems/plugins/oslogger/enums/OSLogType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->$VALUES:[Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    invoke-virtual {v0}, [Lcom/outsystems/plugins/oslogger/enums/OSLogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/outsystems/plugins/oslogger/enums/OSLogType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/enums/OSLogType;->value:Ljava/lang/String;

    return-object v0
.end method
