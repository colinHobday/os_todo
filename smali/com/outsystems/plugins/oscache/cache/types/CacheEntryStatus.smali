.class public final enum Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;
.super Ljava/lang/Enum;
.source "CacheEntryStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

.field public static final enum DOWNLOADING:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

.field public static final enum FAILED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

.field public static final enum FETCHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

.field public static final enum UNCACHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    const-string v1, "UNCACHED"

    invoke-direct {v0, v1, v2, v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->UNCACHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    .line 5
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v3, v3}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->DOWNLOADING:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    .line 6
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    const-string v1, "FETCHED"

    invoke-direct {v0, v1, v4, v4}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->FETCHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    .line 7
    new-instance v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v5, v5}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->FAILED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->UNCACHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->DOWNLOADING:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->FETCHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->FAILED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->$VALUES:[Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->value:I

    .line 13
    return-void
.end method

.method public static getStatusForValue(I)Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 20
    packed-switch p0, :pswitch_data_0

    .line 30
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->UNCACHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    :goto_0
    return-object v0

    .line 22
    :pswitch_0
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->UNCACHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    goto :goto_0

    .line 24
    :pswitch_1
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->DOWNLOADING:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    goto :goto_0

    .line 26
    :pswitch_2
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->FETCHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    goto :goto_0

    .line 28
    :pswitch_3
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->FAILED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    goto :goto_0

    .line 20
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    return-object v0
.end method

.method public static values()[Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->$VALUES:[Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    invoke-virtual {v0}, [Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->value:I

    return v0
.end method
