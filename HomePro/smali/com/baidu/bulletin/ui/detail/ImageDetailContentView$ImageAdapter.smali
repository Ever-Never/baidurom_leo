.class public Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageDetailContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 301
    iput-object p2, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->mContext:Landroid/content/Context;

    .line 302
    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mGallery:Lcom/baidu/bulletin/ui/detail/ImageGallery;
    invoke-static {p1}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$100(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/ui/detail/ImageGallery;

    move-result-object v0

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mBeautyGirlDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;
    invoke-static {p1}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$200(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/ui/detail/DetailDataList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/detail/DetailDataList;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/detail/ImageGallery;->setImageCount(I)V

    .line 303
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mBeautyGirlDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$200(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/ui/detail/DetailDataList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/detail/DetailDataList;->getSize()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mBeautyGirlDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$200(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/ui/detail/DetailDataList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/ui/detail/DetailDataList;->get(I)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 315
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 319
    const-string v6, "ImageDetailContentView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getView position="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    invoke-virtual {v6, v9}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->setButtonEnabled(Z)V

    .line 321
    new-instance v3, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 322
    .local v3, imageView:Landroid/widget/ImageView;
    new-instance v6, Landroid/widget/Gallery$LayoutParams;

    iget-object v7, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mScreenWidth:I
    invoke-static {v7}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$600(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)I

    move-result v7

    iget-object v8, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mScreenHeight:I
    invoke-static {v8}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$700(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 325
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mBeautyGirlDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;
    invoke-static {v6}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$200(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/ui/detail/DetailDataList;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/baidu/bulletin/ui/detail/DetailDataList;->get(I)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-result-object v1

    .line 327
    .local v1, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v5, newsInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    :try_start_0
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/DatabaseManager;
    invoke-static {v6}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$300(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/db/manager/DatabaseManager;

    move-result-object v6

    iget-wide v7, v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    long-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->queryNewsDetailByItemId(I)Ljava/util/List;
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 333
    :goto_0
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    .line 335
    .local v4, newsInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mLoadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v6}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$800(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Landroid/widget/ProgressBar;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 337
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;
    invoke-static {v6}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$900(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    move-result-object v6

    iget-object v7, v4, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v6, v7}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 338
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    .line 339
    iget-object v6, v4, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v6, v6, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 340
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;
    invoke-static {v6}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$900(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    move-result-object v6

    iget-object v7, v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v6, v7}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 351
    :goto_1
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 352
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mAsyncImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;
    invoke-static {v6}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$1100(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    move-result-object v6

    iget-object v7, v4, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v8, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mImageCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;
    invoke-static {v8}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$1000(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V

    .line 361
    :goto_2
    if-nez p1, :cond_4

    .line 362
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    add-int/lit8 v7, p1, 0x1

    #calls: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->preLoadImage(I)V
    invoke-static {v6, v7}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$1300(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;I)V

    .line 369
    :goto_3
    return-object v3

    .line 330
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #newsInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    :catch_0
    move-exception v2

    .line 331
    .local v2, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v2}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    goto :goto_0

    .line 344
    .end local v2           #e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #newsInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Network;->getOutgoingRoute()Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    move-result-object v6

    sget-object v7, Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;->NONE:Lcom/baidu/bulletin/utils/DeviceEnv$Network$Type;

    if-ne v6, v7, :cond_1

    .line 345
    const v6, 0x7f020261

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 348
    :cond_1
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mLoadingProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v6}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$800(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Landroid/widget/ProgressBar;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 354
    :cond_2
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mNoSdcardDetails:Ljava/util/List;
    invoke-static {v6}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$1200(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Ljava/util/List;

    move-result-object v6

    iget-object v7, v4, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 357
    :cond_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 358
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->setButtonEnabled(Z)V

    goto :goto_2

    .line 363
    :cond_4
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    #getter for: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->mBeautyGirlDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;
    invoke-static {v6}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$200(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;)Lcom/baidu/bulletin/ui/detail/DetailDataList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/bulletin/ui/detail/DetailDataList;->getSize()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne p1, v6, :cond_5

    .line 364
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    add-int/lit8 v7, p1, -0x1

    #calls: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->preLoadImage(I)V
    invoke-static {v6, v7}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$1300(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;I)V

    goto :goto_3

    .line 366
    :cond_5
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    add-int/lit8 v7, p1, 0x1

    #calls: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->preLoadImage(I)V
    invoke-static {v6, v7}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$1300(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;I)V

    .line 367
    iget-object v6, p0, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView$ImageAdapter;->this$0:Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;

    add-int/lit8 v7, p1, -0x1

    #calls: Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->preLoadImage(I)V
    invoke-static {v6, v7}, Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;->access$1300(Lcom/baidu/bulletin/ui/detail/ImageDetailContentView;I)V

    goto :goto_3
.end method
