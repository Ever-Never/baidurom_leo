.class public Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;
.super Lcom/baidu/launcher/thememanager/ui/BaseActivity;
.source "ThemeDetailFullScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$1;,
        Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;,
        Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ImageListOnPageChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeDetailFullScreen"


# instance fields
.field private adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

.field private mComponent:Ljava/lang/String;

.field private mComponentType:I

.field private mDesigner:Ljava/lang/String;

.field private mId:I

.field private mImageUrlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

.field private mLocal:I

.field private mPath:Ljava/lang/String;

.field private mPosition:I

.field private mPreview:Ljava/lang/String;

.field private mSize:J

.field private mThemeType:I

.field private mVersion:Ljava/lang/String;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mComponent:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mPreview:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mVersion:Ljava/lang/String;

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mLocal:I

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mImageUrlList:Ljava/util/List;

    .line 50
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    .line 137
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Lcom/baidu/launcher/thememanager/view/Indicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;)Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mDesigner:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mSize:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mPosition:I

    return v0
.end method

.method static synthetic access$202(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mPosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mLocal:I

    return v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mId:I

    return v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mComponentType:I

    return v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mImageUrlList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mComponent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mPreview:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 217
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    :cond_2
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mThemeType:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v0, data:Landroid/content/Intent;
    const-string v1, "position"

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->setResult(ILandroid/content/Intent;)V

    .line 134
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->finish()V

    .line 135
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x400

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 55
    invoke-super {p0, p1}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mPath:Ljava/lang/String;

    .line 60
    const-string v1, "component_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mComponentType:I

    .line 61
    const-string v1, "theme_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mThemeType:I

    .line 62
    const-string v1, "_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mId:I

    .line 63
    const-string v1, "theme_local"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mLocal:I

    .line 64
    const-string v1, "position"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mPosition:I

    .line 65
    const-string v1, "version"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mVersion:Ljava/lang/String;

    .line 66
    const-string v1, "themesize"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mSize:J

    .line 67
    const-string v1, "author"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mDesigner:Ljava/lang/String;

    .line 69
    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mComponentType:I

    if-ltz v1, :cond_0

    .line 70
    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentEntry:[Ljava/lang/String;

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mComponentType:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mComponent:Ljava/lang/String;

    .line 71
    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentPreview:[Ljava/lang/String;

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mComponentType:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mPreview:Ljava/lang/String;

    .line 74
    :cond_0
    invoke-virtual {p0, v5}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->requestWindowFeature(I)Z

    .line 75
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 76
    const v1, 0x7f030094

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->setContentView(I)V

    .line 78
    const v1, 0x7f0801d4

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 80
    const v1, 0x7f0801d1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/thememanager/view/Indicator;

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    .line 81
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mIndicator:Lcom/baidu/launcher/thememanager/view/Indicator;

    invoke-virtual {v1, p0}, Lcom/baidu/launcher/thememanager/view/Indicator;->setDetail(Landroid/content/Context;)V

    .line 83
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->getInstance()Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->attach(Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;)V

    .line 84
    new-instance v1, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$1;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen$ViewPagerLoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->clean()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    .line 95
    :cond_0
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->getInstance()Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->detach(Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;)V

    .line 96
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onDestroy()V

    .line 97
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 101
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 103
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v0, data:Landroid/content/Intent;
    const-string v2, "position"

    iget v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->mPosition:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v1, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->setResult(ILandroid/content/Intent;)V

    .line 106
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailFullScreen;->finish()V

    .line 109
    .end local v0           #data:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method
