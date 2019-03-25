.class public Lcom/cookpad/puree/Puree$NotInitializedException;
.super Ljava/lang/IllegalStateException;
.source "Puree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cookpad/puree/Puree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotInitializedException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    return-void
.end method
