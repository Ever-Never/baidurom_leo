.class public Lcom/baidu/bulletin/dao/AppListQueryDetail;
.super Ljava/lang/Object;
.source "AppListQueryDetail.java"

# interfaces
.implements Lcom/baidu/bulletin/dao/IQueryDetail;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppListQueryDetail"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queryDetail(Lcom/baidu/bulletin/database/Session;Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 10
    .parameter "session"
    .parameter "channelItem"

    .prologue
    .line 16
    invoke-virtual {p2}, Lcom/baidu/bulletin/entity/ChannelItem;->getPage()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 18
    invoke-virtual {p1}, Lcom/baidu/bulletin/database/Session;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 19
    .local v1, database:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 20
    .local v0, cursor:Landroid/database/Cursor;
    const-class v6, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;

    invoke-virtual {p1, v6}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 21
    .local v5, tableName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT c.* FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " c WHERE c.channelId=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 23
    .local v4, sql:Ljava/lang/String;
    const/4 v6, 0x1

    :try_start_0
    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/baidu/bulletin/entity/ChannelItem;->get_Id()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 25
    const-class v6, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;

    invoke-virtual {p1, v0, v6}, Lcom/baidu/bulletin/database/Session;->getObjectFromCursor(Landroid/database/Cursor;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;

    .line 27
    .local v3, entity:Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;
    invoke-virtual {p2, v3}, Lcom/baidu/bulletin/entity/ChannelItem;->addAppListEntitiy(Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    .end local v3           #entity:Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;
    :catch_0
    move-exception v2

    .line 30
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "AppListQueryDetail"

    const-string v7, ""

    invoke-static {v6, v7, v2}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 35
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-object p2

    .line 32
    :cond_1
    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 32
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_2

    .line 33
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v6
.end method
