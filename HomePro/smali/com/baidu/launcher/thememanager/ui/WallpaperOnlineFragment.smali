.class public Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;
.super Landroid/support/v4/app/Fragment;
.source "WallpaperOnlineFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$RequestTask;,
        Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;,
        Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ViewHolder;
    }
.end annotation


# static fields
.field private static final MESSAGE_FAILURE:I = 0x1

.field private static final MESSAGE_LOADING:I = 0x2

.field private static final MESSAGE_SUCCESS:I

.field private static STATE:I


# instance fields
.field private mAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;

.field private mCategoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFragView:Landroid/view/View;

.field private mGridView:Landroid/widget/GridView;

.field private mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

.field private mImageThumbHeight:I

.field private mImageThumbWidth:I

.field private mView_error:Landroid/view/View;

.field private mView_loading:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x2

    sput v0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->STATE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mCategoryList:Ljava/util/ArrayList;

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->requestWallpaperCategoryList()V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)Lcom/baidu/launcher/thememanager/util/ImageFetcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    return-object v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    sput p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->STATE:I

    return p0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mCategoryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mCategoryList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mImageThumbWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mImageThumbHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;

    return-object v0
.end method

.method private requestWallpaperCategoryList()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$RequestTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$RequestTask;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$RequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 119
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mImageThumbWidth:I

    .line 56
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mImageThumbHeight:I

    .line 59
    new-instance v1, Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    .line 60
    new-instance v0, Lcom/baidu/launcher/thememanager/util/ImageResizer;

    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mImageThumbWidth:I

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mImageThumbHeight:I

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/thememanager/util/ImageResizer;-><init>(II)V

    .line 61
    .local v0, imageResizer:Lcom/baidu/launcher/thememanager/util/ImageResizer;
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    invoke-virtual {v1, v0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->setImageResizer(Lcom/baidu/launcher/thememanager/util/ImageResizer;)V

    .line 62
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    const v2, 0x7f020370

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->setLoadingImage(I)V

    .line 64
    new-instance v1, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;

    .line 67
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/ubc/UBC;->reportWallpaperBrowse(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 74
    const v1, 0x7f0300b1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mFragView:Landroid/view/View;

    .line 76
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mFragView:Landroid/view/View;

    const v2, 0x7f08022b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mView_error:Landroid/view/View;

    .line 77
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mFragView:Landroid/view/View;

    const v2, 0x7f08022c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 78
    .local v0, refresh:Landroid/widget/Button;
    new-instance v1, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$1;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mFragView:Landroid/view/View;

    const v2, 0x7f08022e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mView_loading:Landroid/view/View;

    .line 87
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mFragView:Landroid/view/View;

    const v2, 0x7f080225

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mGridView:Landroid/widget/GridView;

    .line 88
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mGridView:Landroid/widget/GridView;

    new-instance v2, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$2;

    invoke-direct {v2, p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$2;-><init>(Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 107
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->requestWallpaperCategoryList()V

    .line 109
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mFragView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 139
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->setExitTasksEarly(Z)V

    .line 140
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 133
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 124
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->updateView()V

    .line 126
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;->notifyDataSetChanged()V

    .line 127
    return-void
.end method

.method public updateView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 233
    sget v0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->STATE:I

    packed-switch v0, :pswitch_data_0

    .line 259
    :goto_0
    return-void

    .line 237
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mView_error:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mView_loading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 244
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mView_error:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mView_loading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mAdapter:Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment$ImageAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 253
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mView_error:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mView_loading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/WallpaperOnlineFragment;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
