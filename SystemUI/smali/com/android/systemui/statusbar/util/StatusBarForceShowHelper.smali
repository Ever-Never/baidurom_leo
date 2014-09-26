.class public Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;
.super Ljava/lang/Object;
.source "StatusBarForceShowHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$1;,
        Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyView;,
        Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyHandler;
    }
.end annotation


# static fields
.field private static final CHECK_FORCE_HIDE_TIME:I = 0x3e8

.field private static final FORCE_SHOW_TIME:I = 0xfa0

.field private static instance:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;


# instance fields
.field private configuration:Landroid/view/ViewConfiguration;

.field private mContext:Landroid/content/Context;

.field private mExpandView:Landroid/view/View;

.field private mForceShowView:Landroid/view/View;

.field private mHandler:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyHandler;

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mTouchSlop:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->instance:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "expandView"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mContext:Landroid/content/Context;

    .line 36
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mWindowManager:Landroid/view/WindowManager;

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyHandler;-><init>(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mHandler:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyHandler;

    .line 38
    iput-object p2, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mExpandView:Landroid/view/View;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->configuration:Landroid/view/ViewConfiguration;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->configuration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mTouchSlop:I

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->updateViewParam(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->isExpandViewShown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mLastMotionX:F

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mLastMotionX:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mLastMotionY:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput p1, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mLastMotionY:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mTouchSlop:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->forceShowStatusBar()V

    return-void
.end method

.method private forceShowStatusBar()V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mHandler:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyHandler;->sendEmptyMessage(I)Z

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mHandler:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 123
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Landroid/view/View;)Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;
    .locals 1
    .parameter "context"
    .parameter "expandView"

    .prologue
    .line 44
    sget-object v0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->instance:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;-><init>(Landroid/content/Context;Landroid/view/View;)V

    sput-object v0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->instance:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;

    .line 47
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->instance:Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;

    return-object v0
.end method

.method private getViewParam()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method private isExpandViewShown()Z
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mExpandView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateViewParam(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 74
    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x828

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mForceShowView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public addForceShowView()V
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mForceShowView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper$MyView;-><init>(Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mForceShowView:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->mForceShowView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/util/StatusBarForceShowHelper;->getViewParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    :cond_0
    return-void
.end method
