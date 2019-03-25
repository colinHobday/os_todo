.class Lcom/outsystems/plugins/oscache/OSCache$3;
.super Ljava/lang/Object;
.source "OSCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/outsystems/plugins/oscache/OSCache;->deviceready(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/outsystems/plugins/oscache/OSCache;

.field final synthetic val$application:Ljava/lang/String;

.field final synthetic val$hostname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/outsystems/plugins/oscache/OSCache;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/outsystems/plugins/oscache/OSCache;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/OSCache$3;->this$0:Lcom/outsystems/plugins/oscache/OSCache;

    iput-object p2, p0, Lcom/outsystems/plugins/oscache/OSCache$3;->val$hostname:Ljava/lang/String;

    iput-object p3, p0, Lcom/outsystems/plugins/oscache/OSCache$3;->val$application:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache$3;->this$0:Lcom/outsystems/plugins/oscache/OSCache;

    invoke-static {v0}, Lcom/outsystems/plugins/oscache/OSCache;->access$100(Lcom/outsystems/plugins/oscache/OSCache;)Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/outsystems/plugins/oscache/OSCache$3;->val$hostname:Ljava/lang/String;

    iget-object v2, p0, Lcom/outsystems/plugins/oscache/OSCache$3;->val$application:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;->setCurrentApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method
