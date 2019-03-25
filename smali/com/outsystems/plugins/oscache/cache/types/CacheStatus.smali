.class public final enum Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;
.super Ljava/lang/Enum;
.source "CacheStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

.field public static final enum CHECKING:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

.field public static final enum DOWNLOADING:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

.field public static final enum IDLE:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

.field public static final enum OBSOLETE:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

.field public static final enum UNCACHED:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

.field public static final enum UPDATEREADY:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    const-string v1, "UNCACHED"

    invoke-direct {v0, v1, v4, v4}, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->UNCACHED:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    .line 5
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v5, v5}, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->IDLE:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    .line 6
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    const-string v1, "CHECKING"

    invoke-direct {v0, v1, v6, v6}, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->CHECKING:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    .line 7
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v7, v7}, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->DOWNLOADING:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    .line 8
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    const-string v1, "UPDATEREADY"

    invoke-direct {v0, v1, v8, v8}, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->UPDATEREADY:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    .line 9
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    const-string v1, "OBSOLETE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->OBSOLETE:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->UNCACHED:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->IDLE:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->CHECKING:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->DOWNLOADING:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->UPDATEREADY:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->OBSOLETE:Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->$VALUES:[Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->value:I

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    return-object v0
.end method

.method public static values()[Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->$VALUES:[Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    invoke-virtual {v0}, [Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheStatus;->value:I

    return v0
.end method
