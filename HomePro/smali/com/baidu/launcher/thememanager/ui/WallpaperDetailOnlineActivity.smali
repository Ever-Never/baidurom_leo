.class public Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;
.super Lcom/baidu/launcher/thememanager/ui/BaseActivity;
.source "WallpaperDetailOnlineActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;,
        Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ThemeObserver;,
        Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter;
    }
.end annotation


# instance fields
.field private isNoticeToEnd:Z

.field private mAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter;

.field private mCurrentCategory:Ljava/lang/String;

.field private mCurrentIndex:I

.field private mDownloadReceiver:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

.field private mImageOriginalHeight:I

.field private mImageOriginalWidth:I

.field private mProgress:[I

.field private mSetWallpaperBtn:Landroid/widget/Button;

.field private mThemeObserver:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ThemeObserver;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mWallpaperList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperResizer:Lcom/baidu/launcher/thememanager/util/ImageResizer;

.field private mWallpaperSize:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;-><init>()V

    .line 55
    iput-boolean v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->isNoticeToEnd:Z

    .line 56
    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mHandler:Landroid/os/Handler;

    .line 304
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mSetWallpaperBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)Lcom/baidu/launcher/thememanager/util/ImageFetcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mProgress:[I

    return-object v0
.end method


# virtual methods
.method public initLayout()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 105
    const v4, 0x7f0300ad

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->setContentView(I)V

    .line 107
    const v4, 0x7f080238

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 108
    .local v1, titleBar:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 110
    const v4, 0x7f080240

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 111
    .local v2, titleBarText:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentCategory:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v4, 0x7f08023c

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 114
    .local v3, titleView:Landroid/view/View;
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 116
    const v4, 0x7f08023d

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, backView:Landroid/view/View;
    new-instance v4, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$1;

    invoke-direct {v4, p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$1;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    const v4, 0x7f080224

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mSetWallpaperBtn:Landroid/widget/Button;

    .line 126
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mSetWallpaperBtn:Landroid/widget/Button;

    const v5, 0x7f0c011d

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 127
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mSetWallpaperBtn:Landroid/widget/Button;

    new-instance v5, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$2;

    invoke-direct {v5, p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$2;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v4, 0x7f080223

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperSize:Landroid/widget/TextView;

    .line 136
    new-instance v4, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter;

    invoke-direct {v4, p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)V

    iput-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter;

    .line 138
    const v4, 0x7f080221

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 139
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 140
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ImagePagerAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 141
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 142
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v5, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 144
    iget v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->updateCurrentIndex(I)V

    .line 145
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    invoke-super {p0, p1}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->requestWindowFeature(I)Z

    .line 70
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mImageOriginalWidth:I

    .line 71
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mImageOriginalHeight:I

    .line 73
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "currentIndex"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I

    .line 75
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "currentCategory"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentCategory:Ljava/lang/String;

    .line 76
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "currentWallpaperList"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;

    .line 77
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mProgress:[I

    .line 78
    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I

    if-gez v1, :cond_0

    .line 79
    iput v3, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I

    .line 80
    :cond_0
    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 81
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I

    .line 86
    :cond_1
    new-instance v1, Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    .line 87
    new-instance v1, Lcom/baidu/launcher/thememanager/util/ImageResizer;

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mImageOriginalWidth:I

    iget v3, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mImageOriginalHeight:I

    invoke-direct {v1, v2, v3}, Lcom/baidu/launcher/thememanager/util/ImageResizer;-><init>(II)V

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperResizer:Lcom/baidu/launcher/thememanager/util/ImageResizer;

    .line 88
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperResizer:Lcom/baidu/launcher/thememanager/util/ImageResizer;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->setImageResizer(Lcom/baidu/launcher/thememanager/util/ImageResizer;)V

    .line 91
    new-instance v1, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ThemeObserver;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ThemeObserver;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mThemeObserver:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ThemeObserver;

    .line 92
    new-instance v1, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)V

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mDownloadReceiver:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.baidu.launcher.download_progress"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mDownloadReceiver:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;

    if-eqz v1, :cond_2

    .line 97
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mDownloadReceiver:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->WALLPAPER_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mThemeObserver:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ThemeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 101
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->initLayout()V

    .line 102
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 217
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onDestroy()V

    .line 218
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 219
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mDownloadReceiver:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mDownloadReceiver:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$DownloadReceiver;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mThemeObserver:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ThemeObserver;

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mThemeObserver:Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$ThemeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 225
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 338
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->finish()V

    .line 340
    const v0, 0x7f04000c

    const v1, 0x7f04000d

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->overridePendingTransition(II)V

    .line 341
    const/4 v0, 0x0

    .line 343
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 229
    if-nez p1, :cond_0

    .line 230
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->setPauseWork(Z)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->setPauseWork(Z)V

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->isNoticeToEnd:Z

    if-nez v0, :cond_0

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->isNoticeToEnd:Z

    .line 240
    const v0, 0x7f0c0127

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 242
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->updateCurrentIndex(I)V

    .line 247
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 198
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onPause()V

    .line 199
    invoke-static {p0}, Lcom/baidu/launcher/ubc/UBC;->onPause(Landroid/content/Context;)V

    .line 202
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->flushCache()V

    .line 203
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 207
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onResume()V

    .line 208
    invoke-static {p0}, Lcom/baidu/launcher/ubc/UBC;->onResume(Landroid/content/Context;)V

    .line 211
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mSetWallpaperBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mProgress:[I

    iget v3, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I

    aget v2, v2, v3

    invoke-static {p0, v1, v0, v2}, Lcom/baidu/launcher/thememanager/util/Utils;->changeWallpaperButtonState(Landroid/content/Context;Landroid/widget/Button;Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;I)V

    .line 213
    return-void
.end method

.method public setWallpaper()V
    .locals 8

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x0

    .line 155
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->isSdcardAvailable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 156
    const v4, 0x7f0c011b

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 157
    .local v3, toast:Landroid/widget/Toast;
    invoke-virtual {v3, v7, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 158
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 193
    .end local v3           #toast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;

    invoke-virtual {v4}, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->isWallpaperExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mSetWallpaperBtn:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 164
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$3;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity$3;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;)V

    .line 170
    .local v0, callBack:Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask$ApplyCallBack;
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;

    invoke-virtual {v4}, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getWallpaperPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, path:Ljava/lang/String;
    new-instance v4, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;

    invoke-direct {v4, p0, v0}, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;-><init>(Landroid/content/Context;Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask$ApplyCallBack;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v2, v5, v6

    invoke-virtual {v4, v5}, Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 175
    .end local v0           #callBack:Lcom/baidu/launcher/thememanager/util/ApplyWallpaperTask$ApplyCallBack;
    .end local v2           #path:Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/util/Utils;->checkNetwork(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 176
    const v4, 0x7f0c0129

    invoke-static {p0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 177
    .restart local v3       #toast:Landroid/widget/Toast;
    invoke-virtual {v3, v7, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 178
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 184
    .end local v3           #toast:Landroid/widget/Toast;
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mSetWallpaperBtn:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 185
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mSetWallpaperBtn:Landroid/widget/Button;

    const v5, 0x7f0c011e

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;

    iget v5, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I

    invoke-static {p0, v4, v5}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->startDownloadWallpaper(Landroid/content/Context;Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;I)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    .local v1, e:Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 189
    .end local v1           #e:Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 190
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateCurrentIndex(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 148
    iput p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I

    .line 149
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperSize:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->getmSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "KB"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mSetWallpaperBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mProgress:[I

    iget v3, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperDetailOnlineActivity;->mCurrentIndex:I

    aget v2, v2, v3

    invoke-static {p0, v1, v0, v2}, Lcom/baidu/launcher/thememanager/util/Utils;->changeWallpaperButtonState(Landroid/content/Context;Landroid/widget/Button;Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;I)V

    .line 151
    return-void
.end method
