.class Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback;
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
    name = "DragListRefreshOldCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback$UpdateRunnable;
    }
.end annotation


# instance fields
.field private mOnRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/IOnRefreshFinishedListener;

.field final synthetic this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;Lcom/baidu/bulletin/ui/draglist/IOnRefreshFinishedListener;)V
    .locals 0
    .parameter
    .parameter "onRefreshFinishedListener"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p2, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback;->mOnRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/IOnRefreshFinishedListener;

    .line 324
    return-void
.end method

.method static synthetic access$500(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback;)Lcom/baidu/bulletin/ui/draglist/IOnRefreshFinishedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback;->mOnRefreshFinishedListener:Lcom/baidu/bulletin/ui/draglist/IOnRefreshFinishedListener;

    return-object v0
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
    .line 363
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    const-string v2, "DragListViewComponent"

    const-string v3, "Begin Down: dump get itemInfolist-------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-eqz p1, :cond_0

    .line 366
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

    .line 367
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

    .line 371
    .end local v0           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_0
    const-string v2, "DragListViewComponent"

    const-string v3, "End Down"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-void
.end method


# virtual methods
.method public onChannelItemsCallback(Ljava/util/List;I)V
    .locals 2
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
    .line 330
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback;->dump(Ljava/util/List;)V

    .line 332
    iget-object v0, p0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback;->this$0:Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback$UpdateRunnable;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback$UpdateRunnable;-><init>(Lcom/baidu/bulletin/ui/draglist/DragListViewComponent$DragListRefreshOldCallback;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 334
    return-void
.end method
