.class Lcom/outsystems/plugins/filechooser/FileChooser$1;
.super Ljava/lang/Object;
.source "FileChooser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/outsystems/plugins/filechooser/FileChooser;->execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/outsystems/plugins/filechooser/FileChooser;

.field final synthetic val$args:Lorg/apache/cordova/CordovaArgs;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/outsystems/plugins/filechooser/FileChooser;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/outsystems/plugins/filechooser/FileChooser;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/outsystems/plugins/filechooser/FileChooser$1;->this$0:Lcom/outsystems/plugins/filechooser/FileChooser;

    iput-object p2, p0, Lcom/outsystems/plugins/filechooser/FileChooser$1;->val$args:Lorg/apache/cordova/CordovaArgs;

    iput-object p3, p0, Lcom/outsystems/plugins/filechooser/FileChooser$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/outsystems/plugins/filechooser/FileChooser$1;->this$0:Lcom/outsystems/plugins/filechooser/FileChooser;

    iget-object v1, p0, Lcom/outsystems/plugins/filechooser/FileChooser$1;->val$args:Lorg/apache/cordova/CordovaArgs;

    iget-object v2, p0, Lcom/outsystems/plugins/filechooser/FileChooser$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const/16 v3, 0x7d1

    invoke-virtual {v0, v1, v2, v3}, Lcom/outsystems/plugins/filechooser/FileChooser;->chooseFile(Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;I)V

    .line 58
    return-void
.end method
