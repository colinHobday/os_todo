.class Lcom/cookpad/puree/outputs/PureeBufferedOutput$4;
.super Ljava/lang/Object;
.source "PureeBufferedOutput.java"

# interfaces
.implements Lcom/cookpad/puree/async/AsyncResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cookpad/puree/outputs/PureeBufferedOutput;->flushSync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cookpad/puree/outputs/PureeBufferedOutput;

.field final synthetic val$records:Lcom/cookpad/puree/storage/Records;


# direct methods
.method constructor <init>(Lcom/cookpad/puree/outputs/PureeBufferedOutput;Lcom/cookpad/puree/storage/Records;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cookpad/puree/outputs/PureeBufferedOutput;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput$4;->this$0:Lcom/cookpad/puree/outputs/PureeBufferedOutput;

    iput-object p2, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput$4;->val$records:Lcom/cookpad/puree/storage/Records;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput$4;->this$0:Lcom/cookpad/puree/outputs/PureeBufferedOutput;

    iget-object v0, v0, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->flushTask:Lcom/cookpad/puree/internal/RetryableTaskRunner;

    invoke-virtual {v0}, Lcom/cookpad/puree/internal/RetryableTaskRunner;->retryLater()V

    .line 100
    iget-object v0, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput$4;->this$0:Lcom/cookpad/puree/outputs/PureeBufferedOutput;

    iget-object v0, v0, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    invoke-interface {v0}, Lcom/cookpad/puree/storage/PureeStorage;->unlock()V

    .line 101
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput$4;->this$0:Lcom/cookpad/puree/outputs/PureeBufferedOutput;

    iget-object v0, v0, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    iget-object v1, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput$4;->val$records:Lcom/cookpad/puree/storage/Records;

    invoke-interface {v0, v1}, Lcom/cookpad/puree/storage/PureeStorage;->delete(Lcom/cookpad/puree/storage/Records;)V

    .line 85
    iget-object v0, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput$4;->this$0:Lcom/cookpad/puree/outputs/PureeBufferedOutput;

    invoke-static {v0}, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->access$000(Lcom/cookpad/puree/outputs/PureeBufferedOutput;)Lcom/cookpad/puree/storage/Records;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cookpad/puree/storage/Records;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput$4;->this$0:Lcom/cookpad/puree/outputs/PureeBufferedOutput;

    iget-object v0, v0, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->flushTask:Lcom/cookpad/puree/internal/RetryableTaskRunner;

    invoke-virtual {v0}, Lcom/cookpad/puree/internal/RetryableTaskRunner;->reset()V

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput$4;->this$0:Lcom/cookpad/puree/outputs/PureeBufferedOutput;

    iget-object v0, v0, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    invoke-interface {v0}, Lcom/cookpad/puree/storage/PureeStorage;->unlock()V

    .line 95
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput$4;->this$0:Lcom/cookpad/puree/outputs/PureeBufferedOutput;

    iget-object v0, v0, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->flushTask:Lcom/cookpad/puree/internal/RetryableTaskRunner;

    invoke-virtual {v0}, Lcom/cookpad/puree/internal/RetryableTaskRunner;->retryLater()V

    goto :goto_0
.end method
