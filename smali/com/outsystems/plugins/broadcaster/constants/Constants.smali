.class public final Lcom/outsystems/plugins/broadcaster/constants/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final NETWORK_EVENT:Ljava/lang/String; = "networkEvent"

.field public static final NETWORK_OFFLINE:Ljava/lang/String; = "networkOffline"

.field public static final NETWORK_ONLINE:Ljava/lang/String; = "networkOnline"

.field public static final NETWORK_STATUS:Ljava/lang/String; = "networkStatus"

.field public static final NETWORK_TYPE:Ljava/lang/String; = "networkType"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
