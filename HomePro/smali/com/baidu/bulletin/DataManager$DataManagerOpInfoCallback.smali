.class Lcom/baidu/bulletin/DataManager$DataManagerOpInfoCallback;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataManagerOpInfoCallback"
.end annotation


# instance fields
.field private mChannelName:Ljava/lang/String;

.field private mDatabaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

.field private mRequestCB:Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;

.field private mTopic:I

.field final synthetic this$0:Lcom/baidu/bulletin/DataManager;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/DataManager;Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;Lcom/baidu/bulletin/db/manager/IDatabaseManager;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "requestCB"
    .parameter "databaseManager"
    .parameter "channelName"
    .parameter "topic"

    .prologue
    const/4 v0, 0x0

    .line 609
    iput-object p1, p0, Lcom/baidu/bulletin/DataManager$DataManagerOpInfoCallback;->this$0:Lcom/baidu/bulletin/DataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput-object v0, p0, Lcom/baidu/bulletin/DataManager$DataManagerOpInfoCallback;->mRequestCB:Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;

    .line 603
    iput-object v0, p0, Lcom/baidu/bulletin/DataManager$DataManagerOpInfoCallback;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    .line 610
    iput-object p2, p0, Lcom/baidu/bulletin/DataManager$DataManagerOpInfoCallback;->mRequestCB:Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;

    .line 611
    iput-object p3, p0, Lcom/baidu/bulletin/DataManager$DataManagerOpInfoCallback;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    .line 612
    iput-object p4, p0, Lcom/baidu/bulletin/DataManager$DataManagerOpInfoCallback;->mChannelName:Ljava/lang/String;

    .line 613
    iput p5, p0, Lcom/baidu/bulletin/DataManager$DataManagerOpInfoCallback;->mTopic:I

    .line 614
    return-void
.end method


# virtual methods
.method public onOpInfoCallback(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/OpItemInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 620
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/OpItemInfo;>;"
    if-nez p2, :cond_0

    .line 622
    :try_start_0
    iget-object v1, p0, Lcom/baidu/bulletin/DataManager$DataManagerOpInfoCallback;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    invoke-interface {v1, p1}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->saveOpItems(Ljava/util/List;)V

    .line 623
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 624
    iget-object v1, p0, Lcom/baidu/bulletin/DataManager$DataManagerOpInfoCallback;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    iget-object v2, p0, Lcom/baidu/bulletin/DataManager$DataManagerOpInfoCallback;->mChannelName:Ljava/lang/String;

    iget v3, p0, Lcom/baidu/bulletin/DataManager$DataManagerOpInfoCallback;->mTopic:I

    invoke-interface {v1, v2, v3}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryOpItems(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 625
    iget-object v1, p0, Lcom/baidu/bulletin/DataManager$DataManagerOpInfoCallback;->mRequestCB:Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;

    invoke-interface {v1, p1, p2}, Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;->onOpInfoCallback(Ljava/util/List;I)V
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_0
    return-void

    .line 626
    :catch_0
    move-exception v0

    .line 628
    .local v0, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v0}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    goto :goto_0

    .line 631
    .end local v0           #e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    :cond_0
    iget-object v1, p0, Lcom/baidu/bulletin/DataManager$DataManagerOpInfoCallback;->mRequestCB:Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;

    invoke-interface {v1, p1, p2}, Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;->onOpInfoCallback(Ljava/util/List;I)V

    goto :goto_0
.end method
