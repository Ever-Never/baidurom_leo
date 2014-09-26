.class public Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;
.super Ljava/lang/Object;
.source "HistoryTodayComponent.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/IViewComponent;
.implements Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$3;,
        Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$TimeChangeReceiver;,
        Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$BulletinOpUpdateRunnable;,
        Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$UpdateRunnable;,
        Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$HistoryTodayChannelItemCallback;,
        Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$HistoryComparator;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HistoryTodayComponent"


# instance fields
.field private imageCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

.field private mAsyncImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

.field private mBuildWords:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;

.field private mBulletinOpInfoCallback:Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;

.field private mBulletinOpItemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

.field private mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

.field private mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHistoryTodayViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsShowOpInfo:Z

.field private mOpImage:Landroid/widget/ImageView;

.field private mTimeChangeReceiver:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$TimeChangeReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mIsShowOpInfo:Z

    .line 307
    new-instance v1, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$1;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$1;-><init>(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;)V

    iput-object v1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mBulletinOpInfoCallback:Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;

    .line 478
    new-instance v1, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2;

    invoke-direct {v1, p0}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$2;-><init>(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;)V

    iput-object v1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->imageCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    .line 84
    iput-object p1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mContext:Landroid/content/Context;

    .line 85
    new-instance v1, Lcom/baidu/bulletin/network/protocol/TextBuildWords;

    invoke-direct {v1}, Lcom/baidu/bulletin/network/protocol/TextBuildWords;-><init>()V

    iput-object v1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mBuildWords:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;

    .line 87
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mHistoryTodayViews:Ljava/util/ArrayList;

    .line 90
    new-instance v1, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    invoke-direct {v1}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;-><init>()V

    iput-object v1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mAsyncImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    .line 91
    invoke-static {}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->getInstance()Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    .line 93
    new-instance v1, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$TimeChangeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$TimeChangeReceiver;-><init>(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$1;)V

    iput-object v1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mTimeChangeReceiver:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$TimeChangeReceiver;

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v0, mFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mTimeChangeReceiver:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$TimeChangeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    return-void
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mHistoryTodayViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->isShowOpView(Z)V

    return-void
.end method

