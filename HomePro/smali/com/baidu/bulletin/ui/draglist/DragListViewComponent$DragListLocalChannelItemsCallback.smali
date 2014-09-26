.class Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListLocalChannelItemsCallback;
.super Ljava/lang/Object;
.source "DragListViewComponent.java"

# interfaces
.implements Lcom/baidu/bulletin/RequestCallback$ChannelItemsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragListLocalChannelItemsCallback"
.end annotation


# instance fields
.field private mOnRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

.field private mTopicId:I

.field final synthetic this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;ILcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;)V
    .locals 0
    .parameter
    .parameter "topicId"
    .parameter "onRefreshFinishedListener"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListLocalChannelItemsCallback;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object p3, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListLocalChannelItemsCallback;->mOnRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    .line 138
    iput p2, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListLocalChannelItemsCallback;->mTopicId:I

    .line 139
    return-void
.end method


# virtual methods
.method public onChannelItemsCallback(Ljava/util/List;I)V
    .locals 5
    .parameter
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListLocalChannelItemsCallback;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    #calls: Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->dump(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->access$300(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;Ljava/util/List;)V

    .line 147
    const-string v0, "DragListViewComponent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChannelItemsCallback topid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListLocalChannelItemsCallback;->mTopicId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListLocalChannelItemsCallback;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;

    iget-object v2, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListLocalChannelItemsCallback;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    iget v3, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListLocalChannelItemsCallback;->mTopicId:I

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;-><init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;ILjava/util/List;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$RefreshInTopic;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListLocalChannelItemsCallback;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    iget v2, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListLocalChannelItemsCallback;->mTopicId:I

    iget-object v3, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListLocalChannelItemsCallback;->mOnRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$RefreshInTopic;-><init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;ILcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$RefreshInTopic;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 151
    return-void
.end method
