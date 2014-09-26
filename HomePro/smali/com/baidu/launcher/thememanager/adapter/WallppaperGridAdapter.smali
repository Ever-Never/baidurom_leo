.class public Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "WallppaperGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static NUMCOLUMNS:I = 0x0

.field private static final STATE_LOADING:I = 0x0

.field private static final STATE_WAITTING:I = 0x1

.field private static final TYPE_ITEM:I = 0x0

.field private static final TYPE_MAX_COUNT:I = 0x2

.field private static final TYPE_REFRESH:I = 0x1


# instance fields
.field private all_data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;",
            ">;"
        }
    .end annotation
.end field

.field private b_loadmore:Z

.field private current_state:I

.field private list_data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

.field private mInflater:Landroid/view/LayoutInflater;

.field private pull_lis:Lcom/baidu/launcher/thememanager/adapter/IPullGridListener;

.field private view_refresh:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x2

    sput v0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->NUMCOLUMNS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/launcher/thememanager/util/ImageFetcher;Lcom/baidu/launcher/thememanager/adapter/IPullGridListener;)V
    .locals 3
    .parameter "context"
    .parameter "aImageFetcher"
    .parameter "pull_listener"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 50
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->list_data:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->all_data:Ljava/util/ArrayList;

    .line 36
    iput-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput-boolean v1, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->b_loadmore:Z

    .line 47
    iput-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->view_refresh:Landroid/view/View;

    .line 51
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    .line 54
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    iput v1, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->current_state:I

    .line 57
    iput-object p3, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->pull_lis:Lcom/baidu/launcher/thememanager/adapter/IPullGridListener;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->all_data:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getItemLineCount()I
    .locals 5

    .prologue
    .line 197
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->list_data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v1, v1

    sget v3, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->NUMCOLUMNS:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    sget v2, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->NUMCOLUMNS:I

    mul-int v0, v1, v2

    .line 198
    .local v0, count:I
    return v0
.end method

.method private isLeft(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 202
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;)V
    .locals 1
    .parameter "dataItem"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->list_data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->resetState()V

    .line 209
    return-void
.end method

