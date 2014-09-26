.class public Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "PullGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static NUMCOLUMNS:I = 0x0

.field private static final STATE_LOADING:I = 0x0

.field private static final STATE_WAITTING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PullGridAdapter"

.field private static final TYPE_ITEM:I = 0x0

.field private static final TYPE_MAX_COUNT:I = 0x2

.field private static final TYPE_REFRESH:I = 0x1


# instance fields
.field private adapter_index:I

.field private b_loadmore:Z

.field private btn_lis:Landroid/view/View$OnClickListener;

.field private current_state:I

.field private imageview_lis:Landroid/view/View$OnClickListener;

.field private list_data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private pull_lis:Lcom/baidu/launcher/thememanager/adapter/IPullGridListener;

.field private viewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private view_refresh:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x3

    sput v0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->NUMCOLUMNS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Lcom/baidu/launcher/thememanager/adapter/IPullGridListener;I)V
    .locals 3
    .parameter "context"
    .parameter "type"
    .parameter "btn_listener"
    .parameter "imageview_listener"
    .parameter "pull_listener"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 58
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->list_data:Ljava/util/ArrayList;

    .line 40
    iput-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->viewList:Ljava/util/ArrayList;

    .line 46
    iput-boolean v1, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->b_loadmore:Z

    .line 52
    iput-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->view_refresh:Landroid/view/View;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->adapter_index:I

    .line 59
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->mContext:Landroid/content/Context;

    .line 60
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    iput-object p3, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->btn_lis:Landroid/view/View$OnClickListener;

    .line 63
    iput-object p4, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->imageview_lis:Landroid/view/View$OnClickListener;

    .line 66
    iput v1, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->current_state:I

    .line 67
    iput-object p5, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->pull_lis:Lcom/baidu/launcher/thememanager/adapter/IPullGridListener;

    .line 69
    iput p6, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->adapter_index:I

    .line 70
    return-void
.end method

.method private getItemLineCount()I
    .locals 5

    .prologue
    .line 278
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->list_data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v1, v1

    sget v3, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->NUMCOLUMNS:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    sget v2, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->NUMCOLUMNS:I

    mul-int v0, v1, v2

    .line 279
    .local v0, count:I
    return v0
.end method


# virtual methods
.method public add(Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;)V
    .locals 1
    .parameter "dataItem"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->list_data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->resetState()V

    .line 286
    return-void
.end method

