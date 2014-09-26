.class Lcom/baidu/bulletin/db/manager/DatabaseManager$3;
.super Lcom/baidu/bulletin/db/handler/SQLiteTask;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/db/manager/DatabaseManager;->updateChannelItem(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

.field final synthetic val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/db/manager/DatabaseManager;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$3;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    iput-object p2, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$3;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-direct {p0}, Lcom/baidu/bulletin/db/handler/SQLiteTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected performTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)Z
    .locals 11
    .parameter "db"
    .parameter "handler"

    .prologue
    const/4 v10, 0x1

    .line 163
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$200()J

    move-result-wide v1

    .line 164
    .local v1, imgId:J
    iget-object v3, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$3;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    const-string v4, "channel_item"

    const-string v5, "imgId"

    iget-object v6, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$3;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-wide v6, v6, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    #calls: Lcom/baidu/bulletin/db/manager/DatabaseManager;->queryImgId(Ljava/lang/String;Ljava/lang/String;J)J
    invoke-static {v3, v4, v5, v6, v7}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$300(Lcom/baidu/bulletin/db/manager/DatabaseManager;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    .line 167
    iget-object v3, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$3;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v3, v3, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$3;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$3;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    #calls: Lcom/baidu/bulletin/db/manager/DatabaseManager;->updateImg(JLcom/baidu/bulletin/db/entity/ImageInfo;)J
    invoke-static {v3, v1, v2, v4}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$400(Lcom/baidu/bulletin/db/manager/DatabaseManager;JLcom/baidu/bulletin/db/entity/ImageInfo;)J

    .line 170
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 171
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "content"

    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$3;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v3, "channelId"

    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$3;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string v3, "version"

    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$3;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-wide v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 174
    const-string v3, "title"

    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$3;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v3, "brief"

    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$3;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v3, "sourceUrl"

    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$3;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v3, "timestamp"

    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$3;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-wide v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    const-string v3, "imgWidth"

    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$3;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    const-string v3, "imgHeigh"

    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$3;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    iget-object v3, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$3;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    #getter for: Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    invoke-static {v3}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$100(Lcom/baidu/bulletin/db/manager/DatabaseManager;)Lcom/baidu/bulletin/db/handler/DBHandler;

    move-result-object v3

    const-string v4, "channel_item"

    const-string v5, "_id = ?"

    new-array v6, v10, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$3;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-wide v8, v8, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/baidu/bulletin/db/handler/DBHandler;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 185
    return v10
.end method
