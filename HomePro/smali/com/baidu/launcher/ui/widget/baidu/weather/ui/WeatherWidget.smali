.class public Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;
.super Landroid/widget/FrameLayout;
.source "WeatherWidget.java"

# interfaces
.implements Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;
.implements Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangeListener;
.implements Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
.implements Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$AnimationEndListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "WeatherWidget"

.field private static UPDATE_INTERVAL:J

.field private static mBackSideIconRes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastUpdateTime:Ljava/util/Date;

.field private static sUpdateIfNetworkConnected:Z


# instance fields
.field private mAMPM:Landroid/widget/TextView;

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mBackBanner:Landroid/view/View;

.field private mBackBannerDisappearAnimation:Landroid/view/animation/Animation;

.field private mBackBannerShowAnimation:Landroid/view/animation/Animation;

.field private mBackConditionOneDisappearAnimation:Landroid/view/animation/Animation;

.field private mBackConditionThreeDisappearAnimation:Landroid/view/animation/Animation;

.field private mBackConditionTwoDisappearAnimation:Landroid/view/animation/Animation;

.field private mBackConditionsOneShowAnimation:Landroid/view/animation/Animation;

.field private mBackConditionsThreeShowAnimation:Landroid/view/animation/Animation;

.field private mBackConditionsTwoShowAnimation:Landroid/view/animation/Animation;

.field private mBackPmConditionDisappearAnimation:Landroid/view/animation/Animation;

.field private mBackPmConditionShowAnimation:Landroid/view/animation/Animation;

.field private mBackTemp:Landroid/widget/TextView;

.field private mBackTempDisappearAnimation:Landroid/view/animation/Animation;

.field private mBackTempShowAnimation:Landroid/view/animation/Animation;

.field private mBackgroundImageView:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;

.field private mBehindWeatherIconLayout:Landroid/widget/FrameLayout;

.field private mClock:Landroid/view/View;

.field private mClockDisappearAnimation:Landroid/view/animation/Animation;

.field private mClockShowAnimation:Landroid/view/animation/Animation;

.field private mCondition:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDate:Landroid/widget/TextView;

.field private mDayOneDate:Landroid/widget/TextView;

.field private mDayOneIcon:Landroid/widget/ImageView;

.field private mDayOneTemp:Landroid/widget/TextView;

.field private mDayOneView:Landroid/view/View;

.field private mDayThreeDate:Landroid/widget/TextView;

.field private mDayThreeIcon:Landroid/widget/ImageView;

.field private mDayThreeTemp:Landroid/widget/TextView;

.field private mDayThreeView:Landroid/view/View;

.field private mDayTwoDate:Landroid/widget/TextView;

.field private mDayTwoIcon:Landroid/widget/ImageView;

.field private mDayTwoTemp:Landroid/widget/TextView;

.field private mDayTwoView:Landroid/view/View;

.field private mDownDisappearAnimation:Landroid/view/animation/Animation;

.field private mDownShowAnimation:Landroid/view/animation/Animation;

.field private mEnableFlip:Z

.field private mFrontBannerDisappearAnimation:Landroid/view/animation/Animation;

.field private mFrontBannerImageView:Landroid/widget/ImageView;

.field private mFrontBannerShowAnimation:Landroid/view/animation/Animation;

.field private mHour1:Landroid/widget/ImageView;

.field private mHour2:Landroid/widget/ImageView;

.field private mIsSunRised:Z

.field private mLeftBottom:Landroid/view/View;

.field private mLocation:Landroid/widget/TextView;

.field private mMinute1:Landroid/widget/ImageView;

.field private mMinute2:Landroid/widget/ImageView;

.field private mPM25Info:Landroid/widget/TextView;

.field private mPMIndex:Landroid/widget/TextView;

.field private mPmCondition:Landroid/view/View;

.field private mRightBottom:Landroid/view/View;

.field private mSunMoveDistance:F

.field private mTemperature:Landroid/widget/TextView;

.field private mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

.field private mUpdateTime:Landroid/widget/TextView;

.field private mUpdateZone:Landroid/view/View;

.field private mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherIconSunRiseAnimation:Landroid/view/animation/Animation;

.field private mWeatherIconSunSetAnimation:Landroid/view/animation/Animation;

