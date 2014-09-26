.class public Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;
.super Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;
.source "DragListViewComponent.java"

# interfaces
.implements Lcom/baidu/bulletin/autosync/AutoSyncer$IOnSyncListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$1;,
        Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$AutoSyncerFinishedRunnable;,
        Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UBCStateChangeListener;,
        Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback;,
        Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListChannelItemsCallback;,
        Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;,
        Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListLocalChannelItemsCallback;,
        Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$RefreshNewTopicAsyncTask;,
        Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$RefreshInTopic;
    }
.end annotation


# static fields
.field public static final DOWN_PRELOAD_COUNT:I = 0x3

.field public static final MAX_COUNT:I = 0x14

.field private static final TAG:Ljava/lang/String; = "DragListViewComponent"

.field public static final UP_PRELOAD_COUNT:I = 0x3


# instance fields
.field private mIsRefreshNewTopic:Z

.field private mTopicId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "listView"
    .parameter "dragHeaderView"
    .parameter "dragFooterView"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent;-><init>(Landroid/content/Context;Landroid/widget/ListView;Landroid/view/View;Landroid/view/View;)V

    .line 49
    const/4 v0, -0x2

    iput v0, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mTopicId:I

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mIsRefreshNewTopic:Z

    .line 52
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UBCStateChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UBCStateChangeListener;-><init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$1;)V

    invoke-virtual {p0, v0}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->registStateChangeListener(Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener;)V

    .line 53
    return-void
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->dump(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mTopicId:I

    return v0
.end method

.method private dump(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    const-string v2, "panxu"

    const-string v3, "Begin: dump get itemInfolist-------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-eqz p1, :cond_0

    .line 275
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .line 276
    .local v0, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    const-string v2, "DragListViewComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    .end local v0           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    const-string v2, "DragListViewComponent"

    const-string v3, "End"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method private getCurMaxVersion(I)J
    .locals 10
    .parameter "topicId"

    .prologue
    .line 376
    const-wide/16 v4, 0x0

    .line 377
    .local v4, maxVersion:J
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 379
    .local v1, headerViewListAdapter:Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    .line 382
    .local v0, channelListAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;
    iget-object v8, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;

    .line 384
    .local v6, pair:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;
    iget-object v8, v6, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v9, 0x0

    aget-object v3, v8, v9

    .line 386
    .local v3, left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    iget v8, v3, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    if-ne v8, p1, :cond_0

    .line 389
    if-eqz v3, :cond_1

    iget-wide v8, v3, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    cmp-long v8, v8, v4

    if-lez v8, :cond_1

    .line 390
    iget-wide v4, v3, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    .line 393
    :cond_1
    iget-object v8, v6, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v9, 0x1

    aget-object v7, v8, v9

    .line 395
    .local v7, right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    if-eqz v7, :cond_0

    iget-wide v8, v7, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    cmp-long v8, v8, v4

    if-lez v8, :cond_0

    .line 396
    iget-wide v4, v7, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    goto :goto_0

    .line 401
    .end local v3           #left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v6           #pair:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;
    .end local v7           #right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :cond_2
    return-wide v4
.end method

.method private getCurMinVersion(I)J
    .locals 10
    .parameter "topicId"

    .prologue
    .line 405
    const-wide v4, 0x7fffffffffffffffL

    .line 406
    .local v4, minVersion:J
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 408
    .local v1, headerViewListAdapter:Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    .line 411
    .local v0, channelListAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;
    iget-object v8, v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->mDataArrayList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;

    .line 412
    .local v6, pair:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;
    iget-object v8, v6, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v9, 0x0

    aget-object v3, v8, v9

    .line 414
    .local v3, left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    iget v8, v3, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    if-ne v8, p1, :cond_0

    .line 417
    if-eqz v3, :cond_1

    iget-wide v8, v3, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    cmp-long v8, v8, v4

    if-gez v8, :cond_1

    .line 418
    iget-wide v4, v3, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    .line 421
    :cond_1
    iget-object v8, v6, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;->channelItemInfoPair:[Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    const/4 v9, 0x1

    aget-object v7, v8, v9

    .line 423
    .local v7, right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    if-eqz v7, :cond_0

    iget-wide v8, v7, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    cmp-long v8, v8, v4

    if-gez v8, :cond_0

    .line 424
    iget-wide v4, v7, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    goto :goto_0

    .line 428
    .end local v3           #left:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v6           #pair:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;
    .end local v7           #right:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :cond_2
    return-wide v4
.end method


# virtual methods
.method public getTopicId()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mTopicId:I

    return v0
.end method

.method protected onRefreshNew(Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;)V
    .locals 5
    .parameter "refreshFinishedListener"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 70
    const-string v0, "DragListViewComponent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topic id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mTopicId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isRefreshNewTopic = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mIsRefreshNewTopic:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-boolean v0, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mIsRefreshNewTopic:Z

    if-eqz v0, :cond_0

    .line 73
    iput-boolean v3, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mIsRefreshNewTopic:Z

    .line 75
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$RefreshNewTopicAsyncTask;

    iget v1, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mTopicId:I

    invoke-direct {v0, p0, v1, p1, v4}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$RefreshNewTopicAsyncTask;-><init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;ILcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$RefreshNewTopicAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    :goto_0
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForChnlSubState()V

    .line 82
    return-void

    .line 78
    :cond_0
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$RefreshInTopic;

    iget v1, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mTopicId:I

    invoke-direct {v0, p0, v1, p1, v4}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$RefreshInTopic;-><init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;ILcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$RefreshInTopic;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onRefreshOld(Lcom/baidu/bulletin/ui/draglist/IOnRefreshFinishedListener;)V
    .locals 6
    .parameter "refreshFinishedListener"

    .prologue
    .line 311
    invoke-static {}, Lcom/baidu/bulletin/DataManager;->getInstance()Lcom/baidu/bulletin/DataManager;

    move-result-object v0

    .line 312
    .local v0, dataManager:Lcom/baidu/bulletin/DataManager;
    new-instance v1, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback;-><init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnRefreshFinishedListener;)V

    const/16 v2, 0x14

    iget v3, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mTopicId:I

    iget v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mTopicId:I

    invoke-direct {p0, v4}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->getCurMinVersion(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/bulletin/DataManager;->requestOldChannelItems(Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;IIJ)V

    .line 315
    const-string v1, "DragListViewComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRefreshold topic id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mTopicId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void
.end method

.method public onStart(Lcom/baidu/bulletin/autosync/AutoSyncer;)V
    .locals 0
    .parameter "autoSyncer"

    .prologue
    .line 458
    return-void
.end method

.method public onStop(Lcom/baidu/bulletin/autosync/AutoSyncer;)V
    .locals 3
    .parameter "autoSyncer"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$AutoSyncerFinishedRunnable;

    invoke-virtual {p1}, Lcom/baidu/bulletin/autosync/AutoSyncer;->getUpdateTopicList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$AutoSyncerFinishedRunnable;-><init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 464
    return-void
.end method

.method public setNewTopicIdAndRefresh(I)V
    .locals 1
    .parameter "topicId"

    .prologue
    .line 61
    iput p1, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mTopicId:I

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mIsRefreshNewTopic:Z

    .line 64
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->refresh()V

    .line 65
    return-void
.end method
