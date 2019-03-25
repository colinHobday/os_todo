.class public final enum Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;
.super Ljava/lang/Enum;
.source "CacheFrameStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

.field public static final enum DOWNLOADING:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

.field public static final enum EMPTY:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

.field public static final enum FAILED:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

.field public static final enum FETCHED:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

.field public static final enum UPGRADE:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    const-string v1, "EMPTY"

    invoke-direct {v0, v1, v2, v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->EMPTY:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    .line 5
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v3, v3}, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->DOWNLOADING:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    .line 6
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    const-string v1, "FETCHED"

    invoke-direct {v0, v1, v4, v4}, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->FETCHED:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    .line 7
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5, v5}, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->FAILED:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    .line 8
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    const-string v1, "UPGRADE"

    invoke-direct {v0, v1, v6, v6}, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->UPGRADE:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->EMPTY:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->DOWNLOADING:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->FETCHED:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->FAILED:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->UPGRADE:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->$VALUES:[Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->value:I

    .line 14
    return-void
.end method

.method public static getStatusForValue(I)Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 21
    packed-switch p0, :pswitch_data_0

    .line 33
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->EMPTY:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    :goto_0
    return-object v0

    .line 23
    :pswitch_0
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->EMPTY:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    goto :goto_0

    .line 25
    :pswitch_1
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->DOWNLOADING:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    goto :goto_0

    .line 27
    :pswitch_2
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->FETCHED:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    goto :goto_0

    .line 29
    :pswitch_3
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->FAILED:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    goto :goto_0

    .line 31
    :pswitch_4
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->UPGRADE:Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    goto :goto_0

    .line 21
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    return-object v0
.end method

.method public static values()[Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->$VALUES:[Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    invoke-virtual {v0}, [Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheFrameStatus;->value:I

    return v0
.end method