.method private isShowOpView(Z)V
    .locals 17
    .parameter "newOpInfo"

    .prologue
    .line 399
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mBulletinOpItemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mBulletinOpItemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    iget-object v13, v13, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->startTime:Ljava/lang/String;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mBulletinOpItemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    iget-object v13, v13, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->endTime:Ljava/lang/String;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mBulletinOpItemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    iget-object v13, v13, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mBulletinOpItemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    iget-object v13, v13, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v13, v13, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    if-eqz v13, :cond_8

    .line 402
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 403
    .local v2, currentTime:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mBulletinOpItemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    iget-object v13, v13, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->startTime:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long v10, v13, v15

    .line 404
    .local v10, startTime:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mBulletinOpItemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    iget-object v13, v13, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->endTime:Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    mul-long v4, v13, v15

    .line 419
    .local v4, endTime:J
    cmp-long v13, v10, v2

    if-gtz v13, :cond_4

    cmp-long v13, v4, v2

    if-lez v13, :cond_4

    .line 420
    if-nez p1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mIsShowOpInfo:Z

    if-eqz v13, :cond_1

    .line 476
    .end local v2           #currentTime:J
    .end local v4           #endTime:J
    .end local v10           #startTime:J
    :cond_0
    return-void

    .line 422
    .restart local v2       #currentTime:J
    .restart local v4       #endTime:J
    .restart local v10       #startTime:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mHistoryTodayViews:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 423
    .local v7, historyTodayView:Landroid/view/View;
    const v13, 0x7f08003c

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 424
    .local v12, successLayout:Landroid/view/ViewGroup;
    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 426
    const v13, 0x7f0800c8

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 427
    .local v6, failViewGroup:Landroid/view/ViewGroup;
    const/16 v13, 0x8

    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 429
    const v13, 0x7f0800c6

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 430
    .local v9, opView:Landroid/view/ViewGroup;
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 432
    const v13, 0x7f0800c7

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mOpImage:Landroid/widget/ImageView;

    .line 433
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mBulletinOpItemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    iget-object v14, v14, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v13, v14}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 434
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_3

    .line 435
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mAsyncImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mBulletinOpItemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    iget-object v14, v14, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->imageCallback:Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;

    invoke-virtual {v13, v14, v15}, Lcom/baidu/bulletin/utils/imageloader/AsyncImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V

    .line 439
    :goto_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mIsShowOpInfo:Z

    .line 440
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mBulletinOpItemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    iget-object v13, v13, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->url:Ljava/lang/String;

    if-eqz v13, :cond_2

    .line 441
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mOpImage:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 437
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mOpImage:Landroid/widget/ImageView;

    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-direct {v14, v15, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 444
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #failViewGroup:Landroid/view/ViewGroup;
    .end local v7           #historyTodayView:Landroid/view/View;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #opView:Landroid/view/ViewGroup;
    .end local v12           #successLayout:Landroid/view/ViewGroup;
    :cond_4
    cmp-long v13, v10, v2

    if-gtz v13, :cond_7

    .line 446
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mIsShowOpInfo:Z

    .line 458
    .end local v2           #currentTime:J
    .end local v4           #endTime:J
    .end local v10           #startTime:J
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mIsShowOpInfo:Z

    if-nez v13, :cond_0

    .line 459
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mHistoryTodayViews:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 460
    .restart local v7       #historyTodayView:Landroid/view/View;
    const v13, 0x7f08003c

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 461
    .restart local v12       #successLayout:Landroid/view/ViewGroup;
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_0

    .line 463
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 465
    const v13, 0x7f0800c8

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 466
    .restart local v6       #failViewGroup:Landroid/view/ViewGroup;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 468
    const v13, 0x7f0800c6

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 469
    .restart local v9       #opView:Landroid/view/ViewGroup;
    const/16 v13, 0x8

    invoke-virtual {v9, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 471
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    if-eqz v13, :cond_6

    .line 472
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->update(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    goto :goto_3

    .line 447
    .end local v6           #failViewGroup:Landroid/view/ViewGroup;
    .end local v7           #historyTodayView:Landroid/view/View;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #opView:Landroid/view/ViewGroup;
    .end local v12           #successLayout:Landroid/view/ViewGroup;
    .restart local v2       #currentTime:J
    .restart local v4       #endTime:J
    .restart local v10       #startTime:J
    :cond_7
    cmp-long v13, v4, v2

    if-lez v13, :cond_5

    .line 449
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mIsShowOpInfo:Z

    .line 450
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mBulletinOpItemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    goto :goto_2

    .line 454
    .end local v2           #currentTime:J
    .end local v4           #endTime:J
    .end local v10           #startTime:J
    :cond_8
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mIsShowOpInfo:Z

    .line 455
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mBulletinOpItemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    goto :goto_2
.end method

.method private refleshHistoryFromLocal()V
    .locals 5

    .prologue
    .line 386
    :try_start_0
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->getInstance()Lcom/baidu/bulletin/db/manager/DatabaseManager;

    move-result-object v2

    const/16 v3, 0xfa0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->queryChannelItemTopVersion(II)Ljava/util/List;

    move-result-object v1

    .line 387
    .local v1, mChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    new-instance v2, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$HistoryTodayChannelItemCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$HistoryTodayChannelItemCallback;-><init>(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$1;)V

    const/16 v3, 0x7d0

    invoke-virtual {v2, v1, v3}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$HistoryTodayChannelItemCallback;->onChannelItemsCallback(Ljava/util/List;I)V
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v1           #mChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v0}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addHistoryTodayView(Landroid/view/View;)V
    .locals 1
    .parameter "historyTodayView"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mHistoryTodayViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mHistoryTodayViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :cond_0
    return-void
.end method

.method public getHistoryTodayViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mHistoryTodayViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "historyToday"

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mIsShowOpInfo:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mBulletinOpItemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mBulletinOpItemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    iget-object v0, v0, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->url:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 376
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mBulletinOpItemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/logic/UIController;->showOpWebView(Ljava/lang/String;)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    if-eqz v0, :cond_0

    .line 380
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bulletin/ui/logic/UIController;->onChannelClicked(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/utils/MusicPlayer$Observer;)V

    goto :goto_0
.end method

.method public onStateChanged(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;)V
    .locals 6
    .parameter "dragListViewComponent"
    .parameter "preState"
    .parameter "curState"

    .prologue
    .line 285
    sget-object v1, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$3;->$SwitchMap$com$baidu$bulletin$ui$draglist$IOnStateChangeListener$State:[I

    invoke-virtual {p3}, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 305
    :goto_0
    return-void

    .line 288
    :pswitch_0
    sget-boolean v1, Lcom/baidu/launcher/app/LauncherApplication;->appRebooting:Z

    if-nez v1, :cond_0

    .line 289
    invoke-static {}, Lcom/baidu/bulletin/DataManager;->getInstance()Lcom/baidu/bulletin/DataManager;

    move-result-object v0

    .line 292
    .local v0, dataManager:Lcom/baidu/bulletin/DataManager;
    iget-object v1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mBulletinOpInfoCallback:Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/DataManager;->requestBulletinOpInfo(Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;)V

    .line 294
    new-instance v1, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$HistoryTodayChannelItemCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$HistoryTodayChannelItemCallback;-><init>(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$1;)V

    const/4 v2, 0x1

    const/16 v3, 0xfa0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bulletin/DataManager;->requestNewChannelItems(Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;IIJ)V

    goto :goto_0

    .line 298
    .end local v0           #dataManager:Lcom/baidu/bulletin/DataManager;
    :cond_0
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->refleshHistoryFromLocal()V

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public release()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mTimeChangeReceiver:Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$TimeChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 395
    return-void
.end method

.method public update(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 26
    .parameter "channelItemInfo"

    .prologue
    .line 119
    if-eqz p1, :cond_0

    .line 120
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 123
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mIsShowOpInfo:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 256
    :cond_1
    return-void

    .line 126
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mHistoryTodayViews:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 127
    .local v9, historyTodayView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c

    .line 130
    new-instance v7, Lcom/baidu/bulletin/network/protocol/JsonStringToHistoryDescAdatper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v7, v0}, Lcom/baidu/bulletin/network/protocol/JsonStringToHistoryDescAdatper;-><init>(Ljava/lang/String;)V

    .line 132
    .local v7, historyDescAdapter:Lcom/baidu/bulletin/network/protocol/IHistoryDescAdapter;
    invoke-interface {v7}, Lcom/baidu/bulletin/network/protocol/IHistoryDescAdapter;->get()[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    move-result-object v8

    .line 134
    .local v8, historyDescs:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    const v22, 0x7f08003c

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    .line 135
    .local v17, successLayout:Landroid/view/ViewGroup;
    const/16 v22, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 137
    const v22, 0x7f0800c8

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 138
    .local v5, failViewGroup:Landroid/view/ViewGroup;
    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 140
    const v22, 0x7f080028

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 141
    .local v18, todayTextView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mChannelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    if-eqz v8, :cond_3

    .line 147
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v13, mBigEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v14, mBirthEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v15, mDeathEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    array-length v0, v8

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_4

    .line 152
    aget-object v2, v8, v10

    .line 153
    .local v2, desc:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    iget v0, v2, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->type:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 151
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 155
    :pswitch_0
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 158
    :pswitch_1
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 162
    :pswitch_2
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 170
    .end local v2           #desc:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    :cond_4
    const/16 v22, 0x3

    move/from16 v0, v22

    new-array v0, v0, [Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    move-object/from16 v16, v0

    .line 172
    .local v16, showHistoryDescs:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    const/4 v10, 0x0

    :goto_3
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_5

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_5

    .line 173
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    aput-object v22, v16, v10

    .line 172
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 176
    :cond_5
    const/4 v10, 0x1

    :goto_4
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_6

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_6

    .line 177
    add-int/lit8 v22, v10, -0x1

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    aput-object v22, v16, v10

    .line 176
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 180
    :cond_6
    const/4 v10, 0x2

    :goto_5
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_7

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_7

    .line 181
    add-int/lit8 v22, v10, -0x2

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    aput-object v22, v16, v10

    .line 180
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 184
    :cond_7
    new-instance v22, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$HistoryComparator;

    const/16 v23, 0x0

    invoke-direct/range {v22 .. v23}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$HistoryComparator;-><init>(Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent$1;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 186
    const/4 v10, 0x0

    :goto_6
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v10, v0, :cond_3

    .line 187
    aget-object v6, v16, v10

    .line 189
    .local v6, historyDesc:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    if-eqz v6, :cond_9

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mBuildWords:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->setBuildWords(Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;)V

    .line 192
    const-string v22, "%04d"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    iget v0, v6, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->year:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 194
    .local v20, year:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->buildWords()Ljava/lang/String;

    move-result-object v19

    .line 196
    .local v19, words:Ljava/lang/String;
    const/16 v21, 0x0

    .line 197
    .local v21, yearTextView:Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 198
    .local v3, descTextView:Landroid/widget/TextView;
    const/4 v12, 0x0

    .line 200
    .local v12, indentityImageView:Landroid/widget/ImageView;
    if-nez v10, :cond_a

    .line 202
    const v22, 0x7f08002c

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21           #yearTextView:Landroid/widget/TextView;
    check-cast v21, Landroid/widget/TextView;

    .line 205
    .restart local v21       #yearTextView:Landroid/widget/TextView;
    const v22, 0x7f080030

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #descTextView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 208
    .restart local v3       #descTextView:Landroid/widget/TextView;
    const v22, 0x7f08003d

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #indentityImageView:Landroid/widget/ImageView;
    check-cast v12, Landroid/widget/ImageView;

    .line 224
    .restart local v12       #indentityImageView:Landroid/widget/ImageView;
    :cond_8
    :goto_7
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget v0, v6, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->type:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_1

    .line 186
    .end local v3           #descTextView:Landroid/widget/TextView;
    .end local v12           #indentityImageView:Landroid/widget/ImageView;
    .end local v19           #words:Ljava/lang/String;
    .end local v20           #year:Ljava/lang/String;
    .end local v21           #yearTextView:Landroid/widget/TextView;
    :cond_9
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 211
    .restart local v3       #descTextView:Landroid/widget/TextView;
    .restart local v12       #indentityImageView:Landroid/widget/ImageView;
    .restart local v19       #words:Ljava/lang/String;
    .restart local v20       #year:Ljava/lang/String;
    .restart local v21       #yearTextView:Landroid/widget/TextView;
    :cond_a
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v10, v0, :cond_b

    .line 212
    const v22, 0x7f080031

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21           #yearTextView:Landroid/widget/TextView;
    check-cast v21, Landroid/widget/TextView;

    .line 214
    .restart local v21       #yearTextView:Landroid/widget/TextView;
    const v22, 0x7f080035

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #descTextView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 215
    .restart local v3       #descTextView:Landroid/widget/TextView;
    const v22, 0x7f08003e

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #indentityImageView:Landroid/widget/ImageView;
    check-cast v12, Landroid/widget/ImageView;

    .restart local v12       #indentityImageView:Landroid/widget/ImageView;
    goto :goto_7

    .line 217
    :cond_b
    const/16 v22, 0x2

    move/from16 v0, v22

    if-ne v10, v0, :cond_8

    .line 218
    const v22, 0x7f080036

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    .end local v21           #yearTextView:Landroid/widget/TextView;
    check-cast v21, Landroid/widget/TextView;

    .line 220
    .restart local v21       #yearTextView:Landroid/widget/TextView;
    const v22, 0x7f08003a

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #descTextView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 221
    .restart local v3       #descTextView:Landroid/widget/TextView;
    const v22, 0x7f08003f

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #indentityImageView:Landroid/widget/ImageView;
    check-cast v12, Landroid/widget/ImageView;

    .restart local v12       #indentityImageView:Landroid/widget/ImageView;
    goto :goto_7

    .line 229
    :pswitch_3
    const v22, 0x7f020078

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 232
    :pswitch_4
    const v22, 0x7f020079

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 236
    :pswitch_5
    const v22, 0x7f02007a

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    .line 246
    .end local v3           #descTextView:Landroid/widget/TextView;
    .end local v5           #failViewGroup:Landroid/view/ViewGroup;
    .end local v6           #historyDesc:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    .end local v7           #historyDescAdapter:Lcom/baidu/bulletin/network/protocol/IHistoryDescAdapter;
    .end local v8           #historyDescs:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    .end local v10           #i:I
    .end local v12           #indentityImageView:Landroid/widget/ImageView;
    .end local v13           #mBigEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;>;"
    .end local v14           #mBirthEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;>;"
    .end local v15           #mDeathEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;>;"
    .end local v16           #showHistoryDescs:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    .end local v17           #successLayout:Landroid/view/ViewGroup;
    .end local v18           #todayTextView:Landroid/widget/TextView;
    .end local v19           #words:Ljava/lang/String;
    .end local v20           #year:Ljava/lang/String;
    .end local v21           #yearTextView:Landroid/widget/TextView;
    :cond_c
    const v22, 0x7f08003c

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    .line 247
    .restart local v17       #successLayout:Landroid/view/ViewGroup;
    const/16 v22, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 249
    const v22, 0x7f0800c8

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 250
    .restart local v5       #failViewGroup:Landroid/view/ViewGroup;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 252
    const v22, 0x7f08003b

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 253
    .local v4, failTextView:Landroid/widget/TextView;
    const v22, 0x7f0c0275

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 227
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public updateHistoryComponentOp(Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;)V
    .locals 1
    .parameter "bulletinOpItemInfo"

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    iput-object p1, p0, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->mBulletinOpItemInfo:Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    .line 114
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/ui/historytoday/HistoryTodayComponent;->isShowOpView(Z)V

    .line 115
    return-void
.end method
