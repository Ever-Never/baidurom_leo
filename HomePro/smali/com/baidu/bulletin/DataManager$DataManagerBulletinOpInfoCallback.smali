.class Lcom/baidu/bulletin/DataManager$DataManagerBulletinOpInfoCallback;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataManagerBulletinOpInfoCallback"
.end annotation


# instance fields
.field private mDatabaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

.field private mRequestCB:Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;

.field final synthetic this$0:Lcom/baidu/bulletin/DataManager;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/DataManager;Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;Lcom/baidu/bulletin/db/manager/IDatabaseManager;)V
    .locals 1
    .parameter
    .parameter "requestCB"
    .parameter "databaseManager"

    .prologue
    const/4 v0, 0x0

    .line 662
    iput-object p1, p0, Lcom/baidu/bulletin/DataManager$DataManagerBulletinOpInfoCallback;->this$0:Lcom/baidu/bulletin/DataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput-object v0, p0, Lcom/baidu/bulletin/DataManager$DataManagerBulletinOpInfoCallback;->mRequestCB:Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;

    .line 659
    iput-object v0, p0, Lcom/baidu/bulletin/DataManager$DataManagerBulletinOpInfoCallback;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    .line 663
    iput-object p2, p0, Lcom/baidu/bulletin/DataManager$DataManagerBulletinOpInfoCallback;->mRequestCB:Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;

    .line 664
    iput-object p3, p0, Lcom/baidu/bulletin/DataManager$DataManagerBulletinOpInfoCallback;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    .line 665
    return-void
.end method


# virtual methods
.method public onBulletinOpInfoCallback(Ljava/util/List;I)V
    .locals 5
    .parameter
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 670
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;>;"
    if-nez p2, :cond_1

    .line 672
    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    iget-object v3, v3, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    if-eqz v3, :cond_0

    .line 673
    iget-object v4, p0, Lcom/baidu/bulletin/DataManager$DataManagerBulletinOpInfoCallback;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    iget-object v3, v3, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-interface {v4, v3}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->insterImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)J

    move-result-wide v1

    .line 674
    .local v1, id:J
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;

    iget-object v3, v3, Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iput-wide v1, v3, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    .line 676
    .end local v1           #id:J
    :cond_0
    iget-object v3, p0, Lcom/baidu/bulletin/DataManager$DataManagerBulletinOpInfoCallback;->mRequestCB:Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;

    invoke-interface {v3, p1, p2}, Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;->onBulletinOpInfoCallback(Ljava/util/List;I)V
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :goto_0
    return-void

    .line 677
    :catch_0
    move-exception v0

    .line 679
    .local v0, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v0}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    goto :goto_0

    .line 682
    .end local v0           #e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    :cond_1
    iget-object v3, p0, Lcom/baidu/bulletin/DataManager$DataManagerBulletinOpInfoCallback;->mRequestCB:Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;

    invoke-interface {v3, p1, p2}, Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;->onBulletinOpInfoCallback(Ljava/util/List;I)V

    goto :goto_0
.end method
