.class Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppDetailContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/detail/AppDetailContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppListAdapter"
.end annotation


# static fields
.field private static final BAI:J = 0x64L

.field private static final BAI_WAN:J = 0xf4240L

.field private static final BAI_YI:J = 0x2540be400L

.field private static final GE:J = 0x1L

.field private static final KB:I = 0x400

.field private static final M:I = 0x100000

.field private static final QIAN:J = 0x3e8L

.field private static final QIAN_WAN:J = 0x989680L

.field private static final SHI:J = 0xaL

.field private static final SHI_WAN:J = 0x186a0L

.field private static final SHI_YI:J = 0x3b9aca00L

.field private static final WAN:J = 0x2710L

.field private static final WU_BAI:J = 0x1f4L

.field private static final WU_BAI_WAN:J = 0x4c4b40L

.field private static final WU_QIAN:J = 0x1388L

.field private static final WU_QIAN_WAN:J = 0x2faf080L

.field private static final WU_SHI:J = 0x32L

.field private static final WU_SHI_WAN:J = 0x7a120L

.field private static final WU_WAN:J = 0xc350L

.field private static final YI:J = 0x5f5e100L


# instance fields
.field private mListEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/ui/detail/AppDetailContentView$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/baidu/bulletin/ui/detail/AppDetailContentView;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)V
    .locals 1
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/AppDetailContentView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;->mListEntities:Ljava/util/List;

    .line 129
    return-void
.end method

.method private convertSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "size"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 310
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 313
    .local v4, sizeValue:I
    const/high16 v5, 0x10

    div-int v2, v4, v5

    .line 315
    .local v2, m:I
    if-eqz v2, :cond_0

    .line 316
    int-to-float v5, v4

    const/high16 v6, 0x4980

    div-float v0, v5, v6

    .line 318
    .local v0, floatSize:F
    const-string v5, "%1$.1fM"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 330
    .end local v0           #floatSize:F
    .local v3, result:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 320
    .end local v3           #result:Ljava/lang/String;
    :cond_0
    div-int/lit16 v1, v4, 0x400

    .line 322
    .local v1, kb:I
    if-eqz v1, :cond_1

    .line 323
    int-to-float v5, v4

    const/high16 v6, 0x4480

    div-float v0, v5, v6

    .line 324
    .restart local v0       #floatSize:F
    const-string v5, "%1$.1fKB"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 325
    .restart local v3       #result:Ljava/lang/String;
    goto :goto_0

    .line 326
    .end local v0           #floatSize:F
    .end local v3           #result:Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Byte"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method private covertAllDownload(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "allDownload"

    .prologue
    .line 334
    const-string v0, "\u6b21\u4e0b\u8f7d"

    .line 335
    .local v0, cixiazai:Ljava/lang/String;
    move-object v1, p1

    .line 336
    .local v1, result:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    return-object v1
.end method

