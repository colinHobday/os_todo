.class public Lcom/cookpad/puree/internal/BackoffCounter;
.super Ljava/lang/Object;
.source "BackoffCounter.java"


# instance fields
.field private final baseTimeMillis:I

.field private final maxRetryCount:I

.field private retryCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "baseTimeMillis"    # I
    .param p2, "maxRetryCount"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/cookpad/puree/internal/BackoffCounter;->retryCount:I

    .line 20
    iput p1, p0, Lcom/cookpad/puree/internal/BackoffCounter;->baseTimeMillis:I

    .line 21
    iput p2, p0, Lcom/cookpad/puree/internal/BackoffCounter;->maxRetryCount:I

    .line 22
    return-void
.end method


# virtual methods
.method public getMaxRetryCount()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/cookpad/puree/internal/BackoffCounter;->maxRetryCount:I

    return v0
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/cookpad/puree/internal/BackoffCounter;->retryCount:I

    return v0
.end method

.method public incrementRetryCount()V
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/cookpad/puree/internal/BackoffCounter;->retryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/cookpad/puree/internal/BackoffCounter;->retryCount:I

    .line 30
    return-void
.end method

.method public isRemainingRetryCount()Z
    .locals 2

    .prologue
    .line 25
    iget v0, p0, Lcom/cookpad/puree/internal/BackoffCounter;->maxRetryCount:I

    iget v1, p0, Lcom/cookpad/puree/internal/BackoffCounter;->retryCount:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetRetryCount()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/cookpad/puree/internal/BackoffCounter;->retryCount:I

    .line 34
    return-void
.end method

.method public timeInMillis()J
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lcom/cookpad/puree/internal/BackoffCounter;->retryCount:I

    if-nez v0, :cond_0

    .line 38
    iget v0, p0, Lcom/cookpad/puree/internal/BackoffCounter;->baseTimeMillis:I

    int-to-long v0, v0

    .line 40
    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/cookpad/puree/internal/BackoffCounter;->baseTimeMillis:I

    iget v1, p0, Lcom/cookpad/puree/internal/BackoffCounter;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0
.end method
