.class public Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;
.super Ljava/lang/Object;
.source "PopupManger.java"


# static fields
.field private static mInstance:Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;

.field private static mLock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;

.field private mLocation:I

.field private mOffsetLeft:I

.field private mOffsetTop:I

.field private mRootView:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getInstance()Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;
    .locals 2

    .prologue
    .line 29
    sget-object v1, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mInstance:Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mInstance:Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mInstance:Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initParams()V
    .locals 3

    .prologue
    .line 52
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mDialog:Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 53
    .local v1, window:Landroid/view/Window;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 54
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 55
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mOffsetLeft:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 56
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mOffsetTop:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 57
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 58
    return-void
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;III)Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;
    .locals 4
    .parameter "context"
    .parameter "rootview"
    .parameter "location"
    .parameter "offsetTop"
    .parameter "offsetLeft"

    .prologue
    .line 41
    iput p3, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mLocation:I

    .line 42
    iput p5, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mOffsetLeft:I

    .line 43
    iput p4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mOffsetTop:I

    .line 44
    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mRootView:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    .line 45
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mContext:Landroid/content/Context;

    const v2, 0x7f0a003b

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mLocation:I

    invoke-direct {v0, v1, v2, p2, v3}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;-><init>(Landroid/content/Context;ILcom/baidu/launcher/ui/widget/baidu/theme/Popupview;I)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mDialog:Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;

    .line 47
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->initParams()V

    .line 48
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mDialog:Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;

    return-object v0
.end method

.method public getCenterIconFadeInAnimation()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 74
    .local v0, fadeInAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 75
    return-object v0
.end method

.method public getCenterIconFadeOutAnimation()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 80
    .local v0, fadeOutAnimation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 81
    return-object v0
.end method

.method public getChildViewFadeInAnimations()[Landroid/view/animation/Animation;
    .locals 8

    .prologue
    const/high16 v7, 0x3f80

    const/4 v4, 0x0

    const-wide/16 v5, 0x64

    .line 86
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 87
    .local v0, alphaAnimation_1:Landroid/view/animation/AlphaAnimation;
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 88
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 90
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 91
    .local v1, alphaAnimation_2:Landroid/view/animation/AlphaAnimation;
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 92
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 93
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 95
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v4, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 96
    .local v2, alphaAnimation_3:Landroid/view/animation/AlphaAnimation;
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 97
    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 98
    invoke-virtual {v2, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 100
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/animation/Animation;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    return-object v3
.end method

.method public getChildViewFadeOutAnimations()[Landroid/view/animation/Animation;
    .locals 9

    .prologue
    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    const-wide/16 v5, 0x64

    .line 105
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 106
    .local v0, alphaAnimation_1:Landroid/view/animation/AlphaAnimation;
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 107
    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 108
    invoke-virtual {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 110
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 111
    .local v1, alphaAnimation_2:Landroid/view/animation/AlphaAnimation;
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 112
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 113
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 115
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 116
    .local v2, alphaAnimation_3:Landroid/view/animation/AlphaAnimation;
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 117
    invoke-virtual {v2, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 119
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/animation/Animation;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    return-object v3
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mDialog:Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mDialog:Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPopupviewHideAniamtion()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mDialog:Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mDialog:Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mRootView:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mRootView:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mDialog:Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->setChildViewAnimation(ILandroid/app/Dialog;)V

    .line 70
    :cond_0
    return-void
.end method

.method public setPopupviewShowAniamtion()V
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mDialog:Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mRootView:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mRootView:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->mDialog:Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->setChildViewAnimation(ILandroid/app/Dialog;)V

    .line 64
    :cond_0
    return-void
.end method
