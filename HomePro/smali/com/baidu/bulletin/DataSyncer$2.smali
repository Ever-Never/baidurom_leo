.class Lcom/baidu/bulletin/DataSyncer$2;
.super Ljava/lang/Object;
.source "DataSyncer.java"

# interfaces
.implements Lcom/baidu/bulletin/network/logic/DownloadObserverByPage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/DataSyncer;->downloadImgByPage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/DataSyncer;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/DataSyncer;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/baidu/bulletin/DataSyncer$2;->this$0:Lcom/baidu/bulletin/DataSyncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Ljava/lang/Object;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 221
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 222
    .local v0, pos:I
    invoke-static {}, Lcom/baidu/bulletin/DataSyncer;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish to download image by page index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {v0}, Lcom/baidu/bulletin/dao/PageCacheSerializable;->syncloadPageCache(I)V

    .line 226
    iget-object v1, p0, Lcom/baidu/bulletin/DataSyncer$2;->this$0:Lcom/baidu/bulletin/DataSyncer;

    #getter for: Lcom/baidu/bulletin/DataSyncer;->mSyncObserver:Lcom/baidu/bulletin/DataSyncer$SyncObserver;
    invoke-static {v1}, Lcom/baidu/bulletin/DataSyncer;->access$500(Lcom/baidu/bulletin/DataSyncer;)Lcom/baidu/bulletin/DataSyncer$SyncObserver;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/baidu/bulletin/DataSyncer$SyncObserver;->onPageImageLoaded(I)V

    .line 227
    return-void
.end method
