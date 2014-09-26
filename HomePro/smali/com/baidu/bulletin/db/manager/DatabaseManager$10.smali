.class Lcom/baidu/bulletin/db/manager/DatabaseManager$10;
.super Lcom/baidu/bulletin/db/handler/SQLiteTask;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/db/manager/DatabaseManager;->saveOpItems(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

.field final synthetic val$opItemInfos:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/db/manager/DatabaseManager;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 994
    iput-object p1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    iput-object p2, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;->val$opItemInfos:Ljava/util/List;

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

    .line 997
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 998
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 999
    .local v0, cv:Landroid/content/ContentValues;
    const-string v6, "channel"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;->channel:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const-string v6, "imgheight"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget v5, v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imgHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1001
    const-string v6, "imgwidth"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget v5, v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imgWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1002
    const-string v6, "opid"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-wide v7, v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;->opId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1003
    const-string v6, "opkurl"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;->opUrl:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    const-string v6, "packagename"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    const-string v6, "priority"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget v5, v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;->priority:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1006
    const-string v6, "showurl"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;->showUrl:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const-string v6, "text"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;->text:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const-string v6, "topic"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget v5, v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;->topic:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1009
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$200()J

    move-result-wide v3

    .line 1010
    .local v3, imgId:J
    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    if-eqz v5, :cond_0

    .line 1011
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1012
    .local v2, image:Landroid/content/ContentValues;
    const-string v6, "type"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget v5, v5, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1013
    const-string v6, "size"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v7, v5, Lcom/baidu/bulletin/db/entity/ImageInfo;->size:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1014
    const-string v6, "url"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const-string v6, "localpath"

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v5, v5, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    #getter for: Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    invoke-static {v5}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$100(Lcom/baidu/bulletin/db/manager/DatabaseManager;)Lcom/baidu/bulletin/db/handler/DBHandler;

    move-result-object v5

    const-string v6, "image"

    invoke-virtual {v5, v6, v9, v2}, Lcom/baidu/bulletin/db/handler/DBHandler;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 1017
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 1018
    const-string v5, "imgId"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1020
    .end local v2           #image:Landroid/content/ContentValues;
    :cond_0
    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    #getter for: Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    invoke-static {v5}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$100(Lcom/baidu/bulletin/db/manager/DatabaseManager;)Lcom/baidu/bulletin/db/handler/DBHandler;

    move-result-object v5

    const-string v6, "op"

    invoke-virtual {v5, v6, v9, v0}, Lcom/baidu/bulletin/db/handler/DBHandler;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 997
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1022
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v3           #imgId:J
    :cond_1
    const/4 v5, 0x1

    return v5
.end method
