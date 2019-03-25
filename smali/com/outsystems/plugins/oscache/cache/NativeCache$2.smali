.class Lcom/outsystems/plugins/oscache/cache/NativeCache$2;
.super Ljava/lang/Object;
.source "NativeCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/outsystems/plugins/oscache/cache/NativeCache;->clearUnusedContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

.field final synthetic val$resourcesToDelete:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/outsystems/plugins/oscache/cache/NativeCache;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/outsystems/plugins/oscache/cache/NativeCache;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$2;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    iput-object p2, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$2;->val$resourcesToDelete:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$2;->this$0:Lcom/outsystems/plugins/oscache/cache/NativeCache;

    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/NativeCache$2;->val$resourcesToDelete:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/outsystems/plugins/oscache/cache/NativeCache;->access$300(Lcom/outsystems/plugins/oscache/cache/NativeCache;Ljava/util/List;)V

    .line 563
    return-void
.end method
