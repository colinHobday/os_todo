.class Lorg/apache/cordova/statusbar/StatusBar$5;
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

.field final synthetic val$args:Lorg/apache/cordova/CordovaArgs;

.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Lorg/apache/cordova/statusbar/StatusBar;Lorg/apache/cordova/CordovaArgs;Landroid/view/Window;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/statusbar/StatusBar;

    .prologue
    .line 198
    iput-object p1, p0, Lorg/apache/cordova/statusbar/StatusBar$5;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    iput-object p2, p0, Lorg/apache/cordova/statusbar/StatusBar$5;->val$args:Lorg/apache/cordova/CordovaArgs;

    iput-object p3, p0, Lorg/apache/cordova/statusbar/StatusBar$5;->val$window:Landroid/view/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/high16 v5, 0x4000000

    const/16 v4, 0x400

    .line 202
    :try_start_0
    iget-object v1, p0, Lorg/apache/cordova/statusbar/StatusBar$5;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    iget-object v2, p0, Lorg/apache/cordova/statusbar/StatusBar$5;->val$args:Lorg/apache/cordova/CordovaArgs;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/cordova/statusbar/StatusBar;->access$002(Lorg/apache/cordova/statusbar/StatusBar;Z)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 208
    iget-object v1, p0, Lorg/apache/cordova/statusbar/StatusBar$5;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    iget-object v2, p0, Lorg/apache/cordova/statusbar/StatusBar$5;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    invoke-static {v2}, Lorg/apache/cordova/statusbar/StatusBar;->access$000(Lorg/apache/cordova/statusbar/StatusBar;)Z

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/cordova/statusbar/StatusBar;->access$300(Lorg/apache/cordova/statusbar/StatusBar;Z)V

    .line 222
    :goto_1
    iget-object v1, p0, Lorg/apache/cordova/statusbar/StatusBar$5;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    invoke-static {v1}, Lorg/apache/cordova/statusbar/StatusBar;->access$000(Lorg/apache/cordova/statusbar/StatusBar;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-static {}, Lorg/apache/cordova/statusbar/ActivityAssistant;->getInstance()Lorg/apache/cordova/statusbar/ActivityAssistant;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/cordova/statusbar/ActivityAssistant;->applyGlobalLayoutListener()V

    .line 225
    :cond_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "ignore":Lorg/json/JSONException;
    const-string v1, "StatusBar"

    const-string v2, "Invalid boolean argument, please use true or false values"

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 209
    .end local v0    # "ignore":Lorg/json/JSONException;
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_3

    .line 210
    iget-object v1, p0, Lorg/apache/cordova/statusbar/StatusBar$5;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    invoke-static {v1}, Lorg/apache/cordova/statusbar/StatusBar;->access$000(Lorg/apache/cordova/statusbar/StatusBar;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    iget-object v1, p0, Lorg/apache/cordova/statusbar/StatusBar$5;->val$window:Landroid/view/Window;

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 212
    iget-object v1, p0, Lorg/apache/cordova/statusbar/StatusBar$5;->val$window:Landroid/view/Window;

    invoke-virtual {v1, v5}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 214
    :cond_2
    iget-object v1, p0, Lorg/apache/cordova/statusbar/StatusBar$5;->val$window:Landroid/view/Window;

    invoke-virtual {v1, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 215
    iget-object v1, p0, Lorg/apache/cordova/statusbar/StatusBar$5;->val$window:Landroid/view/Window;

    invoke-virtual {v1, v5}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1

    .line 219
    :cond_3
    const-string v1, "StatusBar"

    const-string v2, "Translucent status bar not supported in your Android version"

    invoke-static {v1, v2}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
