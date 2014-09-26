.class Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable$1;
.super Ljava/lang/Object;
.source "DragListViewComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable$1;->this$1:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 224
    iget-object v2, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable$1;->this$1:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;

    iget-object v2, v2, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 225
    .local v1, headerViewListAdapter:Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    .line 227
    .local v0, channelListAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;
    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getImageLoader()Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getCount()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->setLoadLimit(II)V

    .line 228
    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->getImageLoader()Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bulletin/utils/imageloader/AsyncListItemImageLoader;->unlock()V

    .line 229
    return-void
.end method
