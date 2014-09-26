.class public Lcom/baidu/bulletin/ui/BulletinPageAdapter;
.super Landroid/widget/BaseAdapter;
.source "BulletinPageAdapter.java"


# static fields
.field private static final GUIDE_IMAGE_RES:[I

.field private static final GUIDE_PAGE_COUNT:I


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mPaddingBottom:I

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f02006e

    aput v2, v0, v1

    sput-object v0, Lcom/baidu/bulletin/ui/BulletinPageAdapter;->GUIDE_IMAGE_RES:[I

    .line 28
    sget-object v0, Lcom/baidu/bulletin/ui/BulletinPageAdapter;->GUIDE_IMAGE_RES:[I

    array-length v0, v0

    sput v0, Lcom/baidu/bulletin/ui/BulletinPageAdapter;->GUIDE_PAGE_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    iput-object v5, p0, Lcom/baidu/bulletin/ui/BulletinPageAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 39
    invoke-static {p1}, Lcom/baidu/bulletin/ui/Utilities;->getDensity(Landroid/content/Context;)F

    move-result v0

    .line 40
    .local v0, density:F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00d0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 41
    .local v3, paddingTopDp:F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 42
    .local v1, paddingBottomDp:F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00d1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 43
    .local v4, paddingtLeftDp:F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b00d3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 45
    .local v2, paddingRightDp:F
    invoke-static {v3, v0}, Lcom/baidu/bulletin/ui/Utilities;->dipTopx(FF)I

    move-result v5

    iput v5, p0, Lcom/baidu/bulletin/ui/BulletinPageAdapter;->mPaddingTop:I

    .line 46
    invoke-static {v1, v0}, Lcom/baidu/bulletin/ui/Utilities;->dipTopx(FF)I

    move-result v5

    iput v5, p0, Lcom/baidu/bulletin/ui/BulletinPageAdapter;->mPaddingBottom:I

    .line 47
    invoke-static {v4, v0}, Lcom/baidu/bulletin/ui/Utilities;->dipTopx(FF)I

    move-result v5

    iput v5, p0, Lcom/baidu/bulletin/ui/BulletinPageAdapter;->mPaddingLeft:I

    .line 48
    invoke-static {v2, v0}, Lcom/baidu/bulletin/ui/Utilities;->dipTopx(FF)I

    move-result v5

    iput v5, p0, Lcom/baidu/bulletin/ui/BulletinPageAdapter;->mPaddingRight:I

    .line 49
    return-void
.end method

.method private initStartButton(Landroid/view/View;)V
    .locals 1
    .parameter "startButton"

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 103
    new-instance v0, Lcom/baidu/bulletin/ui/BulletinPageAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/baidu/bulletin/ui/BulletinPageAdapter$1;-><init>(Lcom/baidu/bulletin/ui/BulletinPageAdapter;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Lcom/baidu/bulletin/BulletinPresentation;->getInstance()Lcom/baidu/bulletin/BulletinPresentation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bulletin/BulletinPresentation;->getPageCount()I

    move-result v0

    .line 54
    .local v0, pageCount:I
    if-nez v0, :cond_0

    sget v0, Lcom/baidu/bulletin/ui/BulletinPageAdapter;->GUIDE_PAGE_COUNT:I

    .end local v0           #pageCount:I
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 69
    const/4 v2, 0x0

    .line 70
    .local v2, page:Landroid/view/View;
    const-string v4, "adapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get view is called at position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :try_start_0
    invoke-static {}, Lcom/baidu/bulletin/utils/SharedPreferencesUtils;->isGuideShown()Z

    move-result v4

    if-nez v4, :cond_1

    if-ltz p1, :cond_1

    sget v4, Lcom/baidu/bulletin/ui/BulletinPageAdapter;->GUIDE_PAGE_COUNT:I

    if-ge p1, v4, :cond_1

    .line 74
    iget-object v4, p0, Lcom/baidu/bulletin/ui/BulletinPageAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f03002d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 75
    const v4, 0x7f0800bf

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 77
    .local v1, guideImage:Landroid/widget/ImageView;
    sget-object v4, Lcom/baidu/bulletin/ui/BulletinPageAdapter;->GUIDE_IMAGE_RES:[I

    sget v5, Lcom/baidu/bulletin/ui/BulletinPageAdapter;->GUIDE_PAGE_COUNT:I

    rem-int v5, p1, v5

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    sget v4, Lcom/baidu/bulletin/ui/BulletinPageAdapter;->GUIDE_PAGE_COUNT:I

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_0

    .line 80
    const v4, 0x7f0800c0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/baidu/bulletin/ui/BulletinPageAdapter;->initStartButton(Landroid/view/View;)V

    .line 98
    .end local v1           #guideImage:Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-object v2

    .line 83
    :cond_1
    invoke-static {}, Lcom/baidu/bulletin/BulletinPresentation;->getInstance()Lcom/baidu/bulletin/BulletinPresentation;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/baidu/bulletin/BulletinPresentation;->getPageData(I)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    .line 85
    .local v0, data:[Lcom/baidu/bulletin/entity/ChannelItem;
    iget-object v4, p0, Lcom/baidu/bulletin/ui/BulletinPageAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p2, v4, p3, v0}, Lcom/baidu/bulletin/ui/pagecomponent/BulletinPageInflater;->inflatePage(Landroid/view/View;Landroid/view/LayoutInflater;Landroid/view/ViewGroup;[Lcom/baidu/bulletin/entity/ChannelItem;)Landroid/view/View;

    move-result-object v2

    .line 88
    if-nez v2, :cond_2

    .line 89
    const-string v4, "adapter"

    const-string v5, "get view return null, so we see nothing"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v3, Landroid/view/View;

    iget-object v4, p0, Lcom/baidu/bulletin/ui/BulletinPageAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v4}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .end local v2           #page:Landroid/view/View;
    .local v3, page:Landroid/view/View;
    move-object v2, v3

    .line 94
    .end local v3           #page:Landroid/view/View;
    .restart local v2       #page:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 96
    .end local v0           #data:[Lcom/baidu/bulletin/entity/ChannelItem;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
