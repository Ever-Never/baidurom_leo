.class Lcom/baidu/bulletin/db/manager/DatabaseManager$5;
.super Lcom/baidu/bulletin/db/handler/SQLiteTask;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/db/manager/DatabaseManager;->saveNewsDetail(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

.field final synthetic val$newsDetailInfos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/db/manager/DatabaseManager;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$5;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    iput-object p2, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$5;->val$newsDetailInfos:Ljava/util/List;

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

    .line 500
    iget-object v6, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$5;->val$newsDetailInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    .line 501
    .local v5, newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    if-eqz v5, :cond_0

    .line 504
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 505
    .local v0, cv:Landroid/content/ContentValues;
    const-string v6, "data"

    iget-object v7, v5, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->data:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v6, "channelItemId"

    iget-wide v7, v5, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->channelItemId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 508
    const-string v6, "type"

    iget v7, v5, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 509
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$200()J

    move-result-wide v3

    .line 510
    .local v3, imgId:J
    iget-object v6, v5, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    if-eqz v6, :cond_1

    .line 511
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 512
    .local v2, image:Landroid/content/ContentValues;
    const-string v6, "type"

    iget-object v7, v5, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget v7, v7, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 514
    const-string v6, "size"

    iget-object v7, v5, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v7, v7, Lcom/baidu/bulletin/db/entity/ImageInfo;->size:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 516
    const-string v6, "url"

    iget-object v7, v5, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v7, v7, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v6, "localpath"

    iget-object v7, v5, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v7, v7, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v6, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$5;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    #getter for: Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    invoke-static {v6}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$100(Lcom/baidu/bulletin/db/manager/DatabaseManager;)Lcom/baidu/bulletin/db/handler/DBHandler;

    move-result-object v6

    const-string v7, "image"

    invoke-virtual {v6, v7, v9, v2}, Lcom/baidu/bulletin/db/handler/DBHandler;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 522
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_1

    .line 523
    const-string v6, "imgId"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 525
    .end local v2           #image:Landroid/content/ContentValues;
    :cond_1
    iget-object v6, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$5;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    #getter for: Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    invoke-static {v6}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$100(Lcom/baidu/bulletin/db/manager/DatabaseManager;)Lcom/baidu/bulletin/db/handler/DBHandler;

    move-result-object v6

    const-string v7, "newsdetail"

    invoke-virtual {v6, v7, v9, v0}, Lcom/baidu/bulletin/db/handler/DBHandler;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    .line 527
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v3           #imgId:J
    .end local v5           #newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    :cond_2
    const/4 v6, 0x1

    return v6
.end method
