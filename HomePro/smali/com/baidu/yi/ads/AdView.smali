.class public final Lcom/baidu/yi/ads/AdView;
.super Landroid/widget/LinearLayout;
.source "AdView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/ads/AdView$DisplayUpdater;,
        Lcom/baidu/yi/ads/AdView$MyURLSpan;,
        Lcom/baidu/yi/ads/AdView$RequestAdTask;
    }
.end annotation


# static fields
.field private static final AD_CONTAINER_HEIGHT:[I = null

.field private static final AD_CONTAINER_WIDTH:[I = null

.field public static final AD_TYPE_QSHI_IMAGE:I = 0x2

.field public static final AD_TYPE_QSHI_TEXT:I = 0x1

.field public static final AD_TYPE_QSHI_TEXT_OR_IMAGE:I = 0x3

.field public static final AD_TYPE_YI_IMAGE:I = 0x2

.field public static final AD_TYPE_YI_TEXT:I = 0x1

.field public static final AD_TYPE_YI_TEXT_OR_IMAGE:I = 0x3

.field private static final CONNECTOR_STATE_KEY:Ljava/lang/String; = "B"

.field private static final CONTAINER_GAPS:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "YiAdView"

.field private static final SUPER_STATE_KEY:Ljava/lang/String; = "A"

.field public static final TYPE_BANNAR:I = 0x0

.field public static final TYPE_SQUARE:I = 0x1

.field public static final TYPE_TEXT:I = 0x2


# instance fields
.field private mActionExecutionListener:Lcom/baidu/yi/ads/ActionExecutionListener;

.field private mAdBackgroundFocus:I

.field private mAdBackgroundNormal:I

.field private mAdBackgroundPressed:I

.field private mAdListener:Lcom/baidu/yi/ads/AdRetrievalListener;

.field private mAdReqParam:Lcom/baidu/yi/ads/service/AdSpaceParams;

.field private mAdViewAnimationEnabled:Z

.field private mAdViewCloseBtnShown:Z

.field private mAlpha:I

.field private mBackgroundPadding:I

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mCloseBtn:Landroid/widget/ImageView;

.field private mCloseBtnBitmapNormal:Landroid/graphics/Bitmap;

.field private mCloseBtnBitmapPressed:Landroid/graphics/Bitmap;

.field private mCurrentAdId:Ljava/lang/String;

.field mCurrentDU:Lcom/baidu/yi/ads/AdView$DisplayUpdater;

.field private mCurrentMainView:Landroid/view/View;

.field mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

.field private mCurrentTextView:Landroid/view/View;

.field private mFramelayout:Landroid/widget/FrameLayout;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mImageView:Landroid/widget/ImageView;

.field private mIsPaused:Z

.field private mMixedIconViewWidth:I

.field private mMixedTextViewWidth:I

.field private mPeriod:J

.field private mRequestInProcess:Z

.field private mSecondViewBackgroundFocus:I

.field private mSecondViewBackgroundNormal:I

.field private mSecondViewBackgroundPressed:I

.field private mServiceConnector:Lcom/baidu/yi/ads/AdServiceConnector;

.field private mShowAnimation:Landroid/view/animation/TranslateAnimation;

.field private mTextView:Landroid/widget/TextView;

.field mTv:Landroid/widget/TextView;

.field private mType:I

.field private mWebView:Landroid/webkit/WebView;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 86
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/yi/ads/AdView;->AD_CONTAINER_HEIGHT:[I

    .line 94
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/baidu/yi/ads/AdView;->AD_CONTAINER_WIDTH:[I

    .line 105
    return-void

    .line 86
    nop

    :array_0
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
    .end array-data

    .line 94
    :array_1
    .array-data 0x4
        0xf0t 0x0t 0x0t 0x0t
        0x40t 0x1t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x1ct 0x2t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
        0x80t 0x2t 0x0t 0x0t
        0xd0t 0x2t 0x0t 0x0t
        0x20t 0x3t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 538
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 115
    iput-boolean v2, p0, Lcom/baidu/yi/ads/AdView;->mAdViewAnimationEnabled:Z

    .line 120
    iput-boolean v2, p0, Lcom/baidu/yi/ads/AdView;->mAdViewCloseBtnShown:Z

    .line 125
    iput-object v3, p0, Lcom/baidu/yi/ads/AdView;->mCurrentAdId:Ljava/lang/String;

    .line 132
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/baidu/yi/ads/AdView;->mPeriod:J

    .line 137
    iput-boolean v2, p0, Lcom/baidu/yi/ads/AdView;->mIsPaused:Z

    .line 147
    iput-object v3, p0, Lcom/baidu/yi/ads/AdView;->mCurrentDU:Lcom/baidu/yi/ads/AdView$DisplayUpdater;

    .line 443
    const/16 v0, 0xff

    iput v0, p0, Lcom/baidu/yi/ads/AdView;->mAlpha:I

    .line 509
    iput v2, p0, Lcom/baidu/yi/ads/AdView;->mBackgroundPadding:I

    .line 529
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/ads/AdView;->mHandler:Landroid/os/Handler;

    .line 539
    invoke-direct {p0, p1, v3}, Lcom/baidu/yi/ads/AdView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 540
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 550
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    iput-boolean v2, p0, Lcom/baidu/yi/ads/AdView;->mAdViewAnimationEnabled:Z

    .line 120
    iput-boolean v2, p0, Lcom/baidu/yi/ads/AdView;->mAdViewCloseBtnShown:Z

    .line 125
    iput-object v3, p0, Lcom/baidu/yi/ads/AdView;->mCurrentAdId:Ljava/lang/String;

    .line 132
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/baidu/yi/ads/AdView;->mPeriod:J

    .line 137
    iput-boolean v2, p0, Lcom/baidu/yi/ads/AdView;->mIsPaused:Z

    .line 147
    iput-object v3, p0, Lcom/baidu/yi/ads/AdView;->mCurrentDU:Lcom/baidu/yi/ads/AdView$DisplayUpdater;

    .line 443
    const/16 v0, 0xff

    iput v0, p0, Lcom/baidu/yi/ads/AdView;->mAlpha:I

    .line 509
    iput v2, p0, Lcom/baidu/yi/ads/AdView;->mBackgroundPadding:I

    .line 529
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/ads/AdView;->mHandler:Landroid/os/Handler;

    .line 551
    invoke-direct {p0, p1, p2}, Lcom/baidu/yi/ads/AdView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 552
    return-void
.end method

.method static synthetic access$0(Lcom/baidu/yi/ads/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 846
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdView;->clearFrameLayout()V

    return-void
.end method

.method static synthetic access$1(Lcom/baidu/yi/ads/AdView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 438
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/baidu/yi/ads/AdView;)I
    .locals 1
    .parameter

    .prologue
    .line 489
    iget v0, p0, Lcom/baidu/yi/ads/AdView;->mHeight:I

    return v0
.end method

.method static synthetic access$11(Lcom/baidu/yi/ads/AdView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 436
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/baidu/yi/ads/AdView;Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1115
    invoke-direct {p0, p1}, Lcom/baidu/yi/ads/AdView;->createImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13(Lcom/baidu/yi/ads/AdView;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/baidu/yi/ads/AdView;->mImageView:Landroid/widget/ImageView;

    return-void
.end method

.method static synthetic access$14(Lcom/baidu/yi/ads/AdView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 554
    invoke-direct {p0, p1}, Lcom/baidu/yi/ads/AdView;->dumpBitmapMemory(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$15(Lcom/baidu/yi/ads/AdView;)I
    .locals 1
    .parameter

    .prologue
    .line 443
    iget v0, p0, Lcom/baidu/yi/ads/AdView;->mAlpha:I

    return v0
.end method

.method static synthetic access$16(Lcom/baidu/yi/ads/AdView;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdView;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17(Lcom/baidu/yi/ads/AdView;)Z
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/baidu/yi/ads/AdView;->mAdViewAnimationEnabled:Z

    return v0
.end method

.method static synthetic access$18(Lcom/baidu/yi/ads/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdView;->startAnimation()V

    return-void
.end method

.method static synthetic access$19(Lcom/baidu/yi/ads/AdView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 499
    iput p1, p0, Lcom/baidu/yi/ads/AdView;->mMixedIconViewWidth:I

    return-void
.end method

.method static synthetic access$2(Lcom/baidu/yi/ads/AdView;Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 982
    invoke-direct {p0, p1, p2}, Lcom/baidu/yi/ads/AdView;->createTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20(Lcom/baidu/yi/ads/AdView;)I
    .locals 1
    .parameter

    .prologue
    .line 499
    iget v0, p0, Lcom/baidu/yi/ads/AdView;->mMixedIconViewWidth:I

    return v0
.end method

.method static synthetic access$21(Lcom/baidu/yi/ads/AdView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 494
    iput p1, p0, Lcom/baidu/yi/ads/AdView;->mMixedTextViewWidth:I

    return-void
.end method

.method static synthetic access$22(Lcom/baidu/yi/ads/AdView;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1035
    invoke-direct {p0, p1}, Lcom/baidu/yi/ads/AdView;->setRightTextViewProperties(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$23(Lcom/baidu/yi/ads/AdView;)I
    .locals 1
    .parameter

    .prologue
    .line 494
    iget v0, p0, Lcom/baidu/yi/ads/AdView;->mMixedTextViewWidth:I

    return v0
.end method

.method static synthetic access$24(Lcom/baidu/yi/ads/AdView;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 439
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$25(Lcom/baidu/yi/ads/AdView;Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1128
    invoke-direct {p0, p1}, Lcom/baidu/yi/ads/AdView;->createWebView(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$26(Lcom/baidu/yi/ads/AdView;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/baidu/yi/ads/AdView;->mWebView:Landroid/webkit/WebView;

    return-void
.end method

.method static synthetic access$27(Lcom/baidu/yi/ads/AdView;)Lcom/baidu/yi/ads/AdRetrievalListener;
    .locals 1
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mAdListener:Lcom/baidu/yi/ads/AdRetrievalListener;

    return-object v0
.end method

.method static synthetic access$28(Lcom/baidu/yi/ads/AdView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/baidu/yi/ads/AdView;->mCurrentMainView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$29(Lcom/baidu/yi/ads/AdView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTextView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$3(Lcom/baidu/yi/ads/AdView;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/baidu/yi/ads/AdView;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$30(Lcom/baidu/yi/ads/AdView;Z)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1083
    invoke-direct {p0, p1}, Lcom/baidu/yi/ads/AdView;->getAdContainerParams(Z)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$31(Lcom/baidu/yi/ads/AdView;)Z
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/baidu/yi/ads/AdView;->mAdViewCloseBtnShown:Z

    return v0
.end method

.method static synthetic access$32(Lcom/baidu/yi/ads/AdView;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 514
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCloseBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$33(Lcom/baidu/yi/ads/AdView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 519
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCloseBtnBitmapNormal:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$34(Lcom/baidu/yi/ads/AdView;IIII)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1057
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/yi/ads/AdView;->getCloseButtonParams(IIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$35(Lcom/baidu/yi/ads/AdView;)I
    .locals 1
    .parameter

    .prologue
    .line 509
    iget v0, p0, Lcom/baidu/yi/ads/AdView;->mBackgroundPadding:I

    return v0
.end method

.method static synthetic access$36(Lcom/baidu/yi/ads/AdView;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 1101
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdView;->getSecondContainerParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$37(Lcom/baidu/yi/ads/AdView;)V
    .locals 0
    .parameter

    .prologue
    .line 1563
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdView;->setNormalBackground()V

    return-void
.end method

.method static synthetic access$38(Lcom/baidu/yi/ads/AdView;)Lcom/baidu/yi/ads/service/AdSpaceParams;
    .locals 1
    .parameter

    .prologue
    .line 504
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mAdReqParam:Lcom/baidu/yi/ads/service/AdSpaceParams;

    return-object v0
.end method

.method static synthetic access$39(Lcom/baidu/yi/ads/AdView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCurrentAdId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/baidu/yi/ads/AdView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 943
    invoke-direct {p0, p1, p2}, Lcom/baidu/yi/ads/AdView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$40(Lcom/baidu/yi/ads/AdView;)Lcom/baidu/yi/ads/AdServiceConnector;
    .locals 1
    .parameter

    .prologue
    .line 453
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mServiceConnector:Lcom/baidu/yi/ads/AdServiceConnector;

    return-object v0
.end method

.method static synthetic access$41(Lcom/baidu/yi/ads/AdView;)Lcom/baidu/yi/ads/ActionExecutionListener;
    .locals 1
    .parameter

    .prologue
    .line 431
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mActionExecutionListener:Lcom/baidu/yi/ads/ActionExecutionListener;

    return-object v0
.end method

.method static synthetic access$42(Lcom/baidu/yi/ads/AdView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 529
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$43(Lcom/baidu/yi/ads/AdView;)J
    .locals 2
    .parameter

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/baidu/yi/ads/AdView;->mPeriod:J

    return-wide v0
.end method

.method static synthetic access$44(Lcom/baidu/yi/ads/AdView;)Z
    .locals 1
    .parameter

    .prologue
    .line 458
    iget-boolean v0, p0, Lcom/baidu/yi/ads/AdView;->mRequestInProcess:Z

    return v0
.end method

.method static synthetic access$45(Lcom/baidu/yi/ads/AdView;Lcom/baidu/yi/ads/AdRetrievalListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/baidu/yi/ads/AdView;->mAdListener:Lcom/baidu/yi/ads/AdRetrievalListener;

    return-void
.end method

.method static synthetic access$46(Lcom/baidu/yi/ads/AdView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/baidu/yi/ads/AdView;->mRequestInProcess:Z

    return-void
.end method

.method static synthetic access$47(Lcom/baidu/yi/ads/AdView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1550
    invoke-direct {p0, p1}, Lcom/baidu/yi/ads/AdView;->handleAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/baidu/yi/ads/AdView;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1024
    invoke-direct {p0, p1}, Lcom/baidu/yi/ads/AdView;->setMainTextViewProperties(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$6(Lcom/baidu/yi/ads/AdView;)I
    .locals 1
    .parameter

    .prologue
    .line 479
    iget v0, p0, Lcom/baidu/yi/ads/AdView;->mType:I

    return v0
.end method

.method static synthetic access$7(Lcom/baidu/yi/ads/AdView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 484
    iput p1, p0, Lcom/baidu/yi/ads/AdView;->mWidth:I

    return-void
.end method

.method static synthetic access$8(Lcom/baidu/yi/ads/AdView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 489
    iput p1, p0, Lcom/baidu/yi/ads/AdView;->mHeight:I

    return-void
.end method

.method static synthetic access$9(Lcom/baidu/yi/ads/AdView;)I
    .locals 1
    .parameter

    .prologue
    .line 484
    iget v0, p0, Lcom/baidu/yi/ads/AdView;->mWidth:I

    return v0
.end method

.method private clearFrameLayout()V
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mFramelayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mFramelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 850
    :cond_0
    return-void
.end method

.method private createImageView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 1
    .parameter "context"

    .prologue
    .line 1116
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1118
    .local v0, imgView:Landroid/widget/ImageView;
    return-object v0
.end method

.method private createTextView(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3
    .parameter "context"
    .parameter "text"

    .prologue
    .line 983
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 984
    .local v0, tv:Landroid/widget/TextView;
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 985
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 987
    return-object v0
.end method

.method private createWebView(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 2
    .parameter "context"

    .prologue
    .line 1129
    new-instance v0, Lcom/baidu/yi/ads/AdView$3;

    invoke-direct {v0, p0, p1}, Lcom/baidu/yi/ads/AdView$3;-><init>(Lcom/baidu/yi/ads/AdView;Landroid/content/Context;)V

    .line 1137
    .local v0, wv:Landroid/webkit/WebView;
    new-instance v1, Lcom/baidu/yi/ads/AdView$4;

    invoke-direct {v1, p0}, Lcom/baidu/yi/ads/AdView$4;-><init>(Lcom/baidu/yi/ads/AdView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1169
    invoke-virtual {p0}, Lcom/baidu/yi/ads/AdView;->isClickable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setClickable(Z)V

    .line 1170
    return-object v0
.end method

.method private dumpBitmapMemory(Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "bm"

    .prologue
    .line 555
    if-nez p1, :cond_0

    .line 567
    :goto_0
    return-void

    .line 559
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 560
    .local v3, w:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 561
    .local v0, h:I
    mul-int v4, v3, v0

    int-to-long v1, v4

    .line 565
    .local v1, pixel:J
    const/4 v4, 0x2

    shl-long/2addr v1, v4

    .line 566
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "in Config.ARGB_8888,the memory occupied by bitemap:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x14

    shr-long v5, v1, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "M"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/32 v5, 0xfffff

    and-long/2addr v5, v1

    const/16 v7, 0xa

    shr-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "K"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAdContainerParams(Z)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4
    .parameter "isDoubleView"

    .prologue
    const/4 v3, 0x3

    .line 1084
    const/4 v0, 0x0

    .line 1085
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_0

    .line 1086
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/baidu/yi/ads/AdView;->mMixedIconViewWidth:I

    iget v2, p0, Lcom/baidu/yi/ads/AdView;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1087
    .restart local v0       #params:Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1088
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1094
    :goto_0
    return-object v0

    .line 1090
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    iget v1, p0, Lcom/baidu/yi/ads/AdView;->mWidth:I

    iget v2, p0, Lcom/baidu/yi/ads/AdView;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1091
    .restart local v0       #params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private getBitmapFromStream(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "name"

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/baidu/yi/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 854
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 855
    .local v0, am:Landroid/content/res/AssetManager;
    const/4 v4, 0x0

    .line 857
    .local v4, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 861
    :goto_0
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 862
    .local v1, b:Landroid/graphics/Bitmap;
    return-object v1

    .line 858
    .end local v1           #b:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 859
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getCloseButtonParams(IIII)Landroid/widget/FrameLayout$LayoutParams;
    .locals 6
    .parameter "parentW"
    .parameter "parentH"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v5, 0x0

    .line 1058
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1060
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/baidu/yi/ads/AdView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1061
    .local v2, width:I
    invoke-virtual {p0}, Lcom/baidu/yi/ads/AdView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1062
    .local v0, height:I
    iget v3, p0, Lcom/baidu/yi/ads/AdView;->mType:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/baidu/yi/ads/AdView;->mType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/baidu/yi/ads/AdView;->mHeight:I

    if-ne v3, v0, :cond_3

    iget v3, p0, Lcom/baidu/yi/ads/AdView;->mWidth:I

    if-ne v3, v2, :cond_3

    .line 1063
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 1064
    :cond_1
    iget v3, p0, Lcom/baidu/yi/ads/AdView;->mWidth:I

    iget v4, p0, Lcom/baidu/yi/ads/AdView;->mBackgroundPadding:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p3

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/baidu/yi/ads/AdView;->mHeight:I

    sub-int/2addr v4, p4

    invoke-virtual {v1, v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1075
    :goto_0
    return-object v1

    .line 1066
    :cond_2
    iget v3, p0, Lcom/baidu/yi/ads/AdView;->mBackgroundPadding:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p3

    sub-int v3, p1, v3

    sub-int v4, p2, p4

    invoke-virtual {v1, v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 1069
    :cond_3
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 1070
    :cond_4
    iget v3, p0, Lcom/baidu/yi/ads/AdView;->mWidth:I

    sub-int/2addr v3, p3

    iget v4, p0, Lcom/baidu/yi/ads/AdView;->mHeight:I

    sub-int/2addr v4, p4

    invoke-virtual {v1, v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 1072
    :cond_5
    sub-int v3, p1, p3

    sub-int v4, p2, p4

    invoke-virtual {v1, v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private getFrameLayout()Landroid/widget/FrameLayout;
    .locals 3

    .prologue
    .line 834
    iget-object v2, p0, Lcom/baidu/yi/ads/AdView;->mFramelayout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 835
    iget-object v2, p0, Lcom/baidu/yi/ads/AdView;->mFramelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 836
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mFramelayout:Landroid/widget/FrameLayout;

    .line 843
    :goto_0
    return-object v0

    .line 838
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/baidu/yi/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 839
    .local v0, fl:Landroid/widget/FrameLayout;
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdView;->getFrameLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 840
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 841
    iput-object v0, p0, Lcom/baidu/yi/ads/AdView;->mFramelayout:Landroid/widget/FrameLayout;

    .line 842
    iget-object v2, p0, Lcom/baidu/yi/ads/AdView;->mFramelayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    goto :goto_0
.end method

.method private getFrameLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 1047
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/baidu/yi/ads/AdView;->mWidth:I

    iget v2, p0, Lcom/baidu/yi/ads/AdView;->mHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1049
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    return-object v0
.end method

.method private getSecondContainerParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 1102
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/baidu/yi/ads/AdView;->mMixedTextViewWidth:I

    .line 1103
    iget v2, p0, Lcom/baidu/yi/ads/AdView;->mHeight:I

    .line 1102
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1104
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1105
    return-object v0
.end method

.method private handleAction(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 1551
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1552
    .local v0, callIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/baidu/yi/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1553
    invoke-virtual {p0}, Lcom/baidu/yi/ads/AdView;->clearFocus()V

    .line 1554
    iget-object v1, p0, Lcom/baidu/yi/ads/AdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearFocus()V

    .line 1555
    iget-object v1, p0, Lcom/baidu/yi/ads/AdView;->mActionExecutionListener:Lcom/baidu/yi/ads/ActionExecutionListener;

    if-eqz v1, :cond_0

    .line 1556
    iget-object v1, p0, Lcom/baidu/yi/ads/AdView;->mActionExecutionListener:Lcom/baidu/yi/ads/ActionExecutionListener;

    invoke-interface {v1}, Lcom/baidu/yi/ads/ActionExecutionListener;->onActionExecuted()V

    .line 1558
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 913
    new-instance v0, Lcom/baidu/yi/ads/AdServiceConnector;

    invoke-direct {v0, p0}, Lcom/baidu/yi/ads/AdServiceConnector;-><init>(Lcom/baidu/yi/ads/AdView;)V

    iput-object v0, p0, Lcom/baidu/yi/ads/AdView;->mServiceConnector:Lcom/baidu/yi/ads/AdServiceConnector;

    .line 914
    new-instance v0, Lcom/baidu/yi/ads/AdView$2;

    invoke-direct {v0, p0}, Lcom/baidu/yi/ads/AdView$2;-><init>(Lcom/baidu/yi/ads/AdView;)V

    iput-object v0, p0, Lcom/baidu/yi/ads/AdView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 928
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdView;->initAnimation()V

    .line 930
    new-instance v0, Lcom/baidu/yi/ads/service/AdSpaceParams;

    invoke-virtual {p0}, Lcom/baidu/yi/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/yi/ads/service/AdSpaceParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/yi/ads/AdView;->mAdReqParam:Lcom/baidu/yi/ads/service/AdSpaceParams;

    .line 931
    invoke-virtual {p0}, Lcom/baidu/yi/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/yi/ads/ubc/UBC;->init(Landroid/content/Context;)V

    .line 932
    invoke-virtual {p0}, Lcom/baidu/yi/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/yi/ads/service/utils/DeviceEnv$Static;->init(Landroid/content/Context;)V

    .line 934
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/baidu/yi/ads/AdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdView;->initCloseButton()V

    .line 936
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/yi/ads/AdView;->setOrientation(I)V

    .line 937
    return-void
.end method

.method private initAnimation()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 690
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .line 691
    const/high16 v2, 0x3f80

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    .line 693
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 690
    iput-object v0, p0, Lcom/baidu/yi/ads/AdView;->mShowAnimation:Landroid/view/animation/TranslateAnimation;

    .line 694
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mShowAnimation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 695
    return-void
.end method

.method private initBannarMetric()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 598
    invoke-virtual {p0}, Lcom/baidu/yi/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 599
    .local v2, displayWidth:I
    invoke-virtual {p0}, Lcom/baidu/yi/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 601
    .local v1, displayHeight:I
    sget-object v5, Lcom/baidu/yi/ads/AdView;->AD_CONTAINER_WIDTH:[I

    aget v5, v5, v6

    iput v5, p0, Lcom/baidu/yi/ads/AdView;->mWidth:I

    .line 603
    sget-object v5, Lcom/baidu/yi/ads/AdView;->AD_CONTAINER_WIDTH:[I

    aget v5, v5, v6

    sub-int v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 605
    .local v4, min:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v5, Lcom/baidu/yi/ads/AdView;->AD_CONTAINER_WIDTH:[I

    array-length v5, v5

    if-lt v3, v5, :cond_0

    .line 615
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Device metrics: width = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 616
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AdView metrics: width = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/baidu/yi/ads/AdView;->mWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/baidu/yi/ads/AdView;->mHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 617
    return-void

    .line 606
    :cond_0
    sget-object v5, Lcom/baidu/yi/ads/AdView;->AD_CONTAINER_WIDTH:[I

    aget v5, v5, v3

    sub-int v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 607
    .local v0, abs:I
    if-ge v0, v4, :cond_1

    .line 608
    move v4, v0

    .line 609
    sget-object v5, Lcom/baidu/yi/ads/AdView;->AD_CONTAINER_WIDTH:[I

    aget v5, v5, v3

    iput v5, p0, Lcom/baidu/yi/ads/AdView;->mWidth:I

    .line 610
    sget-object v5, Lcom/baidu/yi/ads/AdView;->AD_CONTAINER_HEIGHT:[I

    aget v5, v5, v3

    iput v5, p0, Lcom/baidu/yi/ads/AdView;->mHeight:I

    .line 611
    iput v6, p0, Lcom/baidu/yi/ads/AdView;->mMixedTextViewWidth:I

    .line 605
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private initCloseButton()V
    .locals 5

    .prologue
    .line 870
    const-string v3, "button_close.png"

    invoke-direct {p0, v3}, Lcom/baidu/yi/ads/AdView;->getBitmapFromStream(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 871
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 872
    iput-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCloseBtnBitmapNormal:Landroid/graphics/Bitmap;

    .line 875
    :cond_0
    const-string v3, "button_close_pressed.png"

    invoke-direct {p0, v3}, Lcom/baidu/yi/ads/AdView;->getBitmapFromStream(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 876
    .local v1, bPressed:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 877
    iput-object v1, p0, Lcom/baidu/yi/ads/AdView;->mCloseBtnBitmapPressed:Landroid/graphics/Bitmap;

    .line 880
    :cond_1
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView;->mCloseBtnBitmapNormal:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 881
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView;->mCloseBtn:Landroid/widget/ImageView;

    if-nez v3, :cond_2

    .line 882
    invoke-virtual {p0}, Lcom/baidu/yi/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/baidu/yi/ads/AdView;->createImageView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/yi/ads/AdView;->mCloseBtn:Landroid/widget/ImageView;

    .line 884
    :cond_2
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView;->mCloseBtn:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/baidu/yi/ads/AdView;->mCloseBtnBitmapNormal:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 886
    new-instance v2, Lcom/baidu/yi/ads/AdView$1;

    invoke-direct {v2, p0}, Lcom/baidu/yi/ads/AdView$1;-><init>(Lcom/baidu/yi/ads/AdView;)V

    .line 900
    .local v2, listener:Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView;->mCloseBtn:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 904
    .end local v2           #listener:Landroid/view/View$OnClickListener;
    :goto_0
    return-void

    .line 902
    :cond_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/baidu/yi/ads/AdView;->mCloseBtn:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method static logD(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1518
    const-string v0, "YiAdView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1519
    const-string v0, "YiAdView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    :cond_0
    return-void
.end method

.method static logE(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1540
    const-string v0, "YiAdView"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1541
    const-string v0, "YiAdView"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    :cond_0
    return-void
.end method

.method static logW(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 1529
    const-string v0, "YiAdView"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1530
    const-string v0, "YiAdView"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    :cond_0
    return-void
.end method

.method private setComponyInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "desc"

    .prologue
    .line 750
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mAdReqParam:Lcom/baidu/yi/ads/service/AdSpaceParams;

    invoke-virtual {v0, p1}, Lcom/baidu/yi/ads/service/AdSpaceParams;->setCompanyInfo(Ljava/lang/String;)V

    .line 751
    return-void
.end method

.method private setFocusBackground()V
    .locals 2

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCurrentMainView:Landroid/view/View;

    iget v1, p0, Lcom/baidu/yi/ads/AdView;->mAdBackgroundFocus:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1578
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCloseBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/yi/ads/AdView;->mAdViewCloseBtnShown:Z

    if-eqz v0, :cond_0

    .line 1579
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCloseBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/yi/ads/AdView;->mCloseBtnBitmapPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1581
    :cond_0
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTextView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1582
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTextView:Landroid/view/View;

    iget v1, p0, Lcom/baidu/yi/ads/AdView;->mSecondViewBackgroundFocus:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1584
    :cond_1
    return-void
.end method

.method private setMainTextViewProperties(Landroid/widget/TextView;)V
    .locals 2
    .parameter "tv"

    .prologue
    const/4 v1, 0x3

    .line 1026
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1027
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1028
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1029
    return-void
.end method

.method private setNormalBackground()V
    .locals 2

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCurrentMainView:Landroid/view/View;

    iget v1, p0, Lcom/baidu/yi/ads/AdView;->mAdBackgroundNormal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1565
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCloseBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/yi/ads/AdView;->mAdViewCloseBtnShown:Z

    if-eqz v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCloseBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/yi/ads/AdView;->mCloseBtnBitmapNormal:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1568
    :cond_0
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTextView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1569
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTextView:Landroid/view/View;

    iget v1, p0, Lcom/baidu/yi/ads/AdView;->mSecondViewBackgroundNormal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1571
    :cond_1
    return-void
.end method

.method private setPressedBackground()V
    .locals 2

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCurrentMainView:Landroid/view/View;

    iget v1, p0, Lcom/baidu/yi/ads/AdView;->mAdBackgroundPressed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1591
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCloseBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/yi/ads/AdView;->mAdViewCloseBtnShown:Z

    if-eqz v0, :cond_0

    .line 1592
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCloseBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/baidu/yi/ads/AdView;->mCloseBtnBitmapPressed:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1594
    :cond_0
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTextView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1595
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTextView:Landroid/view/View;

    iget v1, p0, Lcom/baidu/yi/ads/AdView;->mSecondViewBackgroundPressed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1597
    :cond_1
    return-void
.end method

.method private setReqAdType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mAdReqParam:Lcom/baidu/yi/ads/service/AdSpaceParams;

    invoke-virtual {v0, p1}, Lcom/baidu/yi/ads/service/AdSpaceParams;->setReqType(I)V

    .line 735
    return-void
.end method

.method private setReqNum(I)V
    .locals 1
    .parameter "num"

    .prologue
    .line 742
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mAdReqParam:Lcom/baidu/yi/ads/service/AdSpaceParams;

    invoke-virtual {v0, p1}, Lcom/baidu/yi/ads/service/AdSpaceParams;->setReqNum(I)V

    .line 743
    return-void
.end method

.method private setRightTextViewProperties(Landroid/widget/TextView;)V
    .locals 1
    .parameter "tv"

    .prologue
    .line 1036
    const/high16 v0, 0x4140

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1038
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1039
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1040
    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 15
    .parameter "tv"
    .parameter "text"

    .prologue
    .line 944
    iget v9, p0, Lcom/baidu/yi/ads/AdView;->mType:I

    if-nez v9, :cond_1

    .line 945
    const v9, -0xee9528

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 946
    const/4 v9, 0x2

    const/high16 v10, 0x4160

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 947
    invoke-virtual/range {p1 .. p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 951
    :cond_1
    const-string v9, "\n"

    const-string v10, "<br>"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 952
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "<a href=\"http://www.baidu.com/\">"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "</a>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 953
    .local v2, html:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 955
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 956
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 957
    .local v6, t:Ljava/lang/CharSequence;
    instance-of v9, v6, Landroid/text/Spannable;

    if-eqz v9, :cond_0

    .line 958
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 959
    .local v1, end:I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    .line 960
    .local v4, sp:Landroid/text/Spannable;
    const/4 v9, 0x0

    const-class v10, Landroid/text/style/URLSpan;

    invoke-interface {v4, v9, v1, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/URLSpan;

    .line 961
    .local v8, urls:[Landroid/text/style/URLSpan;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 962
    .local v5, style:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 963
    array-length v10, v8

    const/4 v9, 0x0

    :goto_1
    if-lt v9, v10, :cond_2

    .line 969
    const/4 v9, 0x2

    const/high16 v10, 0x4160

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 970
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 963
    :cond_2
    aget-object v7, v8, v9

    .line 964
    .local v7, url:Landroid/text/style/URLSpan;
    new-instance v3, Lcom/baidu/yi/ads/AdView$MyURLSpan;

    invoke-virtual {v7}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, p0, v11}, Lcom/baidu/yi/ads/AdView$MyURLSpan;-><init>(Lcom/baidu/yi/ads/AdView;Ljava/lang/String;)V

    .line 965
    .local v3, myURLSpan:Lcom/baidu/yi/ads/AdView$MyURLSpan;
    invoke-interface {v4, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v4, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    const/16 v13, 0x21

    invoke-virtual {v5, v3, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 966
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    const v12, -0xee9528

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v4, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v12

    invoke-interface {v4, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v13

    const/16 v14, 0x21

    invoke-virtual {v5, v11, v12, v13, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 963
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mShowAnimation:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mFramelayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mFramelayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/baidu/yi/ads/AdView;->mShowAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 704
    :cond_0
    return-void
.end method


# virtual methods
.method public adRequestInProcess()Z
    .locals 1

    .prologue
    .line 1370
    monitor-enter p0

    .line 1371
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/yi/ads/AdView;->mRequestInProcess:Z

    monitor-exit p0

    return v0

    .line 1370
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method composeClientAd(Lcom/baidu/yi/ads/Ad;)Lcom/baidu/yi/ads/api/AdClient;
    .locals 2
    .parameter "ad"

    .prologue
    .line 1179
    new-instance v0, Lcom/baidu/yi/ads/api/AdClient;

    invoke-direct {v0}, Lcom/baidu/yi/ads/api/AdClient;-><init>()V

    .line 1180
    .local v0, adClt:Lcom/baidu/yi/ads/api/AdClient;
    invoke-virtual {p1}, Lcom/baidu/yi/ads/Ad;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/yi/ads/api/AdClient;->mImage:Landroid/graphics/Bitmap;

    .line 1181
    invoke-virtual {p1}, Lcom/baidu/yi/ads/Ad;->getContentType()I

    move-result v1

    iput v1, v0, Lcom/baidu/yi/ads/api/AdClient;->mContentType:I

    .line 1182
    invoke-virtual {p1}, Lcom/baidu/yi/ads/Ad;->getDesc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/yi/ads/api/AdClient;->mDesc:Ljava/lang/String;

    .line 1183
    invoke-virtual {p1}, Lcom/baidu/yi/ads/Ad;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/yi/ads/api/AdClient;->mTitle:Ljava/lang/String;

    .line 1184
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/baidu/yi/ads/Ad;->getAction(I)Lcom/baidu/yi/ads/Ad$Action;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/yi/ads/Ad$Action;->getDestination()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/yi/ads/api/AdClient;->mClickUrl:Ljava/lang/String;

    .line 1185
    return-object v0
.end method

.method public enableAdViewAnimation(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 717
    iput-boolean p1, p0, Lcom/baidu/yi/ads/AdView;->mAdViewAnimationEnabled:Z

    .line 718
    return-void
.end method

.method public enableAdViewCloseBtnShown(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 710
    iput-boolean p1, p0, Lcom/baidu/yi/ads/AdView;->mAdViewCloseBtnShown:Z

    .line 711
    return-void
.end method

.method public getAdViewHeight()I
    .locals 1

    .prologue
    .line 676
    iget v0, p0, Lcom/baidu/yi/ads/AdView;->mHeight:I

    return v0
.end method

.method public getAdViewWidth()I
    .locals 1

    .prologue
    .line 672
    iget v0, p0, Lcom/baidu/yi/ads/AdView;->mWidth:I

    return v0
.end method

.method getCurrentDU(Lcom/baidu/yi/ads/Ad;)Lcom/baidu/yi/ads/AdView$DisplayUpdater;
    .locals 1
    .parameter "ad"

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCurrentDU:Lcom/baidu/yi/ads/AdView$DisplayUpdater;

    if-nez v0, :cond_0

    .line 1190
    new-instance v0, Lcom/baidu/yi/ads/AdView$DisplayUpdater;

    invoke-direct {v0, p0, p1}, Lcom/baidu/yi/ads/AdView$DisplayUpdater;-><init>(Lcom/baidu/yi/ads/AdView;Lcom/baidu/yi/ads/Ad;)V

    iput-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCurrentDU:Lcom/baidu/yi/ads/AdView$DisplayUpdater;

    .line 1194
    :goto_0
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCurrentDU:Lcom/baidu/yi/ads/AdView$DisplayUpdater;

    return-object v0

    .line 1192
    :cond_0
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCurrentDU:Lcom/baidu/yi/ads/AdView$DisplayUpdater;

    invoke-virtual {v0, p1}, Lcom/baidu/yi/ads/AdView$DisplayUpdater;->setAd(Lcom/baidu/yi/ads/Ad;)V

    goto :goto_0
.end method

.method public isAdAvailable()Z
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mServiceConnector:Lcom/baidu/yi/ads/AdServiceConnector;

    invoke-virtual {v0}, Lcom/baidu/yi/ads/AdServiceConnector;->getCurrentAd()Lcom/baidu/yi/ads/Ad;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAdFrameworkAvailable()Z
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mServiceConnector:Lcom/baidu/yi/ads/AdServiceConnector;

    invoke-virtual {v0}, Lcom/baidu/yi/ads/AdServiceConnector;->isAdFrameworkAvailable()Z

    move-result v0

    return v0
.end method

.method onAdRetrieved(Lcom/baidu/yi/ads/Ad;)V
    .locals 8
    .parameter "ad"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1206
    const/4 v1, 0x0

    .line 1209
    .local v1, listener:Lcom/baidu/yi/ads/AdRetrievalListener;
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    if-nez v3, :cond_1

    .line 1210
    const-string v3, "Current task is null, adview has been exited"

    invoke-static {v3}, Lcom/baidu/yi/ads/AdView;->logE(Ljava/lang/String;)V

    .line 1263
    :cond_0
    :goto_0
    return-void

    .line 1214
    :cond_1
    monitor-enter p0

    .line 1215
    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/baidu/yi/ads/AdView;->mRequestInProcess:Z

    .line 1216
    move-object v0, p1

    .line 1217
    .local v0, currentAd:Lcom/baidu/yi/ads/Ad;
    invoke-virtual {p1}, Lcom/baidu/yi/ads/Ad;->getAdId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/yi/ads/AdView;->mCurrentAdId:Ljava/lang/String;

    .line 1218
    iget-object v1, p0, Lcom/baidu/yi/ads/AdView;->mAdListener:Lcom/baidu/yi/ads/AdRetrievalListener;

    .line 1214
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1222
    invoke-virtual {p1}, Lcom/baidu/yi/ads/Ad;->getContentType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 1223
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v5}, Lcom/baidu/yi/ads/AdView;->getCurrentDU(Lcom/baidu/yi/ads/Ad;)Lcom/baidu/yi/ads/AdView$DisplayUpdater;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1225
    invoke-virtual {p1}, Lcom/baidu/yi/ads/Ad;->getShowTime()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/baidu/yi/ads/AdView;->mPeriod:J

    .line 1226
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    iget-wide v5, p0, Lcom/baidu/yi/ads/AdView;->mPeriod:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1228
    if-eqz v1, :cond_0

    .line 1229
    invoke-interface {v1, v7}, Lcom/baidu/yi/ads/AdRetrievalListener;->onAdRetrieved(Z)V

    goto :goto_0

    .line 1214
    .end local v0           #currentAd:Lcom/baidu/yi/ads/Ad;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1235
    .restart local v0       #currentAd:Lcom/baidu/yi/ads/Ad;
    :cond_2
    const/16 v3, 0x80

    invoke-virtual {p1, v3}, Lcom/baidu/yi/ads/Ad;->getAction(I)Lcom/baidu/yi/ads/Ad$Action;

    move-result-object v2

    .line 1236
    .local v2, shownAct:Lcom/baidu/yi/ads/Ad$Action;
    if-eqz v2, :cond_3

    .line 1237
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView;->mServiceConnector:Lcom/baidu/yi/ads/AdServiceConnector;

    invoke-virtual {v3, v2}, Lcom/baidu/yi/ads/AdServiceConnector;->executeAction(Lcom/baidu/yi/ads/Ad$Action;)V

    .line 1240
    :cond_3
    invoke-virtual {p1}, Lcom/baidu/yi/ads/Ad;->getContentType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 1241
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v5}, Lcom/baidu/yi/ads/AdView;->getCurrentDU(Lcom/baidu/yi/ads/Ad;)Lcom/baidu/yi/ads/AdView$DisplayUpdater;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1247
    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/baidu/yi/ads/Ad;->getShowTime()I

    move-result v3

    if-lez v3, :cond_4

    iget-wide v3, p0, Lcom/baidu/yi/ads/AdView;->mPeriod:J

    invoke-virtual {p1}, Lcom/baidu/yi/ads/Ad;->getShowTime()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 1248
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "old period = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/baidu/yi/ads/AdView;->mPeriod:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new period = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/yi/ads/Ad;->getShowTime()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 1249
    invoke-virtual {p1}, Lcom/baidu/yi/ads/Ad;->getShowTime()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/baidu/yi/ads/AdView;->mPeriod:J

    .line 1252
    :cond_4
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    if-eqz v3, :cond_0

    .line 1253
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    iget-wide v5, p0, Lcom/baidu/yi/ads/AdView;->mPeriod:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1243
    :cond_5
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Lcom/baidu/yi/ads/AdView;->getCurrentDU(Lcom/baidu/yi/ads/Ad;)Lcom/baidu/yi/ads/AdView$DisplayUpdater;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1244
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView;->mAdReqParam:Lcom/baidu/yi/ads/service/AdSpaceParams;

    invoke-virtual {v3}, Lcom/baidu/yi/ads/service/AdSpaceParams;->getQShiReq()Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;

    move-result-object v3

    iget-object v3, v3, Lcom/baidu/yi/ads/service/plugin/qshi/RawQShiAds$Request;->appid:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/yi/ads/AdView;->mCurrentAdId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/baidu/yi/ads/ubc/UBC;->submitAdShowEventMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1392
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    .line 1395
    :cond_0
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mServiceConnector:Lcom/baidu/yi/ads/AdServiceConnector;

    invoke-virtual {v0}, Lcom/baidu/yi/ads/AdServiceConnector;->releaseResources()V

    .line 1396
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1397
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1405
    if-eqz p1, :cond_0

    .line 1406
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdView;->setFocusBackground()V

    .line 1410
    :goto_0
    return-void

    .line 1408
    :cond_0
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdView;->setNormalBackground()V

    goto :goto_0
.end method

.method public onPauseAdView()V
    .locals 2

    .prologue
    .line 1434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/yi/ads/AdView;->mIsPaused:Z

    .line 1435
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1438
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .parameter "state"

    .prologue
    .line 1418
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onRestoreInstanceState this="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    move-object v0, p1

    .line 1419
    check-cast v0, Landroid/os/Bundle;

    .line 1420
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "A"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 1421
    .local v2, superState:Landroid/os/Parcelable;
    if-nez v2, :cond_0

    .line 1422
    const-string v3, "Attempt to restore an invalid state."

    invoke-static {v3}, Lcom/baidu/yi/ads/AdView;->logE(Ljava/lang/String;)V

    .line 1428
    :goto_0
    return-void

    .line 1424
    :cond_0
    invoke-super {p0, v2}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1425
    const-string v3, "B"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 1426
    .local v1, connectorState:Landroid/os/Parcelable;
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView;->mServiceConnector:Lcom/baidu/yi/ads/AdServiceConnector;

    invoke-virtual {v3, v1}, Lcom/baidu/yi/ads/AdServiceConnector;->restoreState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public onResumeAdView()V
    .locals 4

    .prologue
    .line 1444
    iget-boolean v0, p0, Lcom/baidu/yi/ads/AdView;->mIsPaused:Z

    if-eqz v0, :cond_0

    .line 1445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/yi/ads/AdView;->mIsPaused:Z

    .line 1446
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    if-eqz v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    iget-wide v2, p0, Lcom/baidu/yi/ads/AdView;->mPeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1450
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 1458
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onSaveInstanceState this="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 1459
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 1460
    .local v2, superState:Landroid/os/Parcelable;
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView;->mHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    if-eqz v3, :cond_0

    .line 1461
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1464
    :cond_0
    iget-object v3, p0, Lcom/baidu/yi/ads/AdView;->mServiceConnector:Lcom/baidu/yi/ads/AdServiceConnector;

    invoke-virtual {v3}, Lcom/baidu/yi/ads/AdServiceConnector;->getState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1465
    .local v1, connectorState:Landroid/os/Parcelable;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1466
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "A"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1467
    const-string v3, "B"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1468
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1477
    invoke-virtual {p0, v2}, Lcom/baidu/yi/ads/AdView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1478
    .local v1, firstView:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1479
    iget-object v4, p0, Lcom/baidu/yi/ads/AdView;->mCurrentMainView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1509
    :cond_0
    :goto_0
    return v2

    .line 1482
    :cond_1
    iget-object v4, p0, Lcom/baidu/yi/ads/AdView;->mCurrentMainView:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/baidu/yi/ads/AdView;->mCurrentMainView:Landroid/view/View;

    iget-object v5, p0, Lcom/baidu/yi/ads/AdView;->mWebView:Landroid/webkit/WebView;

    if-eq v4, v5, :cond_0

    .line 1485
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/yi/ads/AdView;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1488
    iget-object v4, p0, Lcom/baidu/yi/ads/AdView;->mServiceConnector:Lcom/baidu/yi/ads/AdServiceConnector;

    invoke-virtual {v4}, Lcom/baidu/yi/ads/AdServiceConnector;->getCurrentAd()Lcom/baidu/yi/ads/Ad;

    move-result-object v0

    .line 1489
    .local v0, ad:Lcom/baidu/yi/ads/Ad;
    if-eqz v0, :cond_0

    .line 1492
    invoke-virtual {v0}, Lcom/baidu/yi/ads/Ad;->hasActions()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1495
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 1496
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdView;->setNormalBackground()V

    .line 1497
    invoke-virtual {p0}, Lcom/baidu/yi/ads/AdView;->performClick()Z

    move v2, v3

    .line 1498
    goto :goto_0

    .line 1500
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4

    .line 1501
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdView;->setPressedBackground()V

    move v2, v3

    .line 1502
    goto :goto_0

    .line 1504
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 1505
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdView;->setNormalBackground()V

    move v2, v3

    .line 1506
    goto :goto_0
.end method

.method public requestAd(Lcom/baidu/yi/ads/AdRetrievalListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    if-eqz v0, :cond_0

    .line 1304
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1305
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    invoke-virtual {v0, p1}, Lcom/baidu/yi/ads/AdView$RequestAdTask;->setListener(Lcom/baidu/yi/ads/AdRetrievalListener;)V

    .line 1309
    :goto_0
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1310
    return-void

    .line 1307
    :cond_0
    new-instance v0, Lcom/baidu/yi/ads/AdView$RequestAdTask;

    invoke-direct {v0, p0, p1}, Lcom/baidu/yi/ads/AdView$RequestAdTask;-><init>(Lcom/baidu/yi/ads/AdView;Lcom/baidu/yi/ads/AdRetrievalListener;)V

    iput-object v0, p0, Lcom/baidu/yi/ads/AdView;->mCurrentTask:Lcom/baidu/yi/ads/AdView$RequestAdTask;

    goto :goto_0
.end method

.method public restoreAd(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 813
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 814
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ad."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 816
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/yi/ads/AdView;->onResumeAdView()V

    .line 817
    invoke-virtual {p0, p1}, Lcom/baidu/yi/ads/AdView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 818
    return-void
.end method

.method public saveAd()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 798
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mServiceConnector:Lcom/baidu/yi/ads/AdServiceConnector;

    invoke-virtual {v0}, Lcom/baidu/yi/ads/AdServiceConnector;->getCurrentAd()Lcom/baidu/yi/ads/Ad;

    move-result-object v0

    if-nez v0, :cond_0

    .line 799
    const/4 v0, 0x0

    .line 803
    :goto_0
    return-object v0

    .line 801
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/yi/ads/AdView;->onPauseAdView()V

    .line 803
    invoke-virtual {p0}, Lcom/baidu/yi/ads/AdView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0
.end method

.method public setActionExecutionListener(Lcom/baidu/yi/ads/ActionExecutionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1361
    iput-object p1, p0, Lcom/baidu/yi/ads/AdView;->mActionExecutionListener:Lcom/baidu/yi/ads/ActionExecutionListener;

    .line 1362
    return-void
.end method

.method setAdDisplayProperties(Lcom/baidu/yi/ads/AdViewBackground;)V
    .locals 4
    .parameter "bkg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1272
    const-string v0, "setAdDisplayInfo called"

    invoke-static {v0}, Lcom/baidu/yi/ads/AdView;->logD(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {p1, v3, v1}, Lcom/baidu/yi/ads/AdViewBackground;->getBackground(BB)I

    move-result v0

    iput v0, p0, Lcom/baidu/yi/ads/AdView;->mAdBackgroundNormal:I

    .line 1277
    invoke-virtual {p1, v1, v1}, Lcom/baidu/yi/ads/AdViewBackground;->getBackground(BB)I

    move-result v0

    iput v0, p0, Lcom/baidu/yi/ads/AdView;->mAdBackgroundFocus:I

    .line 1280
    invoke-virtual {p1, v2, v1}, Lcom/baidu/yi/ads/AdViewBackground;->getBackground(BB)I

    move-result v0

    iput v0, p0, Lcom/baidu/yi/ads/AdView;->mAdBackgroundPressed:I

    .line 1283
    invoke-virtual {p1, v3, v2}, Lcom/baidu/yi/ads/AdViewBackground;->getBackground(BB)I

    move-result v0

    iput v0, p0, Lcom/baidu/yi/ads/AdView;->mSecondViewBackgroundNormal:I

    .line 1286
    invoke-virtual {p1, v1, v2}, Lcom/baidu/yi/ads/AdViewBackground;->getBackground(BB)I

    move-result v0

    iput v0, p0, Lcom/baidu/yi/ads/AdView;->mSecondViewBackgroundFocus:I

    .line 1289
    invoke-virtual {p1, v2, v2}, Lcom/baidu/yi/ads/AdViewBackground;->getBackground(BB)I

    move-result v0

    iput v0, p0, Lcom/baidu/yi/ads/AdView;->mSecondViewBackgroundPressed:I

    .line 1291
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 683
    iput p1, p0, Lcom/baidu/yi/ads/AdView;->mAlpha:I

    .line 684
    return-void
.end method

.method public setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "appid"
    .parameter "q"

    .prologue
    .line 726
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mAdReqParam:Lcom/baidu/yi/ads/service/AdSpaceParams;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/yi/ads/service/AdSpaceParams;->setAppIds(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    return-void
.end method

.method public setBackgroundPadding(I)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 660
    iput p1, p0, Lcom/baidu/yi/ads/AdView;->mBackgroundPadding:I

    .line 661
    return-void
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 1
    .parameter "channel"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mAdReqParam:Lcom/baidu/yi/ads/service/AdSpaceParams;

    invoke-virtual {v0, p1}, Lcom/baidu/yi/ads/service/AdSpaceParams;->setChannelId(Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method public setClickable(Z)V
    .locals 3
    .parameter "clickable"

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/baidu/yi/ads/AdView;->isClickable()Z

    move-result v0

    .line 577
    .local v0, previousState:Z
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 578
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 579
    iget-object v1, p0, Lcom/baidu/yi/ads/AdView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/baidu/yi/ads/AdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    iget-object v1, p0, Lcom/baidu/yi/ads/AdView;->mCurrentMainView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/yi/ads/AdView;->mCurrentMainView:Landroid/view/View;

    iget-object v2, p0, Lcom/baidu/yi/ads/AdView;->mWebView:Landroid/webkit/WebView;

    if-ne v1, v2, :cond_0

    .line 581
    iget-object v1, p0, Lcom/baidu/yi/ads/AdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->setClickable(Z)V

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 585
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/baidu/yi/ads/AdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 586
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 587
    iget-object v1, p0, Lcom/baidu/yi/ads/AdView;->mCurrentMainView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/yi/ads/AdView;->mCurrentMainView:Landroid/view/View;

    iget-object v2, p0, Lcom/baidu/yi/ads/AdView;->mWebView:Landroid/webkit/WebView;

    if-ne v1, v2, :cond_0

    .line 588
    iget-object v1, p0, Lcom/baidu/yi/ads/AdView;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->setClickable(Z)V

    goto :goto_0
.end method

.method public setMetrics(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 782
    iget v0, p0, Lcom/baidu/yi/ads/AdView;->mType:I

    if-nez v0, :cond_0

    .line 789
    :goto_0
    return-void

    .line 785
    :cond_0
    iput p1, p0, Lcom/baidu/yi/ads/AdView;->mWidth:I

    .line 786
    iput p2, p0, Lcom/baidu/yi/ads/AdView;->mHeight:I

    .line 787
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/yi/ads/AdView;->mMixedTextViewWidth:I

    .line 788
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mAdReqParam:Lcom/baidu/yi/ads/service/AdSpaceParams;

    iget v1, p0, Lcom/baidu/yi/ads/AdView;->mWidth:I

    iget v2, p0, Lcom/baidu/yi/ads/AdView;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/yi/ads/service/AdSpaceParams;->setReqImgSize(II)V

    goto :goto_0
.end method

.method public setPluginId(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 775
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mAdReqParam:Lcom/baidu/yi/ads/service/AdSpaceParams;

    iput p1, v0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    .line 776
    return-void
.end method

.method public setReqAct(Ljava/lang/String;)V
    .locals 1
    .parameter "act"

    .prologue
    .line 767
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mAdReqParam:Lcom/baidu/yi/ads/service/AdSpaceParams;

    invoke-virtual {v0, p1}, Lcom/baidu/yi/ads/service/AdSpaceParams;->setReqAct(Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method public setType(I)V
    .locals 6
    .parameter "type"

    .prologue
    const/16 v5, 0xa0

    const/16 v4, 0x2a

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 623
    iput p1, p0, Lcom/baidu/yi/ads/AdView;->mType:I

    .line 625
    if-eqz p1, :cond_0

    if-ne p1, v1, :cond_4

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mAdReqParam:Lcom/baidu/yi/ads/service/AdSpaceParams;

    iget v0, v0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    if-ne v0, v5, :cond_2

    .line 627
    invoke-direct {p0, v3}, Lcom/baidu/yi/ads/AdView;->setReqAdType(I)V

    .line 633
    :goto_0
    if-nez p1, :cond_1

    .line 634
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdView;->initBannarMetric()V

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mAdReqParam:Lcom/baidu/yi/ads/service/AdSpaceParams;

    iget v1, p0, Lcom/baidu/yi/ads/AdView;->mWidth:I

    iget v2, p0, Lcom/baidu/yi/ads/AdView;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/yi/ads/service/AdSpaceParams;->setReqImgSize(II)V

    .line 653
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mServiceConnector:Lcom/baidu/yi/ads/AdServiceConnector;

    invoke-virtual {v0}, Lcom/baidu/yi/ads/AdServiceConnector;->requestAdDisplayProperties()V

    .line 654
    :goto_1
    return-void

    .line 628
    :cond_2
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mAdReqParam:Lcom/baidu/yi/ads/service/AdSpaceParams;

    iget v0, v0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    if-ne v0, v4, :cond_3

    .line 629
    invoke-direct {p0, v3}, Lcom/baidu/yi/ads/AdView;->setReqAdType(I)V

    goto :goto_0

    .line 631
    :cond_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/baidu/yi/ads/AdView;->setReqAdType(I)V

    goto :goto_0

    .line 636
    :cond_4
    if-ne p1, v3, :cond_1

    .line 637
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mAdReqParam:Lcom/baidu/yi/ads/service/AdSpaceParams;

    iget v0, v0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    if-ne v0, v5, :cond_5

    .line 638
    invoke-direct {p0, v1}, Lcom/baidu/yi/ads/AdView;->setReqAdType(I)V

    .line 646
    :goto_2
    iput v2, p0, Lcom/baidu/yi/ads/AdView;->mWidth:I

    .line 647
    iput v2, p0, Lcom/baidu/yi/ads/AdView;->mHeight:I

    .line 648
    iput v2, p0, Lcom/baidu/yi/ads/AdView;->mMixedTextViewWidth:I

    goto :goto_1

    .line 639
    :cond_5
    iget-object v0, p0, Lcom/baidu/yi/ads/AdView;->mAdReqParam:Lcom/baidu/yi/ads/service/AdSpaceParams;

    iget v0, v0, Lcom/baidu/yi/ads/service/AdSpaceParams;->mPluginId:I

    if-ne v0, v4, :cond_6

    .line 640
    invoke-direct {p0, v1}, Lcom/baidu/yi/ads/AdView;->setReqAdType(I)V

    goto :goto_2

    .line 642
    :cond_6
    invoke-direct {p0, v1}, Lcom/baidu/yi/ads/AdView;->setReqAdType(I)V

    goto :goto_2
.end method
