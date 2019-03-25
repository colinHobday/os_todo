.class Lcom/outsystems/plugins/oscache/cache/types/CacheResources$InvalidResourceException;
.super Ljava/lang/Exception;
.source "CacheResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvalidResourceException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;


# direct methods
.method constructor <init>(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/outsystems/plugins/oscache/cache/types/CacheResources;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 897
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$InvalidResourceException;->this$0:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .line 898
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 899
    return-void
.end method
