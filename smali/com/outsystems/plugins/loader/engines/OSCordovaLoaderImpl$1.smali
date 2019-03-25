.class Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl$1;
.super Ljava/lang/Object;
.source "OSCordovaLoaderImpl.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;->deploy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;


# direct methods
.method constructor <init>(Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl$1;->this$0:Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 45
    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/outsystems/plugins/loader/engines/OSCordovaLoaderImpl$1;->onReceiveValue(Ljava/lang/Boolean;)V

    return-void
.end method
