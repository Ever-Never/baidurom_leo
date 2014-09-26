.class public Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;
.super Lcom/baidu/launcher/thememanager/ui/BaseFragment;
.source "ThemeDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$1;,
        Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$HandleReceiver;,
        Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ImageClick;,
        Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;
    }
.end annotation


# static fields
.field private static final FRAGMENT_DETAIL:Ljava/lang/String; = "theme_detail"

.field private static final TAG:Ljava/lang/String; = "ThemeDetailActivity"


# instance fields
.field private mComponent:Ljava/lang/String;

.field private mComponentType:I

.field private mDetailFragment:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

.field private mHandlerReceiver:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$HandleReceiver;

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

.field private mIsCannotBack:Z

.field private mPath:Ljava/lang/String;

.field private mPreview:Ljava/lang/String;

.field private mReturnIndex:I

.field private mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

.field private mThemeType:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/BaseFragment;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    .line 50
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponent:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mPreview:Ljava/lang/String;

    .line 52
    iput v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponentType:I

    .line 53
    iput v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mId:I

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mTitle:Ljava/lang/String;

    .line 55
    iput v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mReturnIndex:I

    .line 56
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mPath:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mIsCannotBack:Z

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeType:I

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mImageUrlList:Ljava/util/List;

    .line 378
    return-void
.end method

