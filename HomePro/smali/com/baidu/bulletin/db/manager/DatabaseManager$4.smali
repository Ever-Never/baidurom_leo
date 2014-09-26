.class Lcom/baidu/bulletin/db/manager/DatabaseManager$4;
.super Lcom/baidu/bulletin/db/handler/SQLiteTask;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/db/manager/DatabaseManager;->saveNewsDetail(Lcom/baidu/bulletin/db/entity/NewsDetailInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

.field final synthetic val$newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/db/manager/DatabaseManager;Lcom/baidu/bulletin/db/entity/NewsDetailInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$4;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    iput-object p2, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$4;->val$newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    invoke-direct {p0}, Lcom/baidu/bulletin/db/handler/SQLiteTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected performTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)Z
    .locals 8
    .parameter "db"
    .parameter "handler"

    .prologue
    const/4 v7, 0x0

    .line 465
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 466
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "data"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$4;->val$newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->data:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v4, "channelItemId"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$4;->val$newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    iget-wide v5, v5, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->channelItemId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 468
    const-string v4, "type"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$4;->val$newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    iget v5, v5, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 469
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$200()J

    move-result-wide v2

    .line 470
    .local v2, imgId:J
    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$4;->val$newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    iget-object v4, v4, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    if-eqz v4, :cond_0

    .line 471
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 472
    .local v1, image:Landroid/content/ContentValues;
    const-string v4, "type"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$4;->val$newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget v5, v5, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 473
    const-string v4, "size"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$4;->val$newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v5, v5, Lcom/baidu/bulletin/db/entity/ImageInfo;->size:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 474
    const-string v4, "url"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$4;->val$newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v4, "localpath"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$4;->val$newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$4;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    #getter for: Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    invoke-static {v4}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$100(Lcom/baidu/bulletin/db/manager/DatabaseManager;)Lcom/baidu/bulletin/db/handler/DBHandler;

    move-result-object v4

    const-string v5, "image"

    invoke-virtual {v4, v5, v7, v1}, Lcom/baidu/bulletin/db/handler/DBHandler;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 477
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 478
    const-string v4, "imgId"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 480
    .end local v1           #image:Landroid/content/ContentValues;
    :cond_0
    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$4;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    #getter for: Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    invoke-static {v4}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$100(Lcom/baidu/bulletin/db/manager/DatabaseManager;)Lcom/baidu/bulletin/db/handler/DBHandler;

    move-result-object v4

    const-string v5, "newsdetail"

    invoke-virtual {v4, v5, v7, v0}, Lcom/baidu/bulletin/db/handler/DBHandler;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 481
    const/4 v4, 0x1

    return v4
.end method
