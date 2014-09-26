.class public Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;
.super Landroid/widget/FrameLayout;
.source "WeatherWidgetTransparent.java"

# interfaces
.implements Lcom/baidu/launcher/ui/widget/baidu/IBaiduWidget;
.implements Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangeListener;
.implements Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;
.implements Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$AnimationEndListener;


# static fields
.field private static final SETTINGS_SYSTEM_WEATHER_PM:Ljava/lang/String; = "setting.system.weatherwidget_pm"

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

.field private mBackPM25Info:Landroid/widget/TextView;

.field private mBackPm:Landroid/view/View;

.field private mBackPmConditionDisappearAnimation:Landroid/view/animation/Animation;

.field private mBackPmConditionShowAnimation:Landroid/view/animation/Animation;

.field private mBackTemp:Landroid/widget/TextView;

.field private mBackTempCondition:Landroid/view/View;

.field private mBackTempDisappearAnimation:Landroid/view/animation/Animation;

.field private mBackTempShowAnimation:Landroid/view/animation/Animation;

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

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRightBottom:Landroid/view/View;

.field private mSunMoveDistance:F

.field private mTemperature:Landroid/widget/TextView;

.field private mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

.field private mUpdateZone:Landroid/view/View;

.field private mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

.field private mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

.field private mWeatherIcon:Landroid/widget/ImageView;

.field private mWeatherIconSunRiseAnimation:Landroid/view/animation/Animation;

.field private mWeatherIconSunSetAnimation:Landroid/view/animation/Animation;

