.class Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListChannelItemsCallback;
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
    name = "DragListChannelItemsCallback"
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
    .line 289
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListChannelItemsCallback;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object p3, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListChannelItemsCallback;->mOnRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    .line 291
    iput p2, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListChannelItemsCallback;->mTopicId:I

    .line 292
    return-void
.end method


# virtual methods
.method public onChannelItemsCallback(Ljava/util/List;I)V
    .locals 7
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
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    const/4 v5, 0x0

    .line 297
    sput-boolean v5, Lcom/baidu/launcher/app/LauncherApplication;->appRebooting:Z

    .line 298
    const-string v0, "DragListViewComponent"

    const-string v1, "DragListChannelItemsCallback with listenner in topic"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListChannelItemsCallback;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    #calls: Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->dump(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->access$300(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;Ljava/util/List;)V

    .line 301
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListChannelItemsCallback;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    iget-object v6, v0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;

    iget-object v1, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListChannelItemsCallback;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    iget v2, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListChannelItemsCallback;->mTopicId:I

    iget-object v4, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListChannelItemsCallback;->mOnRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$UpdateRunnable;-><init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;ILjava/util/List;Lcom/baidu/bulletin/ui/draglist/AbstractDragListViewComponent$OnRefreshFinishedListener;Z)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    return-void
.end method
