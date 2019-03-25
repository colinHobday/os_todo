.class public Lorg/apache/cordova/statusbar/ActivityAssistant;
.super Ljava/lang/Object;
.source "ActivityAssistant.java"


# static fields
.field private static _instance:Lorg/apache/cordova/statusbar/ActivityAssistant;


# instance fields
.field private activity:Landroid/app/Activity;

.field private frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field private layoutListenerApplied:Z

.field private mChildOfContent:Landroid/view/View;

.field private onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private usableHeightPrevious:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/apache/cordova/statusbar/ActivityAssistant$1;

    invoke-direct {v0, p0}, Lorg/apache/cordova/statusbar/ActivityAssistant$1;-><init>(Lorg/apache/cordova/statusbar/ActivityAssistant;)V

    iput-object v0, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->layoutListenerApplied:Z

    .line 51
    return-void
.end method

.method static synthetic access$000(Lorg/apache/cordova/statusbar/ActivityAssistant;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/cordova/statusbar/ActivityAssistant;

    .prologue
    .line 10
    invoke-direct {p0}, Lorg/apache/cordova/statusbar/ActivityAssistant;->possiblyResizeChildOfContent()V

    return-void
.end method

.method private computeUsableHeight()I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 64
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 65
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v6, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 67
    iget-object v6, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_3

    move v0, v4

    .line 68
    .local v0, "fullScreen":Z
    :goto_0
    iget-object v6, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->activity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x4000000

    and-int/2addr v6, v7

    if-nez v6, :cond_0

    iget-object v6, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->activity:Landroid/app/Activity;

    .line 69
    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, 0x500

    if-eqz v6, :cond_4

    :cond_0
    move v2, v4

    .line 71
    .local v2, "translucentStatusBar":Z
    :goto_1
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v5

    .line 73
    .local v3, "usableHeight":I
    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    .line 74
    :cond_1
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 77
    :cond_2
    return v3

    .end local v0    # "fullScreen":Z
    .end local v2    # "translucentStatusBar":Z
    .end local v3    # "usableHeight":I
    :cond_3
    move v0, v5

    .line 67
    goto :goto_0

    .restart local v0    # "fullScreen":Z
    :cond_4
    move v2, v5

    .line 69
    goto :goto_1
.end method

.method public static getInstance()Lorg/apache/cordova/statusbar/ActivityAssistant;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lorg/apache/cordova/statusbar/ActivityAssistant;->_instance:Lorg/apache/cordova/statusbar/ActivityAssistant;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lorg/apache/cordova/statusbar/ActivityAssistant;

    invoke-direct {v0}, Lorg/apache/cordova/statusbar/ActivityAssistant;-><init>()V

    sput-object v0, Lorg/apache/cordova/statusbar/ActivityAssistant;->_instance:Lorg/apache/cordova/statusbar/ActivityAssistant;

    .line 23
    :cond_0
    sget-object v0, Lorg/apache/cordova/statusbar/ActivityAssistant;->_instance:Lorg/apache/cordova/statusbar/ActivityAssistant;

    return-object v0
.end method

.method private possiblyResizeChildOfContent()V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/apache/cordova/statusbar/ActivityAssistant;->computeUsableHeight()I

    move-result v0

    .line 55
    .local v0, "usableHeightNow":I
    iget v1, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->usableHeightPrevious:I

    if-eq v0, v1, :cond_0

    .line 56
    iget-object v1, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 57
    iget-object v1, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->mChildOfContent:Landroid/view/View;

    iget-object v2, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v1, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 59
    iput v0, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->usableHeightPrevious:I

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public applyGlobalLayoutListener()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lorg/apache/cordova/statusbar/ActivityAssistant$2;

    invoke-direct {v0, p0}, Lorg/apache/cordova/statusbar/ActivityAssistant$2;-><init>(Lorg/apache/cordova/statusbar/ActivityAssistant;)V

    iput-object v0, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->layoutListenerApplied:Z

    .line 91
    :cond_0
    iget-boolean v0, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->layoutListenerApplied:Z

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->layoutListenerApplied:Z

    .line 95
    :cond_1
    return-void
.end method

.method public assistActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 28
    iput-object p1, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->activity:Landroid/app/Activity;

    .line 29
    const v1, 0x1020002

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 30
    .local v0, "content":Landroid/widget/FrameLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->mChildOfContent:Landroid/view/View;

    .line 31
    iget-object v1, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v1, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->frameLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 33
    return-void
.end method

.method public removeGlobalLayoutListener()V
    .locals 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->layoutListenerApplied:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->mChildOfContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/statusbar/ActivityAssistant;->layoutListenerApplied:Z

    .line 102
    :cond_0
    return-void
.end method
