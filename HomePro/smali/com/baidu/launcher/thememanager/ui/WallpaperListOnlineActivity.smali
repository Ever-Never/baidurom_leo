.class public Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;
.super Lcom/baidu/launcher/thememanager/ui/BaseActivity;
.source "WallpaperListOnlineActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;,
        Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$PullGridListener;
    }
.end annotation


# static fields
.field private static final ITEMS_LOAD_MAX:I = 0x1f4

.field private static final ITEMS_LOAD_ONCE:I = 0xa

.field private static final MESSAGE_FAILURE:I = 0x1

.field private static final MESSAGE_FINISH:I = 0x3

.field private static final MESSAGE_LOADING:I = 0x2

.field private static final MESSAGE_SUCCESS:I

.field private static STATE:I


# instance fields
.field private current_page:I

.field private mAdapter:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;

.field private mAllWallpaperList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;",
            ">;"
        }
    .end annotation
.end field

.field private mBackView:Landroid/view/View;

.field private mCurrentCategory:Ljava/lang/String;

.field private mGridView:Landroid/widget/GridView;

.field private mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

.field private mImageThumbHeight:I

.field private mImageThumbWidth:I

.field private mPull_listener:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$PullGridListener;

.field private mView_error:Landroid/view/View;

.field private mView_loading:Landroid/view/View;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x2

    sput v0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->STATE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;-><init>()V

    .line 54
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$PullGridListener;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$PullGridListener;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mPull_listener:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$PullGridListener;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->current_page:I

    .line 235
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->requestWallpaperList(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->current_page:I

    return v0
.end method

.method static synthetic access$104(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->current_page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->current_page:I

    return v0
.end method

.method static synthetic access$200(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mWallpaperList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mCurrentCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mImageThumbWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mImageThumbHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAllWallpaperList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAllWallpaperList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAdapter:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;

    return-object v0
.end method

.method static synthetic access$802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    sput p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->STATE:I

    return p0
.end method

.method static synthetic access$900(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)Landroid/widget/GridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method private initLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 86
    const v6, 0x7f0300b1

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->setContentView(I)V

    .line 88
    const v6, 0x7f080238

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 89
    .local v2, titleBar:Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 91
    const v6, 0x7f08023c

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 92
    .local v5, titleView:Landroid/view/View;
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 94
    const v6, 0x7f08023d

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, backView:Landroid/view/View;
    new-instance v6, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$1;

    invoke-direct {v6, p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$1;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v6, 0x7f080240

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 104
    .local v4, titleBarText:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mCurrentCategory:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const v6, 0x7f08023e

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 107
    .local v3, titleBarBack:Landroid/widget/ImageView;
    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    const v6, 0x7f08022b

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mView_error:Landroid/view/View;

    .line 110
    const v6, 0x7f08022c

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 111
    .local v1, btn_refresh:Landroid/widget/Button;
    new-instance v6, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$2;

    invoke-direct {v6, p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$2;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v6, 0x7f08022e

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mView_loading:Landroid/view/View;

    .line 120
    const v6, 0x7f080225

    invoke-virtual {p0, v6}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    iput-object v6, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mGridView:Landroid/widget/GridView;

    .line 121
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mGridView:Landroid/widget/GridView;

    iget-object v7, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAdapter:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    return-void
.end method

.method private requestWallpaperList(II)V
    .locals 2
    .parameter "curPage"
    .parameter "pageSizes"

    .prologue
    .line 147
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 148
    const/4 v0, 0x2

    sput v0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->STATE:I

    .line 151
    :cond_0
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;II)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$RequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 60
    invoke-super {p0, p1}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0, v4}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->requestWindowFeature(I)Z

    .line 63
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mImageThumbWidth:I

    .line 64
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mImageThumbHeight:I

    .line 67
    new-instance v1, Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    .line 68
    new-instance v0, Lcom/baidu/launcher/thememanager/util/ImageResizer;

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mImageThumbWidth:I

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mImageThumbHeight:I

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/thememanager/util/ImageResizer;-><init>(II)V

    .line 69
    .local v0, imageResizer:Lcom/baidu/launcher/thememanager/util/ImageResizer;
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->setImageResizer(Lcom/baidu/launcher/thememanager/util/ImageResizer;)V

    .line 70
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    const v2, 0x7f020370

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->setLoadingImage(I)V

    .line 73
    new-instance v1, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mPull_listener:Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity$PullGridListener;

    invoke-direct {v1, p0, v2, v3}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;-><init>(Landroid/content/Context;Lcom/baidu/launcher/thememanager/util/ImageFetcher;Lcom/baidu/launcher/thememanager/adapter/IPullGridListener;)V

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAdapter:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;

    .line 75
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "currentCategory"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mCurrentCategory:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->initLayout()V

    .line 82
    const/16 v1, 0xa

    invoke-direct {p0, v4, v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->requestWallpaperList(II)V

    .line 83
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 176
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onDestroy()V

    .line 177
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 178
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 301
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->finish()V

    .line 303
    const v0, 0x7f04000c

    const v1, 0x7f04000d

    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->overridePendingTransition(II)V

    .line 304
    const/4 v0, 0x0

    .line 306
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onPause()V

    .line 168
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->flushCache()V

    .line 170
    invoke-static {p0}, Lcom/baidu/launcher/ubc/UBC;->onPause(Landroid/content/Context;)V

    .line 171
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 156
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/BaseActivity;->onResume()V

    .line 158
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAdapter:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->notifyDataSetChanged()V

    .line 161
    invoke-static {p0}, Lcom/baidu/launcher/ubc/UBC;->onResume(Landroid/content/Context;)V

    .line 162
    return-void
.end method

.method public updateView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 185
    sget v0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->STATE:I

    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mView_error:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mView_loading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mView_error:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mView_loading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAdapter:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 204
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mView_error:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mView_loading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mAdapter:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->notifyDataSetChanged()V

    .line 208
    const v0, 0x7f0c0127

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 213
    :pswitch_3
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mView_loading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mView_error:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperListOnlineActivity;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
