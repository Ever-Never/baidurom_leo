.class Lcom/baidu/bulletin/ui/logic/UIController$1;
.super Ljava/lang/Object;
.source "UIController.java"

# interfaces
.implements Lcom/baidu/bulletin/network/RequestAccessTokenManager$TokenObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/logic/UIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/logic/UIController;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/logic/UIController;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/baidu/bulletin/ui/logic/UIController$1;->this$0:Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadSongUrlFail(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 3
    .parameter "channel"

    .prologue
    const/4 v2, 0x0

    .line 489
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController$1;->this$0:Lcom/baidu/bulletin/ui/logic/UIController;

    #getter for: Lcom/baidu/bulletin/ui/logic/UIController;->mDownloadListInfo:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/logic/UIController;->access$000(Lcom/baidu/bulletin/ui/logic/UIController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 490
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDownloadSongUrlFail >>>>>"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController$1;->this$0:Lcom/baidu/bulletin/ui/logic/UIController;

    const/16 v1, 0xa

    invoke-virtual {v0, v2, p1, v1}, Lcom/baidu/bulletin/ui/logic/UIController;->remoteTaskFailed(ILcom/baidu/bulletin/db/entity/ChannelItemInfo;I)V

    .line 492
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController$1;->this$0:Lcom/baidu/bulletin/ui/logic/UIController;

    #getter for: Lcom/baidu/bulletin/ui/logic/UIController;->mDownloadListInfo:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/logic/UIController;->access$000(Lcom/baidu/bulletin/ui/logic/UIController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 493
    iget-object v0, p0, Lcom/baidu/bulletin/ui/logic/UIController$1;->this$0:Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/logic/UIController;->downloadNext()V

    .line 496
    :cond_0
    return-void
.end method

.method public onDownloadSongUrlFail(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 0
    .parameter "channel"

    .prologue
    .line 466
    return-void
.end method

.method public onDownloadSongUrlSuccess(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Ljava/lang/String;)V
    .locals 4
    .parameter "channel"
    .parameter "songurl"

    .prologue
    .line 472
    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController$1;->this$0:Lcom/baidu/bulletin/ui/logic/UIController;

    #getter for: Lcom/baidu/bulletin/ui/logic/UIController;->mDownloadListInfo:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/logic/UIController;->access$000(Lcom/baidu/bulletin/ui/logic/UIController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 473
    invoke-static {}, Lcom/baidu/bulletin/ui/logic/UIController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onDownloadValidationSuccess >>>>>"

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController$1;->this$0:Lcom/baidu/bulletin/ui/logic/UIController;

    #getter for: Lcom/baidu/bulletin/ui/logic/UIController;->mDownloadListInfo:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/bulletin/ui/logic/UIController;->access$000(Lcom/baidu/bulletin/ui/logic/UIController;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 475
    iput-object p2, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    .line 477
    :try_start_0
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->getInstance()Lcom/baidu/bulletin/db/manager/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->updateChannelItem(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    :goto_0
    invoke-static {}, Lcom/baidu/bulletin/BulletinPresentation;->getInstance()Lcom/baidu/bulletin/BulletinPresentation;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bulletin/ui/logic/UIController$1;->this$0:Lcom/baidu/bulletin/ui/logic/UIController;

    #getter for: Lcom/baidu/bulletin/ui/logic/UIController;->mLauncher:Lcom/baidu/launcher/app/Launcher;
    invoke-static {v2}, Lcom/baidu/bulletin/ui/logic/UIController;->access$200(Lcom/baidu/bulletin/ui/logic/UIController;)Lcom/baidu/launcher/app/Launcher;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/bulletin/ui/logic/UIController$1;->this$0:Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-virtual {v1, v2, p1, v3}, Lcom/baidu/bulletin/BulletinPresentation;->offlineFile(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;Lcom/baidu/bulletin/BulletinService$RemoteTaskListener;)V

    .line 482
    iget-object v1, p0, Lcom/baidu/bulletin/ui/logic/UIController$1;->this$0:Lcom/baidu/bulletin/ui/logic/UIController;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/logic/UIController;->downloadNext()V

    .line 484
    :cond_0
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDownloadSongUrlSuccess(Lcom/baidu/bulletin/entity/ChannelItem;Ljava/lang/String;)V
    .locals 0
    .parameter "channel"
    .parameter "songurl"

    .prologue
    .line 461
    return-void
.end method
