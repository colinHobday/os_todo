.class Lcom/cookpad/puree/outputs/PureeBufferedOutput$1;
.super Ljava/lang/Object;
.source "PureeBufferedOutput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cookpad/puree/outputs/PureeBufferedOutput;->initialize(Lcom/cookpad/puree/PureeLogger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cookpad/puree/outputs/PureeBufferedOutput;


# direct methods
.method constructor <init>(Lcom/cookpad/puree/outputs/PureeBufferedOutput;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cookpad/puree/outputs/PureeBufferedOutput;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput$1;->this$0:Lcom/cookpad/puree/outputs/PureeBufferedOutput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cookpad/puree/outputs/PureeBufferedOutput$1;->this$0:Lcom/cookpad/puree/outputs/PureeBufferedOutput;

    invoke-virtual {v0}, Lcom/cookpad/puree/outputs/PureeBufferedOutput;->flush()V

    .line 35
    return-void
.end method
