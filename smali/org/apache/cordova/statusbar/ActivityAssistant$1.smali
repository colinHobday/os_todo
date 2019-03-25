.class Lorg/apache/cordova/statusbar/ActivityAssistant$1;
.super Ljava/lang/Object;
.source "ActivityAssistant.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/statusbar/ActivityAssistant;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/statusbar/ActivityAssistant;


# direct methods
.method constructor <init>(Lorg/apache/cordova/statusbar/ActivityAssistant;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/cordova/statusbar/ActivityAssistant;

    .prologue
    .line 44
    iput-object p1, p0, Lorg/apache/cordova/statusbar/ActivityAssistant$1;->this$0:Lorg/apache/cordova/statusbar/ActivityAssistant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/cordova/statusbar/ActivityAssistant$1;->this$0:Lorg/apache/cordova/statusbar/ActivityAssistant;

    invoke-static {v0}, Lorg/apache/cordova/statusbar/ActivityAssistant;->access$000(Lorg/apache/cordova/statusbar/ActivityAssistant;)V

    .line 48
    return-void
.end method
