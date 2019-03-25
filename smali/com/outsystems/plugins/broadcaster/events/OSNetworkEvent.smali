.class public Lcom/outsystems/plugins/broadcaster/events/OSNetworkEvent;
.super Ljava/lang/Object;
.source "OSNetworkEvent.java"

# interfaces
.implements Lcom/outsystems/plugins/broadcaster/interfaces/Event;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/outsystems/plugins/broadcaster/events/OSNetworkEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/outsystems/plugins/broadcaster/events/OSNetworkEvent$1;

    invoke-direct {v0}, Lcom/outsystems/plugins/broadcaster/events/OSNetworkEvent$1;-><init>()V

    sput-object v0, Lcom/outsystems/plugins/broadcaster/events/OSNetworkEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Lcom/outsystems/plugins/broadcaster/helpers/ParcelableUtils;->readStringMap(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/outsystems/plugins/broadcaster/events/OSNetworkEvent;->data:Ljava/util/Map;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/outsystems/plugins/broadcaster/events/OSNetworkEvent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/outsystems/plugins/broadcaster/events/OSNetworkEvent$1;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/outsystems/plugins/broadcaster/events/OSNetworkEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/outsystems/plugins/broadcaster/events/OSNetworkEvent;->data:Ljava/util/Map;

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/outsystems/plugins/broadcaster/events/OSNetworkEvent;->data:Ljava/util/Map;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/outsystems/plugins/broadcaster/events/OSNetworkEvent;->data:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/outsystems/plugins/broadcaster/helpers/ParcelableUtils;->write(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 48
    return-void
.end method