.method public disableRefreshView(Landroid/widget/GridView;)V
    .locals 4
    .parameter "gridview"

    .prologue
    .line 220
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->view_refresh:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->view_refresh:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 221
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->view_refresh:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->view_refresh:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v0, v2, v3

    .line 222
    .local v0, distance:I
    const/16 v1, 0x3e8

    .line 223
    .local v1, duration:I
    invoke-virtual {p1, v0, v1}, Landroid/widget/GridView;->smoothScrollBy(II)V

    .line 225
    .end local v0           #distance:I
    .end local v1           #duration:I
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 5

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, count:I
    iget-boolean v1, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->b_loadmore:Z

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->list_data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v1, v1

    sget v3, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->NUMCOLUMNS:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0

    add-double/2addr v1, v3

    sget v3, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->NUMCOLUMNS:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 69
    :goto_0
    return v0

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->list_data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDataCount()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->list_data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->list_data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->list_data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->getItem(I)Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 82
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->getItemLineCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getRefreshIndex()I
    .locals 5

    .prologue
    .line 191
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->list_data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v1, v1

    sget v3, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->NUMCOLUMNS:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    sget v2, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->NUMCOLUMNS:I

    mul-int/2addr v1, v2

    sget v2, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->NUMCOLUMNS:I

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 193
    .local v0, index:I
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->getItemViewType(I)I

    move-result v9

    if-nez v9, :cond_3

    .line 108
    const/4 v4, 0x0

    .line 110
    .local v4, holder:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$ViewHolder;
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 111
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #holder:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$ViewHolder;
    check-cast v4, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$ViewHolder;

    .line 120
    .restart local v4       #holder:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$ViewHolder;
    :goto_0
    iget-object v9, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->list_data:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge p1, v9, :cond_2

    .line 122
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->getItem(I)Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;

    move-result-object v3

    .line 123
    .local v3, aItem:Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;
    move v1, p1

    .line 124
    .local v1, aCurrentIndex:I
    invoke-virtual {v3}, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->getmCategoryName()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, aCurrentCategory:Ljava/lang/String;
    iget-object v2, v4, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 126
    .local v2, aImageView:Landroid/widget/ImageView;
    new-instance v9, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$1;

    invoke-direct {v9, p0, v1, v0}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$1;-><init>(Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;ILjava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v8, v4, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 139
    .local v8, txt_tick:Landroid/widget/TextView;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    new-instance v5, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$2;

    invoke-direct {v5, p0, v8}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$2;-><init>(Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;Landroid/widget/TextView;)V

    .line 148
    .local v5, loadListener:Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadListener;
    iget-object v9, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->mImageFetcher:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    invoke-virtual {v3}, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->getThumbUrl()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v2, v5, v11}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->loadImageFromServer(Ljava/lang/String;Landroid/widget/ImageView;Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadListener;Z)V

    .line 150
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .end local v0           #aCurrentCategory:Ljava/lang/String;
    .end local v1           #aCurrentIndex:I
    .end local v2           #aImageView:Landroid/widget/ImageView;
    .end local v3           #aItem:Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;
    .end local v4           #holder:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$ViewHolder;
    .end local v5           #loadListener:Lcom/baidu/launcher/thememanager/util/ImageFetcher$LoadListener;
    .end local v8           #txt_tick:Landroid/widget/TextView;
    :cond_0
    :goto_1
    return-object p2

    .line 113
    .restart local v4       #holder:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$ViewHolder;
    :cond_1
    iget-object v9, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0300af

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 114
    new-instance v4, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$ViewHolder;

    .end local v4           #holder:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$ViewHolder;
    invoke-direct {v4, p0}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$ViewHolder;-><init>(Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;)V

    .line 115
    .restart local v4       #holder:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$ViewHolder;
    const v9, 0x7f080226

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, v4, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 116
    const v9, 0x7f080228

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, v4, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 117
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 152
    :cond_2
    const/4 v9, 0x4

    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 155
    .end local v4           #holder:Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter$ViewHolder;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->getItemViewType(I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 157
    if-nez p2, :cond_4

    .line 158
    iget-object v9, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f0300b2

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 161
    :cond_4
    const v9, 0x7f080232

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 162
    .local v7, textview:Landroid/widget/TextView;
    const v9, 0x7f080231

    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    .line 164
    .local v6, progressbar:Landroid/widget/ProgressBar;
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->isLeft(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 166
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 167
    new-instance v9, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    const/4 v11, -0x2

    invoke-direct {v9, v10, v11}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    iget-boolean v9, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->b_loadmore:Z

    if-eqz v9, :cond_6

    .line 170
    iget v9, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->current_state:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 171
    const/4 v9, 0x0

    iput v9, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->current_state:I

    .line 173
    iget-object v9, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->pull_lis:Lcom/baidu/launcher/thememanager/adapter/IPullGridListener;

    if-eqz v9, :cond_5

    .line 174
    iget-object v9, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->pull_lis:Lcom/baidu/launcher/thememanager/adapter/IPullGridListener;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/baidu/launcher/thememanager/adapter/IPullGridListener;->onLoadMore(I)V

    .line 177
    :cond_5
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 178
    const v9, 0x7f0c0125

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    .line 181
    :cond_6
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->view_refresh:Landroid/view/View;

    goto/16 :goto_1

    .line 183
    :cond_7
    const/16 v9, 0x8

    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x2

    return v0
.end method

.method public resetState()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->current_state:I

    .line 213
    return-void
.end method

.method public setAllListData(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, allListData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->all_data:Ljava/util/ArrayList;

    .line 233
    return-void
.end method

.method public setLoadMore(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 216
    iput-boolean p1, p0, Lcom/baidu/launcher/thememanager/adapter/WallppaperGridAdapter;->b_loadmore:Z

    .line 217
    return-void
.end method
