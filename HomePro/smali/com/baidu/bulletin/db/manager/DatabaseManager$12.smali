.class Lcom/baidu/bulletin/db/manager/DatabaseManager$12;
.super Lcom/baidu/bulletin/db/handler/SQLiteTask;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/db/manager/DatabaseManager;->updateOpItem(Lcom/baidu/bulletin/db/entity/OpItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

.field final synthetic val$opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/db/manager/DatabaseManager;Lcom/baidu/bulletin/db/entity/OpItemInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1082
    iput-object p1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    iput-object p2, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;->val$opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;

    invoke-direct {p0}, Lcom/baidu/bulletin/db/handler/SQLiteTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected performTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)Z
    .locals 13
    .parameter "db"
    .parameter "handler"

    .prologue
    .line 1085
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1086
    .local v9, cv:Landroid/content/ContentValues;
    const-string v0, "channel"

    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;->val$opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->channel:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    const-string v0, "imgheight"

    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;->val$opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imgHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1088
    const-string v0, "imgwidth"

    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;->val$opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imgWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1089
    const-string v0, "opid"

    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;->val$opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-wide v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->opId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1090
    const-string v0, "opkurl"

    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;->val$opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->opUrl:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-string v0, "packagename"

    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;->val$opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    const-string v0, "priority"

    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;->val$opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->priority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1093
    const-string v0, "showurl"

    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;->val$opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->showUrl:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    const-string v0, "text"

    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;->val$opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->text:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$200()J

    move-result-wide v11

    .line 1096
    .local v11, imgId:J
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    #getter for: Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    invoke-static {v0}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$100(Lcom/baidu/bulletin/db/manager/DatabaseManager;)Lcom/baidu/bulletin/db/handler/DBHandler;

    move-result-object v0

    const-string v1, "op"

    const/4 v2, 0x0

    const-string v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;->val$opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-wide v6, v6, Lcom/baidu/bulletin/db/entity/OpItemInfo;->_id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1100
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1101
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1102
    const-string v0, "imgId"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v11, v0

    .line 1104
    :cond_0
    if-eqz v8, :cond_1

    .line 1105
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1106
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;->val$opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v0, v0, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, v11, v0

    if-lez v0, :cond_2

    .line 1107
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1108
    .local v10, image:Landroid/content/ContentValues;
    const-string v0, "type"

    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;->val$opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget v1, v1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1109
    const-string v0, "size"

    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;->val$opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-wide v1, v1, Lcom/baidu/bulletin/db/entity/ImageInfo;->size:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1110
    const-string v0, "url"

    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;->val$opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const-string v0, "localpath"

    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;->val$opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v1, v1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

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

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/baidu/bulletin/db/handler/DBHandler;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1115
    .end local v10           #image:Landroid/content/ContentValues;
    :cond_2
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    #getter for: Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    invoke-static {v0}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$100(Lcom/baidu/bulletin/db/manager/DatabaseManager;)Lcom/baidu/bulletin/db/handler/DBHandler;

    move-result-object v0

    const-string v1, "op"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;->val$opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;

    iget-wide v5, v5, Lcom/baidu/bulletin/db/entity/OpItemInfo;->_id:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/baidu/bulletin/db/handler/DBHandler;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1117
    const/4 v0, 0x1

    return v0
.end method
