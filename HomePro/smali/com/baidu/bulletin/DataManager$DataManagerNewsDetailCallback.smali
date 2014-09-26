.class Lcom/baidu/bulletin/DataManager$DataManagerNewsDetailCallback;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataManagerNewsDetailCallback"
.end annotation


# instance fields
.field private mDatabaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

.field private mNewsId:I

.field private mRequestCB:Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;

.field final synthetic this$0:Lcom/baidu/bulletin/DataManager;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/DataManager;Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;Lcom/baidu/bulletin/db/manager/IDatabaseManager;I)V
    .locals 1
    .parameter
    .parameter "requestCB"
    .parameter "databaseManager"
    .parameter "newsId"

    .prologue
    const/4 v0, 0x0

    .line 555
    iput-object p1, p0, Lcom/baidu/bulletin/DataManager$DataManagerNewsDetailCallback;->this$0:Lcom/baidu/bulletin/DataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    iput-object v0, p0, Lcom/baidu/bulletin/DataManager$DataManagerNewsDetailCallback;->mRequestCB:Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;

    .line 552
    iput-object v0, p0, Lcom/baidu/bulletin/DataManager$DataManagerNewsDetailCallback;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    .line 556
    iput-object p2, p0, Lcom/baidu/bulletin/DataManager$DataManagerNewsDetailCallback;->mRequestCB:Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;

    .line 557
    iput-object p3, p0, Lcom/baidu/bulletin/DataManager$DataManagerNewsDetailCallback;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    .line 558
    iput p4, p0, Lcom/baidu/bulletin/DataManager$DataManagerNewsDetailCallback;->mNewsId:I

    .line 559
    return-void
.end method


# virtual methods
.method public onNewsDetailCallback(Ljava/util/List;I)V
    .locals 3
    .parameter
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/NewsDetailInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 564
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    if-nez p2, :cond_0

    .line 566
    :try_start_0
    iget-object v1, p0, Lcom/baidu/bulletin/DataManager$DataManagerNewsDetailCallback;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    invoke-interface {v1, p1}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->saveNewsDetail(Ljava/util/List;)V

    .line 567
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 568
    iget-object v1, p0, Lcom/baidu/bulletin/DataManager$DataManagerNewsDetailCallback;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    iget v2, p0, Lcom/baidu/bulletin/DataManager$DataManagerNewsDetailCallback;->mNewsId:I

    invoke-interface {v1, v2}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryNewsDetailByItemId(I)Ljava/util/List;

    move-result-object p1

    .line 569
    iget-object v1, p0, Lcom/baidu/bulletin/DataManager$DataManagerNewsDetailCallback;->mRequestCB:Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;

    invoke-interface {v1, p1, p2}, Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;->onNewsDetailCallback(Ljava/util/List;I)V
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 578
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v0

    .line 572
    .local v0, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v0}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    goto :goto_0

    .line 575
    .end local v0           #e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    :cond_0
    iget-object v1, p0, Lcom/baidu/bulletin/DataManager$DataManagerNewsDetailCallback;->mRequestCB:Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;

    invoke-interface {v1, p1, p2}, Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;->onNewsDetailCallback(Ljava/util/List;I)V

    goto :goto_0
.end method