.method static synthetic access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->createSingleFragments(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Lcom/baidu/launcher/thememanager/ui/DetailFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mDetailFragment:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeType:I

    return v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mReturnIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mIsCannotBack:Z

    return v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mId:I

    return v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponentType:I

    return v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    return-object v0
.end method

.method static synthetic access$702(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;Lcom/baidu/launcher/thememanager/model/ThemeInfo;)Lcom/baidu/launcher/thememanager/model/ThemeInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    return-object p1
.end method

.method static synthetic access$800(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mImageUrlList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mPreview:Ljava/lang/String;

    return-object v0
.end method

.method private createSingleFragments(IZ)V
    .locals 14
    .parameter "startposition"
    .parameter "current"

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v12

    .line 309
    .local v12, fragmentManager:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v12}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v13

    .line 312
    .local v13, transaction:Landroid/support/v4/app/FragmentTransaction;
    :try_start_0
    const-string v1, "theme_detail"

    invoke-virtual {v12, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mDetailFragment:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    .line 315
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mDetailFragment:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    if-nez v1, :cond_0

    .line 316
    new-instance v1, Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    invoke-direct {v1}, Lcom/baidu/launcher/thememanager/ui/DetailFragment;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mDetailFragment:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    .line 318
    new-instance v0, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponentType:I

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mImageUrlList:Ljava/util/List;

    new-instance v3, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ImageClick;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ImageClick;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$1;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;Landroid/view/View$OnClickListener;)V

    .line 321
    .local v0, adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    iget-object v1, v1, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mAuthor:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    iget-object v2, v2, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mVersion:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    const-wide/16 v5, 0x0

    iget-object v7, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    iget-wide v7, v7, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mSize:J

    invoke-virtual/range {v0 .. v8}, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->setDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 324
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mDetailFragment:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponentType:I

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mImageUrlList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    invoke-virtual {v4}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getDetailInfo()[Ljava/lang/CharSequence;

    move-result-object v5

    iget v9, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mReturnIndex:I

    iget-boolean v4, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mIsCannotBack:Z

    if-nez v4, :cond_2

    const/4 v10, 0x1

    :goto_0
    move v4, p1

    move-object v6, p0

    move-object v7, v0

    move/from16 v8, p2

    invoke-virtual/range {v1 .. v10}, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->init(III[Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;ZIZ)V

    .line 327
    const v1, 0x7f0801c4

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mDetailFragment:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    const-string v3, "theme_detail"

    invoke-virtual {v13, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 330
    .end local v0           #adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mDetailFragment:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    if-eqz v1, :cond_1

    .line 331
    invoke-virtual {v13}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 332
    invoke-virtual {v12}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :cond_1
    :goto_1
    return-void

    .line 324
    .restart local v0       #adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 334
    .end local v0           #adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;
    :catch_0
    move-exception v11

    .line 335
    .local v11, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v11}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public deleteFromFragment()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v0, 0x0

    .line 129
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    if-nez v1, :cond_0

    .line 144
    :goto_0
    return v0

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getThemeLevel()I

    move-result v1

    if-ge v1, v7, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ee

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 140
    :cond_1
    new-instance v0, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponentType:I

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mId:I

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    invoke-virtual {v3}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    invoke-virtual {v4}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    iget v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeType:I

    move-object v6, v5

    invoke-direct/range {v0 .. v8}, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    invoke-virtual {v1}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getComponentList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/baidu/launcher/thememanager/util/ThemeApplyHelper;->deleteTheme(Landroid/support/v4/app/FragmentActivity;Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;Ljava/util/ArrayList;)V

    .line 144
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 150
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mDetailFragment:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 151
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mDetailFragment:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    const-string v1, "position"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mPosition:I

    .line 153
    const-string v0, "ThemeDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mDetailFragment:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    iget v2, v2, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mDetailFragment:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mDetailFragment:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    iget v1, v1, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->setCurrentItem(I)V

    .line 156
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mDetailFragment:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mDetailFragment:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    iget v1, v1, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->setCurrentDetail(I)V

    .line 158
    :cond_0
    return-void
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 367
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    :cond_2
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeType:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_3

    .line 372
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->finish()V

    .line 374
    :cond_3
    const-string v0, "ThemeDetailActivity"

    const-string v1, "onChange finish"

    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 162
    const-string v1, "ThemeDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "ThemeDetailActivity"

    const-string v2, "r id 2131231216"

    invoke-static {v1, v2}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 168
    :pswitch_0
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/ubc/UBC;->reportThemeUse(Landroid/content/Context;)V

    .line 170
    new-instance v0, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponentType:I

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    iget v2, v2, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mId:I

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    invoke-virtual {v3}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    iget-object v4, v4, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->mTitle:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeInfo:Lcom/baidu/launcher/thememanager/model/ThemeInfo;

    invoke-virtual {v5}, Lcom/baidu/launcher/thememanager/model/ThemeInfo;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    iget v8, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeType:I

    invoke-direct/range {v0 .. v8}, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 175
    .local v0, ti:Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponent:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 176
    const/4 v9, 0x1

    .line 178
    .local v9, _isall:Z
    invoke-virtual {p1, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 180
    if-eqz v9, :cond_0

    .line 181
    new-instance v10, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;

    invoke-direct {v10, p0, v0}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;)V

    .line 182
    .local v10, task:Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;
    invoke-virtual {v10, v12}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->needFinish(Z)V

    .line 183
    invoke-virtual {v10, v12}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->needReturnHome(Z)V

    .line 184
    new-array v1, v11, [Ljava/lang/Void;

    invoke-virtual {v10, v1}, Lcom/baidu/launcher/thememanager/util/ApplyThemeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x7f0801d2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 65
    invoke-super {p0, p1}, Lcom/baidu/launcher/thememanager/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->requestWindowFeature(I)Z

    .line 68
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mId:I

    .line 71
    const-string v1, "component_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponentType:I

    .line 72
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mTitle:Ljava/lang/String;

    .line 73
    const-string v1, "theme_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeType:I

    .line 74
    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->EXTRA_DETAIL_CANNOT_BACK:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mIsCannotBack:Z

    .line 75
    const-string v1, "fragment_index"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mReturnIndex:I

    .line 76
    const-string v1, "path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mPath:Ljava/lang/String;

    .line 77
    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mId:I

    if-ne v1, v3, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->finish()V

    .line 90
    :goto_0
    return-void

    .line 82
    :cond_0
    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponentType:I

    if-le v1, v3, :cond_1

    .line 83
    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentEntry:[Ljava/lang/String;

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponentType:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponent:Ljava/lang/String;

    .line 84
    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentPreview:[Ljava/lang/String;

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mComponentType:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mPreview:Ljava/lang/String;

    .line 87
    :cond_1
    new-instance v1, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$1;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$ThemeDetailLoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 89
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->getInstance()Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->attach(Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mDetailFragment:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mDetailFragment:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mDetailFragment:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->adapter:Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/adapter/ImagePagerAdapter;->clean()V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mDetailFragment:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    .line 200
    :cond_0
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->getInstance()Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor;->detach(Lcom/baidu/launcher/thememanager/util/StorageStatusMonitor$SDCardObserver;)V

    .line 201
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseFragment;->onDestroy()V

    .line 202
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mDetailFragment:Lcom/baidu/launcher/thememanager/ui/DetailFragment;

    invoke-virtual {v0, p3}, Lcom/baidu/launcher/thememanager/ui/DetailFragment;->setCurrentDetail(I)V

    .line 211
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 206
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 112
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseFragment;->onPause()V

    .line 114
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mHandlerReceiver:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$HandleReceiver;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    invoke-static {p0}, Lcom/baidu/launcher/ubc/UBC;->onPause(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseFragment;->onResume()V

    .line 95
    new-instance v1, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$HandleReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$HandleReceiver;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$1;)V

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mHandlerReceiver:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$HandleReceiver;

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .local v0, mFilter:Landroid/content/IntentFilter;
    const-string v1, "com.baidu.thememanager.action.downloadstatechange"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mHandlerReceiver:Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity$HandleReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mThemeType:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 101
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->mPath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ThemeDetailActivity;->finish()V

    .line 107
    :cond_0
    invoke-static {p0}, Lcom/baidu/launcher/ubc/UBC;->onResume(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseFragment;->onStop()V

    .line 122
    return-void
.end method
