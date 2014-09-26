.class public Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;
.super Landroid/app/Dialog;
.source "PopupDialog.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPosition:I

.field private mRootView:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->mPosition:I

    .line 22
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 16
    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->mPosition:I

    .line 27
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/baidu/launcher/ui/widget/baidu/theme/Popupview;I)V
    .locals 1
    .parameter "context"
    .parameter "theme"
    .parameter "rootview"
    .parameter "position"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 16
    const/4 v0, 0x5

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->mPosition:I

    .line 32
    iput-object p3, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->mRootView:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    .line 33
    iput p4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->mPosition:I

    .line 34
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private isOutOfBounds(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 69
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 70
    .local v3, y:I
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v1

    .line 71
    .local v1, slop:I
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, decorView:Landroid/view/View;
    neg-int v4, v1

    if-lt v2, v4, :cond_0

    neg-int v4, v1

    if-lt v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    if-gt v2, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    if-le v3, v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->getInstance()Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->setPopupviewHideAniamtion()V

    .line 54
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 42
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->mRootView:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->setContentView(Landroid/view/View;)V

    .line 43
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->mRootView:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->findChildView(I)Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->mRootView:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->setChildViewOnclickListener(Landroid/app/Dialog;)V

    .line 46
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupDialog;->isOutOfBounds(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->getInstance()Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->setPopupviewHideAniamtion()V

    .line 64
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
