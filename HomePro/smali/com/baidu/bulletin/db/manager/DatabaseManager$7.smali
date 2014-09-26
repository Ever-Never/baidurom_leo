.class Lcom/baidu/bulletin/db/manager/DatabaseManager$7;
.super Lcom/baidu/bulletin/db/handler/SQLiteTask;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/db/manager/DatabaseManager;->saveAppDetail(Lcom/baidu/bulletin/db/entity/AppDetailInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

.field final synthetic val$appDetailInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/db/manager/DatabaseManager;Lcom/baidu/bulletin/db/entity/AppDetailInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$7;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    iput-object p2, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$7;->val$appDetailInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;

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

    .line 712
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 713
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "appId"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$7;->val$appDetailInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;

    iget-wide v5, v5, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->appId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 714
    const-string v4, "channelItemId"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$7;->val$appDetailInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;

    iget-wide v5, v5, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->channelItemId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 715
    const-string v4, "appName"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$7;->val$appDetailInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string v4, "docId"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$7;->val$appDetailInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->docId:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v4, "downloadcount"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$7;->val$appDetailInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->downloadCount:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v4, "packageName"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$7;->val$appDetailInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v4, "score"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$7;->val$appDetailInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->score:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    const-string v4, "size"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$7;->val$appDetailInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->size:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$200()J

    move-result-wide v2

    .line 724
    .local v2, imgId:J
    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$7;->val$appDetailInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;

    iget-object v4, v4, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    if-eqz v4, :cond_0

    .line 725
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 726
    .local v1, image:Landroid/content/ContentValues;
    const-string v4, "type"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$7;->val$appDetailInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget v5, v5, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 727
    const-string v4, "size"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$7;->val$appDetailInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v5, v5, Lcom/baidu/bulletin/db/entity/ImageInfo;->size:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 728
    const-string v4, "url"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$7;->val$appDetailInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v4, "localpath"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$7;->val$appDetailInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$7;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    #getter for: Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    invoke-static {v4}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$100(Lcom/baidu/bulletin/db/manager/DatabaseManager;)Lcom/baidu/bulletin/db/handler/DBHandler;

    move-result-object v4

    const-string v5, "image"

    invoke-virtual {v4, v5, v7, v1}, Lcom/baidu/bulletin/db/handler/DBHandler;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 731
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 732
    const-string v4, "iconId"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 734
    .end local v1           #image:Landroid/content/ContentValues;
    :cond_0
    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$7;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    #getter for: Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    invoke-static {v4}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$100(Lcom/baidu/bulletin/db/manager/DatabaseManager;)Lcom/baidu/bulletin/db/handler/DBHandler;

    move-result-object v4

    const-string v5, "appdetail"

    invoke-virtual {v4, v5, v7, v0}, Lcom/baidu/bulletin/db/handler/DBHandler;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 735
    const/4 v4, 0x1

    return v4
.end method
