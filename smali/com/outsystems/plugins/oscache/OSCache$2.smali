.class Lcom/outsystems/plugins/oscache/OSCache$2;
.super Ljava/lang/Object;
.source "OSCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/outsystems/plugins/oscache/OSCache;->switchToVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/outsystems/plugins/oscache/OSCache;

.field final synthetic val$application:Ljava/lang/String;

.field final synthetic val$hostname:Ljava/lang/String;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/outsystems/plugins/oscache/OSCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/outsystems/plugins/oscache/OSCache;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/OSCache$2;->this$0:Lcom/outsystems/plugins/oscache/OSCache;

    iput-object p2, p0, Lcom/outsystems/plugins/oscache/OSCache$2;->val$hostname:Ljava/lang/String;

    iput-object p3, p0, Lcom/outsystems/plugins/oscache/OSCache$2;->val$application:Ljava/lang/String;

    iput-object p4, p0, Lcom/outsystems/plugins/oscache/OSCache$2;->val$version:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache$2;->this$0:Lcom/outsystems/plugins/oscache/OSCache;

    invoke-static {v0}, Lcom/outsystems/plugins/oscache/OSCache;->access$000(Lcom/outsystems/plugins/oscache/OSCache;)Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v0

    const-string v1, "switchCacheVersion: started"

    const-string v2, "OSCache"

    invoke-interface {v0, v1, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache$2;->this$0:Lcom/outsystems/plugins/oscache/OSCache;

    invoke-static {v0}, Lcom/outsystems/plugins/oscache/OSCache;->access$100(Lcom/outsystems/plugins/oscache/OSCache;)Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/outsystems/plugins/oscache/OSCache$2;->val$hostname:Ljava/lang/String;

    iget-object v2, p0, Lcom/outsystems/plugins/oscache/OSCache$2;->val$application:Ljava/lang/String;

    iget-object v3, p0, Lcom/outsystems/plugins/oscache/OSCache$2;->val$version:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;->switchToVersion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-void
.end method
