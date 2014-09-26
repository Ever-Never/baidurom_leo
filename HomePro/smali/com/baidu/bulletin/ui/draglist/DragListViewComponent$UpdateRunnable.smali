.class Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;
.super Ljava/lang/Object;
.source "DragListViewComponent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateRunnable"
.end annotation


# instance fields
.field private mIsUpdateForLocal:Z

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

.field private mOnRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

.field private mTopicId:I

.field final synthetic this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;ILjava/util/List;Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;Z)V
    .locals 0
    .parameter
    .parameter "topicId"
    .parameter
    .parameter "onRefreshFinishedListener"
    .parameter "isUpdateForLocal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;",
            "Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p3, itemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p3, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->mItemInfoList:Ljava/util/List;

    .line 172
    iput-object p4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->mOnRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    .line 173
    iput p2, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->mTopicId:I

    .line 174
    iput-boolean p5, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->mIsUpdateForLocal:Z

    .line 175
    return-void
.end method

.method public constructor <init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;ILjava/util/List;Z)V
    .locals 6
    .parameter
    .parameter "topicId"
    .parameter
    .parameter "isUpdateForLocal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p3, itemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;-><init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;ILjava/util/List;Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;Z)V

    .line 167
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const v10, 0x7f08004e

    const v9, 0x7f08004d

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 182
    const-string v4, "DragListViewComponent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "topiId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->mTopicId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", draglistViewComponetn.topicId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mTopicId:I
    invoke-static {v8}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->access$400(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->mTopicId:I

    iget-object v7, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    #getter for: Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mTopicId:I
    invoke-static {v7}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->access$400(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;)I

    move-result v7

    if-eq v4, v7, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    const-string v4, "DragListViewComponent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mOnRefreshFinishedListener = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->mOnRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->mOnRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    if-eqz v4, :cond_2

    .line 189
    iget-object v7, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->mOnRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->mItemInfoList:Ljava/util/List;

    if-eqz v4, :cond_6

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;->onFinished(Z)V

    .line 192
    :cond_2
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    invoke-virtual {v4}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    .line 193
    .local v2, headerViewListAdapter:Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;

    .line 197
    .local v0, channelListAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->mItemInfoList:Ljava/util/List;

    if-nez v4, :cond_3

    .line 198
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->mItemInfoList:Ljava/util/List;

    .line 201
    :cond_3
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->mItemInfoList:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 204
    sget-boolean v4, Lcom/baidu/bulletin/ui/BulletinLayout;->sIsOpenTestEmpty:Z

    if-eqz v4, :cond_4

    .line 205
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->mItemInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 209
    :cond_4
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->mItemInfoList:Ljava/util/List;

    invoke-virtual {v0, v4, v5}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->update(Ljava/util/List;Z)Z

    .line 211
    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;->notifyDataSetChanged()V

    .line 215
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    invoke-virtual {v4}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setSelection(I)V

    .line 218
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    invoke-virtual {v4}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->getListView()Landroid/widget/ListView;

    move-result-object v4

    new-instance v5, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable$1;

    invoke-direct {v5, p0}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable$1;-><init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 235
    :cond_5
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->mItemInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    iget v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->mTopicId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_7

    .line 237
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    invoke-virtual {v4}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 240
    .local v1, emptyInfoTextView:Landroid/widget/TextView;
    const v4, 0x7f0c0290

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 243
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    invoke-virtual {v4}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 246
    .local v3, subscribImageView:Landroid/widget/ImageView;
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .end local v0           #channelListAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;
    .end local v1           #emptyInfoTextView:Landroid/widget/TextView;
    .end local v2           #headerViewListAdapter:Landroid/widget/HeaderViewListAdapter;
    .end local v3           #subscribImageView:Landroid/widget/ImageView;
    :cond_6
    move v4, v6

    .line 189
    goto/16 :goto_1

    .line 249
    .restart local v0       #channelListAdapter:Lcom/baidu/bulletin/ui/draglist/adapter/ChannelListAdapter;
    .restart local v2       #headerViewListAdapter:Landroid/widget/HeaderViewListAdapter;
    :cond_7
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    invoke-virtual {v4}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 254
    .restart local v1       #emptyInfoTextView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    invoke-virtual {v4}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 257
    .restart local v3       #subscribImageView:Landroid/widget/ImageView;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 259
    iget-boolean v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;->mIsUpdateForLocal:Z

    if-eqz v4, :cond_8

    .line 260
    const v4, 0x7f0c028f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 262
    :cond_8
    const v4, 0x7f0c028c

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method