.method private isInstalled(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"

    .prologue
    .line 160
    const/4 v2, 0x1

    .line 162
    .local v2, installed:Z
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/AppDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mContainerViewGroup:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->access$000(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 165
    .local v0, context:Landroid/content/Context;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return v2

    .line 166
    :catch_0
    move-exception v1

    .line 168
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setScore(Ljava/lang/String;[Landroid/widget/ImageView;)V
    .locals 8
    .parameter "scoreStr"
    .parameter "stars"

    .prologue
    const v7, 0x7f02031b

    .line 289
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 290
    .local v3, score:I
    const/16 v5, 0x64

    array-length v6, p2

    div-int v4, v5, v6

    .line 291
    .local v4, step:I
    div-int v1, v3, v4

    .line 292
    .local v1, index:I
    rem-int v2, v3, v4

    .line 294
    .local v2, mode:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, p2

    if-ge v0, v5, :cond_3

    .line 295
    if-ge v0, v1, :cond_0

    .line 296
    aget-object v5, p2, v0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    if-ne v0, v1, :cond_2

    .line 298
    div-int/lit8 v5, v4, 0x2

    if-gt v2, v5, :cond_1

    .line 299
    aget-object v5, p2, v0

    const v6, 0x7f02031c

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 301
    :cond_1
    aget-object v5, p2, v0

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 304
    :cond_2
    aget-object v5, p2, v0

    const v6, 0x7f02031d

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 307
    :cond_3
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;->mListEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;->mListEntities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 187
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 193
    if-nez p2, :cond_0

    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "layout_inflater"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/LayoutInflater;

    const v16, 0x7f030022

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 199
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;->mListEntities:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$ListItem;

    .line 201
    .local v6, item:Lcom/baidu/bulletin/ui/detail/AppDetailContentView$ListItem;
    iget-object v4, v6, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$ListItem;->detailInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;

    .line 203
    .local v4, detailInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;
    const v15, 0x7f08009d

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 205
    .local v2, appImageView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/AppDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;
    invoke-static {v15}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->access$100(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    move-result-object v15

    iget-object v0, v4, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 206
    .local v3, bitmap:Landroid/graphics/Bitmap;
    if-nez v3, :cond_2

    .line 207
    const v15, 0x7f02000f

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 208
    iget-object v15, v4, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v15, v15, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 209
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 210
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/AppDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mAsyncImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;
    invoke-static {v15}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->access$300(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    move-result-object v15

    iget-object v0, v4, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/AppDetailContentView;

    move-object/from16 v17, v0

    #getter for: Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->imageCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;
    invoke-static/range {v17 .. v17}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->access$200(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V

    .line 218
    :goto_0
    const v15, 0x7f08009e

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 219
    .local v7, name:Landroid/widget/TextView;
    iget-object v15, v4, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->appName:Ljava/lang/String;

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    const v15, 0x7f08009f

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 222
    .local v1, allDownloadTextView:Landroid/widget/TextView;
    iget-object v15, v4, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->downloadCount:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;->covertAllDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    const v15, 0x7f0800a0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 225
    .local v8, sizeTextView:Landroid/widget/TextView;
    iget-object v15, v4, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->size:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;->convertSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    const v15, 0x7f0800a1

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 229
    .local v5, installedTextView:Landroid/widget/TextView;
    iget-boolean v15, v6, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$ListItem;->isIntalled:Z

    if-eqz v15, :cond_3

    .line 230
    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    const v15, 0x7f0c026c

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setText(I)V

    .line 236
    :goto_1
    const/4 v15, 0x5

    new-array v14, v15, [Landroid/widget/ImageView;

    .line 238
    .local v14, starImageViews:[Landroid/widget/ImageView;
    const v15, 0x7f0800a3

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 239
    .local v9, star0ImageView:Landroid/widget/ImageView;
    const/4 v15, 0x0

    aput-object v9, v14, v15

    .line 241
    const v15, 0x7f0800a4

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 242
    .local v10, star1ImageView:Landroid/widget/ImageView;
    const/4 v15, 0x1

    aput-object v10, v14, v15

    .line 244
    const v15, 0x7f0800a5

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 245
    .local v11, star2ImageView:Landroid/widget/ImageView;
    const/4 v15, 0x2

    aput-object v11, v14, v15

    .line 247
    const v15, 0x7f0800a6

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 248
    .local v12, star3ImageView:Landroid/widget/ImageView;
    const/4 v15, 0x3

    aput-object v12, v14, v15

    .line 250
    const v15, 0x7f0800a7

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 251
    .local v13, star4ImageView:Landroid/widget/ImageView;
    const/4 v15, 0x4

    aput-object v13, v14, v15

    .line 253
    iget-object v15, v4, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->score:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v14}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;->setScore(Ljava/lang/String;[Landroid/widget/ImageView;)V

    .line 255
    iget-object v15, v4, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->docId:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 258
    new-instance v15, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter$1;-><init>(Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    return-object p2

    .line 212
    .end local v1           #allDownloadTextView:Landroid/widget/TextView;
    .end local v5           #installedTextView:Landroid/widget/TextView;
    .end local v7           #name:Landroid/widget/TextView;
    .end local v8           #sizeTextView:Landroid/widget/TextView;
    .end local v9           #star0ImageView:Landroid/widget/ImageView;
    .end local v10           #star1ImageView:Landroid/widget/ImageView;
    .end local v11           #star2ImageView:Landroid/widget/ImageView;
    .end local v12           #star3ImageView:Landroid/widget/ImageView;
    .end local v13           #star4ImageView:Landroid/widget/ImageView;
    .end local v14           #starImageViews:[Landroid/widget/ImageView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/AppDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->mNoSdcardDetails:Ljava/util/List;
    invoke-static {v15}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView;->access$400(Lcom/baidu/bulletin/ui/detail/AppDetailContentView;)Ljava/util/List;

    move-result-object v15

    iget-object v0, v4, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 215
    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 233
    .restart local v1       #allDownloadTextView:Landroid/widget/TextView;
    .restart local v5       #installedTextView:Landroid/widget/TextView;
    .restart local v7       #name:Landroid/widget/TextView;
    .restart local v8       #sizeTextView:Landroid/widget/TextView;
    :cond_3
    const/4 v15, 0x4

    invoke-virtual {v5, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public update(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/AppDetailInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/AppDetailInfo;>;"
    iget-object v5, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;->mListEntities:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v1, installedList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/ui/detail/AppDetailContentView$ListItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v4, unInstalledList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/ui/detail/AppDetailContentView$ListItem;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/bulletin/db/entity/AppDetailInfo;

    .line 138
    .local v3, itemInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;
    iget-object v5, v3, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;->isInstalled(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 139
    new-instance v2, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$ListItem;

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$ListItem;-><init>(ZLcom/baidu/bulletin/db/entity/AppDetailInfo;)V

    .line 140
    .local v2, item:Lcom/baidu/bulletin/ui/detail/AppDetailContentView$ListItem;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    .end local v2           #item:Lcom/baidu/bulletin/ui/detail/AppDetailContentView$ListItem;
    :cond_0
    new-instance v2, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$ListItem;

    const/4 v5, 0x1

    invoke-direct {v2, v5, v3}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$ListItem;-><init>(ZLcom/baidu/bulletin/db/entity/AppDetailInfo;)V

    .line 143
    .restart local v2       #item:Lcom/baidu/bulletin/ui/detail/AppDetailContentView$ListItem;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    .end local v2           #item:Lcom/baidu/bulletin/ui/detail/AppDetailContentView$ListItem;
    .end local v3           #itemInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;
    :cond_1
    iget-object v5, p0, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;->mListEntities:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 151
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/detail/AppDetailContentView$AppListAdapter;->notifyDataSetChanged()V

    .line 152
    return-void
.end method
