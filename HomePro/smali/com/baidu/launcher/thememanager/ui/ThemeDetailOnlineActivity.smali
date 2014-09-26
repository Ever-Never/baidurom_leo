.class public Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;
.super Lcom/baidu/launcher/thememanager/ui/BaseActivity;
.source "ThemeDetailOnlineActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/baidu/launcher/thememanager/network/TaskListener;
.implements Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;,
        Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageListOnPageChangeListener;,
        Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;
    }
.end annotation


# static fields
.field static final APPLY_PROGRESS:I = 0x0

.field static final FINISH:I = 0x6

.field static final HIDE_PROGRESS:I = 0x4

.field static final PROGRESS:I = 0x1

.field static final SETTHEME:I = 0x2

.field static final SHOW_APPLY_PROGRESS:I = 0x5

.field static final SHOW_PROGRESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ThemeDetailOnlineActivity"

.field private static mPreviewLoaded:Z


# instance fields
.field private adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private mActionBar2:Lcom/baidu/launcher/thememanager/view/ExActionBar;

.field private mAppNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mApplyButton:Landroid/widget/Button;

.field private mComponent:Ljava/lang/String;

.field private mComponentCheckedArray:[Z

.field private mComponentType:I

.field private mContainer:Lcom/baidu/launcher/thememanager/view/PagerContainer;

.field private mDesigner:Ljava/lang/String;

.field private mDownloadNum:I

.field private mDownloadReceiver:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;

.field private mFilePath:Ljava/lang/String;

.field mFilter:Landroid/content/IntentFilter;

.field private mId:I

.field private mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

.field private mKey:Ljava/lang/String;

.field private mLoadChildView:Landroid/view/View;

.field private mLoadErrorView:Landroid/view/View;

.field private mLoadRootView:Landroid/view/View;

.field private mPosition:I

.field private mPreview:Ljava/lang/String;

.field private mPreviewUrlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSize:I

.field private mTel:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUploadDate:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mVisibleFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPreviewLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPreviewUrlList:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mAppNameList:Ljava/util/ArrayList;

    .line 71
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mComponent:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPreview:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mUrl:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mTitle:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mVersion:Ljava/lang/String;

    .line 76
    iput v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mDownloadNum:I

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mUploadDate:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mTel:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mUserId:Ljava/lang/String;

    .line 82
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mDesigner:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mFilePath:Ljava/lang/String;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mComponentType:I

    .line 86
    iput v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPosition:I

    .line 98
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 108
    iput-boolean v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mVisibleFlag:Z

    .line 110
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mFilter:Landroid/content/IntentFilter;

    .line 116
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    .line 561
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->downloadTheme()V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mComponent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mDesigner:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mSize:I

    return v0
.end method

.method static synthetic access$1200(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mTel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mUploadDate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPreviewLoaded:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPreviewUrlList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Lcom/baidu/launcher/thememanager/view/Indicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPreview:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mApplyButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mComponentType:I

    return v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mDownloadNum:I

    return v0
.end method

.method static synthetic access$800(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mId:I

    return v0
.end method

.method static synthetic access$900(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$902(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPosition:I

    return p1
.end method

.method private downloadTheme()V
    .locals 4

    .prologue
    .line 397
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mApplyButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mApplyButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 399
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mApplyButton:Landroid/widget/Button;

    const v1, 0x7f0c00c6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ubc/UBC;->reportThemeDownload(Landroid/content/Context;)V

    .line 404
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->requestDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method private inflateActivity()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 257
    invoke-virtual {p0, v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->requestWindowFeature(I)Z

    .line 258
    const v0, 0x7f030093

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mView:Landroid/view/View;

    .line 259
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->setContentView(Landroid/view/View;)V

    .line 261
    const v0, 0x7f0801d5

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mLoadRootView:Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mLoadRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mLoadRootView:Landroid/view/View;

    const v1, 0x7f0801d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mLoadChildView:Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mLoadRootView:Landroid/view/View;

    const v1, 0x7f0801d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mLoadErrorView:Landroid/view/View;

    .line 266
    const v0, 0x7f08001d

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/view/ExActionBar;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mActionBar2:Lcom/baidu/launcher/thememanager/view/ExActionBar;

    .line 267
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mActionBar2:Lcom/baidu/launcher/thememanager/view/ExActionBar;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setTextValue(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02020c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 269
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mActionBar2:Lcom/baidu/launcher/thememanager/view/ExActionBar;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setActionBarIcon(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mActionBar2:Lcom/baidu/launcher/thememanager/view/ExActionBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setActionBarOperVisible(I)V

    .line 271
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mActionBar2:Lcom/baidu/launcher/thememanager/view/ExActionBar;

    invoke-virtual {v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->setReturnFragmentIndex(I)V

    .line 273
    const v0, 0x7f0801d3

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/view/PagerContainer;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mContainer:Lcom/baidu/launcher/thememanager/view/PagerContainer;

    .line 274
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mContainer:Lcom/baidu/launcher/thememanager/view/PagerContainer;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/view/PagerContainer;->getViewPager()Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 275
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b010e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 276
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setClipChildren(Z)V

    .line 278
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 280
    const v0, 0x7f0801d2

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mApplyButton:Landroid/widget/Button;

    .line 282
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mApplyButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    const v0, 0x7f0801d1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/view/Indicator;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    .line 286
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/thememanager/view/Indicator;->setDetail(Landroid/content/Context;)V

    .line 287
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    invoke-virtual {v0, v3}, Lcom/baidu/launcher/thememanager/view/Indicator;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/view/Indicator;->setCurrentDetail(I)V

    .line 290
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 291
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Please wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 293
    return-void
.end method

.method private previewTaskCompleted(Lcom/baidu/launcher/thememanager/network/Response;)V
    .locals 18
    .parameter "obj"

    .prologue
    .line 439
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/baidu/launcher/thememanager/network/Response;->mDataSet:Ljava/util/List;

    .line 441
    .local v15, newThemeItems:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/launcher/thememanager/model/AbsDataItem;>;"
    const/4 v14, 0x0

    .line 443
    .local v14, mThemePreviewInfo:Lcom/baidu/launcher/thememanager/model/ThemeOnlinePreviewList;
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 444
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #mThemePreviewInfo:Lcom/baidu/launcher/thememanager/model/ThemeOnlinePreviewList;
    check-cast v14, Lcom/baidu/launcher/thememanager/model/ThemeOnlinePreviewList;

    .line 446
    .restart local v14       #mThemePreviewInfo:Lcom/baidu/launcher/thememanager/model/ThemeOnlinePreviewList;
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPreviewUrlList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 448
    if-eqz v14, :cond_6

    .line 450
    invoke-virtual {v14}, Lcom/baidu/launcher/thememanager/model/ThemeOnlinePreviewList;->getPreviewUrl()Ljava/util/ArrayList;

    move-result-object v13

    .line 451
    .local v13, mPreviewUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 452
    .local v17, url:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/thememanager/network/NetworkUtil;->getServerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 454
    .local v16, prevurl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mComponent:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPreview:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPreviewUrlList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 458
    :cond_2
    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentPreview:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentPreview:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 461
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPreviewUrlList:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    const-string v1, "ThemeDetailOnlineActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pre url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    .end local v16           #prevurl:Ljava/lang/String;
    .end local v17           #url:Ljava/lang/String;
    :cond_3
    const/4 v1, 0x1

    sput-boolean v1, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPreviewLoaded:Z

    .line 468
    const/4 v10, 0x0

    .line 469
    .local v10, i:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mComponentType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 470
    add-int/lit8 v10, v10, 0x1

    .line 473
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPreviewUrlList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v2, v10

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/view/Indicator;->setIndicator(I)V

    .line 474
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/view/Indicator;->setCurrentDetail(I)V

    .line 475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/view/Indicator;->setVisibility(I)V

    .line 477
    new-instance v1, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mComponentType:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPreviewUrlList:Ljava/util/ArrayList;

    new-instance v4, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageClick;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)V

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    .line 478
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->setLocal(Z)V

    .line 479
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->setFullScreen(Z)V

    .line 480
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mDesigner:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mTel:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mUploadDate:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mDownloadNum:I

    int-to-long v6, v6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mSize:I

    int-to-long v8, v8

    invoke-virtual/range {v1 .. v9}, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->setDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 482
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageListOnPageChangeListener;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$ImageListOnPageChangeListener;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPreviewUrlList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_5

    .line 486
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPosition:I

    .line 487
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPosition:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 488
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/view/Indicator;->setCurrentDetail(I)V

    .line 491
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mAppNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 492
    .local v12, len:I
    new-array v1, v12, [Z

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mComponentCheckedArray:[Z

    .line 494
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v12, :cond_6

    .line 495
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mComponentCheckedArray:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v10

    .line 494
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 498
    .end local v10           #i:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #len:I
    .end local v13           #mPreviewUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6
    return-void
.end method

.method private requestThemePreview1(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 501
    const-string v1, "ThemeDetailOnlineActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestThemePreview"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/thememanager/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    sget-object v1, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_GET_THEME_PREVIEW:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/thememanager/network/RequestFactory;->build(Lcom/baidu/launcher/thememanager/network/Request$RequestType;Ljava/lang/String;)Lcom/baidu/launcher/thememanager/network/Request;

    move-result-object v0

    .line 505
    .local v0, request1:Lcom/baidu/launcher/thememanager/network/Request;
    invoke-static {}, Lcom/baidu/launcher/thememanager/network/TransportOperator;->getInstance()Lcom/baidu/launcher/thememanager/network/TransportOperator;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/baidu/launcher/thememanager/network/TransportOperator;->sendRequest(Lcom/baidu/launcher/thememanager/network/Request;Lcom/baidu/launcher/thememanager/network/TaskListener;)V

    .line 506
    return-void
.end method


# virtual methods
.method public isActivityVisible()Z
    .locals 1

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mVisibleFlag:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 246
    iput v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPosition:I

    .line 247
    if-eqz p3, :cond_0

    .line 248
    const-string v0, "position"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPosition:I

    .line 250
    :cond_0
    const-string v0, "ThemeDetailOnlineActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPosition:I

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 252
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/view/Indicator;->setCurrentDetail(I)V

    .line 254
    return-void
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 628
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 633
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 21
    .parameter "v"

    .prologue
    .line 296
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 300
    :pswitch_0
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getInstance()Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getThemeStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;

    move-result-object v18

    .line 302
    .local v18, status:Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->status:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 304
    const-string v2, "ThemeDetailOnlineActivity"

    const-string v3, "updateDownload, cancel download "

    invoke-static {v2, v3}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mFilePath:Ljava/lang/String;

    const-string v4, "theme/ICON"

    invoke-static {v2, v3, v4}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->getDownloadIdByPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v12

    .line 306
    .local v12, downloadid:J
    const-wide/16 v2, -0x1

    cmp-long v2, v12, v2

    if-nez v2, :cond_1

    .line 307
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getInstance()Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mUrl:Ljava/lang/String;

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->updateDownload(Ljava/lang/String;IJJ)V

    .line 308
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getInstance()Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getThemeStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;

    move-result-object v19

    .line 310
    .local v19, status1:Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mApplyButton:Landroid/widget/Button;

    move-object/from16 v0, v19

    iget v4, v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->status:I

    const/4 v5, 0x1

    move-object/from16 v0, v18

    iget v6, v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->percent:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/baidu/launcher/thememanager/util/Utils;->setButtonState(Landroid/content/Context;Landroid/widget/Button;III)V

    goto :goto_0

    .line 313
    .end local v19           #status1:Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v12, v13, v3}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->cancelDownloadWithNotice(Landroid/content/Context;JZ)V

    goto :goto_0

    .line 317
    .end local v12           #downloadid:J
    :cond_2
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->isExternalSpaceAvailable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 318
    const v2, 0x7f0c00b9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 322
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 324
    .local v17, prefs:Landroid/content/SharedPreferences;
    const-string v2, "download_warning"

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 326
    .local v16, needShowWarning:Z
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/thememanager/network/NetworkUtil;->isMobileConnected(Landroid/content/Context;)Z

    move-result v14

    .line 328
    .local v14, isMobile:Z
    invoke-static/range {p0 .. p0}, Lcom/baidu/launcher/thememanager/network/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 329
    const v2, 0x7f0c00bb

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 334
    :cond_4
    if-eqz v14, :cond_5

    if-eqz v16, :cond_5

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00c7

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mSize:I

    int-to-long v6, v6

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 338
    .local v15, msg:Ljava/lang/String;
    const v2, 0x7f030098

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 341
    .local v11, contentView:Landroid/view/View;
    const v2, 0x7f0801e2

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/CheckBox;

    .line 343
    .local v10, ckx:Landroid/widget/CheckBox;
    const v2, 0x7f0801e3

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 345
    .local v20, tv:Landroid/widget/TextView;
    new-instance v2, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$1;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)V

    invoke-virtual {v10, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 351
    new-instance v9, Landroid/app/AlertDialog$Builder;

    const v2, 0x1030132

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 352
    .local v9, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 354
    invoke-virtual {v9, v15}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 355
    invoke-virtual {v9, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 356
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v10, v1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$2;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$3;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)V

    invoke-virtual {v9, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 383
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 386
    .end local v9           #builder:Landroid/app/AlertDialog$Builder;
    .end local v10           #ckx:Landroid/widget/CheckBox;
    .end local v11           #contentView:Landroid/view/View;
    .end local v15           #msg:Ljava/lang/String;
    .end local v20           #tv:Landroid/widget/TextView;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/thememanager/network/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v14, :cond_6

    if-eqz v14, :cond_0

    if-nez v16, :cond_0

    .line 388
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->downloadTheme()V

    goto/16 :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x7f0801d2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 127
    invoke-super {p0, p1}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 129
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 131
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "theme_id"

    invoke-virtual {v8, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mId:I

    .line 132
    const-string v0, "theme_url"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mUrl:Ljava/lang/String;

    .line 133
    const-string v0, "component_type"

    invoke-virtual {v8, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mComponentType:I

    .line 135
    const-string v0, "title"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mTitle:Ljava/lang/String;

    .line 136
    const-string v0, "version"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mVersion:Ljava/lang/String;

    .line 137
    const-string v0, "download_num"

    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mDownloadNum:I

    .line 139
    const-string v0, "upload_date"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mUploadDate:Ljava/lang/String;

    .line 140
    const-string v0, "upload_tel"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mTel:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mTel:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mTel:Ljava/lang/String;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mUploadDate:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 147
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mUploadDate:Ljava/lang/String;

    .line 150
    :cond_1
    const-string v0, "userid"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mUserId:Ljava/lang/String;

    .line 151
    const-string v0, "themesize"

    invoke-virtual {v8, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mSize:I

    .line 152
    const-string v0, "designer"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mDesigner:Ljava/lang/String;

    .line 154
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mComponentType:I

    if-ne v0, v3, :cond_3

    .line 155
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/Utils;->getPathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mFilePath:Ljava/lang/String;

    .line 163
    :goto_0
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->inflateActivity()V

    .line 165
    const-string v0, "com.baidu.thememanager.extra.status"

    invoke-virtual {v8, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 166
    .local v2, status:I
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mApplyButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 167
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mApplyButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mVersion:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/baidu/launcher/thememanager/util/Utils;->setButton(Landroid/content/Context;Landroid/widget/Button;ILjava/lang/String;Ljava/lang/String;II)V

    .line 170
    :cond_2
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mId:I

    invoke-direct {p0, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->requestThemePreview1(I)V

    .line 173
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v0, "com.baidu.thememanager.action.downloadstatechange"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v0, "com.baidu.thememanager.ui.parsestatus"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mDownloadReceiver:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;

    .line 177
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mDownloadReceiver:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->getInstance()Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->attach(Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;)V

    .line 180
    return-void

    .line 157
    .end local v2           #status:I
    .end local v7           #filter:Landroid/content/IntentFilter;
    :cond_3
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentEntry:[Ljava/lang/String;

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mComponentType:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mComponent:Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getDownloadPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mComponent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mFilePath:Ljava/lang/String;

    .line 160
    sget-object v0, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentPreview:[Ljava/lang/String;

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mComponentType:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mPreview:Ljava/lang/String;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 410
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onDestroy()V

    .line 411
    const-string v0, "ThemeDetailOnlineActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 414
    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mDownloadReceiver:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mDownloadReceiver:Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity$DownloadReceiver;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->clean()V

    .line 422
    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    .line 425
    :cond_2
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->getInstance()Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->detach(Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;)V

    .line 427
    return-void
.end method

.method public onHttpTaskErrorCancel(Lcom/baidu/launcher/thememanager/network/HttpTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 624
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 434
    const-string v0, "ThemeDetailOnlineActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    invoke-virtual {v0, p3}, Lcom/baidu/launcher/thememanager/view/Indicator;->setCurrentDetail(I)V

    .line 436
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 184
    if-nez p1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    const-string v0, "com.baidu.thememanager.extra.status"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 188
    .local v2, status:I
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mApplyButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mApplyButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mVersion:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/baidu/launcher/thememanager/util/Utils;->setButton(Landroid/content/Context;Landroid/widget/Button;ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 431
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 227
    const-string v2, "ThemeDetailOnlineActivity"

    const-string v3, "onOptionsItemSelected: "

    invoke-static {v2, v3}, Lcom/baidu/launcher/thememanager/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 241
    :goto_0
    invoke-super {p0, p1}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    return v2

    .line 230
    :sswitch_0
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->finish()V

    goto :goto_0

    .line 234
    :sswitch_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 235
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 236
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "download_warning"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 228
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0802da -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onPause()V

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mVisibleFlag:Z

    .line 200
    invoke-static {p0}, Lcom/baidu/launcher/ubc/UBC;->onPause(Landroid/content/Context;)V

    .line 201
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 216
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 217
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 218
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "download_warning"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 219
    .local v0, NoNeedMenu:Z
    if-nez v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0f0002

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 222
    :cond_0
    if-nez v0, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 206
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onResume()V

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mVisibleFlag:Z

    .line 210
    invoke-static {p0}, Lcom/baidu/launcher/ubc/UBC;->onResume(Landroid/content/Context;)V

    .line 211
    return-void
.end method

.method public taskCancelled(Lcom/baidu/launcher/thememanager/network/HttpTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 621
    return-void
.end method

.method public taskCompleted(Lcom/baidu/launcher/thememanager/network/HttpTask;Lcom/baidu/launcher/thememanager/network/Response;)V
    .locals 2
    .parameter "task"
    .parameter "obj"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mLoadRootView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 607
    iget-object v0, p2, Lcom/baidu/launcher/thememanager/network/Response;->mResult:Lcom/baidu/launcher/thememanager/network/Response$Result;

    iget v0, v0, Lcom/baidu/launcher/thememanager/network/Response$Result;->ret:I

    if-nez v0, :cond_0

    .line 608
    invoke-virtual {p2}, Lcom/baidu/launcher/thememanager/network/Response;->getRequestType()Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    move-result-object v0

    sget-object v1, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->REQ_TYPE_GET_THEME_PREVIEW:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    if-ne v0, v1, :cond_0

    .line 609
    invoke-direct {p0, p2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->previewTaskCompleted(Lcom/baidu/launcher/thememanager/network/Response;)V

    .line 612
    :cond_0
    return-void
.end method

.method public taskFailed(Lcom/baidu/launcher/thememanager/network/HttpTask;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "task"
    .parameter "ex"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mLoadErrorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailOnlineActivity;->mLoadChildView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 618
    return-void
.end method

.method public taskProgress(Lcom/baidu/launcher/thememanager/network/HttpTask;Lcom/baidu/launcher/thememanager/network/Progress;)V
    .locals 0
    .parameter "task"
    .parameter "progress"

    .prologue
    .line 602
    return-void
.end method
