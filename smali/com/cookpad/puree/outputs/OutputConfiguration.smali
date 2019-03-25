.class public Lcom/cookpad/puree/outputs/OutputConfiguration;
.super Ljava/lang/Object;
.source "OutputConfiguration.java"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private flushIntervalMillis:I

.field private logsPerRequest:I

.field private maxRetryCount:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const v0, 0x1d4c0

    iput v0, p0, Lcom/cookpad/puree/outputs/OutputConfiguration;->flushIntervalMillis:I

    .line 8
    const/16 v0, 0x64

    iput v0, p0, Lcom/cookpad/puree/outputs/OutputConfiguration;->logsPerRequest:I

    .line 9
    const/4 v0, 0x5

    iput v0, p0, Lcom/cookpad/puree/outputs/OutputConfiguration;->maxRetryCount:I

    .line 12
    return-void
.end method


# virtual methods
.method public getFlushIntervalMillis()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/cookpad/puree/outputs/OutputConfiguration;->flushIntervalMillis:I

    return v0
.end method

.method public getLogsPerRequest()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/cookpad/puree/outputs/OutputConfiguration;->logsPerRequest:I

    return v0
.end method

.method public getMaxRetryCount()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/cookpad/puree/outputs/OutputConfiguration;->maxRetryCount:I

    return v0
.end method

.method public setFlushIntervalMillis(I)V
    .locals 0
    .param p1, "flushIntervalMillis"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/cookpad/puree/outputs/OutputConfiguration;->flushIntervalMillis:I

    .line 20
    return-void
.end method

.method public setLogsPerRequest(I)V
    .locals 0
    .param p1, "logsPerRequest"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/cookpad/puree/outputs/OutputConfiguration;->logsPerRequest:I

    .line 28
    return-void
.end method

.method public setMaxRetryCount(I)V
    .locals 0
    .param p1, "maxRetryCount"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/cookpad/puree/outputs/OutputConfiguration;->maxRetryCount:I

    .line 36
    return-void
.end method
