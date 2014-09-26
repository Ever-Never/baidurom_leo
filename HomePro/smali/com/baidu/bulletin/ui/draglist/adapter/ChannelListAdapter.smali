.class public Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChannelListAdapter.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty;
.implements Lcom/baidu/bulletin/ui/logic/UIController$IOnUploadListener;
.implements Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$1;,
        Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$MusicPlayerObserver;,
        Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$IOnChannelItemClick;,
        Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnPlayClickListener;,
        Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnUploadClickListener;,
        Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;,
        Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$BeautyGirlViewOnClickListener;,
        Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;
    }
.end annotation


# static fields
.field private static final ALL_IMGE_VIEW_ID:[I = null

.field private static final COLORS:[I = null

.field private static final IMAGETYPE:Ljava/lang/String; = "image"

.field private static final ITEM_COUNT_PER_SCREEN:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ChannelListAdapter"

.field private static final VIEW_ID:[I


# instance fields
.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mBeautyFactory:Lcom/baidu/bulletin/ui/draglist/adapter/IBeautyFactory;

.field private mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

.field private mColorCacheHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field public mDataArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

.field private mListView:Landroid/widget/ListView;

.field private mNoSdcardItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnChannelItemClick:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$IOnChannelItemClick;

.field private random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->VIEW_ID:[I

    .line 120
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->ALL_IMGE_VIEW_ID:[I

    .line 136
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->COLORS:[I

    return-void

    .line 107
    nop

    :array_0
    .array-data 0x4
        0x56t 0x0t 0x8t 0x7ft
        0x59t 0x0t 0x8t 0x7ft
        0x5ct 0x0t 0x8t 0x7ft
        0x6dt 0x0t 0x8t 0x7ft
        0x66t 0x0t 0x8t 0x7ft
        0x5ft 0x0t 0x8t 0x7ft
        0x73t 0x0t 0x8t 0x7ft
        0x7at 0x0t 0x8t 0x7ft
        0x81t 0x0t 0x8t 0x7ft
        0x88t 0x0t 0x8t 0x7ft
    .end array-data

    .line 120
    :array_1
    .array-data 0x4
        0x57t 0x0t 0x8t 0x7ft
        0x5dt 0x0t 0x8t 0x7ft
        0x6et 0x0t 0x8t 0x7ft
        0x71t 0x0t 0x8t 0x7ft
        0x68t 0x0t 0x8t 0x7ft
        0x6bt 0x0t 0x8t 0x7ft
        0x7ft 0x0t 0x8t 0x7ft
        0x75t 0x0t 0x8t 0x7ft
        0x83t 0x0t 0x8t 0x7ft
        0x87t 0x0t 0x8t 0x7ft
        0x8at 0x0t 0x8t 0x7ft
        0x8ct 0x0t 0x8t 0x7ft
    .end array-data

    .line 136
    :array_2
    .array-data 0x4
        0x57t 0x7ct 0xect 0xfft
        0xdbt 0x8bt 0xet 0xfft
        0x47t 0xa8t 0xe0t 0xfft
        0x78t 0xb1t 0x48t 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 3
    .parameter "context"
    .parameter "listView"

    .prologue
    .line 266
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mNoSdcardItem:Ljava/util/List;

    .line 143
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->random:Ljava/util/Random;

    .line 1293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mContext:Landroid/content/Context;

    .line 271
    iput-object p2, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListView:Landroid/widget/ListView;

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    .line 275
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mHandler:Landroid/os/Handler;

    .line 277
    new-instance v0, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    invoke-direct {v0}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    .line 278
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->setLoadLimit(II)V

    .line 280
    invoke-static {}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->getInstance()Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    .line 282
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/adapter/DefaultBeautyFactory;

    invoke-direct {v0}, Lcom/baidu/bulletin/ui/draglist/adapter/DefaultBeautyFactory;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mBeautyFactory:Lcom/baidu/bulletin/ui/draglist/adapter/IBeautyFactory;

    .line 284
    sget-object v0, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->MediaMountChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    invoke-static {v0, p0}, Lcom/baidu/bulletin/utils/ChangeNotifyManager;->register(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Lcom/baidu/bulletin/utils/ChangeNotifyManager$Observer;)V

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mColorCacheHashMap:Ljava/util/HashMap;

    .line 287
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;)Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$IOnChannelItemClick;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mOnChannelItemClick:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$IOnChannelItemClick;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getImageTag(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private fetchOneColor()I
    .locals 5

    .prologue
    .line 147
    iget-object v2, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->random:Ljava/util/Random;

    sget-object v3, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->COLORS:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 149
    .local v1, colorIndex:I
    const-string v2, "color"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "colorIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    sget-object v2, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->COLORS:[I

    aget v0, v2, v1

    .line 152
    .local v0, color:I
    return v0
.end method

.method private fetchTwoColor()[I
    .locals 9

    .prologue
    .line 191
    iget-object v6, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->random:Ljava/util/Random;

    sget-object v7, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->COLORS:[I

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 193
    .local v0, first:I
    sget-object v6, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->COLORS:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    new-array v4, v6, [I

    .line 195
    .local v4, tempIndex:[I
    const/4 v2, 0x0

    .line 196
    .local v2, j:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v6, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->COLORS:[I

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 197
    if-eq v1, v0, :cond_0

    .line 198
    aput v1, v4, v2

    .line 199
    add-int/lit8 v2, v2, 0x1

    .line 196
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_1
    iget-object v6, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->random:Ljava/util/Random;

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    aget v3, v4, v6

    .line 205
    .local v3, second:I
    const/4 v6, 0x2

    new-array v5, v6, [I

    .line 206
    .local v5, twoColor:[I
    const/4 v6, 0x0

    sget-object v7, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->COLORS:[I

    aget v7, v7, v0

    aput v7, v5, v6

    .line 207
    const/4 v6, 0x1

    sget-object v7, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->COLORS:[I

    aget v7, v7, v3

    aput v7, v5, v6

    .line 209
    const-string v6, "color"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "first = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", second = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-object v5
.end method

.method private getImageTag(J)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, tag:Ljava/lang/String;
    return-object v0
.end method

.method private getOneColor(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)I
    .locals 4
    .parameter "channelItemInfo"

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 158
    .local v0, color:I
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mColorCacheHashMap:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mColorCacheHashMap:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 164
    :goto_0
    return v0

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->fetchOneColor()I

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mColorCacheHashMap:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getTwoColor([Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)[I
    .locals 6
    .parameter "channelItemInfos"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 168
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 170
    .local v0, colors:[I
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mColorCacheHashMap:Ljava/util/HashMap;

    aget-object v2, p1, v4

    iget-wide v2, v2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mColorCacheHashMap:Ljava/util/HashMap;

    aget-object v2, p1, v5

    iget-wide v2, v2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mColorCacheHashMap:Ljava/util/HashMap;

    aget-object v2, p1, v4

    iget-wide v2, v2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, v4

    .line 173
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mColorCacheHashMap:Ljava/util/HashMap;

    aget-object v2, p1, v5

    iget-wide v2, v2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, v5

    .line 181
    :goto_0
    return-object v0

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->fetchTwoColor()[I

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mColorCacheHashMap:Ljava/util/HashMap;

    aget-object v2, p1, v4

    iget-wide v2, v2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mColorCacheHashMap:Ljava/util/HashMap;

    aget-object v2, p1, v5

    iget-wide v2, v2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aget v3, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getViewId(Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;)I
    .locals 3
    .parameter "styleType"

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, id:I
    sget-object v1, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$1;->$SwitchMap$com$baidu$bulletin$ui$draglist$adapter$IBeauty$StyleType:[I

    invoke-virtual {p1}, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 262
    :goto_0
    return v0

    .line 219
    :pswitch_0
    const v0, 0x7f080056

    .line 220
    goto :goto_0

    .line 222
    :pswitch_1
    const v0, 0x7f08005c

    .line 223
    goto :goto_0

    .line 226
    :pswitch_2
    const v0, 0x7f080059

    .line 227
    goto :goto_0

    .line 230
    :pswitch_3
    const v0, 0x7f08006d

    .line 231
    goto :goto_0

    .line 234
    :pswitch_4
    const v0, 0x7f080066

    .line 235
    goto :goto_0

    .line 238
    :pswitch_5
    const v0, 0x7f08005f

    .line 239
    goto :goto_0

    .line 242
    :pswitch_6
    const v0, 0x7f08007a

    .line 243
    goto :goto_0

    .line 246
    :pswitch_7
    const v0, 0x7f080073

    .line 247
    goto :goto_0

    .line 250
    :pswitch_8
    const v0, 0x7f080081

    .line 251
    goto :goto_0

    .line 254
    :pswitch_9
    const v0, 0x7f080088

    .line 255
    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private setShowView(Landroid/view/View;ILcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;)V
    .locals 36
    .parameter "convertView"
    .parameter "position"
    .parameter "pair"

    .prologue
    .line 337
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->styleType:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    move-object/from16 v28, v0

    .line 339
    .local v28, styleType:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getViewId(Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;)I

    move-result v17

    .line 340
    .local v17, id:I
    const/4 v15, 0x0

    .line 342
    .local v15, currentView:Landroid/view/View;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    sget-object v3, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->VIEW_ID:[I

    array-length v3, v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_1

    .line 343
    sget-object v3, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->VIEW_ID:[I

    aget v3, v3, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .line 344
    .local v29, tempView:Landroid/view/View;
    sget-object v3, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->VIEW_ID:[I

    aget v3, v3, v16

    move/from16 v0, v17

    if-ne v3, v0, :cond_0

    .line 346
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 347
    const-string v3, "tt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Visible"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    move-object/from16 v15, v29

    .line 342
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 350
    :cond_0
    const-string v3, "tt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " GONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/16 v3, 0x8

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 355
    .end local v29           #tempView:Landroid/view/View;
    :cond_1
    const/16 v16, 0x0

    :goto_2
    sget-object v3, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->ALL_IMGE_VIEW_ID:[I

    array-length v3, v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_2

    .line 356
    sget-object v3, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->ALL_IMGE_VIEW_ID:[I

    aget v3, v3, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 357
    .local v18, imageView:Landroid/widget/ImageView;
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 358
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 355
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 361
    .end local v18           #imageView:Landroid/widget/ImageView;
    :cond_2
    const-string v3, "tt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentView = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    sget-object v3, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$1;->$SwitchMap$com$baidu$bulletin$ui$draglist$adapter$IBeauty$StyleType:[I

    invoke-virtual/range {v28 .. v28}, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 874
    :goto_3
    return-void

    .line 367
    :pswitch_0
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v4, 0x0

    aget-object v13, v3, v4

    .line 369
    .local v13, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    const v3, 0x7f080056

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v13}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Ljava/util/List;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    const v3, 0x7f080058

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 372
    .local v30, textView:Landroid/widget/TextView;
    iget-object v3, v13, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    const v3, 0x7f080057

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 383
    .restart local v18       #imageView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    iget-object v4, v13, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v3, v4}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 384
    .local v9, bitmap:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_3

    .line 385
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 387
    :cond_3
    const v3, 0x7f0200b3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 388
    iget-object v3, v13, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v3, v3, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getImageTag(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 389
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    iget-object v5, v13, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    new-instance v6, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v13}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    iget v7, v13, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    iget v8, v13, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    goto :goto_3

    .line 393
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mNoSdcardItem:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 402
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v18           #imageView:Landroid/widget/ImageView;
    .end local v30           #textView:Landroid/widget/TextView;
    :pswitch_1
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v4, 0x0

    aget-object v13, v3, v4

    .line 404
    .restart local v13       #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    const v3, 0x7f08005c

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v13}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Ljava/util/List;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    const v3, 0x7f08005e

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 407
    .restart local v30       #textView:Landroid/widget/TextView;
    iget-object v3, v13, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    const v3, 0x7f08005d

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 417
    .restart local v18       #imageView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    iget-object v4, v13, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v3, v4}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 418
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_5

    .line 419
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 420
    const-string v3, "yingyong"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BitmapHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :goto_4
    const-string v3, "yingyong"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imgMeasureHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 422
    :cond_5
    const v3, 0x7f0200b4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 423
    iget-object v3, v13, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v3, v3, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getImageTag(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 424
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    iget-object v5, v13, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    new-instance v6, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v13}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    iget v7, v13, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    iget v8, v13, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    goto :goto_4

    .line 428
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mNoSdcardItem:Ljava/util/List;

    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 439
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v18           #imageView:Landroid/widget/ImageView;
    .end local v30           #textView:Landroid/widget/TextView;
    :pswitch_2
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v4, 0x0

    aget-object v13, v3, v4

    .line 440
    .restart local v13       #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    const v3, 0x7f08005a

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    .line 441
    .local v27, singleNoPicBGView:Landroid/view/View;
    const v3, 0x7f080059

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v13}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Ljava/util/List;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 443
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getOneColor(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)I

    move-result v14

    .line 445
    .local v14, color:I
    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 447
    const v3, 0x7f08005b

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 448
    .restart local v30       #textView:Landroid/widget/TextView;
    const-string v3, "pp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channelItemInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v3, "pp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "textView = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", title = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v13, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v3, v13, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 464
    .end local v13           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v14           #color:I
    .end local v27           #singleNoPicBGView:Landroid/view/View;
    .end local v30           #textView:Landroid/widget/TextView;
    :pswitch_3
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v4, 0x0

    aget-object v21, v3, v4

    .line 465
    .local v21, left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v4, 0x1

    aget-object v25, v3, v4

    .line 467
    .local v25, right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    const v3, 0x7f08006e

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v5, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Ljava/util/List;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    const v3, 0x7f080071

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v4, v0, v5, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Ljava/util/List;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    const v3, 0x7f08006f

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 471
    .local v31, textView1:Landroid/widget/TextView;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    const v3, 0x7f080072

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 481
    .local v32, textView2:Landroid/widget/TextView;
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    const v3, 0x7f08006e

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 491
    .local v19, imageView1:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v3, v4}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 492
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_7

    .line 493
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 505
    :goto_5
    const v3, 0x7f080071

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 506
    .local v20, imageView2:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v3, v4}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 507
    if-eqz v9, :cond_9

    .line 508
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 495
    .end local v20           #imageView2:Landroid/widget/ImageView;
    :cond_7
    const v3, 0x7f0200b1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 496
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v3, v3, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getImageTag(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 497
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 498
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    new-instance v6, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    move-object/from16 v0, v21

    iget v7, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    move-object/from16 v0, v21

    iget v8, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    goto :goto_5

    .line 501
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mNoSdcardItem:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 510
    .restart local v20       #imageView2:Landroid/widget/ImageView;
    :cond_9
    const v3, 0x7f0200b2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 511
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v3, v3, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getImageTag(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 512
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 513
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    new-instance v6, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v6, v0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    move-object/from16 v0, v25

    iget v7, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    move-object/from16 v0, v25

    iget v8, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    goto/16 :goto_3

    .line 516
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mNoSdcardItem:Ljava/util/List;

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 525
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v19           #imageView1:Landroid/widget/ImageView;
    .end local v20           #imageView2:Landroid/widget/ImageView;
    .end local v21           #left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v25           #right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v31           #textView1:Landroid/widget/TextView;
    .end local v32           #textView2:Landroid/widget/TextView;
    :pswitch_4
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v4, 0x0

    aget-object v21, v3, v4

    .line 526
    .restart local v21       #left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v4, 0x1

    aget-object v25, v3, v4

    .line 528
    .restart local v25       #right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    const v3, 0x7f080067

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v5, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Ljava/util/List;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    const v3, 0x7f08006a

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v4, v0, v5, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Ljava/util/List;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    const v3, 0x7f080069

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 532
    .restart local v31       #textView1:Landroid/widget/TextView;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    const v3, 0x7f08006c

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 542
    .restart local v32       #textView2:Landroid/widget/TextView;
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    const v3, 0x7f080068

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 552
    .restart local v19       #imageView1:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v3, v4}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 553
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_b

    .line 554
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 566
    :goto_6
    const v3, 0x7f08006b

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 567
    .restart local v20       #imageView2:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v3, v4}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 568
    if-eqz v9, :cond_d

    .line 569
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 556
    .end local v20           #imageView2:Landroid/widget/ImageView;
    :cond_b
    const v3, 0x7f0200b1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 557
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v3, v3, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getImageTag(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 558
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 559
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    new-instance v6, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    move-object/from16 v0, v21

    iget v7, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    move-object/from16 v0, v21

    iget v8, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    goto :goto_6

    .line 562
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mNoSdcardItem:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 571
    .restart local v20       #imageView2:Landroid/widget/ImageView;
    :cond_d
    const v3, 0x7f0200b2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 572
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v3, v3, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getImageTag(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 573
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    new-instance v6, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v6, v0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    move-object/from16 v0, v25

    iget v7, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    move-object/from16 v0, v25

    iget v8, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    goto/16 :goto_3

    .line 577
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mNoSdcardItem:Ljava/util/List;

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 586
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v19           #imageView1:Landroid/widget/ImageView;
    .end local v20           #imageView2:Landroid/widget/ImageView;
    .end local v21           #left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v25           #right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v31           #textView1:Landroid/widget/TextView;
    .end local v32           #textView2:Landroid/widget/TextView;
    :pswitch_5
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v4, 0x0

    aget-object v21, v3, v4

    .line 587
    .restart local v21       #left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v4, 0x1

    aget-object v25, v3, v4

    .line 589
    .restart local v25       #right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getTwoColor([Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)[I

    move-result-object v33

    .line 591
    .local v33, twoColor:[I
    const-string v3, "color"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "color1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v33, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", color2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v33, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const v3, 0x7f080060

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 593
    .local v22, leftView:Landroid/view/View;
    const/4 v3, 0x0

    aget v3, v33, v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 596
    const v3, 0x7f080063

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .line 597
    .local v26, rightView:Landroid/view/View;
    const/4 v3, 0x1

    aget v3, v33, v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 599
    const v3, 0x7f080060

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v5, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Ljava/util/List;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    const v3, 0x7f080063

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v4, v0, v5, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Ljava/util/List;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    const v3, 0x7f080061

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 608
    .restart local v31       #textView1:Landroid/widget/TextView;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 609
    const v3, 0x7f080062

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 610
    .local v11, breifTextView1:Landroid/widget/TextView;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    const v3, 0x7f080064

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 620
    .restart local v32       #textView2:Landroid/widget/TextView;
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    const v3, 0x7f080065

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 622
    .local v12, breifTextView2:Landroid/widget/TextView;
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 636
    .end local v11           #breifTextView1:Landroid/widget/TextView;
    .end local v12           #breifTextView2:Landroid/widget/TextView;
    .end local v21           #left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v22           #leftView:Landroid/view/View;
    .end local v25           #right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v26           #rightView:Landroid/view/View;
    .end local v31           #textView1:Landroid/widget/TextView;
    .end local v32           #textView2:Landroid/widget/TextView;
    .end local v33           #twoColor:[I
    :pswitch_6
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v4, 0x0

    aget-object v21, v3, v4

    .line 637
    .restart local v21       #left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v4, 0x1

    aget-object v25, v3, v4

    .line 639
    .restart local v25       #right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    const v3, 0x7f08007b

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 640
    .restart local v22       #leftView:Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getOneColor(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 642
    const v3, 0x7f08007b

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v5, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Ljava/util/List;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 643
    const v3, 0x7f08007e

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v4, v0, v5, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Ljava/util/List;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    const v3, 0x7f08007c

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 646
    .restart local v31       #textView1:Landroid/widget/TextView;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    const v3, 0x7f08007d

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 648
    .restart local v11       #breifTextView1:Landroid/widget/TextView;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 657
    const v3, 0x7f080080

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 658
    .restart local v32       #textView2:Landroid/widget/TextView;
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    const v3, 0x7f08007f

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 668
    .restart local v18       #imageView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v3, v4}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 669
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_f

    .line 670
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 672
    :cond_f
    const v3, 0x7f0200b0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 673
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v3, v3, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getImageTag(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 674
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    new-instance v6, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v6, v0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    move-object/from16 v0, v25

    iget v7, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    move-object/from16 v0, v25

    iget v8, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    goto/16 :goto_3

    .line 678
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mNoSdcardItem:Ljava/util/List;

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 686
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #breifTextView1:Landroid/widget/TextView;
    .end local v18           #imageView:Landroid/widget/ImageView;
    .end local v21           #left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v22           #leftView:Landroid/view/View;
    .end local v25           #right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v31           #textView1:Landroid/widget/TextView;
    .end local v32           #textView2:Landroid/widget/TextView;
    :pswitch_7
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v4, 0x0

    aget-object v21, v3, v4

    .line 687
    .restart local v21       #left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v4, 0x1

    aget-object v25, v3, v4

    .line 689
    .restart local v25       #right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    const v3, 0x7f080077

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .line 690
    .restart local v26       #rightView:Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getOneColor(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)I

    move-result v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 692
    const v3, 0x7f080074

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v4, v0, v5, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Ljava/util/List;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    const v3, 0x7f080077

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v4, v0, v5, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemViewOnClickListener;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Ljava/util/List;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    const v3, 0x7f080076

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 696
    .restart local v31       #textView1:Landroid/widget/TextView;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 705
    const v3, 0x7f080075

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 706
    .restart local v18       #imageView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v3, v4}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 707
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_11

    .line 708
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 721
    :goto_7
    const v3, 0x7f080078

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 722
    .restart local v32       #textView2:Landroid/widget/TextView;
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    const v3, 0x7f080079

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 725
    .restart local v12       #breifTextView2:Landroid/widget/TextView;
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 711
    .end local v12           #breifTextView2:Landroid/widget/TextView;
    .end local v32           #textView2:Landroid/widget/TextView;
    :cond_11
    const v3, 0x7f0200b1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 712
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v3, v3, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getImageTag(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 713
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 714
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    new-instance v6, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    move-object/from16 v0, v21

    iget v7, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    move-object/from16 v0, v21

    iget v8, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    goto :goto_7

    .line 717
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mNoSdcardItem:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 741
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v18           #imageView:Landroid/widget/ImageView;
    .end local v21           #left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v25           #right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v26           #rightView:Landroid/view/View;
    .end local v31           #textView1:Landroid/widget/TextView;
    :pswitch_8
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v4, 0x0

    aget-object v21, v3, v4

    .line 742
    .restart local v21       #left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v4, 0x1

    aget-object v25, v3, v4

    .line 749
    .restart local v25       #right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    const v3, 0x7f080082

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 750
    .restart local v22       #leftView:Landroid/view/View;
    move-object/from16 v0, v21

    iget-wide v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 753
    const v3, 0x7f080086

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .line 754
    .restart local v26       #rightView:Landroid/view/View;
    move-object/from16 v0, v25

    iget-wide v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 756
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->refreshPlayStatus(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 757
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->refreshPlayStatus(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 759
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->refreshUploadStatus(Landroid/view/View;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 760
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->refreshUploadStatus(Landroid/view/View;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 762
    const v3, 0x7f080084

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 763
    .restart local v31       #textView1:Landroid/widget/TextView;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    const v3, 0x7f080085

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 766
    .local v10, breifTextView:Landroid/widget/TextView;
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 768
    const v3, 0x7f080085

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 769
    .restart local v12       #breifTextView2:Landroid/widget/TextView;
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    invoke-virtual {v12, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    const v3, 0x7f080084

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 772
    .restart local v32       #textView2:Landroid/widget/TextView;
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    const v3, 0x7f080083

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 775
    .restart local v19       #imageView1:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v3, v4}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 776
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_13

    .line 777
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 789
    :goto_8
    const v3, 0x7f080087

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 790
    .restart local v20       #imageView2:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v3, v4}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 791
    if-eqz v9, :cond_15

    .line 792
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 807
    :goto_9
    const v3, 0x7f080042

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 808
    .local v23, playView:Landroid/view/View;
    new-instance v3, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnPlayClickListener;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v3, v0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnPlayClickListener;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 810
    const v3, 0x7f080042

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 811
    .local v24, playView2:Landroid/view/View;
    new-instance v3, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnPlayClickListener;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v3, v0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnPlayClickListener;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 813
    const v3, 0x7f080044

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    .line 814
    .local v34, uploadView:Landroid/view/View;
    new-instance v3, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnUploadClickListener;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v3, v0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnUploadClickListener;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 816
    const v3, 0x7f080044

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    .line 817
    .local v35, uploadView2:Landroid/view/View;
    new-instance v3, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnUploadClickListener;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v3, v0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$OnUploadClickListener;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 779
    .end local v20           #imageView2:Landroid/widget/ImageView;
    .end local v23           #playView:Landroid/view/View;
    .end local v24           #playView2:Landroid/view/View;
    .end local v34           #uploadView:Landroid/view/View;
    .end local v35           #uploadView2:Landroid/view/View;
    :cond_13
    const v3, 0x7f0200b1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 780
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v3, v3, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getImageTag(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 781
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 782
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    new-instance v6, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    move-object/from16 v0, v21

    iget v7, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    move-object/from16 v0, v21

    iget v8, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    goto/16 :goto_8

    .line 785
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mNoSdcardItem:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 794
    .restart local v20       #imageView2:Landroid/widget/ImageView;
    :cond_15
    const v3, 0x7f0200b2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 795
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v3, v3, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getImageTag(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 796
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 797
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    new-instance v6, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v6, v0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    move-object/from16 v0, v25

    iget v7, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    move-object/from16 v0, v25

    iget v8, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    goto/16 :goto_9

    .line 800
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mNoSdcardItem:Ljava/util/List;

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 825
    .end local v9           #bitmap:Landroid/graphics/Bitmap;
    .end local v10           #breifTextView:Landroid/widget/TextView;
    .end local v12           #breifTextView2:Landroid/widget/TextView;
    .end local v19           #imageView1:Landroid/widget/ImageView;
    .end local v20           #imageView2:Landroid/widget/ImageView;
    .end local v21           #left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v22           #leftView:Landroid/view/View;
    .end local v25           #right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v26           #rightView:Landroid/view/View;
    .end local v31           #textView1:Landroid/widget/TextView;
    .end local v32           #textView2:Landroid/widget/TextView;
    :pswitch_9
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v4, 0x0

    aget-object v21, v3, v4

    .line 826
    .restart local v21       #left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v4, 0x1

    aget-object v25, v3, v4

    .line 828
    .restart local v25       #right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    const v3, 0x7f080089

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 829
    .restart local v22       #leftView:Landroid/view/View;
    new-instance v3, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$BeautyGirlViewOnClickListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v3, v0, v4, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$BeautyGirlViewOnClickListener;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Ljava/util/List;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 832
    const v3, 0x7f08008b

    invoke-virtual {v15, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    .line 833
    .restart local v26       #rightView:Landroid/view/View;
    new-instance v3, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$BeautyGirlViewOnClickListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v3, v0, v4, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$BeautyGirlViewOnClickListener;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Ljava/util/List;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 836
    const v3, 0x7f08008a

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 837
    .restart local v19       #imageView1:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v3, v4}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 838
    .restart local v9       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_17

    .line 839
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 851
    :goto_a
    const v3, 0x7f08008c

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    .line 852
    .restart local v20       #imageView2:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v3, v4}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 853
    if-eqz v9, :cond_19

    .line 854
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    .line 841
    .end local v20           #imageView2:Landroid/widget/ImageView;
    :cond_17
    const v3, 0x7f0200b1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 842
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v3, v3, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getImageTag(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 843
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 844
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    new-instance v6, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    const/16 v7, 0x2710

    const/16 v8, 0x12c

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    goto :goto_a

    .line 847
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mNoSdcardItem:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 856
    .restart local v20       #imageView2:Landroid/widget/ImageView;
    :cond_19
    const v3, 0x7f0200b2

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 857
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v3, v3, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getImageTag(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 858
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 859
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    new-instance v6, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v6, v0, v1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    const/16 v7, 0x2710

    const/16 v8, 0x12c

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v8}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    goto/16 :goto_3

    .line 862
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mNoSdcardItem:Ljava/util/List;

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public beauty(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1179
    .local p1, channelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1181
    .local v2, channelItemPairs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1182
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 1184
    .local v1, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mBeautyFactory:Lcom/baidu/bulletin/ui/draglist/adapter/IBeautyFactory;

    iget v4, v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    invoke-interface {v3, v4}, Lcom/baidu/bulletin/ui/draglist/adapter/IBeautyFactory;->createBeauty(I)Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty;

    move-result-object v0

    .line 1185
    .local v0, beauty:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty;
    invoke-interface {v0, p1}, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty;->beauty(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1187
    .end local v0           #beauty:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty;
    .end local v1           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :cond_0
    return-object v2
.end method

.method public getBeautyFactory()Lcom/baidu/bulletin/ui/draglist/adapter/IBeautyFactory;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mBeautyFactory:Lcom/baidu/bulletin/ui/draglist/adapter/IBeautyFactory;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getImageLoader()Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 320
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
    .line 326
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 919
    if-nez p2, :cond_0

    .line 920
    iget-object v2, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 921
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03001b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 924
    .end local v1           #layoutInflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v2, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;

    .line 926
    .local v0, channelItemPair:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;
    invoke-direct {p0, p2, p1, v0}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->setShowView(Landroid/view/View;ILcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;)V

    .line 928
    return-object p2
.end method

.method public onChanged(Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;Ljava/lang/Object;)V
    .locals 7
    .parameter "event"
    .parameter "data"

    .prologue
    .line 1340
    sget-object v4, Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;->MediaMountChange:Lcom/baidu/bulletin/utils/ChangeNotifyManager$Event;

    if-ne v4, p1, :cond_2

    .line 1341
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1343
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mNoSdcardItem:Ljava/util/List;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mNoSdcardItem:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1344
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 1345
    .local v3, start:I
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1346
    if-gez v3, :cond_0

    .line 1347
    const/4 v3, 0x0

    .line 1349
    :cond_0
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    .line 1350
    .local v0, end:I
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    invoke-virtual {v4, v3, v0}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->setLoadLimit(II)V

    .line 1351
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mNoSdcardItem:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 1352
    .local v2, itemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    iget-object v5, v2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    new-instance v6, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;

    invoke-direct {v6, p0, v2}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$ItemImageCallback;-><init>(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    invoke-virtual {v4, v5, v6}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V

    goto :goto_0

    .line 1354
    .end local v2           #itemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :cond_1
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mNoSdcardItem:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1359
    .end local v0           #end:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #start:I
    :cond_2
    return-void
.end method

.method public onUpload(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 4
    .parameter "channelItemInfo"

    .prologue
    .line 1288
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListView:Landroid/widget/ListView;

    iget-wide v2, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 1289
    .local v0, parent:Landroid/view/View;
    invoke-virtual {p0, v0, p1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->refreshUploadStatus(Landroid/view/View;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 1291
    return-void
.end method

.method public preLoadImage(I)V
    .locals 14
    .parameter "position"

    .prologue
    .line 933
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;

    .line 939
    .local v8, channelItemPair:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;
    iget-object v13, v8, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->styleType:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    .line 941
    .local v13, styleType:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;
    invoke-direct {p0, v13}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getViewId(Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;)I

    move-result v10

    .line 942
    .local v10, id:I
    const/4 v9, 0x0

    .line 944
    .local v9, currentView:Landroid/view/View;
    sget-object v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$1;->$SwitchMap$com$baidu$bulletin$ui$draglist$adapter$IBeauty$StyleType:[I

    invoke-virtual {v13}, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 949
    :pswitch_1
    iget-object v0, v8, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v1, 0x0

    aget-object v7, v0, v1

    .line 950
    .local v7, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    iget-object v1, v7, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 951
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_0

    .line 952
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    iget-object v2, v7, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    const/4 v3, 0x0

    iget v4, v7, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    iget v5, v7, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    goto :goto_0

    .line 963
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :pswitch_2
    iget-object v0, v8, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v1, 0x0

    aget-object v7, v0, v1

    .line 964
    .restart local v7       #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    iget-object v1, v7, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 965
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_0

    .line 966
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    iget-object v2, v7, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    const/4 v3, 0x0

    iget v4, v7, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    iget v5, v7, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    goto :goto_0

    .line 977
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :pswitch_3
    iget-object v0, v8, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v1, 0x0

    aget-object v11, v0, v1

    .line 978
    .local v11, left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    iget-object v0, v8, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v1, 0x1

    aget-object v12, v0, v1

    .line 980
    .local v12, right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    iget-object v1, v11, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 981
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_2

    .line 982
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 983
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    iget-object v2, v11, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    const/4 v3, 0x0

    iget v4, v11, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    iget v5, v11, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    .line 988
    :cond_2
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    iget-object v1, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 989
    if-nez v6, :cond_0

    .line 990
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    iget-object v2, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    const/4 v3, 0x0

    iget v4, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    iget v5, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    goto/16 :goto_0

    .line 1001
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v12           #right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :pswitch_4
    iget-object v0, v8, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v1, 0x1

    aget-object v12, v0, v1

    .line 1002
    .restart local v12       #right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    iget-object v1, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1003
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_0

    .line 1004
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    iget-object v2, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    const/4 v3, 0x0

    iget v4, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    iget v5, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    goto/16 :goto_0

    .line 1014
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v12           #right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :pswitch_5
    iget-object v0, v8, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v1, 0x0

    aget-object v11, v0, v1

    .line 1015
    .restart local v11       #left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    iget-object v1, v11, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1016
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_0

    .line 1017
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    iget-object v2, v11, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    const/4 v3, 0x0

    iget v4, v11, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    iget v5, v11, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    goto/16 :goto_0

    .line 1029
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :pswitch_6
    iget-object v0, v8, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v1, 0x0

    aget-object v11, v0, v1

    .line 1030
    .restart local v11       #left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    iget-object v0, v8, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v1, 0x1

    aget-object v12, v0, v1

    .line 1032
    .restart local v12       #right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    iget-object v1, v11, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1033
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_3

    .line 1034
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1035
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    iget-object v2, v11, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    const/4 v3, 0x0

    iget v4, v11, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    iget v5, v11, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    .line 1040
    :cond_3
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    iget-object v1, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1041
    if-nez v6, :cond_0

    .line 1042
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    iget-object v2, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    const/4 v3, 0x0

    iget v4, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    iget v5, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    goto/16 :goto_0

    .line 1052
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v11           #left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v12           #right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :pswitch_7
    iget-object v0, v8, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v1, 0x0

    aget-object v11, v0, v1

    .line 1053
    .restart local v11       #left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    iget-object v0, v8, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v1, 0x1

    aget-object v12, v0, v1

    .line 1055
    .restart local v12       #right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    iget-object v1, v11, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1056
    .restart local v6       #bitmap:Landroid/graphics/Bitmap;
    if-nez v6, :cond_4

    .line 1057
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1058
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    iget-object v2, v11, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    const/16 v5, 0x12c

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    .line 1063
    :cond_4
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mCacheImageLoader:Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;

    iget-object v1, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/utils/imageloader/CacheImageLoader;->loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1064
    if-nez v6, :cond_0

    .line 1065
    invoke-static {}, Lcom/baidu/bulletin/utils/MediaMonitor;->isStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListImageLoader:Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    iget-object v2, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    const/16 v5, 0x12c

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->loadListItemDrawable(ILcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;II)V

    goto/16 :goto_0

    .line 944
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public refreshPlayStatus(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 8
    .parameter "channelItemInfo"

    .prologue
    .line 1197
    iget-object v5, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mListView:Landroid/widget/ListView;

    iget-wide v6, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 1199
    .local v1, control:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1200
    const v5, 0x7f080041

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1201
    .local v2, loadingView:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 1202
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1204
    const v5, 0x7f080042

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1207
    .local v3, playImageView:Landroid/widget/ImageView;
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->getUIController()Lcom/baidu/bulletin/ui/logic/UIController;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/baidu/bulletin/ui/logic/UIController;->getPlaybackState(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Lcom/baidu/bulletin/utils/MusicPlayer$State;

    move-result-object v4

    .line 1211
    .local v4, state:Lcom/baidu/bulletin/utils/MusicPlayer$State;
    :goto_0
    sget-object v5, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$1;->$SwitchMap$com$baidu$bulletin$utils$MusicPlayer$State:[I

    invoke-virtual {v4}, Lcom/baidu/bulletin/utils/MusicPlayer$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1223
    const v5, 0x7f020085

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1227
    .end local v2           #loadingView:Landroid/view/View;
    .end local v3           #playImageView:Landroid/widget/ImageView;
    .end local v4           #state:Lcom/baidu/bulletin/utils/MusicPlayer$State;
    :cond_0
    :goto_1
    return-void

    .line 1207
    .restart local v2       #loadingView:Landroid/view/View;
    .restart local v3       #playImageView:Landroid/widget/ImageView;
    :cond_1
    sget-object v4, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Idle:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    goto :goto_0

    .line 1213
    .restart local v4       #state:Lcom/baidu/bulletin/utils/MusicPlayer$State;
    :pswitch_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x7f04

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1215
    .local v0, animation:Landroid/view/animation/Animation;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1216
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1219
    .end local v0           #animation:Landroid/view/animation/Animation;
    :pswitch_1
    const v5, 0x7f020088

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refreshUploadStatus(Landroid/view/View;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 4
    .parameter "parent"
    .parameter "channelItemInfo"

    .prologue
    const v3, 0x7f02008b

    const/4 v2, 0x1

    .line 1299
    if-eqz p1, :cond_0

    .line 1300
    const v1, 0x7f080044

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1303
    .local v0, upload:Landroid/widget/ImageView;
    iget v1, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->uploaded:I

    packed-switch v1, :pswitch_data_0

    .line 1336
    .end local v0           #upload:Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 1305
    .restart local v0       #upload:Landroid/widget/ImageView;
    :pswitch_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1306
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    .line 1310
    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1311
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1312
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1313
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    .line 1318
    :pswitch_2
    const v1, 0x7f040006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1319
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1320
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 1321
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1322
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 1327
    :pswitch_3
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1328
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1329
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1330
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    .line 1303
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public setBeautyFactory(Lcom/baidu/bulletin/ui/draglist/adapter/IBeautyFactory;)V
    .locals 0
    .parameter "beautyFactory"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mBeautyFactory:Lcom/baidu/bulletin/ui/draglist/adapter/IBeautyFactory;

    .line 291
    return-void
.end method

.method public setOnChannelItemClickListenner(Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$IOnChannelItemClick;)V
    .locals 0
    .parameter "onChannelItemClick"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mOnChannelItemClick:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter$IOnChannelItemClick;

    .line 308
    return-void
.end method

.method public update(Ljava/util/List;Z)Z
    .locals 2
    .parameter
    .parameter "isClear"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, channelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    if-nez p1, :cond_0

    .line 91
    const/4 v1, 0x0

    .line 104
    :goto_0
    return v1

    .line 94
    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->beauty(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 96
    .local v0, updatePairs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;>;"
    if-eqz p2, :cond_1

    .line 97
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 99
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mColorCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 104
    const/4 v1, 0x1

    goto :goto_0
.end method
