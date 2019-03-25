.class Lorg/apache/cordova/statusbar/StatusBar$3;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/statusbar/StatusBar;->execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/statusbar/StatusBar;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Lorg/apache/cordova/statusbar/StatusBar;Landroid/view/Window;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/statusbar/StatusBar;

    .prologue
    .line 152
    iput-object p1, p0, Lorg/apache/cordova/statusbar/StatusBar$3;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    iput-object p2, p0, Lorg/apache/cordova/statusbar/StatusBar$3;->val$window:Landroid/view/Window;

    iput-object p3, p0, Lorg/apache/cordova/statusbar/StatusBar$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 157
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 158
    iget-object v1, p0, Lorg/apache/cordova/statusbar/StatusBar$3;->val$window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x400

    or-int/lit8 v0, v1, 0x4

    .line 162
    .local v0, "uiOptions":I
    iget-object v1, p0, Lorg/apache/cordova/statusbar/StatusBar$3;->val$window:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 167
    .end local v0    # "uiOptions":I
    :cond_0
    iget-object v1, p0, Lorg/apache/cordova/statusbar/StatusBar$3;->val$window:Landroid/view/Window;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 170
    iget-object v1, p0, Lorg/apache/cordova/statusbar/StatusBar$3;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v2, Lorg/apache/cordova/PluginResult;

    sget-object v3, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v2, v3}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    invoke-virtual {v1, v2}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    .line 171
    return-void
.end method
