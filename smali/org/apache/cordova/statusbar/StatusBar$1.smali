.class Lorg/apache/cordova/statusbar/StatusBar$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/statusbar/StatusBar;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/statusbar/StatusBar;

.field final synthetic val$cordova:Lorg/apache/cordova/CordovaInterface;


# direct methods
.method constructor <init>(Lorg/apache/cordova/statusbar/StatusBar;Lorg/apache/cordova/CordovaInterface;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/statusbar/StatusBar;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    iput-object p2, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0x13

    const/4 v5, 0x0

    .line 64
    iget-object v2, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    iget-object v3, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    invoke-static {v3}, Lorg/apache/cordova/statusbar/StatusBar;->access$100(Lorg/apache/cordova/statusbar/StatusBar;)Lorg/apache/cordova/CordovaPreferences;

    move-result-object v3

    const-string v4, "StatusBarOverlaysWebView"

    invoke-virtual {v3, v4, v5}, Lorg/apache/cordova/CordovaPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/cordova/statusbar/StatusBar;->access$002(Lorg/apache/cordova/statusbar/StatusBar;Z)Z

    .line 66
    invoke-static {}, Lorg/apache/cordova/statusbar/ActivityAssistant;->getInstance()Lorg/apache/cordova/statusbar/ActivityAssistant;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v3}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/cordova/statusbar/ActivityAssistant;->assistActivity(Landroid/app/Activity;)V

    .line 70
    iget-object v2, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->val$cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 71
    .local v1, "window":Landroid/view/Window;
    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 74
    iget-object v2, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    invoke-static {v2}, Lorg/apache/cordova/statusbar/StatusBar;->access$200(Lorg/apache/cordova/statusbar/StatusBar;)Lorg/apache/cordova/CordovaPreferences;

    move-result-object v2

    const-string v3, "IsOutSystemsNow"

    invoke-virtual {v2, v3, v5}, Lorg/apache/cordova/CordovaPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 76
    .local v0, "isOutSystemsNow":Z
    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    invoke-static {v2}, Lorg/apache/cordova/statusbar/StatusBar;->access$000(Lorg/apache/cordova/statusbar/StatusBar;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_3

    .line 78
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 79
    iget-object v2, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    iget-object v3, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    invoke-static {v3}, Lorg/apache/cordova/statusbar/StatusBar;->access$000(Lorg/apache/cordova/statusbar/StatusBar;)Z

    move-result v3

    invoke-static {v2, v3}, Lorg/apache/cordova/statusbar/StatusBar;->access$300(Lorg/apache/cordova/statusbar/StatusBar;Z)V

    .line 88
    :goto_0
    invoke-static {}, Lorg/apache/cordova/statusbar/ActivityAssistant;->getInstance()Lorg/apache/cordova/statusbar/ActivityAssistant;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/cordova/statusbar/ActivityAssistant;->applyGlobalLayoutListener()V

    .line 96
    :goto_1
    return-void

    .line 81
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v2, v6, :cond_2

    .line 82
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 85
    :cond_2
    const-string v2, "StatusBar"

    const-string v3, "Translucent status bar not supported in your Android version"

    invoke-static {v2, v3}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_3
    iget-object v2, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    iget-object v3, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    invoke-static {v3}, Lorg/apache/cordova/statusbar/StatusBar;->access$400(Lorg/apache/cordova/statusbar/StatusBar;)Lorg/apache/cordova/CordovaPreferences;

    move-result-object v3

    const-string v4, "StatusBarBackgroundColor"

    const-string v5, "#000000"

    invoke-virtual {v3, v4, v5}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/cordova/statusbar/StatusBar;->access$500(Lorg/apache/cordova/statusbar/StatusBar;Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    iget-object v3, p0, Lorg/apache/cordova/statusbar/StatusBar$1;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    invoke-static {v3}, Lorg/apache/cordova/statusbar/StatusBar;->access$600(Lorg/apache/cordova/statusbar/StatusBar;)Lorg/apache/cordova/CordovaPreferences;

    move-result-object v3

    const-string v4, "StatusBarStyle"

    const-string v5, "lightcontent"

    invoke-virtual {v3, v4, v5}, Lorg/apache/cordova/CordovaPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/cordova/statusbar/StatusBar;->access$700(Lorg/apache/cordova/statusbar/StatusBar;Ljava/lang/String;)V

    goto :goto_1
.end method
