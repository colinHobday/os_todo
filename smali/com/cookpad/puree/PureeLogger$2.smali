.class Lcom/cookpad/puree/PureeLogger$2;
.super Ljava/lang/Object;
.source "PureeLogger.java"

# interfaces
.implements Lcom/cookpad/puree/PureeLogger$Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cookpad/puree/PureeLogger;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cookpad/puree/PureeLogger$Consumer",
        "<",
        "Lcom/cookpad/puree/outputs/PureeOutput;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cookpad/puree/PureeLogger;


# direct methods
.method constructor <init>(Lcom/cookpad/puree/PureeLogger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cookpad/puree/PureeLogger;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/cookpad/puree/PureeLogger$2;->this$0:Lcom/cookpad/puree/PureeLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/cookpad/puree/outputs/PureeOutput;)V
    .locals 0
    .param p1, "value"    # Lcom/cookpad/puree/outputs/PureeOutput;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/cookpad/puree/outputs/PureeOutput;->flush()V

    .line 78
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 74
    check-cast p1, Lcom/cookpad/puree/outputs/PureeOutput;

    invoke-virtual {p0, p1}, Lcom/cookpad/puree/PureeLogger$2;->accept(Lcom/cookpad/puree/outputs/PureeOutput;)V

    return-void
.end method
