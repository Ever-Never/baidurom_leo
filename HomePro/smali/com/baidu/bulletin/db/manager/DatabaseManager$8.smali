.class Lcom/baidu/bulletin/db/manager/DatabaseManager$8;
.super Lcom/baidu/bulletin/db/handler/SQLiteTask;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/db/manager/DatabaseManager;->saveAppDetail(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

.field final synthetic val$appDetailInfos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/db/manager/DatabaseManager;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$8;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    iput-object p2, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$8;->val$appDetailInfos:Ljava/util/List;

    invoke-direct {p0}, Lcom/baidu/bulletin/db/handler/SQLiteTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected performTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)Z
    .locals 10
    .parameter "db"
    .parameter "handler"

    .prologue
    const/4 v9, 0x0

    .line 752
    iget-object v6, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$8;->val$appDetailInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;

    .line 753
    .local v0, appDetailInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;
    if-eqz v0, :cond_0

    .line 755
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 756
    .local v1, cv:Landroid/content/ContentValues;
    const-string v6, "appId"

    iget-wide v7, v0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->appId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 757
    const-string v6, "channelItemId"

    iget-wide v7, v0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->channelItemId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 759
    const-string v6, "appName"

    iget-object v7, v0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->appName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v6, "docId"

    iget-object v7, v0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->docId:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v6, "downloadcount"

    iget-object v7, v0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->downloadCount:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v6, "packageName"

    iget-object v7, v0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-string v6, "score"

    iget-object v7, v0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->score:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    const-string v6, "size"

    iget-object v7, v0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->size:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$200()J

    move-result-wide v4

    .line 768
    .local v4, imgId:J
    iget-object v6, v0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    if-eqz v6, :cond_1

    .line 769
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 770
    .local v3, image:Landroid/content/ContentValues;
    const-string v6, "type"

    iget-object v7, v0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget v7, v7, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 772
    const-string v6, "size"

    iget-object v7, v0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v7, v7, Lcom/baidu/bulletin/db/entity/ImageInfo;->size:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 774
    const-string v6, "url"

    iget-object v7, v0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v7, v7, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v6, "localpath"

    iget-object v7, v0, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v7, v7, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    iget-object v6, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$8;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    #getter for: Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    invoke-static {v6}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$100(Lcom/baidu/bulletin/db/manager/DatabaseManager;)Lcom/baidu/bulletin/db/handler/DBHandler;

    move-result-object v6

    const-string v7, "image"

    invoke-virtual {v6, v7, v9, v3}, Lcom/baidu/bulletin/db/handler/DBHandler;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 780
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    .line 781
    const-string v6, "iconId"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 783
    .end local v3           #image:Landroid/content/ContentValues;
    :cond_1
    iget-object v6, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$8;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    #getter for: Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    invoke-static {v6}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$100(Lcom/baidu/bulletin/db/manager/DatabaseManager;)Lcom/baidu/bulletin/db/handler/DBHandler;

    move-result-object v6

    const-string v7, "appdetail"

    invoke-virtual {v6, v7, v9, v1}, Lcom/baidu/bulletin/db/handler/DBHandler;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    .line 785
    .end local v0           #appDetailInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v4           #imgId:J
    :cond_2
    const/4 v6, 0x1

    return v6
.end method
