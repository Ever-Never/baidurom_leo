.class Lcom/baidu/bulletin/SyncScheduler$1;
.super Ljava/lang/Object;
.source "SyncScheduler.java"

# interfaces
.implements Lcom/baidu/bulletin/DataSyncer$SyncObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/SyncScheduler;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/SyncScheduler;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/baidu/bulletin/SyncScheduler$1;->this$0:Lcom/baidu/bulletin/SyncScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlreadySyncing()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/baidu/bulletin/SyncScheduler$1;->this$0:Lcom/baidu/bulletin/SyncScheduler;

    #getter for: Lcom/baidu/bulletin/SyncScheduler;->mClientSession:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;
    invoke-static {v0}, Lcom/baidu/bulletin/SyncScheduler;->access$000(Lcom/baidu/bulletin/SyncScheduler;)Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/bulletin/BulletinPresentation$ClientSession;->onAlreadySyncing()V

    .line 79
    invoke-static {}, Lcom/baidu/bulletin/SyncScheduler;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSyncProgressing >>> "

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onNewMessageNotified(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/baidu/bulletin/SyncScheduler$1;->this$0:Lcom/baidu/bulletin/SyncScheduler;

    #getter for: Lcom/baidu/bulletin/SyncScheduler;->mClientSession:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;
    invoke-static {v0}, Lcom/baidu/bulletin/SyncScheduler;->access$000(Lcom/baidu/bulletin/SyncScheduler;)Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/BulletinPresentation$ClientSession;->onNewMessageNofitied(I)V

    .line 90
    invoke-static {}, Lcom/baidu/bulletin/SyncScheduler;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewMessageCount, count is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onPageImageLoaded(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 102
    invoke-static {}, Lcom/baidu/bulletin/SyncScheduler;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageImageLoaded >>> position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/baidu/bulletin/SyncScheduler$1;->this$0:Lcom/baidu/bulletin/SyncScheduler;

    #getter for: Lcom/baidu/bulletin/SyncScheduler;->mClientSession:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;
    invoke-static {v0}, Lcom/baidu/bulletin/SyncScheduler;->access$000(Lcom/baidu/bulletin/SyncScheduler;)Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/BulletinPresentation$ClientSession;->onPageImageLoaded(I)V

    .line 104
    return-void
.end method

.method public onPageLoaded(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 2
    .parameter "channel"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/baidu/bulletin/SyncScheduler$1;->this$0:Lcom/baidu/bulletin/SyncScheduler;

    #getter for: Lcom/baidu/bulletin/SyncScheduler;->mClientSession:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;
    invoke-static {v0}, Lcom/baidu/bulletin/SyncScheduler;->access$000(Lcom/baidu/bulletin/SyncScheduler;)Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/baidu/bulletin/BulletinPresentation$ClientSession;->onPageLoaded(Lcom/baidu/bulletin/entity/ChannelItem;)V

    .line 96
    invoke-static {}, Lcom/baidu/bulletin/SyncScheduler;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDetailResult >>> "

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public onSyncFinish(ZI)V
    .locals 1
    .parameter "changed"
    .parameter "count"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/bulletin/SyncScheduler$1;->this$0:Lcom/baidu/bulletin/SyncScheduler;

    #getter for: Lcom/baidu/bulletin/SyncScheduler;->mClientSession:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;
    invoke-static {v0}, Lcom/baidu/bulletin/SyncScheduler;->access$000(Lcom/baidu/bulletin/SyncScheduler;)Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/baidu/bulletin/BulletinPresentation$ClientSession;->onSyncFinish(ZI)V

    .line 85
    return-void
.end method

.method public onSyncStart()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/bulletin/SyncScheduler$1;->this$0:Lcom/baidu/bulletin/SyncScheduler;

    #getter for: Lcom/baidu/bulletin/SyncScheduler;->mClientSession:Lcom/baidu/bulletin/BulletinPresentation$ClientSession;
    invoke-static {v0}, Lcom/baidu/bulletin/SyncScheduler;->access$000(Lcom/baidu/bulletin/SyncScheduler;)Lcom/baidu/bulletin/BulletinPresentation$ClientSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/bulletin/BulletinPresentation$ClientSession;->onSyncStart()V

    .line 73
    invoke-static {}, Lcom/baidu/bulletin/SyncScheduler;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSyncStart >>>"

    invoke-static {v0, v1}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method
