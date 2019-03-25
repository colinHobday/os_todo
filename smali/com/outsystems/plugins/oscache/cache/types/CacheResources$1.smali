.class Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;
.super Ljava/lang/Object;
.source "CacheResources.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->downloadResourceAsync(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

.field final synthetic val$checksumValidation:Z

.field final synthetic val$resource:Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;


# direct methods
.method constructor <init>(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->this$0:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    iput-object p2, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->val$resource:Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    iput-boolean p3, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->val$checksumValidation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 4
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 599
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Canceled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->this$0:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-static {v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->access$000(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;)Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceled download for resource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->val$resource:Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    invoke-virtual {v2}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OSCache"

    invoke-interface {v0, v1, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->val$resource:Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    sget-object v1, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->UNCACHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    invoke-virtual {v0, v1}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->setStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V

    .line 606
    :goto_0
    return-void

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->this$0:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    iget-object v1, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->val$resource:Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->val$checksumValidation:Z

    invoke-static {v0, v1, v2, v3}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->access$100(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 10
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;

    .prologue
    .line 610
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v6

    if-nez v6, :cond_1

    .line 611
    iget-object v6, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->this$0:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->val$resource:Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->val$checksumValidation:Z

    invoke-static {v6, v7, v8, v9}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->access$100(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Ljava/lang/String;Z)V

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    const/4 v4, 0x0

    .line 617
    .local v4, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v1

    .line 619
    .local v1, "data":[B
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->this$0:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-static {v7}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->access$200(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->val$resource:Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    invoke-virtual {v7}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 620
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 622
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v5, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v5, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 624
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 626
    invoke-virtual {p2}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v6

    const-string v7, "Content-Type"

    invoke-virtual {v6, v7}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "contentType":Ljava/lang/String;
    iget-object v6, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->this$0:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->val$resource:Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    invoke-virtual {v6, v7, v0}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->processContentType(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Ljava/lang/String;)V

    .line 629
    iget-object v6, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->this$0:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->val$resource:Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    iget-boolean v8, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->val$checksumValidation:Z

    invoke-virtual {v6, v7, v3, v8}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->validateDownloadedResourceFile(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Ljava/io/File;Z)V

    .line 630
    iget-object v6, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->this$0:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->val$resource:Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    sget-object v8, Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;->FETCHED:Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;

    invoke-virtual {v6, v7, v8}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->updateResourceStatus(Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Lcom/outsystems/plugins/oscache/cache/types/CacheEntryStatus;)V

    .line 631
    iget-object v6, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->this$0:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-static {v6}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->access$000(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;)Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Downloaded resource "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->val$resource:Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    invoke-virtual {v8}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OSCache"

    invoke-interface {v6, v7, v8}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 639
    if-eqz v5, :cond_0

    .line 641
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 643
    :catch_0
    move-exception v2

    .line 644
    .local v2, "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->this$0:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-static {v6}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->access$000(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;)Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v6

    const-string v7, "Could not close FileOutputStream while trying to write the downloaded resource"

    const-string v8, "OSCache"

    invoke-interface {v6, v7, v8, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 633
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 635
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    iget-object v6, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->this$0:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-static {v6}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->access$000(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;)Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to store downloaded resource "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->val$resource:Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    invoke-virtual {v8}, Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "OSCache"

    invoke-interface {v6, v7, v8, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 636
    iget-object v6, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->this$0:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->val$resource:Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->val$checksumValidation:Z

    invoke-static {v6, v7, v8, v9}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->access$100(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;Lcom/outsystems/plugins/oscache/cache/types/CacheEntry;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 639
    if-eqz v4, :cond_0

    .line 641
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 643
    :catch_2
    move-exception v2

    .line 644
    .local v2, "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->this$0:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-static {v6}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->access$000(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;)Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v6

    const-string v7, "Could not close FileOutputStream while trying to write the downloaded resource"

    const-string v8, "OSCache"

    invoke-interface {v6, v7, v8, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 639
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v4, :cond_2

    .line 641
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 647
    :cond_2
    :goto_3
    throw v6

    .line 643
    :catch_3
    move-exception v2

    .line 644
    .restart local v2    # "e":Ljava/io/IOException;
    iget-object v7, p0, Lcom/outsystems/plugins/oscache/cache/types/CacheResources$1;->this$0:Lcom/outsystems/plugins/oscache/cache/types/CacheResources;

    invoke-static {v7}, Lcom/outsystems/plugins/oscache/cache/types/CacheResources;->access$000(Lcom/outsystems/plugins/oscache/cache/types/CacheResources;)Lcom/outsystems/plugins/oslogger/interfaces/Logger;

    move-result-object v7

    const-string v8, "Could not close FileOutputStream while trying to write the downloaded resource"

    const-string v9, "OSCache"

    invoke-interface {v7, v8, v9, v2}, Lcom/outsystems/plugins/oslogger/interfaces/Logger;->logError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 639
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v1    # "data":[B
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 633
    .end local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
