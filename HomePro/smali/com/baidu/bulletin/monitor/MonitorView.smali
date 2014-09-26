.class public Lcom/baidu/bulletin/monitor/MonitorView;
.super Landroid/widget/LinearLayout;
.source "MonitorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/monitor/MonitorView$BulletinTriggerListener;
    }
.end annotation


# static fields
.field private static final TOUCH_SLOP:I = 0x14


# instance fields
.field private isMoved:Z

.field private mContext:Landroid/content/Context;

.field private mLastMotionRawX:I

.field private mLastMotionRawY:I

.field private mLastMotionX:I

.field private mLastMotionY:I

.field private mListener:Lcom/baidu/bulletin/monitor/MonitorView$BulletinTriggerListener;

.field private mOriginViewX:I

.field private mOriginViewY:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/monitor/MonitorView;->mWindowManager:Landroid/view/WindowManager;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/monitor/MonitorView;->isMoved:Z

    .line 27
    invoke-direct {p0}, Lcom/baidu/bulletin/monitor/MonitorView;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/monitor/MonitorView;->mWindowManager:Landroid/view/WindowManager;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/monitor/MonitorView;->isMoved:Z

    .line 32
    iput-object p1, p0, Lcom/baidu/bulletin/monitor/MonitorView;->mContext:Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Lcom/baidu/bulletin/monitor/MonitorView;->init()V

    .line 34
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "ev"

    .prologue
    const/16 v6, 0x14

    const/4 v5, 0x1

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v0, v4

    .line 73
    .local v0, rawx:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v1, v4

    .line 74
    .local v1, rawy:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 75
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 76
    .local v3, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iput v0, p0, Lcom/baidu/bulletin/monitor/MonitorView;->mLastMotionRawX:I

    .line 79
    iput v1, p0, Lcom/baidu/bulletin/monitor/MonitorView;->mLastMotionRawY:I

    .line 80
    iput v2, p0, Lcom/baidu/bulletin/monitor/MonitorView;->mLastMotionX:I

    .line 81
    iput v3, p0, Lcom/baidu/bulletin/monitor/MonitorView;->mLastMotionY:I

    .line 82
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/baidu/bulletin/monitor/MonitorView;->isMoved:Z

    goto :goto_0

    .line 85
    :pswitch_1
    iget v4, p0, Lcom/baidu/bulletin/monitor/MonitorView;->mLastMotionX:I

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v6, :cond_0

    iget v4, p0, Lcom/baidu/bulletin/monitor/MonitorView;->mLastMotionY:I

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v6, :cond_1

    .line 87
    :cond_0
    iput-boolean v5, p0, Lcom/baidu/bulletin/monitor/MonitorView;->isMoved:Z

    .line 89
    :cond_1
    invoke-direct {p0, v0, v1, v5}, Lcom/baidu/bulletin/monitor/MonitorView;->movePosition(IIZ)V

    goto :goto_0

    .line 93
    :pswitch_2
    iget-boolean v4, p0, Lcom/baidu/bulletin/monitor/MonitorView;->isMoved:Z

    if-nez v4, :cond_2

    .line 94
    invoke-direct {p0}, Lcom/baidu/bulletin/monitor/MonitorView;->startBulletin()V

    goto :goto_0

    .line 96
    :cond_2
    iget v4, p0, Lcom/baidu/bulletin/monitor/MonitorView;->mOriginViewX:I

    invoke-direct {p0, v4, v1, v5}, Lcom/baidu/bulletin/monitor/MonitorView;->movePosition(IIZ)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/baidu/bulletin/monitor/MonitorView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/baidu/bulletin/monitor/MonitorView;->mWindowManager:Landroid/view/WindowManager;

    .line 47
    return-void
.end method

.method private movePosition(IIZ)V
    .locals 2
    .parameter "deltaX"
    .parameter "deltaY"
    .parameter "updatePosition"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/baidu/bulletin/monitor/MonitorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 63
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-eqz p3, :cond_0

    .line 64
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 65
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 67
    iget-object v1, p0, Lcom/baidu/bulletin/monitor/MonitorView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    :cond_0
    return-void
.end method

.method private startBulletin()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/baidu/bulletin/monitor/MonitorView;->mListener:Lcom/baidu/bulletin/monitor/MonitorView$BulletinTriggerListener;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/baidu/bulletin/monitor/MonitorView;->mListener:Lcom/baidu/bulletin/monitor/MonitorView$BulletinTriggerListener;

    invoke-interface {v0}, Lcom/baidu/bulletin/monitor/MonitorView$BulletinTriggerListener;->onClick()V

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method public getLeftTopX()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/baidu/bulletin/monitor/MonitorView;->mOriginViewX:I

    return v0
.end method

.method public getLeftTopY()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/baidu/bulletin/monitor/MonitorView;->mOriginViewY:I

    return v0
.end method

.method public getListener()Lcom/baidu/bulletin/monitor/MonitorView$BulletinTriggerListener;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/baidu/bulletin/monitor/MonitorView;->mListener:Lcom/baidu/bulletin/monitor/MonitorView$BulletinTriggerListener;

    return-object v0
.end method

.method public initLocation(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 50
    iput p1, p0, Lcom/baidu/bulletin/monitor/MonitorView;->mOriginViewX:I

    .line 51
    iput p2, p0, Lcom/baidu/bulletin/monitor/MonitorView;->mOriginViewY:I

    .line 52
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/monitor/MonitorView;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 57
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public setClickListener(Lcom/baidu/bulletin/monitor/MonitorView$BulletinTriggerListener;)V
    .locals 0
    .parameter "mListener"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/baidu/bulletin/monitor/MonitorView;->mListener:Lcom/baidu/bulletin/monitor/MonitorView$BulletinTriggerListener;

    .line 120
    return-void
.end method
