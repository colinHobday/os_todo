.class Lcom/cookpad/puree/outputs/PureeBufferedOutput$2;
.super Ljava/lang/Object;
.source "PureeBufferedOutput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cookpad/puree/outputs/PureeBufferedOutput;->receive(Lcom/google/gson/JsonObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cookpad/puree/outputs/PureeBufferedOutput;

.field final synthetic val$jsonLog:Lcom/google/gson/JsonObject;


# direct methods
.method constructor <init>(Lcom/cookpad/puree/outputs/PureeBufferedOutput;Lcom/google/gson/JsonObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cookpad/puree/outputs/PureeBufferedOutput;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput$2;->this$0:Lcom/cookpad/puree/outputs/PureeBufferedOutput;

    iput-object p2, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput$2;->val$jsonLog:Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 44
    iget-object v1, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput$2;->this$0:Lcom/cookpad/puree/outputs/PureeBufferedOutput;

    iget-object v2, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput$2;->val$jsonLog:Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v2}, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->applyFilters(Lcom/google/gson/JsonObject;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 45
    .local v0, "filteredLog":Lcom/google/gson/JsonObject;
    if-eqz v0, :cond_0

    .line 46
    iget-object v1, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput$2;->this$0:Lcom/cookpad/puree/outputs/PureeBufferedOutput;

    iget-object v1, v1, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->storage:Lcom/cookpad/puree/storage/PureeStorage;

    iget-object v2, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput$2;->this$0:Lcom/cookpad/puree/outputs/PureeBufferedOutput;

    invoke-virtual {v2}, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->type()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/cookpad/puree/storage/PureeStorage;->insert(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    .line 48
    :cond_0
    return-void
.end method