.field private mWeatherLayout:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-wide/32 v0, 0x1499700

    sput-wide v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->UPDATE_INTERVAL:J

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackSideIconRes:Ljava/util/ArrayList;

    .line 101
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->sUpdateIfNetworkConnected:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mSunMoveDistance:F

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mIsSunRised:Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mEnableFlip:Z

    .line 275
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$6;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$6;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 996
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$8;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$8;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mContext:Landroid/content/Context;

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mSunMoveDistance:F

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mIsSunRised:Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mEnableFlip:Z

    .line 275
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$6;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$6;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 996
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$8;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$8;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mContext:Landroid/content/Context;

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mSunMoveDistance:F

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mIsSunRised:Z

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mEnableFlip:Z

    .line 275
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$6;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$6;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 996
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$8;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$8;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mContext:Landroid/content/Context;

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLocation:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Lcom/baidu/launcher/ui/logic/ViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayThreeIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIconSunRiseAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackBanner:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackBannerShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayOneDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayOneView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionsOneShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayTwoDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mEnableFlip:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayTwoView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$202(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mEnableFlip:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionsTwoShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayThreeDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayThreeView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionsThreeShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIconSunSetAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mClockDisappearAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mClock:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDownDisappearAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLeftBottom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mRightBottom:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackTempCondition:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackTempShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackPM25Info:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackPm:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackPmConditionShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mFrontBannerDisappearAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mFrontBannerImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionOneDisappearAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackTempDisappearAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mIsSunRised:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackPmConditionDisappearAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$402(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mIsSunRised:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackBannerDisappearAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionTwoDisappearAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionThreeDisappearAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mClockShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDownShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mFrontBannerShowAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdateZone:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->sunRise()V

    return-void
.end method

.method static synthetic access$600(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->sunSet()V

    return-void
.end method

.method static synthetic access$700()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackSideIconRes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayOneIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayTwoIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private clearAllInfo()V
    .locals 2

    .prologue
    .line 878
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mCondition:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 879
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mTemperature:Landroid/widget/TextView;

    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackTemp:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 882
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mPM25Info:Landroid/widget/TextView;

    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackPM25Info:Landroid/widget/TextView;

    const-string v1, "N/A"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mPMIndex:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mEnableFlip:Z

    .line 886
    return-void
.end method

.method private getConditionByLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "raw"

    .prologue
    .line 576
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->isEnglish()Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->getWeatherEn(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private getDateString(J)Ljava/lang/String;
    .locals 4
    .parameter "time"

    .prologue
    .line 798
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EE M/d"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 799
    .local v2, sdf:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 800
    .local v0, dt:Ljava/util/Date;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 801
    .local v1, sDateTime:Ljava/lang/String;
    return-object v1
.end method

.method private getHour(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 559
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 560
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 562
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 563
    .local v2, is24HourFormat:Ljava/lang/Boolean;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 565
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 566
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 572
    .local v1, hour:I
    :cond_0
    :goto_0
    return v1

    .line 568
    .end local v1           #hour:I
    :cond_1
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 569
    .restart local v1       #hour:I
    if-nez v1, :cond_0

    .line 570
    const/16 v1, 0xc

    goto :goto_0
.end method

.method private getResString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

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
    .line 805
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "M/d"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 806
    .local v2, sdf:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 807
    .local v0, dt:Ljava/util/Date;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 808
    .local v1, sDateTime:Ljava/lang/String;
    return-object v1
.end method

.method private init()V
    .locals 3

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->addListener(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;)V

    .line 898
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->addListener(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangeListener;)V

    .line 899
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 900
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 901
    const-string v1, "com.baidu.home.intent.action.WORKSPACE_FLING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 902
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 903
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

    .line 382
    invoke-static {v13, v0, v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getAlphaAnimation(FFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mClockDisappearAnimation:Landroid/view/animation/Animation;

    .line 383
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mClockDisappearAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move v1, v0

    move v2, v0

    .line 384
    invoke-static/range {v0 .. v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateDisappearAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDownDisappearAnimation:Landroid/view/animation/Animation;

    .line 385
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDownDisappearAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move v7, v0

    move v8, v0

    move v9, v0

    move-wide v10, v4

    .line 386
    invoke-static/range {v6 .. v11}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateShowAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackTempShowAnimation:Landroid/view/animation/Animation;

    move v7, v3

    move v8, v0

    move v9, v0

    move v10, v0

    move-wide v11, v4

    .line 387
    invoke-static/range {v7 .. v12}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateShowAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackPmConditionShowAnimation:Landroid/view/animation/Animation;

    move v7, v0

    move v8, v0

    move v9, v6

    move v10, v0

    move-wide v11, v4

    .line 388
    invoke-static/range {v7 .. v12}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateShowAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionsOneShowAnimation:Landroid/view/animation/Animation;

    move v7, v0

    move v8, v0

    move v9, v6

    move v10, v0

    move-wide v11, v4

    .line 389
    invoke-static/range {v7 .. v12}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateShowAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionsTwoShowAnimation:Landroid/view/animation/Animation;

    .line 390
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionsTwoShowAnimation:Landroid/view/animation/Animation;

    const-wide/16 v7, 0x32

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setStartOffset(J)V

    move v7, v0

    move v8, v0

    move v9, v6

    move v10, v0

    move-wide v11, v4

    .line 391
    invoke-static/range {v7 .. v12}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateShowAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionsThreeShowAnimation:Landroid/view/animation/Animation;

    .line 392
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionsThreeShowAnimation:Landroid/view/animation/Animation;

    const-wide/16 v7, 0x64

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 393
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionsThreeShowAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 394
    invoke-static {v13, v0, v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getAlphaAnimation(FFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mFrontBannerDisappearAnimation:Landroid/view/animation/Animation;

    .line 395
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mFrontBannerDisappearAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 396
    invoke-static {v0, v13, v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getAlphaAnimation(FFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackBannerShowAnimation:Landroid/view/animation/Animation;

    .line 397
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackBannerShowAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move v7, v0

    move v8, v0

    move v9, v0

    move v10, v6

    move-wide v11, v4

    .line 400
    invoke-static/range {v7 .. v12}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateDisappearAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionOneDisappearAnimation:Landroid/view/animation/Animation;

    .line 401
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionOneDisappearAnimation:Landroid/view/animation/Animation;

    const-wide/16 v7, 0x64

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setStartOffset(J)V

    move v7, v0

    move v8, v0

    move v9, v0

    move v10, v6

    move-wide v11, v4

    .line 402
    invoke-static/range {v7 .. v12}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateDisappearAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionTwoDisappearAnimation:Landroid/view/animation/Animation;

    .line 403
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionTwoDisappearAnimation:Landroid/view/animation/Animation;

    const-wide/16 v7, 0x32

    invoke-virtual {v1, v7, v8}, Landroid/view/animation/Animation;->setStartOffset(J)V

    move v7, v0

    move v8, v0

    move v9, v0

    move v10, v6

    move-wide v11, v4

    .line 404
    invoke-static/range {v7 .. v12}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateDisappearAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionThreeDisappearAnimation:Landroid/view/animation/Animation;

    .line 405
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionOneDisappearAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 406
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionTwoDisappearAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 407
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionThreeDisappearAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move v7, v0

    move v8, v6

    move v9, v0

    move v10, v0

    move-wide v11, v4

    .line 409
    invoke-static/range {v7 .. v12}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateDisappearAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackTempDisappearAnimation:Landroid/view/animation/Animation;

    move v6, v0

    move v7, v3

    move v8, v0

    move v9, v0

    move-wide v10, v4

    .line 410
    invoke-static/range {v6 .. v11}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateDisappearAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackPmConditionDisappearAnimation:Landroid/view/animation/Animation;

    .line 411
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackTempDisappearAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 412
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackPmConditionDisappearAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 413
    invoke-static {v0, v13, v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getAlphaAnimation(FFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mClockShowAnimation:Landroid/view/animation/Animation;

    .line 414
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mClockShowAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    move v6, v0

    move v7, v0

    move v8, v3

    move v9, v0

    move-wide v10, v4

    .line 415
    invoke-static/range {v6 .. v11}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateShowAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDownShowAnimation:Landroid/view/animation/Animation;

    .line 417
    invoke-static {v0, v13, v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getAlphaAnimation(FFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mFrontBannerShowAnimation:Landroid/view/animation/Animation;

    .line 418
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mFrontBannerShowAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 419
    invoke-static {v13, v0, v4, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getAlphaAnimation(FFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackBannerDisappearAnimation:Landroid/view/animation/Animation;

    .line 420
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackBannerDisappearAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 421
    return-void
.end method

.method private needAutoUpdate(Ljava/util/Date;)Z
    .locals 8
    .parameter "lastUpdate"

    .prologue
    const/4 v3, 0x0

    .line 528
    if-nez p1, :cond_1

    .line 536
    :cond_0
    :goto_0
    return v3

    .line 531
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 532
    .local v0, currentTime:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 533
    .local v1, diff:J
    sget-wide v4, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->UPDATE_INTERVAL:J

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    .line 534
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private sunRise()V
    .locals 8

    .prologue
    const-wide/16 v4, 0x258

    const/4 v0, 0x0

    .line 424
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdateZone:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 425
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getX()F

    move-result v6

    .line 426
    .local v6, x:F
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getY()F

    move-result v7

    .line 427
    .local v7, y:F
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mSunMoveDistance:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->getShinningOffset()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v7, v1

    iput v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mSunMoveDistance:F

    .line 429
    iget v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mSunMoveDistance:F

    move v1, v0

    move v3, v0

    invoke-static/range {v0 .. v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIconSunRiseAnimation:Landroid/view/animation/Animation;

    .line 430
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIconSunRiseAnimation:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 431
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIconSunRiseAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 432
    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mSunMoveDistance:F

    neg-float v2, v1

    move v1, v0

    move v3, v0

    invoke-static/range {v0 .. v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/factory/WeatherAnimationFactory;->getTranslateAnimation(FFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIconSunSetAnimation:Landroid/view/animation/Animation;

    .line 433
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIconSunSetAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 434
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIconSunSetAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setX(F)V

    .line 437
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mSunMoveDistance:F

    sub-float v1, v7, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 438
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIconSunRiseAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 439
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mClock:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mClockDisappearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 440
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLeftBottom:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDownDisappearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 441
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mRightBottom:Landroid/view/View;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDownDisappearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 442
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mFrontBannerImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mFrontBannerDisappearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 444
    return-void
.end method

.method private sunSet()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 447
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getX()F

    move-result v0

    .line 448
    .local v0, x:F
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getY()F

    move-result v1

    .line 449
    .local v1, y:F
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 450
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIcon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mSunMoveDistance:F

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    .line 451
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 452
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIconSunSetAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 453
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayOneDate:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 454
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayOneView:Landroid/view/View;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionOneDisappearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 455
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayTwoView:Landroid/view/View;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionTwoDisappearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 456
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayThreeView:Landroid/view/View;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackConditionThreeDisappearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 466
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayOneView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayTwoView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayThreeView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 461
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackTempCondition:Landroid/view/View;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackTempDisappearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 462
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackPm:Landroid/view/View;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackPmConditionDisappearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 463
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackBanner:Landroid/view/View;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackBannerDisappearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method


# virtual methods
.method public AnimationEnd()V
    .locals 3

    .prologue
    .line 974
    const-string v0, "###"

    const-string v1, "WeatherWidget:AnimationEnd,set updatefail!"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->stopAnimation()V

    .line 977
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01d9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 978
    return-void
.end method

.method public onAutoLocationFail()V
    .locals 3

    .prologue
    .line 890
    const-string v0, "WeatherWidget"

    const-string v1, "WeatherWidget:onAutoLocationFail"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->stopAnimation()V

    .line 893
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01d9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 894
    return-void
.end method

.method public onCheckAutoUpdate()V
    .locals 3

    .prologue
    .line 517
    const-string v0, "###"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WeatherWidget:onCheckAutoUpdate,needUpdate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->sUpdateIfNetworkConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    sget-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->sUpdateIfNetworkConnected:Z

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->startAnimation()V

    .line 521
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestUpdateWeather()V

    .line 523
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->sUpdateIfNetworkConnected:Z

    .line 525
    :cond_0
    return-void
.end method

.method public onDateChanged(Ljava/util/Date;)V
    .locals 8
    .parameter "date"

    .prologue
    .line 542
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 543
    .local v0, curDate:Ljava/util/Date;
    const v5, 0x7f0c01e0

    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, format:Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 546
    .local v3, raw:Ljava/lang/String;
    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 547
    .local v1, dateInfo:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDate:Landroid/widget/TextView;

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

    .line 552
    return-void
.end method

.method public onDestory()V
    .locals 2

    .prologue
    .line 982
    const-string v0, "WeatherWidget"

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->removeListener(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangeListener;)V

    .line 984
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->removeListener(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;)V

    .line 987
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    :goto_0
    return-void

    .line 988
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onError(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Ljava/lang/String;)V
    .locals 3
    .parameter "city"
    .parameter "Action"

    .prologue
    .line 843
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

    .line 845
    const-string v0, "update_pm_end"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 846
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->stopAnimation()V

    .line 850
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 143
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 144
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->initAnimation()V

    .line 145
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v0}, Lcom/baidu/launcher/app/Launcher;->getViewManager()Lcom/baidu/launcher/ui/logic/ViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    .line 146
    const v0, 0x7f080297

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mClock:Landroid/view/View;

    .line 147
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mClock:Landroid/view/View;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    const v0, 0x7f0802a8

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayOneView:Landroid/view/View;

    .line 164
    const v0, 0x7f0802ac

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayTwoView:Landroid/view/View;

    .line 165
    const v0, 0x7f0802b0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayThreeView:Landroid/view/View;

    .line 166
    const v0, 0x7f0802b6

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackPm:Landroid/view/View;

    .line 167
    const v0, 0x7f0802b5

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackTempCondition:Landroid/view/View;

    .line 168
    const v0, 0x7f08029a

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mHour1:Landroid/widget/ImageView;

    .line 169
    const v0, 0x7f080299

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mHour2:Landroid/widget/ImageView;

    .line 170
    const v0, 0x7f08029b

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mMinute1:Landroid/widget/ImageView;

    .line 171
    const v0, 0x7f08029c

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mMinute2:Landroid/widget/ImageView;

    .line 172
    const v0, 0x7f0802a2

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDate:Landroid/widget/TextView;

    .line 173
    const v0, 0x7f0801af

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLocation:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f08029f

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mTemperature:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f0802a7

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mCondition:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f0802a0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mPM25Info:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f0802b8

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackPM25Info:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f0802a1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mRightBottom:Landroid/view/View;

    .line 179
    const v0, 0x7f0802a4

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackTemp:Landroid/widget/TextView;

    .line 181
    const v0, 0x7f080296

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mFrontBannerImageView:Landroid/widget/ImageView;

    .line 182
    const v0, 0x7f0802a3

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackBanner:Landroid/view/View;

    .line 183
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mRightBottom:Landroid/view/View;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$2;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    const v0, 0x7f08029e

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLeftBottom:Landroid/view/View;

    .line 194
    const v0, 0x7f080294

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    .line 195
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->setListener(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView$AnimationEndListener;)V

    .line 196
    const v0, 0x7f0802b4

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherLayout:Landroid/widget/FrameLayout;

    .line 197
    const v0, 0x7f080290

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBehindWeatherIconLayout:Landroid/widget/FrameLayout;

    .line 198
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBehindWeatherIconLayout:Landroid/widget/FrameLayout;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Z)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    .line 199
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->initWeatherLayout()V

    .line 200
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    const v1, 0x7f0203ca

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->setAnimationResource(I)V

    .line 201
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->getWeatherIcon()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIcon:Landroid/widget/ImageView;

    .line 202
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$3;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$3;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    const v0, 0x7f0802a9

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayOneDate:Landroid/widget/TextView;

    .line 224
    const v0, 0x7f0802ad

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayTwoDate:Landroid/widget/TextView;

    .line 225
    const v0, 0x7f0802b1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayThreeDate:Landroid/widget/TextView;

    .line 227
    const v0, 0x7f0802ab

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayOneTemp:Landroid/widget/TextView;

    .line 228
    const v0, 0x7f0802af

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayTwoTemp:Landroid/widget/TextView;

    .line 229
    const v0, 0x7f0802b3

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayThreeTemp:Landroid/widget/TextView;

    .line 231
    const v0, 0x7f0802aa

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayOneIcon:Landroid/widget/ImageView;

    .line 232
    const v0, 0x7f0802ae

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayTwoIcon:Landroid/widget/ImageView;

    .line 233
    const v0, 0x7f0802b2

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayThreeIcon:Landroid/widget/ImageView;

    .line 235
    const v0, 0x7f0802a6

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mPMIndex:Landroid/widget/TextView;

    .line 236
    const v0, 0x7f080293

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdateZone:Landroid/view/View;

    .line 237
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdateZone:Landroid/view/View;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$4;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$4;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLeftBottom:Landroid/view/View;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$5;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$5;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    return-void
.end method

.method public onLocationChanged(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Ljava/lang/String;)V
    .locals 3
    .parameter "city"
    .parameter "locationCode"

    .prologue
    .line 854
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->isEnglish()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLocation:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationNameShortEn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 860
    :goto_0
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->clearAllInfo()V

    .line 862
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

    .line 864
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->startAnimation()V

    .line 866
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isNetworkConnectivity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->stopAnimation()V

    .line 869
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mContext:Landroid/content/Context;

    const v2, 0x7f0c01d9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 874
    :goto_1
    return-void

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLocation:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationNameShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 871
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestUpdateWeather()V

    goto :goto_1
.end method

.method public onPMDataChanged(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;)V
    .locals 5
    .parameter "city"
    .parameter "forecastPM"

    .prologue
    .line 813
    iget-object v1, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->quality:Ljava/lang/String;

    .line 815
    .local v1, quality:Ljava/lang/String;
    iget v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    if-ltz v2, :cond_0

    iget v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    const/16 v3, 0x32

    if-gt v2, v3, :cond_0

    .line 816
    const v2, 0x7f0c01ef

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v1

    .line 828
    :goto_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mPM25Info:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackPM25Info:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mPMIndex:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    iget v0, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    .line 832
    .local v0, pm:I
    new-instance v2, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$7;

    invoke-direct {v2, p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$7;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;I)V

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent$7;->start()V

    .line 837
    return-void

    .line 817
    .end local v0           #pm:I
    :cond_0
    iget v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    const/16 v3, 0x33

    if-lt v2, v3, :cond_1

    iget v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    const/16 v3, 0x64

    if-gt v2, v3, :cond_1

    .line 818
    const v2, 0x7f0c01f0

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 819
    :cond_1
    iget v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    const/16 v3, 0x65

    if-lt v2, v3, :cond_2

    iget v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    const/16 v3, 0x96

    if-gt v2, v3, :cond_2

    .line 820
    const v2, 0x7f0c01f1

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 821
    :cond_2
    iget v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    const/16 v3, 0x97

    if-lt v2, v3, :cond_3

    iget v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    const/16 v3, 0xc8

    if-gt v2, v3, :cond_3

    .line 822
    const v2, 0x7f0c01f2

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 823
    :cond_3
    iget v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    const/16 v3, 0xc9

    if-lt v2, v3, :cond_4

    iget v2, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastPM;->aqi:I

    const/16 v3, 0x12c

    if-gt v2, v3, :cond_4

    .line 824
    const v2, 0x7f0c01f3

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 826
    :cond_4
    const v2, 0x7f0c01f4

    invoke-direct {p0, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 1038
    return-void
.end method

.method public onScroll(Z)V
    .locals 0
    .parameter "scrolling"

    .prologue
    .line 994
    return-void
.end method

.method public onSnapTo(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 1032
    return-void
.end method

.method public onTimeChanged(IILjava/lang/String;)V
    .locals 10
    .parameter "hour"
    .parameter "minute"
    .parameter "ampm"

    .prologue
    const/4 v8, 0x0

    .line 470
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mHour1:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    div-int/lit8 v2, p1, 0xa

    .line 472
    .local v2, hour1Index:I
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mHour1:Landroid/widget/ImageView;

    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->mTransparentClockImage:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 473
    rem-int/lit8 v3, p1, 0xa

    .line 474
    .local v3, hour2Index:I
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mHour2:Landroid/widget/ImageView;

    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->mTransparentClockImage:[I

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 475
    div-int/lit8 v4, p2, 0xa

    .line 476
    .local v4, minute1Index:I
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mMinute1:Landroid/widget/ImageView;

    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->mTransparentClockImage:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 477
    rem-int/lit8 v5, p2, 0xa

    .line 478
    .local v5, minute2Index:I
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mMinute2:Landroid/widget/ImageView;

    sget-object v7, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->mTransparentClockImage:[I

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 480
    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLastUpdateTime:Ljava/util/Date;

    if-nez v6, :cond_0

    .line 481
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    sput-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLastUpdateTime:Ljava/util/Date;

    .line 484
    :cond_0
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->dayAndNightChange()Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLastUpdateTime:Ljava/util/Date;

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->needAutoUpdate(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 485
    :cond_1
    const-string v6, "###"

    const-string v7, "WeatherWidget:needAutoUpdate ====>>"

    invoke-static {v6, v7}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isNetworkConnectivity(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 489
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->startAnimation()V

    .line 491
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestUpdateWeather()V

    .line 493
    sput-boolean v8, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->sUpdateIfNetworkConnected:Z

    .line 498
    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLastUpdateTime:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/32 v8, 0x36ee80

    add-long v0, v6, v8

    .line 499
    .local v0, delayTime:J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    sput-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLastUpdateTime:Ljava/util/Date;

    .line 513
    .end local v0           #delayTime:J
    :cond_2
    :goto_0
    return-void

    .line 501
    :cond_3
    const/4 v6, 0x1

    sput-boolean v6, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->sUpdateIfNetworkConnected:Z

    .line 503
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->dayAndNightChange()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 504
    iget-object v7, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getForecast()Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;

    move-result-object v6

    iget-object v6, v6, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v6, v6, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getTransparentWeatherIcon(Ljava/lang/String;Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->setAnimationResource(I)V

    goto :goto_0
.end method

.method public onWeatherChanged(Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;)V
    .locals 13
    .parameter "city"
    .parameter "forecast"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/high16 v9, -0x8000

    const/4 v8, 0x0

    .line 585
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->stopAnimation()V

    .line 586
    iput-boolean v10, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mEnableFlip:Z

    .line 587
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->isEnglish()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 588
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLocation:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationNameShortEn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    :goto_0
    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    if-eq v5, v9, :cond_1

    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    if-eq v5, v9, :cond_1

    .line 595
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 596
    .local v4, sb:Ljava/lang/StringBuilder;
    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 597
    const v5, 0x7f0c01b3

    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 599
    const v5, 0x7f0c01dc

    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackTemp:Landroid/widget/TextView;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :goto_1
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mTemperature:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->tempCur:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0c01dc

    invoke-direct {p0, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getConditionByLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, condition:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-le v5, v6, :cond_2

    .line 610
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mCondition:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackTemp:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    const/high16 v7, 0x4000

    mul-float/2addr v6, v7

    const/high16 v7, 0x4040

    div-float/2addr v6, v7

    invoke-virtual {v5, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 614
    :goto_2
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mCondition:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getTransparentWeatherIcon(Ljava/lang/String;Landroid/content/Context;)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->setAnimationResource(I)V

    .line 618
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, ":mm M/d"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 619
    .local v1, df:Ljava/text/SimpleDateFormat;
    const/4 v2, 0x0

    .line 620
    .local v2, hour:I
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    sput-object v5, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLastUpdateTime:Ljava/util/Date;

    .line 621
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getHour(Landroid/content/Context;)I

    move-result v2

    .line 622
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayOneIcon:Landroid/widget/ImageView;

    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v5, v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherTransparentBackSideIcon(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 626
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayTwoIcon:Landroid/widget/ImageView;

    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v5, v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherTransparentBackSideIcon(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 630
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayThreeIcon:Landroid/widget/ImageView;

    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v5, v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherTransparentBackSideIcon(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 635
    sget-object v5, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackSideIconRes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 636
    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackSideIconRes:Ljava/util/ArrayList;

    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v5, v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherTransparentBackSideIcon(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackSideIconRes:Ljava/util/ArrayList;

    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v5, v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherTransparentBackSideIcon(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackSideIconRes:Ljava/util/ArrayList;

    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v5, v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherTransparentBackSideIcon(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    if-eq v5, v9, :cond_3

    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    if-eq v5, v9, :cond_3

    .line 649
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayOneTemp:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v7, 0x7f0c01b3

    invoke-direct {p0, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const v7, 0x7f0c01dc

    invoke-direct {p0, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    :goto_3
    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    if-eq v5, v9, :cond_4

    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    if-eq v5, v9, :cond_4

    .line 659
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayTwoTemp:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v7, 0x7f0c01b3

    invoke-direct {p0, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const v7, 0x7f0c01dc

    invoke-direct {p0, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    :goto_4
    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    if-eq v5, v9, :cond_5

    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    if-eq v5, v9, :cond_5

    .line 670
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayThreeTemp:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v7, 0x7f0c01b3

    invoke-direct {p0, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v5, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const v7, 0x7f0c01dc

    invoke-direct {p0, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    :goto_5
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayOneDate:Landroid/widget/TextView;

    const v6, 0x7f0c0272

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->isEnglish()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 682
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayTwoDate:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-wide v7, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    invoke-direct {p0, v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getDateString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    :goto_6
    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayThreeDate:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-wide v7, v5, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    invoke-direct {p0, v7, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getShortDateString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    .line 692
    .local v3, lbm:Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "action_widget_refresh"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 693
    return-void

    .line 590
    .end local v0           #condition:Ljava/lang/String;
    .end local v1           #df:Ljava/text/SimpleDateFormat;
    .end local v2           #hour:I
    .end local v3           #lbm:Landroid/support/v4/content/LocalBroadcastManager;
    :cond_0
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLocation:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationNameShort:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 602
    :cond_1
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackTemp:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->tempCur:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0c01dc

    invoke-direct {p0, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 612
    .restart local v0       #condition:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mCondition:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackTemp:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    invoke-virtual {v5, v8, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_2

    .line 655
    .restart local v1       #df:Ljava/text/SimpleDateFormat;
    .restart local v2       #hour:I
    :cond_3
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayOneTemp:Landroid/widget/TextView;

    const-string v6, "N/A"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 665
    :cond_4
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayTwoTemp:Landroid/widget/TextView;

    const-string v6, "N/A"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 676
    :cond_5
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayThreeTemp:Landroid/widget/TextView;

    const-string v6, "N/A"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 685
    :cond_6
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayTwoDate:Landroid/widget/TextView;

    const v6, 0x7f0c0273

    invoke-direct {p0, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
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

    .line 698
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->stopAnimation()V

    .line 699
    iput-boolean v8, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mEnableFlip:Z

    .line 700
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->isEnglish()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 701
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLocation:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationNameShortEn:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    :goto_0
    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    if-eq v3, v7, :cond_1

    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    if-eq v3, v7, :cond_1

    .line 708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 709
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 710
    const v3, 0x7f0c01b3

    invoke-direct {p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 712
    const v3, 0x7f0c01dc

    invoke-direct {p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackTemp:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 718
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :goto_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mTemperature:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->tempCur:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0c01dc

    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 720
    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getConditionByLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, condition:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_2

    .line 723
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mCondition:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackTemp:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    const/high16 v5, 0x4040

    div-float/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 727
    :goto_2
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mCondition:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mWeatherAnimationViewController:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;

    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getTransparentWeatherIcon(Ljava/lang/String;Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/WeatherAnimationViewController;->setAnimationResource(I)V

    .line 731
    const/4 v1, 0x0

    .line 732
    .local v1, df:Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 733
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1           #df:Ljava/text/SimpleDateFormat;
    const-string v3, "HH:mm M/d"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 737
    .restart local v1       #df:Ljava/text/SimpleDateFormat;
    :goto_3
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayOneIcon:Landroid/widget/ImageView;

    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherTransparentBackSideIcon(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 741
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayTwoIcon:Landroid/widget/ImageView;

    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherTransparentBackSideIcon(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 745
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayThreeIcon:Landroid/widget/ImageView;

    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-object v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->conditions:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v3, v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/ResUtil;->getWeatherTransparentBackSideIcon(Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 750
    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    if-eq v3, v7, :cond_4

    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    if-eq v3, v7, :cond_4

    .line 753
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayOneTemp:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v5, 0x7f0c01b3

    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const v5, 0x7f0c01dc

    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    :goto_4
    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    if-eq v3, v7, :cond_5

    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    if-eq v3, v7, :cond_5

    .line 763
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayTwoTemp:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v5, 0x7f0c01b3

    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const v5, 0x7f0c01dc

    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    :goto_5
    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    if-eq v3, v7, :cond_6

    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    if-eq v3, v7, :cond_6

    .line 774
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayThreeTemp:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempLow:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v5, 0x7f0c01b3

    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget v3, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->tempHigh:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const v5, 0x7f0c01dc

    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    :goto_6
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayOneDate:Landroid/widget/TextView;

    const v4, 0x7f0c0272

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 785
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->isEnglish()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 786
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayTwoDate:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-wide v5, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    invoke-direct {p0, v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getDateString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    :goto_7
    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayThreeDate:Landroid/widget/TextView;

    iget-object v3, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->forecastOneDays:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;

    iget-wide v5, v3, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/ForecastOneDay;->date:J

    invoke-direct {p0, v5, v6}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getShortDateString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    return-void

    .line 703
    .end local v0           #condition:Ljava/lang/String;
    .end local v1           #df:Ljava/text/SimpleDateFormat;
    :cond_0
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLocation:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationNameShort:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 715
    :cond_1
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackTemp:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/Forecast;->tempCur:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0c01dc

    invoke-direct {p0, v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 725
    .restart local v0       #condition:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mCondition:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mBackTemp:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    invoke-virtual {v3, v6, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_2

    .line 735
    .restart local v1       #df:Ljava/text/SimpleDateFormat;
    :cond_3
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1           #df:Ljava/text/SimpleDateFormat;
    const-string v3, "hh:mm M/d"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v1       #df:Ljava/text/SimpleDateFormat;
    goto/16 :goto_3

    .line 759
    :cond_4
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayOneTemp:Landroid/widget/TextView;

    const-string v4, "N/A"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 769
    :cond_5
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayTwoTemp:Landroid/widget/TextView;

    const-string v4, "N/A"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 780
    :cond_6
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayThreeTemp:Landroid/widget/TextView;

    const-string v4, "N/A"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 789
    :cond_7
    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mDayTwoDate:Landroid/widget/TextView;

    const v4, 0x7f0c0273

    invoke-direct {p0, v4}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getResString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method

.method public onWhichScreen(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 1044
    return-void
.end method

.method public onWidgetAdded()V
    .locals 5

    .prologue
    .line 906
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->init()V

    .line 908
    const-string v2, "WeatherWidget"

    const-string v3, "onWidgetAdded"

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->startAnimation()V

    .line 913
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isNetworkConnectivity(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 914
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getCity()Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    move-result-object v0

    .line 915
    .local v0, city:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    const/4 v1, 0x0

    .line 916
    .local v1, locationName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 917
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->isEnglish()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 918
    iget-object v1, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationNameEn:Ljava/lang/String;

    .line 924
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

    .line 926
    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 927
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 932
    :goto_1
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->stopAnimation()V

    .line 934
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mContext:Landroid/content/Context;

    const v4, 0x7f0c01d9

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 938
    .end local v0           #city:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    .end local v1           #locationName:Ljava/lang/String;
    :goto_2
    return-void

    .line 920
    .restart local v0       #city:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    .restart local v1       #locationName:Ljava/lang/String;
    :cond_1
    iget-object v1, v0, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;->mLocationName:Ljava/lang/String;

    goto :goto_0

    .line 929
    :cond_2
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLocation:Landroid/widget/TextView;

    const v3, 0x7f0c01df

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 936
    .end local v0           #city:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    .end local v1           #locationName:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestUpdateWeather()V

    goto :goto_2
.end method

.method public onWidgetBinded()V
    .locals 3

    .prologue
    .line 942
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->init()V

    .line 944
    const-string v1, "WeatherWidget"

    const-string v2, "onWidgetBinded"

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v0

    .line 948
    .local v0, weatherManger:Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->restoreLastWeather()Z

    move-result v1

    if-nez v1, :cond_0

    .line 949
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mLocation:Landroid/widget/TextView;

    const v2, 0x7f0c01df

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 954
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isNetworkConnectivity(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/baidu/launcher/app/LauncherApplication;->appRebooting:Z

    if-nez v1, :cond_1

    .line 956
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mUpdate:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/RotationImageView;->startAnimation()V

    .line 957
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->requestUpdateWeather()V

    .line 959
    :cond_1
    return-void
.end method

.method public onWidgetRemoved()V
    .locals 2

    .prologue
    .line 963
    const-string v0, "WeatherWidget"

    const-string v1, "onWidgetRemoved"

    invoke-static {v0, v1}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager;->removeListener(Lcom/baidu/launcher/ui/widget/baidu/weather/control/DateManager$DateChangeListener;)V

    .line 965
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager;->removeListener(Lcom/baidu/launcher/ui/widget/baidu/weather/control/WeatherManager$WeatherChangeListener;)V

    .line 967
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/WeatherWidgetTransparent;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 970
    :goto_0
    return-void

    .line 968
    :catch_0
    move-exception v0

    goto :goto_0
.end method
