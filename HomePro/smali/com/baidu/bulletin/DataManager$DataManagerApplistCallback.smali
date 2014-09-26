.class Lcom/baidu/bulletin/DataManager$DataManagerApplistCallback;
.super Ljava/lang/Object;
.source "DataManager.java"

# interfaces
.implements Lcom/baidu/bulletin/RequestCallback$ApplistCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataManagerApplistCallback"
.end annotation


# instance fields
.field private mChannelItemId:I

.field private mDatabaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

.field private mRequestCB:Lcom/baidu/bulletin/RequestCallback$ApplistCallback;

.field final synthetic this$0:Lcom/baidu/bulletin/DataManager;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/DataManager;Lcom/baidu/bulletin/RequestCallback$ApplistCallback;Lcom/baidu/bulletin/db/manager/IDatabaseManager;I)V
    .locals 1
    .parameter
    .parameter "requestCB"
    .parameter "databaseManager"
    .parameter "channelItemId"

    .prologue
    const/4 v0, 0x0

    .line 698
    iput-object p1, p0, Lcom/baidu/bulletin/DataManager$DataManagerApplistCallback;->this$0:Lcom/baidu/bulletin/DataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput-object v0, p0, Lcom/baidu/bulletin/DataManager$DataManagerApplistCallback;->mRequestCB:Lcom/baidu/bulletin/RequestCallback$ApplistCallback;

    .line 695
    iput-object v0, p0, Lcom/baidu/bulletin/DataManager$DataManagerApplistCallback;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    .line 699
    iput-object p2, p0, Lcom/baidu/bulletin/DataManager$DataManagerApplistCallback;->mRequestCB:Lcom/baidu/bulletin/RequestCallback$ApplistCallback;

    .line 700
    iput-object p3, p0, Lcom/baidu/bulletin/DataManager$DataManagerApplistCallback;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    .line 701
    iput p4, p0, Lcom/baidu/bulletin/DataManager$DataManagerApplistCallback;->mChannelItemId:I

    .line 702
    return-void
.end method


# virtual methods
.method public onApplistCallback(Ljava/util/List;I)V
    .locals 3
    .parameter
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/AppDetailInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 707
    .local p1, itemInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/AppDetailInfo;>;"
    if-nez p2, :cond_0

    .line 709
    :try_start_0
    iget-object v1, p0, Lcom/baidu/bulletin/DataManager$DataManagerApplistCallback;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    invoke-interface {v1, p1}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->saveAppDetail(Ljava/util/List;)V

    .line 710
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 711
    iget-object v1, p0, Lcom/baidu/bulletin/DataManager$DataManagerApplistCallback;->this$0:Lcom/baidu/bulletin/DataManager;

    #getter for: Lcom/baidu/bulletin/DataManager;->mDataBaseManager:Lcom/baidu/bulletin/db/manager/IDatabaseManager;
    invoke-static {v1}, Lcom/baidu/bulletin/DataManager;->access$100(Lcom/baidu/bulletin/DataManager;)Lcom/baidu/bulletin/db/manager/IDatabaseManager;

    move-result-object v1

    iget v2, p0, Lcom/baidu/bulletin/DataManager$DataManagerApplistCallback;->mChannelItemId:I

    invoke-interface {v1, v2}, Lcom/baidu/bulletin/db/manager/IDatabaseManager;->queryAppDetailByItemId(I)Ljava/util/List;

    move-result-object p1

    .line 712
    iget-object v1, p0, Lcom/baidu/bulletin/DataManager$DataManagerApplistCallback;->mRequestCB:Lcom/baidu/bulletin/RequestCallback$ApplistCallback;

    invoke-interface {v1, p1, p2}, Lcom/baidu/bulletin/RequestCallback$ApplistCallback;->onApplistCallback(Ljava/util/List;I)V
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    :goto_0
    return-void

    .line 713
    :catch_0
    move-exception v0

    .line 715
    .local v0, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v0}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    goto :goto_0

    .line 718
    .end local v0           #e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    :cond_0
    iget-object v1, p0, Lcom/baidu/bulletin/DataManager$DataManagerApplistCallback;->mRequestCB:Lcom/baidu/bulletin/RequestCallback$ApplistCallback;

    invoke-interface {v1, p1, p2}, Lcom/baidu/bulletin/RequestCallback$ApplistCallback;->onApplistCallback(Ljava/util/List;I)V

    goto :goto_0
.end method
