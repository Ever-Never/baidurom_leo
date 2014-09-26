.class Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback$UpdateRunnable;
.super Ljava/lang/Object;
.source "DragListViewComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateRunnable"
.end annotation


# instance fields
.field private mItemInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback;Ljava/util/List;)V
    .locals 0
    .parameter
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
    .line 340
    .local p2, itemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback$UpdateRunnable;->this$1:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object p2, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback$UpdateRunnable;->mItemInfoList:Ljava/util/List;

    .line 342
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 346
    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback$UpdateRunnable;->this$1:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback;

    iget-object v3, v3, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    invoke-virtual {v3}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 348
    .local v1, headerViewListAdapter:Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    .line 351
    .local v0, channelListAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;
    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback$UpdateRunnable;->mItemInfoList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 352
    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback$UpdateRunnable;->mItemInfoList:Ljava/util/List;

    invoke-virtual {v0, v3, v2}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->update(Ljava/util/List;Z)Z

    .line 354
    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->notifyDataSetChanged()V

    .line 357
    :cond_0
    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback$UpdateRunnable;->this$1:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback;

    #getter for: Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback;->mOnRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/IOnRefreshFinishedListener;
    invoke-static {v3}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback;->access$500(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback;)Lcom/baidu/bulletin/ui/draglist/IOnRefreshFinishedListener;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback$UpdateRunnable;->mItemInfoList:Ljava/util/List;

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-interface {v3, v2}, Lcom/baidu/bulletin/ui/draglist/IOnRefreshFinishedListener;->onFinished(Z)V

    .line 358
    return-void
.end method
