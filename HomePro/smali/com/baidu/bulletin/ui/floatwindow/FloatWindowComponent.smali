.class public Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;
.super Ljava/lang/Object;
.source "FloatWindowComponent.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/IViewComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;
    }
.end annotation


# static fields
.field private static sFloatWindowComponent:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFloatWindowImageView:Landroid/widget/ImageView;

.field private mIsShow:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mFloatWindowImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;)Landroid/view/WindowManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    sget-object v0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->sFloatWindowComponent:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->sFloatWindowComponent:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;

    .line 33
    :cond_0
    sget-object v0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->sFloatWindowComponent:Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mIsShow:Z

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mIsShow:Z

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mFloatWindowImageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 132
    :cond_0
    return-void
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mIsShow:Z

    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "onClickListener"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 53
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 61
    iget-boolean v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mIsShow:Z

    if-eqz v2, :cond_0

    .line 123
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mFloatWindowImageView:Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 67
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030044

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mFloatWindowImageView:Landroid/widget/ImageView;

    .line 68
    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mFloatWindowImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;

    invoke-direct {v3, p0}, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent$MoveOnTouchListener;-><init>(Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 69
    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mFloatWindowImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .end local v0           #layoutInflater:Landroid/view/LayoutInflater;
    :cond_1
    iput-boolean v5, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mIsShow:Z

    .line 86
    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mWindowManager:Landroid/view/WindowManager;

    .line 88
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 94
    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 96
    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 99
    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x28

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 109
    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 110
    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 112
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 114
    .local v1, size:Landroid/graphics/Point;
    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 119
    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/graphics/Point;->x:I

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 120
    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 122
    iget-object v2, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mFloatWindowImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/baidu/bulletin/ui/floatwindow/FloatWindowComponent;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