.method public clean()V
    .locals 6

    .prologue
    .line 317
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->viewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 318
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0801f3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 321
    .local v2, imageview:Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 322
    .local v3, obj:Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v5, v3, Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;

    if-eqz v5, :cond_0

    .line 324
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 327
    .local v0, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    check-cast v3, Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;

    .end local v3           #obj:Ljava/lang/Object;
    iget-object v5, v3, Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;->url:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/baidu/launcher/thememanager/util/Utils;->releaseBitmap(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    .end local v0           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #imageview:Landroid/widget/ImageView;
    .end local v4           #view:Landroid/view/View;
    :cond_1
    iget-object v5, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->viewList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 331
    return-void
.end method

.method public disableRefreshView(Landroid/widget/GridView;)V
    .locals 4
    .parameter "gridview"

    .prologue
    .line 297
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->view_refresh:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->view_refresh:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 298
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->view_refresh:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->view_refresh:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int v0, v2, v3

    .line 299
    .local v0, distance:I
    const/16 v1, 0x3e8

    .line 300
    .local v1, duration:I
    invoke-virtual {p1, v0, v1}, Landroid/widget/GridView;->smoothScrollBy(II)V

    .line 302
    .end local v0           #distance:I
    .end local v1           #duration:I
    :cond_0
    return-void
.end method

.method public getBottomY()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->view_refresh:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->view_refresh:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->view_refresh:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 5

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, count:I
    iget-boolean v1, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->b_loadmore:Z

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->list_data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v1, v1

    sget v3, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->NUMCOLUMNS:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0

    add-double/2addr v1, v3

    sget v3, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->NUMCOLUMNS:I

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 80
    :goto_0
    return v0

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->list_data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getDataCount()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->list_data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->list_data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->list_data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 93
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->getItemLineCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getRefreshIndex()I
    .locals 5

    .prologue
    .line 272
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->list_data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-double v1, v1

    sget v3, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->NUMCOLUMNS:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    sget v2, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->NUMCOLUMNS:I

    mul-int/2addr v1, v2

    sget v2, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->NUMCOLUMNS:I

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 274
    .local v0, index:I
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 31
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 125
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->getItemViewType(I)I

    move-result v25

    if-nez v25, :cond_7

    .line 126
    const/4 v9, 0x0

    .line 128
    .local v9, holder:Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;
    if-eqz p2, :cond_4

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    .end local v9           #holder:Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;
    check-cast v9, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;

    .line 165
    .restart local v9       #holder:Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->list_data:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, p1

    move/from16 v1, v25

    if-ge v0, v1, :cond_6

    .line 166
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;

    .line 168
    .local v12, info:Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;
    invoke-virtual {v12}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeTitle()Ljava/lang/String;

    move-result-object v22

    .line 169
    .local v22, title:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeUrl()Ljava/lang/String;

    move-result-object v17

    .line 170
    .local v17, path:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeVersion()Ljava/lang/String;

    move-result-object v23

    .line 173
    .local v23, version:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeUrl()Ljava/lang/String;

    move-result-object v15

    .line 174
    .local v15, mUrl:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeIconUrl()Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, entry:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v9, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;->path:Landroid/net/Uri;

    .line 177
    iget-object v0, v9, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;->btn_download:Landroid/widget/Button;

    move-object/from16 v25, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 179
    iget-object v0, v9, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;->imageview_cover:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->imageview_lis:Landroid/view/View$OnClickListener;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getInstance()Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v15, v1}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getThemeStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;

    move-result-object v20

    .line 184
    .local v20, status:Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    iget-object v0, v9, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;->btn_download:Landroid/widget/Button;

    move-object/from16 v26, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->status:I

    move/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->percent:I

    move/from16 v29, v0

    invoke-static/range {v25 .. v29}, Lcom/baidu/launcher/thememanager/util/Utils;->setButtonState(Landroid/content/Context;Landroid/widget/Button;III)V

    .line 187
    move-object/from16 v0, v20

    iget v0, v0, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->status:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v9, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;->status:I

    .line 189
    iget-object v0, v9, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;->btn_download:Landroid/widget/Button;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->btn_lis:Landroid/view/View$OnClickListener;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, v9, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;->textview_size:Landroid/widget/TextView;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    if-eqz v7, :cond_2

    .line 197
    iget-object v0, v9, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;->imageview_cover:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v16

    .line 198
    .local v16, obj:Ljava/lang/Object;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 199
    iget-object v0, v9, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;->imageview_cover:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    .line 202
    .local v6, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    check-cast v16, Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;

    .end local v16           #obj:Ljava/lang/Object;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v6, v0}, Lcom/baidu/launcher/thememanager/util/Utils;->releaseBitmap(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;)V

    .line 205
    .end local v6           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    new-instance v14, Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;

    move/from16 v0, p1

    invoke-direct {v14, v0, v7}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;-><init>(ILjava/lang/String;)V

    .line 206
    .local v14, itemdata:Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;
    iget-object v0, v9, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;->imageview_cover:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 208
    const/4 v5, 0x0

    .line 209
    .local v5, bitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_1

    .line 210
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getInstance()Lcom/baidu/launcher/thememanager/util/BitmapCache;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 213
    :cond_1
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v25

    if-nez v25, :cond_5

    .line 214
    iget-object v0, v9, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;->imageview_cover:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 222
    :goto_1
    iget-object v0, v9, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;->textview_title:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v14           #itemdata:Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;
    :cond_2
    const/16 v25, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    .end local v7           #entry:Ljava/lang/String;
    .end local v9           #holder:Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;
    .end local v12           #info:Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;
    .end local v15           #mUrl:Ljava/lang/String;
    .end local v17           #path:Ljava/lang/String;
    .end local v20           #status:Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
    .end local v22           #title:Ljava/lang/String;
    .end local v23           #version:Ljava/lang/String;
    :cond_3
    :goto_2
    return-object p2

    .line 131
    .restart local v9       #holder:Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v25, v0

    const v26, 0x7f03009c

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, p3

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 133
    const v25, 0x7f0801f2

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 135
    .local v10, image_layout:Landroid/widget/FrameLayout;
    const v25, 0x7f0801f1

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    .line 138
    .local v13, item_layout:Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    move/from16 v19, v0

    .line 140
    .local v19, scale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/baidu/launcher/thememanager/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v25

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const/high16 v27, 0x41a0

    mul-float v27, v27, v19

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v27, v0

    const-wide/high16 v29, 0x3fe0

    add-double v27, v27, v29

    sub-double v25, v25, v27

    const-wide/high16 v27, 0x4008

    div-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v24, v0

    .line 141
    .local v24, w:I
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/baidu/launcher/thememanager/util/Utils;->getScreenRatio(Landroid/content/Context;)F

    move-result v26

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v8, v0

    .line 143
    .local v8, h:I
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    move-object/from16 v0, v25

    iput v8, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0b0071

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v26

    add-int v26, v26, v8

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 151
    new-instance v9, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;

    .end local v9           #holder:Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;
    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;-><init>(Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;)V

    .line 152
    .restart local v9       #holder:Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;
    const v25, 0x7f0801f7

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/Button;

    move-object/from16 v0, v25

    iput-object v0, v9, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;->btn_download:Landroid/widget/Button;

    .line 153
    const v25, 0x7f0801f3

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/ImageView;

    move-object/from16 v0, v25

    iput-object v0, v9, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;->imageview_cover:Landroid/widget/ImageView;

    .line 154
    const v25, 0x7f0801f4

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    iput-object v0, v9, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;->textview_size:Landroid/widget/TextView;

    .line 155
    const v25, 0x7f0801f6

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 157
    .local v11, imageview_mark:Landroid/widget/ImageView;
    const/16 v25, 0x8

    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    const v25, 0x7f0801f5

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    move-object/from16 v0, v25

    iput-object v0, v9, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;->textview_title:Landroid/widget/TextView;

    .line 160
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->viewList:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 216
    .end local v8           #h:I
    .end local v10           #image_layout:Landroid/widget/FrameLayout;
    .end local v11           #imageview_mark:Landroid/widget/ImageView;
    .end local v13           #item_layout:Landroid/widget/FrameLayout;
    .end local v19           #scale:F
    .end local v24           #w:I
    .restart local v5       #bitmap:Landroid/graphics/Bitmap;
    .restart local v7       #entry:Ljava/lang/String;
    .restart local v12       #info:Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;
    .restart local v14       #itemdata:Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;
    .restart local v15       #mUrl:Ljava/lang/String;
    .restart local v17       #path:Ljava/lang/String;
    .restart local v20       #status:Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
    .restart local v22       #title:Ljava/lang/String;
    .restart local v23       #version:Ljava/lang/String;
    :cond_5
    iget-object v0, v9, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;->imageview_cover:Landroid/widget/ImageView;

    move-object/from16 v25, v0

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getInstance()Lcom/baidu/launcher/thememanager/util/BitmapCache;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getDefaultBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/baidu/launcher/thememanager/util/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/thememanager/util/ImageLoader;

    move-result-object v25

    iget-object v0, v9, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;->imageview_cover:Landroid/widget/ImageView;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v7, v7, v1}, Lcom/baidu/launcher/thememanager/util/ImageLoader;->downloadSmall(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 228
    .end local v5           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #entry:Ljava/lang/String;
    .end local v12           #info:Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;
    .end local v14           #itemdata:Lcom/baidu/launcher/thememanager/model/ThemeOnlineItem;
    .end local v15           #mUrl:Ljava/lang/String;
    .end local v17           #path:Ljava/lang/String;
    .end local v20           #status:Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;
    .end local v22           #title:Ljava/lang/String;
    .end local v23           #version:Ljava/lang/String;
    :cond_6
    const/16 v25, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 231
    .end local v9           #holder:Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter$ViewHolder;
    :cond_7
    invoke-virtual/range {p0 .. p1}, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->getItemViewType(I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 233
    if-nez p2, :cond_8

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v25, v0

    const v26, 0x7f03007f

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, p3

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 237
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->getRefreshIndex()I

    move-result v25

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 239
    const/16 v25, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    new-instance v25, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v26

    const/16 v27, -0x2

    invoke-direct/range {v25 .. v27}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    const/16 v25, 0x8

    const/16 v26, 0x2

    const/16 v27, 0x8

    const/16 v28, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 244
    const v25, 0x7f0801a5

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 246
    .local v21, textview:Landroid/widget/TextView;
    const v25, 0x7f0801a4

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ProgressBar;

    .line 249
    .local v18, progressbar:Landroid/widget/ProgressBar;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->b_loadmore:Z

    move/from16 v25, v0

    if-eqz v25, :cond_a

    .line 250
    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->current_state:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 251
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->current_state:I

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->pull_lis:Lcom/baidu/launcher/thememanager/adapter/IPullGridListener;

    move-object/from16 v25, v0

    if-eqz v25, :cond_9

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->pull_lis:Lcom/baidu/launcher/thememanager/adapter/IPullGridListener;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->adapter_index:I

    move/from16 v26, v0

    invoke-interface/range {v25 .. v26}, Lcom/baidu/launcher/thememanager/adapter/IPullGridListener;->onLoadMore(I)V

    .line 258
    :cond_9
    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 259
    const v25, 0x7f0c0108

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 262
    :cond_a
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->view_refresh:Landroid/view/View;

    goto/16 :goto_2

    .line 264
    .end local v18           #progressbar:Landroid/widget/ProgressBar;
    .end local v21           #textview:Landroid/widget/TextView;
    :cond_b
    const/16 v25, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x2

    return v0
.end method

.method public resetState()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->current_state:I

    .line 290
    return-void
.end method

.method public setLoadMore(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 293
    iput-boolean p1, p0, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->b_loadmore:Z

    .line 294
    return-void
.end method
