.class public Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;
.super Ljava/lang/Object;
.source "DetailContentViewFactory.java"

# interfaces
.implements Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;


# static fields
.field private static final FOUR_SPACE:Ljava/lang/String; = "        "


# instance fields
.field private final MIN_WIDTH:I

.field callback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

.field private mAsyncImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

.field private mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field mNewsContent:Landroid/widget/LinearLayout;

.field private mNoSdcardDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ImageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    .locals 1
    .parameter "context"
    .parameter "contentView"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mNoSdcardDetails:Ljava/util/List;

    .line 32
    const/16 v0, 0x50

    iput v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->MIN_WIDTH:I

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mHandler:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory$1;-><init>(Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->callback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    .line 39
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mNewsContent:Landroid/widget/LinearLayout;

    .line 41
    sget-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->MediaMountChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    invoke-static {v0, p0}, Lcom/baidu/bulletin/utils/ChangeNotifyManager;->register(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;)V

    .line 42
    new-instance v0, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    invoke-direct {v0}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mAsyncImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    .line 43
    invoke-static {}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->getInstance()Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    .line 44
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mNewsContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->getFullScreenBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private generateImageView()Landroid/widget/ImageView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 60
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 61
    .local v1, imageView:Landroid/widget/ImageView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 64
    .local v0, imageLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x10

    invoke-virtual {v0, v4, v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 65
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    return-object v1
.end method

.method private generateTextView()Landroid/widget/TextView;
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 48
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 49
    .local v1, textView:Landroid/widget/TextView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51
    .local v0, textLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x10

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 52
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    const/4 v2, 0x2

    const/high16 v3, 0x4198

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 54
    const/4 v2, 0x0

    const v3, 0x3f933333

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 55
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    return-object v1
.end method

.method private getFullScreenBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"
    .parameter "parentWidth"

    .prologue
    const/4 v1, 0x0

    .line 106
    if-eqz p1, :cond_1

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 108
    .local v3, width:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 109
    .local v4, height:I
    const/16 v0, 0x50

    if-ge v3, v0, :cond_0

    .line 110
    const/4 v7, 0x0

    .line 122
    .end local v3           #width:I
    .end local v4           #height:I
    :goto_0
    return-object v7

    .line 112
    .restart local v3       #width:I
    .restart local v4       #height:I
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 113
    .local v5, matrix:Landroid/graphics/Matrix;
    if-le p2, v3, :cond_1

    .line 114
    int-to-float v0, p2

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 115
    .local v9, scaleWidth:F
    move v8, v9

    .line 116
    .local v8, scaleHeight:F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 117
    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 119
    .local v7, newbmp:Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v3           #width:I
    .end local v4           #height:I
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v7           #newbmp:Landroid/graphics/Bitmap;
    .end local v8           #scaleHeight:F
    .end local v9           #scaleWidth:F
    :cond_1
    move-object v7, p1

    .line 122
    goto :goto_0
.end method


# virtual methods
.method public generateNewsContentView(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/NewsDetailInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    const/4 v4, 0x0

    .line 127
    .local v4, textView:Landroid/widget/TextView;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    .line 128
    .local v3, item:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    const/4 v2, 0x0

    .line 129
    .local v2, imageView:Landroid/widget/ImageView;
    iget v5, v3, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->type:I

    if-nez v5, :cond_3

    .line 130
    if-nez v4, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->generateTextView()Landroid/widget/TextView;

    move-result-object v4

    .line 133
    :cond_1
    const-string v5, "        "

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v5, v3, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->data:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 135
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 155
    :goto_1
    if-eqz v4, :cond_2

    .line 156
    iget-object v5, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mNewsContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    const/4 v4, 0x0

    .line 159
    :cond_2
    if-eqz v2, :cond_0

    .line 160
    iget-object v5, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mNewsContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 137
    :cond_3
    if-eqz v4, :cond_4

    .line 138
    iget-object v5, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mNewsContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 139
    const/4 v4, 0x0

    .line 141
    :cond_4
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->generateImageView()Landroid/widget/ImageView;

    move-result-object v2

    .line 142
    iget-object v5, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    iget-object v6, v3, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v5, v6}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 144
    iget-object v5, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mNewsContent:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    invoke-direct {p0, v0, v5}, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->getFullScreenBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 146
    :cond_5
    const v5, 0x7f02005e

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    iget-object v5, v3, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 148
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 149
    iget-object v5, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mAsyncImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    iget-object v6, v3, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v7, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->callback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    invoke-virtual {v5, v6, v7}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V

    goto :goto_1

    .line 151
    :cond_6
    iget-object v5, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mNoSdcardDetails:Ljava/util/List;

    iget-object v6, v3, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #imageView:Landroid/widget/ImageView;
    .end local v3           #item:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    :cond_7
    return-void
.end method

.method public onChanged(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V
    .locals 4
    .parameter "event"
    .parameter "data"

    .prologue
    .line 72
    sget-object v2, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->MediaMountChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    if-ne v2, p1, :cond_1

    .line 73
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mNoSdcardDetails:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mNoSdcardDetails:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mNoSdcardDetails:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 76
    .local v1, imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mAsyncImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->callback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    invoke-virtual {v2, v1, v3}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V

    goto :goto_0

    .line 78
    .end local v1           #imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    :cond_0
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->mNoSdcardDetails:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 82
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method
