.class synthetic Lcom/outsystems/plugins/oscache/cache/types/CacheResources$2;
.super Ljava/lang/Object;
.source "CacheResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$outsystems$plugins$oscache$cache$types$CacheEntryStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 480
    invoke-static {}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->values()[Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$2;->$SwitchMap$com$outsystems$plugins$oscache$cache$types$CacheEntryStatus:[I

    :try_start_0
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$2;->$SwitchMap$com$outsystems$plugins$oscache$cache$types$CacheEntryStatus:[I

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->DOWNLOADING:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$2;->$SwitchMap$com$outsystems$plugins$oscache$cache$types$CacheEntryStatus:[I

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->FETCHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    invoke-virtual {v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
