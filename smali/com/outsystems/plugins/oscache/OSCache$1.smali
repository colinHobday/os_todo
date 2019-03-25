.class Lcom/outsystems/plugins/oscache/OSCache$1;
.super Ljava/lang/Object;
.source "OSCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/outsystems/plugins/oscache/OSCache;->startCaching(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/outsystems/plugins/oscache/OSCache;

.field final synthetic val$application:Ljava/lang/String;

.field final synthetic val$hostname:Ljava/lang/String;

.field final synthetic val$noCache:Ljava/util/Map;

.field final synthetic val$options:Ljava/util/Map;

.field final synthetic val$resources:Ljava/util/List;

.field final synthetic val$urls:Ljava/util/Map;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/outsystems/plugins/oscache/OSCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$0"    # Lcom/outsystems/plugins/oscache/OSCache;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/OSCache$1;->this$0:Lcom/outsystems/plugins/oscache/OSCache;

    iput-object p2, p0, Lcom/outsystems/plugins/oscache/OSCache$1;->val$hostname:Ljava/lang/String;

    iput-object p3, p0, Lcom/outsystems/plugins/oscache/OSCache$1;->val$application:Ljava/lang/String;

    iput-object p4, p0, Lcom/outsystems/plugins/oscache/OSCache$1;->val$version:Ljava/lang/String;

    iput-object p5, p0, Lcom/outsystems/plugins/oscache/OSCache$1;->val$resources:Ljava/util/List;

    iput-object p6, p0, Lcom/outsystems/plugins/oscache/OSCache$1;->val$urls:Ljava/util/Map;

    iput-object p7, p0, Lcom/outsystems/plugins/oscache/OSCache$1;->val$noCache:Ljava/util/Map;

    iput-object p8, p0, Lcom/outsystems/plugins/oscache/OSCache$1;->val$options:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 199
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache$1;->this$0:Lcom/outsystems/plugins/oscache/OSCache;

    invoke-static {v0}, Lcom/outsystems/plugins/oscache/OSCache;->access$000(Lcom/outsystems/plugins/oscache/OSCache;)Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v0

    const-string v1, "startCaching: started"

    const-string v2, "OSCache"

    invoke-interface {v0, v1, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/OSCache$1;->this$0:Lcom/outsystems/plugins/oscache/OSCache;

    invoke-static {v0}, Lcom/outsystems/plugins/oscache/OSCache;->access$100(Lcom/outsystems/plugins/oscache/OSCache;)Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/outsystems/plugins/oscache/OSCache$1;->val$hostname:Ljava/lang/String;

    iget-object v2, p0, Lcom/outsystems/plugins/oscache/OSCache$1;->val$application:Ljava/lang/String;

    iget-object v3, p0, Lcom/outsystems/plugins/oscache/OSCache$1;->val$version:Ljava/lang/String;

    iget-object v4, p0, Lcom/outsystems/plugins/oscache/OSCache$1;->val$resources:Ljava/util/List;

    iget-object v5, p0, Lcom/outsystems/plugins/oscache/OSCache$1;->val$urls:Ljava/util/Map;

    iget-object v6, p0, Lcom/outsystems/plugins/oscache/OSCache$1;->val$noCache:Ljava/util/Map;

    iget-object v7, p0, Lcom/outsystems/plugins/oscache/OSCache$1;->val$options:Ljava/util/Map;

    invoke-interface/range {v0 .. v7}, Lcom/outsystems/plugins/oscache/cache/interfaces/CacheEngine;->startCaching(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 201
    return-void
.end method
