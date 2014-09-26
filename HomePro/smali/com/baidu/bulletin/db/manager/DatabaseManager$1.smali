.class Lcom/baidu/bulletin/db/manager/DatabaseManager$1;
.super Lcom/baidu/bulletin/db/handler/SQLiteTask;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/db/manager/DatabaseManager;->saveChannelItem(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
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
    .line 72
    iput-object p1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$1;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    iput-object p2, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$1;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-direct {p0}, Lcom/baidu/bulletin/db/handler/SQLiteTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected performTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)Z
    .locals 6
    .parameter "db"
    .parameter "handler"

    .prologue
    .line 77
    const-wide/16 v1, -0x1

    .line 78
    .local v1, insertedImgId:J
    iget-object v3, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$1;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v3, v3, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    if-eqz v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$1;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$1;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    #calls: Lcom/baidu/bulletin/db/manager/DatabaseManager;->insertImg(Lcom/baidu/bulletin/db/entity/ImageInfo;)J
    invoke-static {v3, v4}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$000(Lcom/baidu/bulletin/db/manager/DatabaseManager;Lcom/baidu/bulletin/db/entity/ImageInfo;)J

    move-result-wide v1

    .line 83
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "content"

    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$1;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v3, "channelId"

    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$1;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v3, "version"

    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$1;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-wide v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 87
    const-string v3, "title"

    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$1;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v3, "brief"

    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$1;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v3, "sourceUrl"

    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$1;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-object v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v3, "timestamp"

    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$1;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget-wide v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 91
    const-string v3, "imgWidth"

    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$1;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    const-string v3, "imgHeigh"

    iget-object v4, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$1;->val$channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    iget v4, v4, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v3, "imgId"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 95
    iget-object v3, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager$1;->this$0:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    #getter for: Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    invoke-static {v3}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->access$100(Lcom/baidu/bulletin/db/manager/DatabaseManager;)Lcom/baidu/bulletin/db/handler/DBHandler;

    move-result-object v3

    const-string v4, "channel_item"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Lcom/baidu/bulletin/db/handler/DBHandler;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 97
    const/4 v3, 0x1

    return v3
.end method
