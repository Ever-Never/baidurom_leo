.class Lcom/baidu/bulletin/db/manager/DatabaseManager$6;
.super Lcom/baidu/bulletin/db/handler/SQLiteTask;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/db/manager/DatabaseManager;->updateNewsDetail(Lcom/baidu/bulletin/db/entity/NewsDetailInfo;)V
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
    .line 541
    iput-object p1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$6;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    iput-object p2, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$6;->val$newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    invoke-direct {p0}, Lcom/baidu/bulletin/db/handler/SQLiteTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected performTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)Z
    .locals 13
    .parameter "db"
    .parameter "handler"

    .prologue
    .line 545
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 546
    .local v9, cv:Landroid/content/ContentValues;
    const-string v0, "data"

    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$6;->val$newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->data:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v0, "type"

    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$6;->val$newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    iget v1, v1, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 548
    const-string v0, "channelItemId"

    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$6;->val$newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    iget-wide v1, v1, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->channelItemId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 549
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$6;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    #getter for: Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    invoke-static {v0}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$100(Lcom/baidu/bulletin/db/manager/DatabaseManager;)Lcom/baidu/bulletin/db/handler/DBHandler;

    move-result-object v0

    const-string v1, "newsdetail"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$6;->val$newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    iget-wide v5, v5, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->_id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/baidu/bulletin/db/handler/DBHandler;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$6;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    #getter for: Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    invoke-static {v0}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$100(Lcom/baidu/bulletin/db/manager/DatabaseManager;)Lcom/baidu/bulletin/db/handler/DBHandler;

    move-result-object v0

    const-string v1, "newsdetail"

    const/4 v2, 0x0

    const-string v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$6;->val$newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    iget-wide v6, v6, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->_id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 558
    .local v8, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$200()J

    move-result-wide v11

    .line 559
    .local v11, imgId:J
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 560
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 561
    const-string v0, "imgId"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v11, v0

    .line 563
    :cond_0
    if-eqz v8, :cond_1

    .line 564
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 565
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v11, v0

    if-lez v0, :cond_2

    .line 566
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 567
    .local v10, image:Landroid/content/ContentValues;
    const-string v0, "type"

    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$6;->val$newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget v1, v1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 568
    const-string v0, "size"

    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$6;->val$newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v1, v1, Lcom/baidu/bulletin/db/entity/ImageInfo;->size:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 569
    const-string v0, "url"

    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$6;->val$newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v0, "localpath"

    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$6;->val$newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$6;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    #getter for: Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    invoke-static {v0}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$100(Lcom/baidu/bulletin/db/manager/DatabaseManager;)Lcom/baidu/bulletin/db/handler/DBHandler;

    move-result-object v0

    const-string v1, "image"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v10, v2, v3}, Lcom/baidu/bulletin/db/handler/DBHandler;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 574
    .end local v10           #image:Landroid/content/ContentValues;
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