.field private mWeatherLayout:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-wide/32 v0, 0x1499700

    sput-wide v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->UPDATE_INTERVAL:J

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackSideIconRes:Ljava/util/ArrayList;

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->sUpdateIfNetworkConnected:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mSunMoveDistance:F

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mIsSunRised:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mEnableFlip:Z

    .line 244
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 114
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mContext:Landroid/content/Context;

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mSunMoveDistance:F

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mIsSunRised:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mEnableFlip:Z

    .line 244
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 119
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mContext:Landroid/content/Context;

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mSunMoveDistance:F

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mIsSunRised:Z

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mEnableFlip:Z

    .line 244
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$5;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 124
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mContext:Landroid/content/Context;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLocation:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mEnableFlip:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mEnableFlip:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIconSunRiseAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackBanner:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackBannerShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayOneView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionsOneShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayTwoView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionsTwoShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayThreeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionsThreeShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIconSunSetAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mClockDisappearAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mClock:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDownDisappearAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLeftBottom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mRightBottom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackTemp:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackTempShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mIsSunRised:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mPmCondition:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mIsSunRised:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackPmConditionShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mFrontBannerDisappearAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mFrontBannerImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionOneDisappearAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackTempDisappearAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackPmConditionDisappearAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackBannerDisappearAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionTwoDisappearAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionThreeDisappearAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->sunRise()V

    return-void
.end method

.method static synthetic access$4000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mClockShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDownShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mFrontBannerShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateZone:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->sunSet()V

    return-void
.end method

.method static synthetic access$600()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackSideIconRes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayOneIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayTwoIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayThreeIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private clearAllInfo()V
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mCondition:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 818
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mTemperature:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackTemp:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateTime:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 821
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mPM25Info:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mPMIndex:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mEnableFlip:Z

    .line 824
    return-void
.end method

