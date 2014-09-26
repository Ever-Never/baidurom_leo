.class Lcom/baidu/bulletin/db/manager/DatabaseManager$11;
.super Lcom/baidu/bulletin/db/handler/SQLiteTask;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/db/manager/DatabaseManager;->updateOpItem(Ljava/util/List;)V
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
    .line 1033
    iput-object p1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    iput-object p2, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->val$opItemInfos:Ljava/util/List;

    invoke-direct {p0}, Lcom/baidu/bulletin/db/handler/SQLiteTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected performTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)Z
    .locals 17
    .parameter "db"
    .parameter "handler"

    .prologue
    .line 1036
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_3

    .line 1037
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1038
    .local v10, cv:Landroid/content/ContentValues;
    const-string v2, "channel"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->channel:Ljava/lang/String;

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const-string v2, "imgheight"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imgHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1040
    const-string v2, "imgwidth"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imgWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1041
    const-string v2, "opid"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-wide v3, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->opId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1042
    const-string v2, "opkurl"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->opUrl:Ljava/lang/String;

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    const-string v2, "packagename"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    const-string v2, "priority"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->priority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1045
    const-string v2, "showurl"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->showUrl:Ljava/lang/String;

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string v2, "text"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->text:Ljava/lang/String;

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const-string v2, "topic"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->topic:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1048
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$200()J

    move-result-wide v13

    .line 1049
    .local v13, imgId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    #getter for: Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    invoke-static {v1}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$100(Lcom/baidu/bulletin/db/manager/DatabaseManager;)Lcom/baidu/bulletin/db/handler/DBHandler;

    move-result-object v1

    const-string v2, "op"

    const/4 v3, 0x0

    const-string v4, "_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-wide v15, v6, Lcom/baidu/bulletin/db/entity/OpItemInfo;->_id:J

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1053
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1054
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1055
    const-string v1, "imgId"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v13, v1

    .line 1057
    :cond_0
    if-eqz v9, :cond_1

    .line 1058
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1059
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x0

    cmp-long v1, v13, v1

    if-lez v1, :cond_2

    .line 1060
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1061
    .local v12, image:Landroid/content/ContentValues;
    const-string v2, "type"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget v1, v1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1062
    const-string v2, "size"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v3, v1, Lcom/baidu/bulletin/db/entity/ImageInfo;->size:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1063
    const-string v2, "url"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v12, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    const-string v2, "localpath"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    invoke-virtual {v12, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    #getter for: Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    invoke-static {v1}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$100(Lcom/baidu/bulletin/db/manager/DatabaseManager;)Lcom/baidu/bulletin/db/handler/DBHandler;

    move-result-object v1

    const-string v2, "image"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v10, v3, v4}, Lcom/baidu/bulletin/db/handler/DBHandler;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1068
    .end local v12           #image:Landroid/content/ContentValues;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    #getter for: Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    invoke-static {v1}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$100(Lcom/baidu/bulletin/db/manager/DatabaseManager;)Lcom/baidu/bulletin/db/handler/DBHandler;

    move-result-object v2

    const-string v3, "op"

    const-string v4, "_id = ?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;->val$opItemInfos:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-wide v7, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->_id:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v10, v4, v5}, Lcom/baidu/bulletin/db/handler/DBHandler;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1036
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1071
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v13           #imgId:J
    :cond_3
    const/4 v1, 0x1

    return v1
.end method
