.class Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput$2;
.super Ljava/lang/Object;
.source "OSPureeServerOutput.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->emit(Lcom/google/gson/JsonArray;Lcom/cookpad/puree/async/AsyncResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;

.field final synthetic val$result:Lcom/cookpad/puree/async/AsyncResult;


# direct methods
.method constructor <init>(Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;Lcom/cookpad/puree/async/AsyncResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput$2;->this$0:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;

    iput-object p2, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput$2;->val$result:Lcom/cookpad/puree/async/AsyncResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unexpected I/O exception"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput$2;->this$0:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;

    invoke-static {v0}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->access$100(Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput$2;->val$result:Lcom/cookpad/puree/async/AsyncResult;

    invoke-interface {v0}, Lcom/cookpad/puree/async/AsyncResult;->fail()V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput$2;->this$0:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;

    invoke-static {v0}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->access$300(Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;)Lcom/cookpad/puree/storage/PureeStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/cookpad/puree/storage/PureeStorage;->unlock()V

    goto :goto_0
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput$2;->this$0:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;

    invoke-static {v0}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->access$100(Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput$2;->val$result:Lcom/cookpad/puree/async/AsyncResult;

    invoke-interface {v0}, Lcom/cookpad/puree/async/AsyncResult;->fail()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :goto_0
    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 147
    return-void

    .line 136
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput$2;->this$0:Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;

    invoke-static {v0}, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;->access$400(Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput;)Lcom/cookpad/puree/storage/PureeStorage;

    move-result-object v0

    invoke-interface {v0}, Lcom/cookpad/puree/storage/PureeStorage;->unlock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Lokhttp3/Response;->close()V

    .line 146
    throw v0

    .line 140
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/outsystems/plugins/oslogger/engines/puree/OSPureeServerOutput$2;->val$result:Lcom/cookpad/puree/async/AsyncResult;

    invoke-interface {v0}, Lcom/cookpad/puree/async/AsyncResult;->success()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