.method private getConditionByLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "raw"

    .prologue
    .line 517
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->isEnglish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->getWeatherEn(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getDateString(J)Ljava/lang/String;
    .locals 4
    .parameter "time"

    .prologue
    .line 745
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EE M/d"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 746
    .local v2, sdf:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 747
    .local v0, dt:Ljava/util/Date;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, sDateTime:Ljava/lang/String;
    return-object v1
.end method

.method private getHour(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 500
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 501
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 503
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 504
    .local v2, is24HourFormat:Ljava/lang/Boolean;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 506
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 507
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 513
    .local v1, hour:I
    :cond_0
    :goto_0
    return v1

    .line 509
    .end local v1           #hour:I
    :cond_1
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 510
    .restart local v1       #hour:I
    if-nez v1, :cond_0

    .line 511
    const/16 v1, 0xc

    goto :goto_0
.end method

.method private getResString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getShortDateString(J)Ljava/lang/String;
    .locals 4
    .parameter "time"

    .prologue
    .line 752
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "M/d"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 753
    .local v2, sdf:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 754
    .local v0, dt:Ljava/util/Date;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, sDateTime:Ljava/lang/String;
    return-object v1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 834
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->addListener(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;)V

    .line 835
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->addListener(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangeListener;)V

    .line 836
    return-void
.end method

.method private initAnimation()V
    .locals 14

    .prologue
    const/high16 v3, 0x4248

    const/high16 v13, 0x3f80

    const/high16 v6, -0x3db8

    const-wide/16 v4, 0xc8

    const/4 v0, 0x0

    .line 330
    invoke-static {v13, v0, v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getAlphaAnimation(FFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mClockDisappearAnimation:Landroid/view/animation/Animation;

    .line 331
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mClockDisappearAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move v1, v0

    move v2, v0

    .line 332
    invoke-static/range {v0 .. v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateDisappearAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDownDisappearAnimation:Landroid/view/animation/Animation;

    .line 333
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDownDisappearAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move v7, v0

    move v8, v0

    move v9, v0

    move-wide v10, v4

    .line 334
    invoke-static/range {v6 .. v11}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateShowAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackTempShowAnimation:Landroid/view/animation/Animation;

    move v7, v3

    move v8, v0

    move v9, v0

    move v10, v0

    move-wide v11, v4

    .line 335
    invoke-static/range {v7 .. v12}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateShowAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackPmConditionShowAnimation:Landroid/view/animation/Animation;

    move v7, v0

    move v8, v0

    move v9, v6

    move v10, v0

    move-wide v11, v4

    .line 336
    invoke-static/range {v7 .. v12}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateShowAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionsOneShowAnimation:Landroid/view/animation/Animation;

    move v7, v0

    move v8, v0

    move v9, v6

    move v10, v0

    move-wide v11, v4

    .line 337
    invoke-static/range {v7 .. v12}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateShowAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionsTwoShowAnimation:Landroid/view/animation/Animation;

    .line 338
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionsTwoShowAnimation:Landroid/view/animation/Animation;

    const-wide/16 v7, 0x32

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setStartOffset(J)V

    move v7, v0

    move v8, v0

    move v9, v6

    move v10, v0

    move-wide v11, v4

    .line 339
    invoke-static/range {v7 .. v12}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateShowAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionsThreeShowAnimation:Landroid/view/animation/Animation;

    .line 340
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionsThreeShowAnimation:Landroid/view/animation/Animation;

    const-wide/16 v7, 0x64

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 341
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionsThreeShowAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 342
    invoke-static {v13, v0, v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getAlphaAnimation(FFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mFrontBannerDisappearAnimation:Landroid/view/animation/Animation;

    .line 343
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mFrontBannerDisappearAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 344
    invoke-static {v0, v13, v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getAlphaAnimation(FFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackBannerShowAnimation:Landroid/view/animation/Animation;

    .line 345
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackBannerShowAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move v7, v0

    move v8, v0

    move v9, v0

    move v10, v6

    move-wide v11, v4

    .line 348
    invoke-static/range {v7 .. v12}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateDisappearAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionOneDisappearAnimation:Landroid/view/animation/Animation;

    .line 349
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionOneDisappearAnimation:Landroid/view/animation/Animation;

    const-wide/16 v7, 0x64

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setStartOffset(J)V

    move v7, v0

    move v8, v0

    move v9, v0

    move v10, v6

    move-wide v11, v4

    .line 350
    invoke-static/range {v7 .. v12}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateDisappearAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionTwoDisappearAnimation:Landroid/view/animation/Animation;

    .line 351
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionTwoDisappearAnimation:Landroid/view/animation/Animation;

    const-wide/16 v7, 0x32

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setStartOffset(J)V

    move v7, v0

    move v8, v0

    move v9, v0

    move v10, v6

    move-wide v11, v4

    .line 352
    invoke-static/range {v7 .. v12}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateDisappearAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionThreeDisappearAnimation:Landroid/view/animation/Animation;

    .line 353
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionOneDisappearAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 354
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionTwoDisappearAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 355
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionThreeDisappearAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move v7, v0

    move v8, v6

    move v9, v0

    move v10, v0

    move-wide v11, v4

    .line 357
    invoke-static/range {v7 .. v12}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateDisappearAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackTempDisappearAnimation:Landroid/view/animation/Animation;

    move v6, v0

    move v7, v3

    move v8, v0

    move v9, v0

    move-wide v10, v4

    .line 358
    invoke-static/range {v6 .. v11}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateDisappearAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackPmConditionDisappearAnimation:Landroid/view/animation/Animation;

    .line 359
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackTempDisappearAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 360
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackPmConditionDisappearAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 361
    invoke-static {v0, v13, v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getAlphaAnimation(FFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mClockShowAnimation:Landroid/view/animation/Animation;

    .line 362
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mClockShowAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move v6, v0

    move v7, v0

    move v8, v3

    move v9, v0

    move-wide v10, v4

    .line 363
    invoke-static/range {v6 .. v11}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateShowAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDownShowAnimation:Landroid/view/animation/Animation;

    .line 365
    invoke-static {v0, v13, v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getAlphaAnimation(FFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mFrontBannerShowAnimation:Landroid/view/animation/Animation;

    .line 366
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mFrontBannerShowAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 367
    invoke-static {v13, v0, v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getAlphaAnimation(FFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackBannerDisappearAnimation:Landroid/view/animation/Animation;

    .line 368
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackBannerDisappearAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 369
    return-void
.end method

.method private needAutoUpdate(Ljava/util/Date;)Z
    .locals 8
    .parameter "lastUpdate"

    .prologue
    const/4 v3, 0x0

    .line 469
    if-nez p1, :cond_1

    .line 477
    :cond_0
    :goto_0
    return v3

    .line 472
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 473
    .local v0, currentTime:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 474
    .local v1, diff:J
    sget-wide v4, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->UPDATE_INTERVAL:J

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    .line 475
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private sunRise()V
    .locals 8

    .prologue
    const-wide/16 v4, 0x258

    const/4 v0, 0x0

    .line 372
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateZone:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 373
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v6

    .line 374
    .local v6, x:F
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v7

    .line 375
    .local v7, y:F
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mSunMoveDistance:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->getShinningOffset()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v7, v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mSunMoveDistance:F

    .line 377
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mSunMoveDistance:F

    move v1, v0

    move v3, v0

    invoke-static/range {v0 .. v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIconSunRiseAnimation:Landroid/view/animation/Animation;

    .line 378
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIconSunRiseAnimation:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 379
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIconSunRiseAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 380
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mSunMoveDistance:F

    neg-float v2, v1

    move v1, v0

    move v3, v0

    invoke-static/range {v0 .. v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIconSunSetAnimation:Landroid/view/animation/Animation;

    .line 381
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIconSunSetAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 382
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIconSunSetAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setX(F)V

    .line 385
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mSunMoveDistance:F

    sub-float v1, v7, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 386
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIconSunRiseAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 387
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mClock:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mClockDisappearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 388
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLeftBottom:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDownDisappearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 389
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mRightBottom:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDownDisappearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 390
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mFrontBannerImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mFrontBannerDisappearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 391
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackgroundImageView:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->startMove()V

    .line 393
    return-void
.end method

.method private sunSet()V
    .locals 4

    .prologue
    .line 396
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getX()F

    move-result v0

    .line 397
    .local v0, x:F
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getY()F

    move-result v1

    .line 398
    .local v1, y:F
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 399
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIcon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mSunMoveDistance:F

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    .line 400
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 401
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIconSunSetAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 402
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayOneView:Landroid/view/View;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionOneDisappearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 403
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayTwoView:Landroid/view/View;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionTwoDisappearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 404
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayThreeView:Landroid/view/View;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackConditionThreeDisappearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 405
    return-void
.end method


# virtual methods
.method public AnimationEnd()V
    .locals 2

    .prologue
    .line 902
    const-string v0, "###"

    const-string v1, "WeatherWidget:AnimationEnd,set updatefail!"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->stopAnimation()V

    .line 904
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateTime:Landroid/widget/TextView;

    const v1, 0x7f0c01d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 905
    return-void
.end method

.method public onAutoLocationFail()V
    .locals 2

    .prologue
    .line 828
    const-string v0, "WeatherWidget"

    const-string v1, "WeatherWidget:onAutoLocationFail"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->stopAnimation()V

    .line 830
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateTime:Landroid/widget/TextView;

    const v1, 0x7f0c01d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 831
    return-void
.end method

.method public onCheckAutoUpdate()V
    .locals 3

    .prologue
    .line 457
    const-string v0, "###"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherWidget:onCheckAutoUpdate,needUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->sUpdateIfNetworkConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    sget-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->sUpdateIfNetworkConnected:Z

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateTime:Landroid/widget/TextView;

    const v1, 0x7f0c01de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 460
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->startAnimation()V

    .line 462
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestUpdateWeather()V

    .line 464
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->sUpdateIfNetworkConnected:Z

    .line 466
    :cond_0
    return-void
.end method

.method public onDateChanged(Ljava/util/Date;)V
    .locals 8
    .parameter "date"

    .prologue
    .line 483
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 484
    .local v0, curDate:Ljava/util/Date;
    const v5, 0x7f0c01e0

    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, format:Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 487
    .local v3, raw:Ljava/lang/String;
    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 488
    .local v1, dateInfo:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 489
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDate:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    return-void
.end method

.method public onDestory()V
    .locals 2

    .prologue
    .line 909
    const-string v0, "WeatherWidget"

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->removeListener(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangeListener;)V

    .line 911
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->removeListener(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;)V

    .line 912
    return-void
.end method

.method public onError(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Ljava/lang/String;)V
    .locals 3
    .parameter "city"
    .parameter "Action"

    .prologue
    .line 783
    const-string v0, "WeatherWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError,action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string v0, "update_pm_end"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->stopAnimation()V

    .line 787
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateTime:Landroid/widget/TextView;

    const v1, 0x7f0c01d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 789
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 129
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 130
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->initAnimation()V

    .line 131
    const v0, 0x7f080297

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mClock:Landroid/view/View;

    .line 132
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mClock:Landroid/view/View;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v0, 0x7f0802a8

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayOneView:Landroid/view/View;

    .line 149
    const v0, 0x7f0802ac

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayTwoView:Landroid/view/View;

    .line 150
    const v0, 0x7f0802b0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayThreeView:Landroid/view/View;

    .line 151
    const v0, 0x7f0802a5

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mPmCondition:Landroid/view/View;

    .line 152
    const v0, 0x7f08029a

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mHour1:Landroid/widget/ImageView;

    .line 153
    const v0, 0x7f080299

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mHour2:Landroid/widget/ImageView;

    .line 154
    const v0, 0x7f08029b

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mMinute1:Landroid/widget/ImageView;

    .line 155
    const v0, 0x7f08029c

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mMinute2:Landroid/widget/ImageView;

    .line 156
    const v0, 0x7f08029d

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAMPM:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f0802a2

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDate:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0801af

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLocation:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f08029f

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mTemperature:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f0802a7

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mCondition:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f0802a0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mPM25Info:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f0802a1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mRightBottom:Landroid/view/View;

    .line 163
    const v0, 0x7f0802a4

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackTemp:Landroid/widget/TextView;

    .line 164
    const v0, 0x7f080296

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mFrontBannerImageView:Landroid/widget/ImageView;

    .line 165
    const v0, 0x7f0802a3

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackBanner:Landroid/view/View;

    .line 166
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mRightBottom:Landroid/view/View;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$2;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v0, 0x7f08029e

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLeftBottom:Landroid/view/View;

    .line 175
    const v0, 0x7f080294

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    .line 176
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->setListener(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$AnimationEndListener;)V

    .line 177
    const v0, 0x7f080295

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateTime:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f08028f

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackgroundImageView:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;

    .line 179
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackgroundImageView:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;

    const v1, 0x7f0203cb

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->setImageResource(I)V

    .line 180
    const v0, 0x7f0802b4

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherLayout:Landroid/widget/FrameLayout;

    .line 181
    const v0, 0x7f080290

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBehindWeatherIconLayout:Landroid/widget/FrameLayout;

    .line 182
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBehindWeatherIconLayout:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Z)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    .line 183
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->initWeatherLayout()V

    .line 184
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    const v1, 0x7f0203ca

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->setAnimationResource(I)V

    .line 185
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->getWeatherIcon()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIcon:Landroid/widget/ImageView;

    .line 186
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$3;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$3;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const v0, 0x7f0802a9

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayOneDate:Landroid/widget/TextView;

    .line 209
    const v0, 0x7f0802ad

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayTwoDate:Landroid/widget/TextView;

    .line 210
    const v0, 0x7f0802b1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayThreeDate:Landroid/widget/TextView;

    .line 212
    const v0, 0x7f0802ab

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayOneTemp:Landroid/widget/TextView;

    .line 213
    const v0, 0x7f0802af

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayTwoTemp:Landroid/widget/TextView;

    .line 214
    const v0, 0x7f0802b3

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayThreeTemp:Landroid/widget/TextView;

    .line 216
    const v0, 0x7f0802aa

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayOneIcon:Landroid/widget/ImageView;

    .line 217
    const v0, 0x7f0802ae

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayTwoIcon:Landroid/widget/ImageView;

    .line 218
    const v0, 0x7f0802b2

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayThreeIcon:Landroid/widget/ImageView;

    .line 220
    const v0, 0x7f0802a6

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mPMIndex:Landroid/widget/TextView;

    .line 221
    const v0, 0x7f080293

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateZone:Landroid/view/View;

    .line 222
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateZone:Landroid/view/View;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$4;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget$4;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    return-void
.end method

.method public onLocationChanged(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Ljava/lang/String;)V
    .locals 3
    .parameter "city"
    .parameter "locationCode"

    .prologue
    .line 793
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->isEnglish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLocation:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationNameShortEn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    :goto_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->clearAllInfo()V

    .line 801
    const-string v0, "WeatherWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLocationChanged,locationCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",city.name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationNameShort:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateTime:Landroid/widget/TextView;

    const v1, 0x7f0c01de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 804
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->startAnimation()V

    .line 806
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isNetworkConnectivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 807
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->stopAnimation()V

    .line 808
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateTime:Landroid/widget/TextView;

    const v1, 0x7f0c01d9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 813
    :goto_1
    return-void

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLocation:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationNameShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 810
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestUpdateWeather()V

    goto :goto_1
.end method

.method public onPMDataChanged(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;)V
    .locals 4
    .parameter "city"
    .parameter "forecastPM"

    .prologue
    .line 760
    iget-object v0, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->quality:Ljava/lang/String;

    .line 762
    .local v0, quality:Ljava/lang/String;
    iget v1, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    if-ltz v1, :cond_0

    iget v1, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    const/16 v2, 0x32

    if-gt v1, v2, :cond_0

    .line 763
    const v1, 0x7f0c01ef

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v0

    .line 775
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mPM25Info:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mPMIndex:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PM2.5:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 777
    return-void

    .line 764
    :cond_0
    iget v1, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    const/16 v2, 0x33

    if-lt v1, v2, :cond_1

    iget v1, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    const/16 v2, 0x64

    if-gt v1, v2, :cond_1

    .line 765
    const v1, 0x7f0c01f0

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 766
    :cond_1
    iget v1, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    const/16 v2, 0x65

    if-lt v1, v2, :cond_2

    iget v1, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    const/16 v2, 0x96

    if-gt v1, v2, :cond_2

    .line 767
    const v1, 0x7f0c01f1

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 768
    :cond_2
    iget v1, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    const/16 v2, 0x97

    if-lt v1, v2, :cond_3

    iget v1, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    const/16 v2, 0xc8

    if-gt v1, v2, :cond_3

    .line 769
    const v1, 0x7f0c01f2

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 770
    :cond_3
    iget v1, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    const/16 v2, 0xc9

    if-lt v1, v2, :cond_4

    iget v1, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    const/16 v2, 0x12c

    if-gt v1, v2, :cond_4

    .line 771
    const v1, 0x7f0c01f3

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 773
    :cond_4
    const v1, 0x7f0c01f4

    invoke-direct {p0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 949
    return-void
.end method

.method public onScroll(Z)V
    .locals 0
    .parameter "scrolling"

    .prologue
    .line 916
    return-void
.end method

.method public onSnapTo(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 943
    return-void
.end method

.method public onTimeChanged(IILjava/lang/String;)V
    .locals 10
    .parameter "hour"
    .parameter "minute"
    .parameter "ampm"

    .prologue
    const/4 v8, 0x0

    .line 409
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mHour1:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 410
    div-int/lit8 v2, p1, 0xa

    .line 411
    .local v2, hour1Index:I
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mHour1:Landroid/widget/ImageView;

    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->mClockImage:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 412
    rem-int/lit8 v3, p1, 0xa

    .line 413
    .local v3, hour2Index:I
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mHour2:Landroid/widget/ImageView;

    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->mClockImage:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 414
    div-int/lit8 v4, p2, 0xa

    .line 415
    .local v4, minute1Index:I
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mMinute1:Landroid/widget/ImageView;

    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->mClockImage:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 416
    rem-int/lit8 v5, p2, 0xa

    .line 417
    .local v5, minute2Index:I
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mMinute2:Landroid/widget/ImageView;

    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->mClockImage:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 419
    if-eqz p3, :cond_3

    .line 420
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAMPM:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAMPM:Landroid/widget/TextView;

    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    :goto_0
    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLastUpdateTime:Ljava/util/Date;

    if-nez v6, :cond_0

    .line 427
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    sput-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLastUpdateTime:Ljava/util/Date;

    .line 430
    :cond_0
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->dayAndNightChange()Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLastUpdateTime:Ljava/util/Date;

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->needAutoUpdate(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 431
    :cond_1
    const-string v6, "###"

    const-string v7, "WeatherWidget:needAutoUpdate ====>>"

    invoke-static {v6, v7}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isNetworkConnectivity(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 435
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateTime:Landroid/widget/TextView;

    const v7, 0x7f0c01de

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 436
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->startAnimation()V

    .line 438
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestUpdateWeather()V

    .line 440
    sput-boolean v8, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->sUpdateIfNetworkConnected:Z

    .line 445
    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLastUpdateTime:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/32 v8, 0x36ee80

    add-long v0, v6, v8

    .line 446
    .local v0, delayTime:J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    sput-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLastUpdateTime:Ljava/util/Date;

    .line 451
    .end local v0           #delayTime:J
    :cond_2
    :goto_1
    return-void

    .line 423
    :cond_3
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mAMPM:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 448
    :cond_4
    const/4 v6, 0x1

    sput-boolean v6, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->sUpdateIfNetworkConnected:Z

    goto :goto_1
.end method

.method public onWeatherChanged(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;)V
    .locals 12
    .parameter "city"
    .parameter "forecast"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/high16 v8, -0x8000

    const/4 v7, 0x0

    .line 526
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->stopAnimation()V

    .line 527
    iput-boolean v9, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mEnableFlip:Z

    .line 528
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->isEnglish()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 529
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLocation:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationNameShortEn:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    :goto_0
    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    if-eq v4, v8, :cond_1

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    if-eq v4, v8, :cond_1

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 537
    .local v3, sb:Ljava/lang/StringBuilder;
    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 538
    const v4, 0x7f0c01b3

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 540
    const v4, 0x7f0c01dc

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackTemp:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    .end local v3           #sb:Ljava/lang/StringBuilder;
    :goto_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mTemperature:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->tempCur:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0c01dc

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mCondition:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getConditionByLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 550
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackgroundImageView:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherBackground(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->setImageResource(I)V

    .line 552
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mFrontBannerImageView:Landroid/widget/ImageView;

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherBanner(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 554
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherIcon(Ljava/lang/String;Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v5, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->setAnimationResource(I)V

    .line 557
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, ":mm M/d"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 558
    .local v0, df:Ljava/text/SimpleDateFormat;
    const/4 v1, 0x0

    .line 559
    .local v1, hour:I
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    sput-object v4, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLastUpdateTime:Ljava/util/Date;

    .line 560
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getHour(Landroid/content/Context;)I

    move-result v1

    .line 561
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateTime:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0c01dd

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLastUpdateTime:Ljava/util/Date;

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayOneIcon:Landroid/widget/ImageView;

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v6, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherBackSideIcon(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 567
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayTwoIcon:Landroid/widget/ImageView;

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v6, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherBackSideIcon(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 571
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayThreeIcon:Landroid/widget/ImageView;

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v6, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherBackSideIcon(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 576
    sget-object v4, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackSideIconRes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 577
    sget-object v5, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackSideIconRes:Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v6, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherBackSideIcon(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    sget-object v5, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackSideIconRes:Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v6, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherBackSideIcon(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    sget-object v5, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackSideIconRes:Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v6, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherBackSideIcon(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    if-eq v4, v8, :cond_2

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    if-eq v4, v8, :cond_2

    .line 590
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayOneTemp:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v6, 0x7f0c01b3

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const v6, 0x7f0c01dc

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 598
    :goto_2
    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    if-eq v4, v8, :cond_3

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    if-eq v4, v8, :cond_3

    .line 600
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayTwoTemp:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v6, 0x7f0c01b3

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const v6, 0x7f0c01dc

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    :goto_3
    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    if-eq v4, v8, :cond_4

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    if-eq v4, v8, :cond_4

    .line 611
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayThreeTemp:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v6, 0x7f0c01b3

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v4, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const v6, 0x7f0c01dc

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    :goto_4
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayOneDate:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0c0272

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-wide v7, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    invoke-direct {p0, v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getShortDateString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->isEnglish()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 624
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayTwoDate:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-wide v6, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    invoke-direct {p0, v6, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getDateString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    :goto_5
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayThreeDate:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-wide v6, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    invoke-direct {p0, v6, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getDateString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    .line 635
    .local v2, lbm:Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "action_widget_refresh"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 636
    return-void

    .line 531
    .end local v0           #df:Ljava/text/SimpleDateFormat;
    .end local v1           #hour:I
    .end local v2           #lbm:Landroid/support/v4/content/LocalBroadcastManager;
    :cond_0
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLocation:Landroid/widget/TextView;

    iget-object v5, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationNameShort:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 543
    :cond_1
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackTemp:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->tempCur:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0c01dc

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 596
    .restart local v0       #df:Ljava/text/SimpleDateFormat;
    .restart local v1       #hour:I
    :cond_2
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayOneTemp:Landroid/widget/TextView;

    const-string v5, "N/A"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 606
    :cond_3
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayTwoTemp:Landroid/widget/TextView;

    const-string v5, "N/A"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 617
    :cond_4
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayThreeTemp:Landroid/widget/TextView;

    const-string v5, "N/A"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 627
    :cond_5
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayTwoDate:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0c0273

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-wide v7, v4, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    invoke-direct {p0, v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getShortDateString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method public onWeatherRestored(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;)V
    .locals 11
    .parameter "city"
    .parameter "forecast"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/high16 v7, -0x8000

    const/4 v6, 0x0

    .line 641
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->stopAnimation()V

    .line 642
    iput-boolean v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mEnableFlip:Z

    .line 643
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->isEnglish()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 644
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLocation:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationNameShortEn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 649
    :goto_0
    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    if-eq v2, v7, :cond_1

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    if-eq v2, v7, :cond_1

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 652
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 653
    const v2, 0x7f0c01b3

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    const v2, 0x7f0c01dc

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackTemp:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :goto_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mTemperature:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->tempCur:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0c01dc

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mCondition:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getConditionByLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 666
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackgroundImageView:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherBackground(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/view/CircleImageView;->setImageResource(I)V

    .line 669
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherIcon(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->setAnimationResource(I)V

    .line 672
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mFrontBannerImageView:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherBanner(Ljava/lang/String;Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 674
    const/4 v0, 0x0

    .line 675
    .local v0, df:Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 676
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0           #df:Ljava/text/SimpleDateFormat;
    const-string v2, "HH:mm M/d"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 680
    .restart local v0       #df:Ljava/text/SimpleDateFormat;
    :goto_2
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c01dd

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->validStart:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayOneIcon:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherBackSideIcon(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 686
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayTwoIcon:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherBackSideIcon(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 690
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayThreeIcon:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v4, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherBackSideIcon(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 695
    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    if-eq v2, v7, :cond_3

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    if-eq v2, v7, :cond_3

    .line 698
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayOneTemp:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f0c01b3

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f0c01dc

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    :goto_3
    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    if-eq v2, v7, :cond_4

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    if-eq v2, v7, :cond_4

    .line 708
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayTwoTemp:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f0c01b3

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f0c01dc

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    :goto_4
    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    if-eq v2, v7, :cond_5

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    if-eq v2, v7, :cond_5

    .line 719
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayThreeTemp:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f0c01b3

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v2, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f0c01dc

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    :goto_5
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayOneDate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c0272

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-wide v5, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    invoke-direct {p0, v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getShortDateString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->isEnglish()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 732
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayTwoDate:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-wide v4, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    invoke-direct {p0, v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getDateString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    :goto_6
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayThreeDate:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-wide v4, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    invoke-direct {p0, v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getDateString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 742
    return-void

    .line 646
    .end local v0           #df:Ljava/text/SimpleDateFormat;
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLocation:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationNameShort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 658
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mBackTemp:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->tempCur:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0c01dc

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 678
    .restart local v0       #df:Ljava/text/SimpleDateFormat;
    :cond_2
    new-instance v0, Ljava/text/SimpleDateFormat;

    .end local v0           #df:Ljava/text/SimpleDateFormat;
    const-string v2, "hh:mm M/d"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v0       #df:Ljava/text/SimpleDateFormat;
    goto/16 :goto_2

    .line 704
    :cond_3
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayOneTemp:Landroid/widget/TextView;

    const-string v3, "N/A"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 714
    :cond_4
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayTwoTemp:Landroid/widget/TextView;

    const-string v3, "N/A"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 725
    :cond_5
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayThreeTemp:Landroid/widget/TextView;

    const-string v3, "N/A"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 735
    :cond_6
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mDayTwoDate:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0c0273

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-wide v5, v2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    invoke-direct {p0, v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getShortDateString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
.end method

.method public onWhichScreen(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 955
    return-void
.end method

.method public onWidgetAdded()V
    .locals 5

    .prologue
    .line 839
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->init()V

    .line 841
    const-string v2, "WeatherWidget"

    const-string v3, "onWidgetAdded"

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateTime:Landroid/widget/TextView;

    const v3, 0x7f0c01de

    invoke-direct {p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->startAnimation()V

    .line 846
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isNetworkConnectivity(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 847
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getCity()Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v0

    .line 848
    .local v0, city:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    const/4 v1, 0x0

    .line 849
    .local v1, locationName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 850
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->isEnglish()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 851
    iget-object v1, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationNameEn:Ljava/lang/String;

    .line 857
    :cond_0
    :goto_0
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onWidgetAdded,locationName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 860
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    :goto_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->stopAnimation()V

    .line 866
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateTime:Landroid/widget/TextView;

    const v3, 0x7f0c01d9

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 871
    .end local v0           #city:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    .end local v1           #locationName:Ljava/lang/String;
    :goto_2
    return-void

    .line 853
    .restart local v0       #city:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    .restart local v1       #locationName:Ljava/lang/String;
    :cond_1
    iget-object v1, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationName:Ljava/lang/String;

    goto :goto_0

    .line 862
    :cond_2
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLocation:Landroid/widget/TextView;

    const v3, 0x7f0c01df

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 868
    .end local v0           #city:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    .end local v1           #locationName:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestUpdateWeather()V

    goto :goto_2
.end method

.method public onWidgetBinded()V
    .locals 3

    .prologue
    .line 875
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->init()V

    .line 877
    const-string v1, "WeatherWidget"

    const-string v2, "onWidgetBinded"

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v0

    .line 881
    .local v0, weatherManger:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->restoreLastWeather()Z

    move-result v1

    if-nez v1, :cond_0

    .line 882
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mLocation:Landroid/widget/TextView;

    const v2, 0x7f0c01df

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 883
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateTime:Landroid/widget/TextView;

    const v2, 0x7f0c01d9

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 886
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isNetworkConnectivity(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/baidu/launcher/app/LauncherApplication;->appRebooting:Z

    if-nez v1, :cond_1

    .line 887
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdateTime:Landroid/widget/TextView;

    const v2, 0x7f0c01de

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->startAnimation()V

    .line 889
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestUpdateWeather()V

    .line 891
    :cond_1
    return-void
.end method

.method public onWidgetRemoved()V
    .locals 2

    .prologue
    .line 895
    const-string v0, "WeatherWidget"

    const-string v1, "onWidgetRemoved"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->removeListener(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangeListener;)V

    .line 897
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->removeListener(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;)V

    .line 898
    return-void
.end method
