.class public Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;
.super Landroid/view/ViewGroup;
.source "QuickSwitchPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;,
        Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "QuickSwitchPanel"

.field public static final TIP_DRAG:I = 0x4

.field private static TIP_MASK:I = 0x0

.field public static final TIP_NO_SPACE:I = 0x10

.field public static final TIP_SAVE:I = 0x8

.field public static final TIP_SORT:I = 0x2


# instance fields
.field private COLUMN:I

.field private final DRAG_OFFSET:I

.field private final MAX_SWITCH:I

.field private ROW:I

.field private mAnimateViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateViewsBackward:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateViewsForward:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mDragMode:Z

.field private mDragView:Landroid/view/View;

.field private mFakePost:Z

.field private mHeader:Landroid/view/View;

.field private mHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;

.field private mIsDragging:Z

.field private mLanguage:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mOrientation:I

.field public mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPanelHeight:I

.field private mPanelWidth:I

.field private mPosIndex:[[I

.field private mPreferenceTop:[I

.field private mPreviousConfigFontScale:F

.field public mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwapMode:Z

.field private mSwitchHeight:I

.field private mSwitchWidth:I

.field private mTargetView:Landroid/view/View;

.field private mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

.field private mTipDrag:Landroid/widget/TextView;

.field private mTipEdit:Landroid/widget/TextView;

.field private mTouchListener:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

.field private mTouchOffsetX:I

.field private mTouchOffsetY:I

.field private mTrackerListTop:[Lcom/android/systemui/statusbar/switcher/SwitchTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v6, 0xc

    const/4 v3, 0x3

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->ROW:I

    .line 69
    iput v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    .line 70
    iput v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->MAX_SWITCH:I

    .line 71
    const/16 v2, 0x14

    iput v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->DRAG_OFFSET:I

    .line 74
    filled-new-array {v6, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    .line 76
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViews:Ljava/util/ArrayList;

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViewsForward:Ljava/util/ArrayList;

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViewsBackward:Ljava/util/ArrayList;

    .line 87
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragMode:Z

    .line 88
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwapMode:Z

    .line 92
    new-instance v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    invoke-direct {v2, p0, v5, v5}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;-><init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;II)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 94
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mLanguage:Ljava/lang/String;

    .line 96
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mMetrics:Landroid/util/DisplayMetrics;

    .line 107
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mFakePost:Z

    .line 109
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mLock:Ljava/lang/Object;

    .line 1321
    new-instance v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$4;-><init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 1362
    new-instance v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$5;-><init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 119
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 122
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 123
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPreviousConfigFontScale:F

    .line 125
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    .line 126
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->getTipMask(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->TIP_MASK:I

    .line 127
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDisplay:Landroid/view/Display;

    .line 128
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->dumpSwitchInfo(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTouchOffsetX:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTouchOffsetX:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTouchOffsetY:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTouchOffsetY:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;FFFF)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getDistance(FFFF)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->updateSwitchBackground(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchWidth:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchHeight:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->checkTargetSwap(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;I)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getViewByIndex(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)[[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTouchListener:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->onTargetConfirm(II)V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mIsDragging:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->postAnimation()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViewsForward:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViewsBackward:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->resetAnimateViews()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mFakePost:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTargetView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Lcom/android/systemui/statusbar/switcher/SwitchHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/util/DisplayMetrics;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/view/Display;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPreviousConfigFontScale:F

    return v0
.end method

.method static synthetic access$3502(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPreviousConfigFontScale:F

    return p1
.end method

.method static synthetic access$3602(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mLanguage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwapMode:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwapMode:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragMode:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private calculateAnimationViews(II)Z
    .locals 10
    .parameter "begin"
    .parameter "end"

    .prologue
    const/4 v9, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1008
    const/4 v1, 0x0

    .line 1009
    .local v1, i:I
    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_6

    .line 1011
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getViewByIndex(I)Landroid/view/View;

    move-result-object v4

    .line 1012
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 1013
    .local v2, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget v3, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    .line 1014
    .local v3, type:I
    if-ne v1, p1, :cond_5

    .line 1016
    if-ne v3, v6, :cond_3

    .line 1018
    const/4 v0, 0x0

    .line 1019
    .local v0, count:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->reachOtherSide(Landroid/view/View;)Z

    move-result v7

    if-ne v7, v6, :cond_1

    .line 1021
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getSwitchCount(I)I

    move-result v0

    .line 1022
    iget v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->ROW:I

    add-int/lit8 v7, v7, -0x1

    iget v8, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    mul-int/2addr v7, v8

    add-int/2addr v0, v7

    .line 1027
    :goto_1
    iget v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    iget v8, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->ROW:I

    mul-int/2addr v7, v8

    if-ge v0, v7, :cond_2

    .line 1029
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    aget-object v7, v7, v0

    aget v7, v7, v5

    iput v7, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesX:I

    .line 1030
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    aget-object v7, v7, v0

    aget v7, v7, v6

    iput v7, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesY:I

    .line 1031
    iput-boolean v6, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimating:Z

    .line 1032
    iput v0, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesIndex:I

    .line 1033
    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationStep:I
    invoke-static {v2, v9}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->access$2502(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;I)I

    .line 1071
    .end local v0           #count:I
    :cond_0
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1025
    .restart local v0       #count:I
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getSwitchLastIndex(I)I

    move-result v0

    goto :goto_1

    .line 1037
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->postFakeAnimation()V

    .line 1073
    .end local v0           #count:I
    .end local v2           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    .end local v3           #type:I
    .end local v4           #view:Landroid/view/View;
    :goto_3
    return v5

    .line 1043
    .restart local v2       #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    .restart local v3       #type:I
    .restart local v4       #view:Landroid/view/View;
    :cond_3
    if-nez v3, :cond_0

    .line 1045
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getSwitchCount(I)I

    move-result v0

    .line 1046
    .restart local v0       #count:I
    iget v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    iget v8, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->ROW:I

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v7, v8

    if-ge v0, v7, :cond_4

    .line 1048
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    aget-object v7, v7, v0

    aget v7, v7, v5

    iput v7, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesX:I

    .line 1049
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    aget-object v7, v7, v0

    aget v7, v7, v6

    iput v7, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesY:I

    .line 1050
    iput-boolean v6, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimating:Z

    .line 1051
    iput v0, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesIndex:I

    .line 1052
    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationStep:I
    invoke-static {v2, v9}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->access$2502(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;I)I

    goto :goto_2

    .line 1056
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1057
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->postFakeAnimation()V

    goto :goto_3

    .line 1065
    .end local v0           #count:I
    :cond_5
    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationStep:I
    invoke-static {v2, v9}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->access$2502(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;I)I

    .line 1066
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationStep:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->access$2500(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;)I

    move-result v8

    add-int/2addr v8, v1

    aget-object v7, v7, v8

    aget v7, v7, v5

    iput v7, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesX:I

    .line 1067
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationStep:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->access$2500(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;)I

    move-result v8

    add-int/2addr v8, v1

    aget-object v7, v7, v8

    aget v7, v7, v6

    iput v7, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesY:I

    .line 1068
    iput-boolean v6, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimating:Z

    .line 1069
    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationStep:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->access$2500(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;)I

    move-result v7

    add-int/2addr v7, v1

    iput v7, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesIndex:I

    goto :goto_2

    .end local v2           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    .end local v3           #type:I
    .end local v4           #view:Landroid/view/View;
    :cond_6
    move v5, v6

    .line 1073
    goto :goto_3
.end method

.method private calculateAnimationViews(Landroid/view/View;Landroid/view/View;)Z
    .locals 15
    .parameter "targetView"
    .parameter "dragView"

    .prologue
    .line 587
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 588
    .local v8, lpTarget:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 589
    .local v7, lpDrag:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget v11, v8, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    iget v12, v7, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    if-ne v11, v12, :cond_4

    .line 591
    iget v11, v8, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    iget v12, v7, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    if-ge v11, v12, :cond_0

    const/4 v1, 0x1

    .line 592
    .local v1, forward:Z
    :goto_0
    if-eqz v1, :cond_1

    const/4 v9, 0x1

    .line 593
    .local v9, step:I
    :goto_1
    if-eqz v1, :cond_2

    iget v0, v8, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    .line 594
    .local v0, firstIndex:I
    :goto_2
    if-eqz v1, :cond_3

    iget v11, v7, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    :goto_3
    iget v12, v8, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    invoke-direct {p0, v12}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getSwitchCount(I)I

    move-result v12

    iget v13, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->ROW:I

    add-int/lit8 v13, v13, -0x1

    iget v14, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    mul-int/2addr v13, v14

    add-int/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 597
    .local v3, lastIndex:I
    move v2, v0

    .local v2, i:I
    :goto_4
    if-ge v2, v3, :cond_7

    .line 599
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getViewByIndex(I)Landroid/view/View;

    move-result-object v10

    .line 600
    .local v10, view:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 601
    .local v6, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimating:Z

    .line 602
    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationStep:I
    invoke-static {v6, v9}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->access$2502(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;I)I

    .line 603
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    add-int v12, v2, v9

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget v11, v11, v12

    iput v11, v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesX:I

    .line 604
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    add-int v12, v2, v9

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget v11, v11, v12

    iput v11, v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesY:I

    .line 605
    iget v11, v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    add-int/2addr v11, v9

    iput v11, v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesIndex:I

    .line 606
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 591
    .end local v0           #firstIndex:I
    .end local v1           #forward:Z
    .end local v2           #i:I
    .end local v3           #lastIndex:I
    .end local v6           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    .end local v9           #step:I
    .end local v10           #view:Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 592
    .restart local v1       #forward:Z
    :cond_1
    const/4 v9, -0x1

    goto :goto_1

    .line 593
    .restart local v9       #step:I
    :cond_2
    iget v11, v7, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    add-int/lit8 v0, v11, 0x1

    goto :goto_2

    .line 594
    .restart local v0       #firstIndex:I
    :cond_3
    iget v11, v8, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 611
    .end local v0           #firstIndex:I
    .end local v1           #forward:Z
    .end local v9           #step:I
    :cond_4
    iget v11, v7, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getSwitchLastIndex(I)I

    move-result v4

    .line 612
    .local v4, lastIndexDrag:I
    iget v11, v8, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getSwitchLastIndex(I)I

    move-result v5

    .line 615
    .local v5, lastIndexTarget:I
    iget v11, v8, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    if-nez v11, :cond_5

    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    if-ne v5, v11, :cond_5

    .line 618
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 619
    .restart local v6       #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    iget v12, v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    iput v12, v11, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    .line 620
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    iget v12, v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    iput v12, v11, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    .line 622
    const/4 v11, 0x0

    .line 648
    .end local v4           #lastIndexDrag:I
    .end local v5           #lastIndexTarget:I
    .end local v6           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    :goto_5
    return v11

    .line 625
    .restart local v4       #lastIndexDrag:I
    .restart local v5       #lastIndexTarget:I
    :cond_5
    iget v11, v7, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    add-int/lit8 v2, v11, 0x1

    .restart local v2       #i:I
    :goto_6
    if-gt v2, v4, :cond_6

    .line 627
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getViewByIndex(I)Landroid/view/View;

    move-result-object v10

    .line 628
    .restart local v10       #view:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 629
    .restart local v6       #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimating:Z

    .line 630
    const/4 v11, -0x1

    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationStep:I
    invoke-static {v6, v11}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->access$2502(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;I)I

    .line 631
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationStep:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->access$2500(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;)I

    move-result v12

    add-int/2addr v12, v2

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget v11, v11, v12

    iput v11, v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesX:I

    .line 632
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationStep:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->access$2500(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;)I

    move-result v12

    add-int/2addr v12, v2

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget v11, v11, v12

    iput v11, v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesY:I

    .line 633
    iget v11, v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationStep:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->access$2500(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;)I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesIndex:I

    .line 634
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViewsBackward:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 636
    .end local v6           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    .end local v10           #view:Landroid/view/View;
    :cond_6
    iget v2, v8, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    :goto_7
    if-gt v2, v5, :cond_7

    .line 638
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getViewByIndex(I)Landroid/view/View;

    move-result-object v10

    .line 639
    .restart local v10       #view:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 640
    .restart local v6       #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimating:Z

    .line 641
    const/4 v11, 0x1

    #setter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationStep:I
    invoke-static {v6, v11}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->access$2502(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;I)I

    .line 642
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationStep:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->access$2500(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;)I

    move-result v12

    add-int/2addr v12, v2

    aget-object v11, v11, v12

    const/4 v12, 0x0

    aget v11, v11, v12

    iput v11, v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesX:I

    .line 643
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationStep:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->access$2500(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;)I

    move-result v12

    add-int/2addr v12, v2

    aget-object v11, v11, v12

    const/4 v12, 0x1

    aget v11, v11, v12

    iput v11, v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesY:I

    .line 644
    iget v11, v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationStep:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->access$2500(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;)I

    move-result v12

    add-int/2addr v11, v12

    iput v11, v6, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesIndex:I

    .line 645
    iget-object v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViewsForward:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 648
    .end local v4           #lastIndexDrag:I
    .end local v5           #lastIndexTarget:I
    .end local v6           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    .end local v10           #view:Landroid/view/View;
    :cond_7
    const/4 v11, 0x1

    goto/16 :goto_5
.end method

.method private cancelSwitchEdit()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    .line 966
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getChildCount()I

    move-result v1

    .line 967
    .local v1, count:I
    iget v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->ROW:I

    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    mul-int v4, v5, v6

    .line 968
    .local v4, lastLine:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 970
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 971
    .local v0, child:Landroid/view/View;
    instance-of v5, v0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    if-eqz v5, :cond_1

    move-object v5, v0

    .line 973
    check-cast v5, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setHeightAlpha(F)V

    move-object v5, v0

    .line 974
    check-cast v5, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setWidthAlpha(F)V

    .line 975
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    check-cast v5, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    iget v3, v5, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    .line 976
    .local v3, index:I
    iget v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    rem-int v5, v3, v5

    if-nez v5, :cond_2

    .line 987
    :cond_0
    :goto_1
    if-lt v3, v4, :cond_3

    move-object v5, v0

    .line 988
    check-cast v5, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setWidthAlpha(F)V

    :goto_2
    move-object v5, v0

    .line 992
    check-cast v5, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setupListeners()V

    .line 993
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 994
    new-instance v5, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$1;-><init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 968
    .end local v3           #index:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 979
    .restart local v3       #index:I
    :cond_2
    iget v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    rem-int v5, v3, v5

    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_0

    move-object v5, v0

    .line 982
    check-cast v5, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setHeightAlpha(F)V

    goto :goto_1

    :cond_3
    move-object v5, v0

    .line 990
    check-cast v5, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setWidthAlpha(F)V

    goto :goto_2

    .line 1002
    .end local v0           #child:Landroid/view/View;
    .end local v3           #index:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->prepareSwitchPanel()V

    .line 1003
    return-void
.end method

.method private checkTargetSwap(II)V
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, 0x1

    .line 555
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iget v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTouchOffsetX:I

    sub-int v2, p1, v7

    .line 558
    .local v2, left:I
    iget v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTouchOffsetY:I

    sub-int v5, p2, v7

    .line 560
    .local v5, top:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    array-length v7, v7

    if-ge v1, v7, :cond_0

    .line 562
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    aget-object v7, v7, v1

    const/4 v8, 0x2

    aget v7, v7, v8

    if-eq v7, v11, :cond_3

    .line 560
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 564
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    aget-object v4, v7, v1

    .line 565
    .local v4, pos:[I
    const/4 v7, 0x0

    aget v7, v4, v7

    int-to-float v7, v7

    aget v8, v4, v11

    int-to-float v8, v8

    int-to-float v9, v2

    int-to-float v10, v5

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getDistance(FFFF)I

    move-result v0

    .line 566
    .local v0, distance:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 567
    .local v6, width:I
    div-int/lit8 v7, v6, 0x3

    if-gt v0, v7, :cond_2

    .line 570
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getViewByIndex(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTargetView:Landroid/view/View;

    .line 573
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTargetView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 574
    .local v3, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    iget v8, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    iput v8, v7, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    .line 575
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    iget v8, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    iput v8, v7, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    .line 576
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTargetView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a001a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 577
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwapMode:Z

    goto :goto_0
.end method

.method private dip2px(F)I
    .locals 3
    .parameter "dip"

    .prologue
    .line 1386
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1387
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private dumpPosInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 1422
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->ROW:I

    iget v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 1424
    const-string v1, "QuickSwitchPanel"

    const-string v2, "%d, %d, %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    aget-object v5, v5, v0

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    add-int/lit8 v6, v0, 0x1

    aget-object v5, v5, v6

    aget v5, v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    add-int/lit8 v5, v0, 0x2

    aget-object v4, v4, v5

    aget v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iget v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 1427
    :cond_0
    return-void
.end method

.method private dumpSwitchInfo(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 1431
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 1432
    .local v0, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    const-string v1, "QuickSwitchPanel"

    const-string v2, "index: %d, x: %d, y: %d, key: %d, type : %d"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mKey:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    return-void
.end method

.method private getDistance(FFFF)I
    .locals 5
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"

    .prologue
    .line 509
    sub-float v0, p3, p1

    .line 510
    .local v0, a:F
    sub-float v1, p4, p2

    .line 511
    .local v1, b:F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    .line 512
    .local v2, result:F
    const/high16 v3, 0x3f00

    add-float/2addr v3, v2

    invoke-static {v3}, Landroid/util/FloatMath;->floor(F)F

    move-result v3

    float-to-int v3, v3

    return v3
.end method

.method private getSwitchCount(I)I
    .locals 5
    .parameter "type"

    .prologue
    .line 653
    const/4 v0, 0x0

    .line 654
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    array-length v4, v4

    if-ge v1, v4, :cond_2

    .line 656
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getViewByIndex(I)Landroid/view/View;

    move-result-object v3

    .line 657
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_1

    .line 654
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 659
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 660
    .local v2, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget v4, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    if-ne v4, p1, :cond_0

    .line 661
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 663
    .end local v2           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    .end local v3           #view:Landroid/view/View;
    :cond_2
    return v0
.end method

.method private getSwitchLastIndex(I)I
    .locals 3
    .parameter "type"

    .prologue
    .line 668
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getSwitchCount(I)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 669
    .local v0, index:I
    if-nez p1, :cond_0

    .line 670
    iget v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->ROW:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 671
    :cond_0
    return v0
.end method

.method private getViewByIndex(I)Landroid/view/View;
    .locals 4
    .parameter "index"

    .prologue
    .line 952
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 954
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 955
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    if-eqz v3, :cond_0

    .line 957
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 958
    .local v2, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget v3, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    if-ne p1, v3, :cond_0

    .line 962
    .end local v0           #child:Landroid/view/View;
    .end local v2           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    :goto_1
    return-object v0

    .line 952
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 962
    .end local v0           #child:Landroid/view/View;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private leaveItsSide(Landroid/view/View;)Z
    .locals 10
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 676
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 677
    .local v2, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget v3, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    .line 678
    .local v3, type:I
    if-ne v3, v4, :cond_3

    .line 680
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getSwitchLastIndex(I)I

    move-result v1

    .line 681
    .local v1, index:I
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    aget-object v6, v6, v1

    aget v6, v6, v4

    iget v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchHeight:I

    add-int v0, v6, v7

    .line 682
    .local v0, edge:I
    iget v6, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    if-le v6, v0, :cond_1

    .line 704
    .end local v1           #index:I
    :cond_0
    :goto_0
    return v4

    .line 686
    .restart local v1       #index:I
    :cond_1
    iget v6, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    iget v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchHeight:I

    sub-int v7, v0, v7

    if-le v6, v7, :cond_2

    iget v6, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    aget-object v7, v7, v1

    aget v7, v7, v5

    iget v8, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchWidth:I

    add-int/2addr v7, v8

    if-gt v6, v7, :cond_0

    :cond_2
    move v4, v5

    .line 692
    goto :goto_0

    .line 697
    .end local v0           #edge:I
    .end local v1           #index:I
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    iget v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->ROW:I

    add-int/lit8 v7, v7, -0x2

    iget v8, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    mul-int/2addr v7, v8

    aget-object v6, v6, v7

    aget v0, v6, v4

    .line 698
    .restart local v0       #edge:I
    const-string v6, "QuickSwitchPanel"

    const-string v7, "edge: %d, y: %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    iget v9, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget v6, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    if-lt v6, v0, :cond_0

    move v4, v5

    .line 704
    goto :goto_0
.end method

.method private onTargetConfirm(II)V
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, 0x1

    .line 518
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwapMode:Z

    if-eq v7, v11, :cond_0

    .line 522
    iget v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTouchOffsetX:I

    sub-int v2, p1, v7

    .line 523
    .local v2, left:I
    iget v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTouchOffsetY:I

    sub-int v5, p2, v7

    .line 525
    .local v5, top:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    array-length v7, v7

    if-ge v1, v7, :cond_0

    .line 527
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    aget-object v7, v7, v1

    const/4 v8, 0x2

    aget v7, v7, v8

    if-eq v7, v11, :cond_3

    .line 525
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 529
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    aget-object v4, v7, v1

    .line 530
    .local v4, pos:[I
    const/4 v7, 0x0

    aget v7, v4, v7

    int-to-float v7, v7

    aget v8, v4, v11

    int-to-float v8, v8

    int-to-float v9, v2

    int-to-float v10, v5

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getDistance(FFFF)I

    move-result v0

    .line 531
    .local v0, distance:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 533
    .local v6, width:I
    div-int/lit8 v7, v6, 0x2

    if-ge v0, v7, :cond_2

    .line 536
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getViewByIndex(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTargetView:Landroid/view/View;

    .line 538
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTargetView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 539
    .local v3, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    iget v8, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    iput v8, v7, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    .line 540
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    iget v8, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    iput v8, v7, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    .line 542
    iget v8, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    iget v7, v7, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    if-eq v8, v7, :cond_0

    .line 544
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTargetView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->calculateAnimationViews(Landroid/view/View;Landroid/view/View;)Z

    move-result v7

    if-ne v11, v7, :cond_0

    .line 545
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->postAnimation()V

    goto :goto_0
.end method

.method private postAnimation()V
    .locals 3

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1081
    :cond_0
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;

    .line 1082
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1083
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1084
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$2;-><init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1111
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$3;-><init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1132
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1133
    return-void

    .line 1082
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private postFakeAnimation()V
    .locals 9

    .prologue
    .line 1137
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1139
    .local v2, view:Landroid/view/View;
    const/4 v3, 0x0

    .line 1140
    .local v3, x0:F
    const/4 v5, 0x0

    .line 1141
    .local v5, y0:F
    move v4, v3

    .line 1142
    .local v4, x1:F
    iget v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float v6, v5, v7

    .line 1143
    .local v6, y1:F
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1144
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v7, 0x50

    invoke-virtual {v0, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1145
    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 1146
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1148
    .end local v0           #animation:Landroid/view/animation/Animation;
    .end local v2           #view:Landroid/view/View;
    .end local v3           #x0:F
    .end local v4           #x1:F
    .end local v5           #y0:F
    .end local v6           #y1:F
    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mFakePost:Z

    .line 1149
    iget-object v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1150
    const/16 v7, 0x10

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->showTip(I)V

    .line 1151
    return-void
.end method

.method private prepareSwitchEdit()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 932
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getChildCount()I

    move-result v1

    .line 933
    .local v1, count:I
    new-instance v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;-><init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTouchListener:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

    .line 934
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTouchListener:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$TouchListener;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 935
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 937
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 938
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 939
    invoke-virtual {v0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 940
    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 941
    invoke-virtual {v0, v6}, Landroid/view/View;->setLongClickable(Z)V

    .line 942
    instance-of v3, v0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 943
    check-cast v3, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setHeightAlpha(F)V

    .line 944
    check-cast v0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    .end local v0           #child:Landroid/view/View;
    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setWidthAlpha(F)V

    .line 935
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 948
    :cond_1
    return-void
.end method

.method private processAnimateViews(Ljava/util/ArrayList;)V
    .locals 4
    .parameter "list"

    .prologue
    .line 1155
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1157
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1158
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 1159
    .local v0, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationStep:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->access$2500(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1160
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_0
.end method

.method private reachOtherSide(Landroid/view/View;)Z
    .locals 8
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 710
    if-nez p1, :cond_1

    .line 725
    :cond_0
    :goto_0
    return v2

    .line 713
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 715
    .local v1, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget v4, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    if-eq v4, v2, :cond_2

    .line 716
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->leaveItsSide(Landroid/view/View;)Z

    move-result v2

    goto :goto_0

    .line 718
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getSwitchCount(I)I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    if-ne v4, v5, :cond_3

    move v2, v3

    .line 719
    goto :goto_0

    .line 721
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->ROW:I

    add-int/lit8 v5, v5, -0x2

    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    mul-int/2addr v5, v6

    aget-object v4, v4, v5

    aget v4, v4, v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->ROW:I

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    mul-int/2addr v6, v7

    aget-object v5, v5, v6

    aget v5, v5, v2

    add-int/2addr v4, v5

    div-int/lit8 v0, v4, 0x2

    .line 722
    .local v0, edge:I
    iget v4, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    if-gt v4, v0, :cond_0

    move v2, v3

    .line 725
    goto :goto_0
.end method

.method private resetAnimateData(Ljava/util/ArrayList;)V
    .locals 8
    .parameter "list"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1166
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1167
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 1170
    .local v1, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    if-nez v0, :cond_0

    .line 1172
    iget v3, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    iget v4, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesIndex:I

    if-eq v3, v4, :cond_0

    .line 1178
    invoke-direct {p0, v2, v6}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->updateSwitchBackground(Landroid/view/View;Z)V

    .line 1181
    :cond_0
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimating:Z

    .line 1182
    iget v3, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesX:I

    iput v3, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    .line 1183
    iget v3, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesY:I

    iput v3, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    .line 1186
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwapMode:Z

    if-nez v3, :cond_1

    .line 1187
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    iget v4, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    aget-object v3, v3, v4

    aput v5, v3, v7

    .line 1188
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    iget v4, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesIndex:I

    aget-object v3, v3, v4

    aput v6, v3, v7

    .line 1189
    iget v3, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesIndex:I

    iput v3, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    .line 1164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1191
    .end local v1           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    .end local v2           #view:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private resetAnimateViews()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1194
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViews:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->processAnimateViews(Ljava/util/ArrayList;)V

    .line 1195
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViewsForward:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->processAnimateViews(Ljava/util/ArrayList;)V

    .line 1197
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViews:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->resetAnimateData(Ljava/util/ArrayList;)V

    .line 1198
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViewsForward:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->resetAnimateData(Ljava/util/ArrayList;)V

    .line 1199
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViewsBackward:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->resetAnimateData(Ljava/util/ArrayList;)V

    .line 1202
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragMode:Z

    if-ne v1, v2, :cond_0

    .line 1204
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 1205
    .local v0, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    iget v1, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    iput v1, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    .line 1206
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTemp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    iget v1, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    iput v1, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    .line 1208
    .end local v0           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1209
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViewsForward:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1210
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViewsBackward:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1211
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwapMode:Z

    if-ne v1, v2, :cond_1

    .line 1213
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTargetView:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->updateSwitchBackground(Landroid/view/View;Z)V

    .line 1217
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mIsDragging:Z

    if-nez v1, :cond_2

    .line 1218
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mDragView:Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->updateSwitchBackground(Landroid/view/View;Z)V

    .line 1222
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1224
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1225
    monitor-exit v2

    .line 1226
    return-void

    .line 1225
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resetOrientation()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 805
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 806
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mOrientation:I

    .line 808
    iget v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 809
    iput v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->ROW:I

    .line 810
    iput v4, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    .line 815
    :goto_0
    return-void

    .line 812
    :cond_0
    iput v4, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->ROW:I

    .line 813
    iput v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    goto :goto_0
.end method

.method private updateSwitchBackground(Landroid/view/View;Z)V
    .locals 4
    .parameter "view"
    .parameter "isEditMode"

    .prologue
    const/4 v3, 0x1

    .line 896
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    if-nez v2, :cond_1

    instance-of v2, p1, Landroid/widget/ImageView;

    if-nez v2, :cond_1

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 899
    .local v0, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget v2, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    if-ne v2, v3, :cond_3

    .line 901
    const/4 v1, 0x0

    .line 902
    .local v1, resId:I
    if-ne p2, v3, :cond_2

    .line 903
    const v1, 0x7f0202ad

    .line 906
    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 905
    :cond_2
    const v1, 0x7f0202ab

    goto :goto_1

    .line 908
    .end local v1           #resId:I
    :cond_3
    iget v2, v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    if-nez v2, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Landroid/view/View;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 826
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mHeader:Landroid/view/View;

    .line 827
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->addView(Landroid/view/View;)V

    .line 828
    return-void
.end method

.method public varargs addTipViews([Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 819
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTipEdit:Landroid/widget/TextView;

    .line 820
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTipDrag:Landroid/widget/TextView;

    .line 821
    return-void
.end method

.method public enableEditMode(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getChildCount()I

    move-result v1

    .line 884
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 886
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 887
    .local v0, child:Landroid/view/View;
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->updateSwitchBackground(Landroid/view/View;Z)V

    .line 884
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 889
    .end local v0           #child:Landroid/view/View;
    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 890
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->prepareSwitchEdit()V

    .line 893
    :goto_1
    return-void

    .line 892
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->cancelSwitchEdit()V

    goto :goto_1
.end method

.method public hideTip(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/16 v2, 0x8

    .line 859
    sget v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->TIP_MASK:I

    and-int/2addr v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 879
    :goto_0
    return-void

    .line 863
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 878
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->TIP_MASK:I

    or-int/2addr v2, p1

    sput v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->TIP_MASK:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->setTipMask(Landroid/content/Context;I)V

    goto :goto_0

    .line 866
    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTipEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 869
    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTipDrag:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 872
    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTipEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 875
    :sswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTipDrag:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 863
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public initPanelSize(II)V
    .locals 10
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 729
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->resetOrientation()V

    .line 730
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getWidth()I

    move-result v5

    if-ne p1, v5, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getHeight()I

    move-result v5

    if-ne p2, v5, :cond_2

    .line 731
    iput p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPanelWidth:I

    .line 732
    iput p2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPanelHeight:I

    .line 733
    iget v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPanelWidth:I

    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    div-int/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchWidth:I

    .line 734
    iget v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPanelHeight:I

    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->ROW:I

    div-int/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchHeight:I

    .line 735
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 736
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    aget-object v3, v5, v0

    .line 737
    .local v3, pos:[I
    iget v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    rem-int v5, v0, v5

    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchWidth:I

    mul-int/2addr v5, v6

    aput v5, v3, v7

    .line 738
    iget v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    div-int v5, v0, v5

    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchHeight:I

    mul-int/2addr v5, v6

    aput v5, v3, v8

    .line 739
    aput v7, v3, v9

    .line 735
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 741
    .end local v3           #pos:[I
    :cond_0
    const/4 v1, 0x0

    .line 742
    .local v1, j:I
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 743
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 744
    .local v4, view:Landroid/view/View;
    instance-of v5, v4, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    if-eqz v5, :cond_1

    .line 745
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 746
    .local v2, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    aget-object v3, v5, v1

    .line 747
    .restart local v3       #pos:[I
    aget v5, v3, v7

    iput v5, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    .line 748
    aget v5, v3, v8

    iput v5, v2, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    .line 749
    aput v8, v3, v9

    .line 750
    add-int/lit8 v1, v1, 0x1

    .line 742
    .end local v2           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    .end local v3           #pos:[I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 754
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v4           #view:Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 1286
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1287
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1288
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1289
    const-string v2, "com.android.systemui.statusbar.switcher.update"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1290
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1292
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1293
    .local v1, packageFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1294
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1295
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1296
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1297
    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1298
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1316
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1317
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1318
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1319
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 1449
    sget-boolean v0, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->mEditMode:Z

    if-eqz v0, :cond_0

    .line 1450
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1454
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1452
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v9, 0x0

    .line 1231
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getChildCount()I

    move-result v1

    .line 1232
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 1234
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1236
    .local v0, child:Landroid/view/View;
    instance-of v4, v0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    if-eqz v4, :cond_2

    .line 1238
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 1239
    .local v3, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimating:Z

    if-nez v4, :cond_1

    .line 1240
    iget v4, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    iget v5, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    iget v6, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    iget v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchWidth:I

    add-int/2addr v6, v7

    iget v7, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    iget v8, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchHeight:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 1232
    .end local v3           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1242
    .restart local v3       #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    :cond_1
    iget v4, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationX:I

    iget v5, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationY:I

    iget v6, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationX:I

    iget v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchWidth:I

    add-int/2addr v6, v7

    iget v7, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationY:I

    iget v8, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchHeight:I

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1244
    .end local v3           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    :cond_2
    instance-of v4, v0, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_3

    .line 1246
    iget v4, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPanelWidth:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mHeader:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0, v9, v9, v4, v5}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1248
    :cond_3
    instance-of v4, v0, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 1250
    const-string v4, "QuickSwitchPanel"

    const-string v5, "ImageView onLayout"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 1252
    .restart local v3       #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget v4, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    iget v5, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    iget v6, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    iget v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPanelWidth:I

    add-int/2addr v6, v7

    iget v7, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 1255
    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    .line 1260
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1261
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getChildCount()I

    move-result v1

    .line 1262
    .local v1, count:I
    const/4 v4, 0x0

    .line 1263
    .local v4, w:I
    const/4 v2, 0x0

    .line 1264
    .local v2, h:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 1266
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1267
    .local v0, child:Landroid/view/View;
    instance-of v5, v0, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    if-eqz v5, :cond_0

    .line 1269
    iget v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchWidth:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1270
    iget v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mSwitchHeight:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1272
    :cond_0
    invoke-virtual {v0, v4, v2}, Landroid/view/View;->measure(II)V

    .line 1264
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1274
    .end local v0           #child:Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->initPanelSize(II)V

    .line 1309
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1310
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1279
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 1438
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 1439
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTrackerListTop:[Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    if-eqz v1, :cond_1

    .line 1440
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTrackerListTop:[Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1441
    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTrackerListTop:[Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTrackerListTop:[Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/switcher/SwitchTracker;->onPanelVisibilityChanged(I)V

    .line 1440
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1444
    .end local v0           #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->prepareSwitchPanel()V

    .line 1445
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 1302
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->initPanelSize(II)V

    .line 1303
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 1304
    return-void
.end method

.method public prepareSwitchPanel()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 758
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->removeAllViews()V

    .line 759
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v8}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->createSwitchList(Landroid/content/Context;I)[Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTrackerListTop:[Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    .line 760
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    iget-object v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v8}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->getSwitchPreferences(Landroid/content/Context;I)[I

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPreferenceTop:[I

    .line 761
    invoke-direct {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->resetOrientation()V

    .line 762
    iget v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->ROW:I

    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    mul-int v2, v5, v6

    .line 763
    .local v2, lastLine:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTrackerListTop:[Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 765
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040033

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    .line 768
    .local v1, item:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;
    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setTitleVisibility(I)V

    .line 769
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTrackerListTop:[Lcom/android/systemui/statusbar/switcher/SwitchTracker;

    aget-object v5, v5, v0

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->bindTracker(Lcom/android/systemui/statusbar/switcher/SwitchTracker;)V

    .line 770
    const v5, 0x7f0202ab

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setBackgroundResource(I)V

    .line 771
    new-instance v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    invoke-direct {v3, p0, v9, v9}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;-><init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;II)V

    .line 772
    .local v3, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPreferenceTop:[I

    aget v5, v5, v0

    iput v5, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mKey:I

    .line 773
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    aget-object v4, v5, v0

    .line 774
    .local v4, pos:[I
    aget v5, v4, v8

    iput v5, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    .line 775
    aget v5, v4, v10

    iput v5, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    .line 776
    iput v0, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    .line 777
    aput v10, v4, v12

    .line 778
    iget v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    rem-int v5, v0, v5

    if-nez v5, :cond_2

    .line 784
    :cond_0
    :goto_1
    if-lt v0, v2, :cond_1

    .line 785
    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setWidthAlpha(F)V

    .line 787
    :cond_1
    iput v10, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    .line 788
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 763
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 780
    :cond_2
    iget v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    rem-int v5, v0, v5

    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_0

    .line 782
    iget v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mOrientation:I

    if-eq v5, v12, :cond_0

    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;->setHeightAlpha(F)V

    goto :goto_1

    .line 791
    .end local v1           #item:Lcom/android/systemui/statusbar/switcher/SwitcherItemView;
    .end local v3           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    .end local v4           #pos:[I
    :cond_3
    new-instance v1, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 792
    .local v1, item:Landroid/widget/ImageView;
    const v5, 0x7f0202b0

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 793
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 794
    new-instance v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    invoke-direct {v3, p0, v9, v9}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;-><init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;II)V

    .line 795
    .restart local v3       #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget-object v5, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mPosIndex:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    iget v7, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->ROW:I

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v6, v7

    aget-object v4, v5, v6

    .line 797
    .restart local v4       #pos:[I
    iput v8, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    .line 798
    aget v5, v4, v10

    iput v5, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    .line 799
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 800
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 801
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 802
    return-void
.end method

.method public saveSwitchConfig()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1392
    iget-object v8, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1393
    iget-object v8, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->end()V

    .line 1394
    :cond_0
    const/4 v6, 0x0

    .line 1395
    .local v6, topCount:I
    const/4 v0, 0x0

    .line 1396
    .local v0, bottomCount:I
    const/4 v2, 0x0

    .line 1397
    .local v2, i:I
    invoke-direct {p0, v12}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getSwitchCount(I)I

    move-result v6

    .line 1398
    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getSwitchCount(I)I

    move-result v0

    .line 1400
    new-array v5, v6, [I

    .line 1401
    .local v5, preferenceTop:[I
    new-array v4, v0, [I

    .line 1403
    .local v4, preferenceBottom:[I
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getChildCount()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 1405
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1406
    .local v1, child:Landroid/view/View;
    instance-of v8, v1, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    if-eqz v8, :cond_1

    .line 1408
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 1409
    .local v3, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget v7, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    .line 1410
    .local v7, type:I
    if-ne v7, v12, :cond_2

    .line 1411
    iget v8, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    iget v9, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mKey:I

    aput v9, v5, v8

    .line 1403
    .end local v3           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    .end local v7           #type:I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1412
    .restart local v3       #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    .restart local v7       #type:I
    :cond_2
    if-nez v7, :cond_1

    .line 1413
    iget v8, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcIndex:I

    iget v9, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->ROW:I

    add-int/lit8 v9, v9, -0x1

    iget v10, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->COLUMN:I

    mul-int/2addr v9, v10

    sub-int/2addr v8, v9

    iget v9, v3, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mKey:I

    aput v9, v4, v8

    goto :goto_1

    .line 1418
    .end local v1           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    .end local v7           #type:I
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mHelper:Lcom/android/systemui/statusbar/switcher/SwitchHelper;

    iget-object v9, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v5, v11}, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->putSwitchPreferences(Landroid/content/Context;[II)V

    .line 1419
    return-void
.end method

.method public setBottomSwitchAlpha(F)V
    .locals 4
    .parameter "alpha"

    .prologue
    .line 916
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 918
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 919
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Landroid/widget/ImageView;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/android/systemui/statusbar/switcher/SwitcherItemView;

    if-eqz v3, :cond_2

    .line 921
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 922
    .local v1, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget v3, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mLayoutType:I

    if-eqz v3, :cond_1

    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 924
    :cond_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 925
    sget-boolean v3, Lcom/android/systemui/statusbar/switcher/SwitchHelper;->mEditMode:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 916
    .end local v1           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 929
    .end local v2           #view:Landroid/view/View;
    :cond_3
    return-void
.end method

.method public showTip(I)V
    .locals 2
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 832
    sparse-switch p1, :sswitch_data_0

    .line 855
    :goto_0
    return-void

    .line 835
    :sswitch_0
    sget v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->TIP_MASK:I

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTipEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTipEdit:Landroid/widget/TextView;

    const v1, 0x7f0c00fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 840
    :sswitch_1
    sget v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->TIP_MASK:I

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    .line 841
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTipDrag:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTipDrag:Landroid/widget/TextView;

    const v1, 0x7f0c00fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 845
    :sswitch_2
    sget v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->TIP_MASK:I

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    .line 846
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTipEdit:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 847
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTipEdit:Landroid/widget/TextView;

    const v1, 0x7f0c00fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 850
    :sswitch_3
    sget v0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->TIP_MASK:I

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    .line 851
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTipDrag:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 852
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mTipDrag:Landroid/widget/TextView;

    const v1, 0x7f0c00ff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 832
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method
