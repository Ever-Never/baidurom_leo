.class public Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;
.super Lcom/baidu/launcher/thememanager/ui/BaseActivity;
.source "ThemeDetailFullScreenOnline.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline$ImageListOnPageChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeDetailFullScreenOnline"


# instance fields
.field private adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

.field private mComponentType:I

.field private mDesigner:Ljava/lang/String;

.field private mDownloadNum:I

.field private mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

.field private mPosition:I

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

.field private mSize:J

.field private mTel:Ljava/lang/String;

.field private mUploadDate:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mVersion:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mDownloadNum:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mDesigner:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mUploadDate:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mTel:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;)Lcom/baidu/launcher/thememanager/view/Indicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    return-object v0
.end method

.method static synthetic access$102(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mPosition:I

    return p1
.end method

.method private inflateActivity()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->requestWindowFeature(I)Z

    .line 117
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 118
    const v0, 0x7f030094

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->setContentView(I)V

    .line 120
    const v0, 0x7f0801d4

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 122
    const v0, 0x7f0801d1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/view/Indicator;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    .line 123
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/thememanager/view/Indicator;->setDetail(Landroid/content/Context;)V

    .line 125
    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 166
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    .local v0, data:Landroid/content/Intent;
    const-string v1, "position"

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    const/16 v1, 0x14

    invoke-virtual {p0, v1, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->setResult(ILandroid/content/Intent;)V

    .line 162
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->finish()V

    .line 163
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-super {p0, p1}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 52
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "component_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mComponentType:I

    .line 53
    const-string v1, "position"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mPosition:I

    .line 54
    const-string v1, "version"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mVersion:Ljava/lang/String;

    .line 55
    const-string v1, "download_num"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mDownloadNum:I

    .line 56
    const-string v1, "preview_url_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mPreviewUrlList:Ljava/util/ArrayList;

    .line 58
    const-string v1, "author"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mDesigner:Ljava/lang/String;

    .line 59
    const-string v1, "themesize"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mSize:J

    .line 61
    const-string v1, "upload_date"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mUploadDate:Ljava/lang/String;

    .line 62
    const-string v1, "upload_tel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mTel:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mTel:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 65
    const-string v1, ""

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mTel:Ljava/lang/String;

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mUploadDate:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 69
    const-string v1, ""

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mUploadDate:Ljava/lang/String;

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->inflateActivity()V

    .line 74
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mPreviewUrlList:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 80
    :goto_0
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->getInstance()Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->attach(Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;)V

    .line 81
    return-void

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->setGallery()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->clean()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    .line 90
    :cond_0
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->getInstance()Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->detach(Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;)V

    .line 92
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onDestroy()V

    .line 93
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 129
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v0, data:Landroid/content/Intent;
    const-string v1, "position"

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const/16 v1, 0x14

    invoke-virtual {p0, v1, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->setResult(ILandroid/content/Intent;)V

    .line 134
    const-string v1, "ThemeDetailFullScreenOnline"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemSelected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/thememanager/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->finish()V

    .line 136
    const/4 v1, 0x1

    .line 138
    .end local v0           #data:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method setGallery()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 97
    new-instance v0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mComponentType:I

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mPreviewUrlList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    .line 98
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    invoke-virtual {v0, v10}, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->setLocal(Z)V

    .line 99
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->setFullScreen(Z)V

    .line 100
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mDesigner:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mTel:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mUploadDate:Ljava/lang/String;

    iget v5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mDownloadNum:I

    int-to-long v5, v5

    iget-wide v7, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mSize:J

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->setDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 102
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline$ImageListOnPageChangeListener;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline$ImageListOnPageChangeListener;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 103
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 104
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mPosition:I

    invoke-virtual {v0, v1, v10}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 106
    const/4 v9, 0x0

    .line 107
    .local v9, i:I
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mComponentType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 108
    add-int/lit8 v9, v9, 0x1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mPreviewUrlList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/view/Indicator;->setIndicator(I)V

    .line 111
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/view/Indicator;->setCurrentDetail(I)V

    .line 112
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreenOnline;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    invoke-virtual {v0, v10}, Lcom/baidu/launcher/thememanager/view/Indicator;->setVisibility(I)V

    .line 113
    return-void
.end method
