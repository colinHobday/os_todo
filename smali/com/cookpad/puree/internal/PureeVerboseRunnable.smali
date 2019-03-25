.class public final Lcom/cookpad/puree/internal/PureeVerboseRunnable;
.super Ljava/lang/Object;
.source "PureeVerboseRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final task:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/cookpad/puree/internal/PureeVerboseRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cookpad/puree/internal/PureeVerboseRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "task"    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/cookpad/puree/internal/PureeVerboseRunnable;->task:Ljava/lang/Runnable;

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/cookpad/puree/internal/PureeVerboseRunnable;->task:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 26
    return-void

    .line 19
    :catch_0
    move-exception v1

    .line 20
    .local v1, "ex":Ljava/lang/RuntimeException;
    sget-object v2, Lcom/cookpad/puree/internal/PureeVerboseRunnable;->TAG:Ljava/lang/String;

    const-string v3, "Puree detected an uncaught runtime exception while executing"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    throw v1

    .line 22
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 23
    .local v0, "error":Ljava/lang/Error;
    sget-object v2, Lcom/cookpad/puree/internal/PureeVerboseRunnable;->TAG:Ljava/lang/String;

    const-string v3, "Puree detected an uncaught error while executing"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    throw v0
.end method
