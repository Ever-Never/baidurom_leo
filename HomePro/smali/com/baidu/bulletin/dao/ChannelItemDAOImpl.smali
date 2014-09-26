.class public Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;
.super Ljava/lang/Object;
.source "ChannelItemDAOImpl.java"

# interfaces
.implements Lcom/baidu/bulletin/dao/ChannelItemDAO;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mSession:Lcom/baidu/bulletin/database/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/baidu/bulletin/database/Session;

    const-class v1, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-direct {v0, p1, v1}, Lcom/baidu/bulletin/database/Session;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    .line 28
    return-void
.end method

.method private declared-synchronized queryChannelItem(Ljava/lang/String;[Ljava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 8
    .parameter "sql"
    .parameter "selectionArgs"

    .prologue
    .line 487
    monitor-enter p0

    const/4 v0, 0x0

    .line 488
    .local v0, array:[Lcom/baidu/bulletin/entity/ChannelItem;
    const/4 v1, 0x0

    .line 490
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v6, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-virtual {v6}, Lcom/baidu/bulletin/database/Session;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 491
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 492
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 493
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    const/4 v6, 0x0

    .line 506
    if-eqz v1, :cond_0

    .line 507
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 510
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v6

    .line 496
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-array v0, v6, [Lcom/baidu/bulletin/entity/ChannelItem;

    .line 497
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 498
    const/4 v4, 0x0

    .local v4, i:I
    move v5, v4

    .line 500
    .end local v4           #i:I
    .local v5, i:I
    :goto_1
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    iget-object v6, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v7, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v6, v1, v7}, Lcom/baidu/bulletin/database/Session;->getObjectFromCursor(Landroid/database/Cursor;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/bulletin/entity/ChannelItem;

    aput-object v6, v0, v5

    .line 501
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    if-nez v6, :cond_4

    .line 506
    if-eqz v1, :cond_2

    .line 507
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #i:I
    :cond_2
    :goto_2
    move-object v6, v0

    .line 510
    goto :goto_0

    .line 502
    :catch_0
    move-exception v3

    .line 503
    .local v3, e:Ljava/lang/Exception;
    :try_start_4
    sget-object v6, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->TAG:Ljava/lang/String;

    const-string v7, "queryChannelItem fail"

    invoke-static {v6, v7, v3}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 504
    const/4 v0, 0x0

    .line 506
    if-eqz v1, :cond_2

    .line 507
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 487
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 506
    :catchall_1
    move-exception v6

    if-eqz v1, :cond_3

    .line 507
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #i:I
    :cond_4
    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_1
.end method

.method private queryChannelItemByPageId(I)[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 5
    .parameter "pageId"

    .prologue
    .line 481
    iget-object v2, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v3, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v2, v3}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, tableName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " m WHERE m.imgDownloaded=1 AND m.pageID=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, spl:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->queryChannelItem(Ljava/lang/String;[Ljava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-virtual {v0}, Lcom/baidu/bulletin/database/Session;->close()V

    .line 35
    :cond_0
    return-void
.end method

.method public declared-synchronized delete(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .parameter "clazz"
    .parameter "selection"

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bulletin/database/Session;->delete(Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 1
    .parameter "channel"

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/database/Session;->save(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    monitor-exit p0

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert([Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 1
    .parameter "channels"

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/database/Session;->save([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insertDetail(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/baidu/bulletin/entity/AbstractDetailEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, entities:Ljava/util/List;,"Ljava/util/List<+Lcom/baidu/bulletin/entity/AbstractDetailEntity;>;"
    iget-object v0, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/database/Session;->saveSecondary([Ljava/lang/Object;)V

    .line 380
    return-void
.end method

.method public insertDetail([Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/database/Session;->saveSecondary([Ljava/lang/Object;)V

    .line 374
    return-void
.end method

.method public queryChannelItem(J)Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 6
    .parameter "_id"

    .prologue
    const/4 v5, 0x0

    .line 66
    iget-object v3, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v4, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v3, v4}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, tableName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m WHERE m._id=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, selectSQL:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {p0, v1, v3}, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->queryChannelItem(Ljava/lang/String;[Ljava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    .line 69
    .local v0, items:[Lcom/baidu/bulletin/entity/ChannelItem;
    if-eqz v0, :cond_0

    .line 70
    aget-object v3, v0, v5

    .line 72
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public declared-synchronized queryChannelItem(Ljava/lang/String;J)Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 6
    .parameter "channelId"
    .parameter "id"

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v4, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v3, v4}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, tableName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m WHERE m.id=? AND m.channelId=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, selectSQL:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->queryChannelItem(Ljava/lang/String;[Ljava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    .line 81
    .local v0, items:[Lcom/baidu/bulletin/entity/ChannelItem;
    if-eqz v0, :cond_0

    .line 82
    const/4 v3, 0x0

    aget-object v3, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :goto_0
    monitor-exit p0

    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 78
    .end local v0           #items:[Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v1           #selectSQL:Ljava/lang/String;
    .end local v2           #tableName:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized queryChannelItems(Ljava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 5
    .parameter "channelId"

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v4, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v3, v4}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, tableName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m WHERE m.channelId=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, selectSQL:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->queryChannelItem(Ljava/lang/String;[Ljava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 93
    .local v0, items:[Lcom/baidu/bulletin/entity/ChannelItem;
    if-eqz v0, :cond_0

    .line 96
    .end local v0           #items:[Lcom/baidu/bulletin/entity/ChannelItem;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0       #items:[Lcom/baidu/bulletin/entity/ChannelItem;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 90
    .end local v0           #items:[Lcom/baidu/bulletin/entity/ChannelItem;
    .end local v1           #selectSQL:Ljava/lang/String;
    .end local v2           #tableName:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public queryChannelItemsForCheck(JLjava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 5
    .parameter "id"
    .parameter "channelId"

    .prologue
    .line 475
    iget-object v2, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v3, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v2, v3}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 476
    .local v1, tableName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " m WHERE m.imgDownloaded=1 AND m.id>=? AND m.channelId=? ORDER BY m.id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, spl:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->queryChannelItem(Ljava/lang/String;[Ljava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v2

    return-object v2
.end method

.method public queryDetail(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 3
    .parameter "channel"

    .prologue
    .line 394
    new-instance v1, Lcom/baidu/bulletin/dao/QueryDetailFactory;

    invoke-direct {v1}, Lcom/baidu/bulletin/dao/QueryDetailFactory;-><init>()V

    .line 395
    .local v1, queryDetailFactory:Lcom/baidu/bulletin/dao/IQueryDetailFactory;
    invoke-interface {v1, p1}, Lcom/baidu/bulletin/dao/IQueryDetailFactory;->createQueryDetail(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/dao/IQueryDetail;

    move-result-object v0

    .line 396
    .local v0, queryDetail:Lcom/baidu/bulletin/dao/IQueryDetail;
    iget-object v2, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-interface {v0, v2, p1}, Lcom/baidu/bulletin/dao/IQueryDetail;->queryDetail(Lcom/baidu/bulletin/database/Session;Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/entity/ChannelItem;

    .line 397
    return-object p1
.end method

.method public declared-synchronized queryMaxId(Ljava/lang/Class;Ljava/lang/String;)J
    .locals 7
    .parameter "clazz"
    .parameter "channelId"

    .prologue
    .line 102
    monitor-enter p0

    const/4 v0, 0x0

    .line 104
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-virtual {v5, p1}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, tableName:Ljava/lang/String;
    iget-object v5, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-virtual {v5}, Lcom/baidu/bulletin/database/Session;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 107
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SELECT max(c.id) FROM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " c WHERE c.channelId=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, selectSQL:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 113
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 114
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 120
    if-eqz v0, :cond_0

    .line 121
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #selectSQL:Ljava/lang/String;
    .end local v4           #tableName:Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v5

    .line 120
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #selectSQL:Ljava/lang/String;
    .restart local v4       #tableName:Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 121
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #selectSQL:Ljava/lang/String;
    .end local v4           #tableName:Ljava/lang/String;
    :cond_2
    :goto_1
    const-wide/16 v5, 0x0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v5, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->TAG:Ljava/lang/String;

    const-string v6, "queryMaxIdByChannel fail"

    invoke-static {v5, v6, v2}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    if-eqz v0, :cond_2

    .line 121
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 102
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 120
    :catchall_1
    move-exception v5

    if-eqz v0, :cond_3

    .line 121
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized queryMaxPageId()I
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 424
    monitor-enter p0

    const/4 v1, 0x0

    .line 426
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v7, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v8, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v7, v8}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 427
    .local v5, tableName:Ljava/lang/String;
    iget-object v7, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-virtual {v7}, Lcom/baidu/bulletin/database/Session;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 428
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT max(pageID) FROM "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " m WHERE m.pageFixed=0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 429
    .local v4, sql:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 430
    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 431
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 432
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 433
    .local v0, count:I
    if-ltz v0, :cond_1

    .line 434
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    if-eqz v1, :cond_0

    .line 442
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    .end local v0           #count:I
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #sql:Ljava/lang/String;
    .end local v5           #tableName:Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 441
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #sql:Ljava/lang/String;
    .restart local v5       #tableName:Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 442
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #sql:Ljava/lang/String;
    .end local v5           #tableName:Ljava/lang/String;
    :cond_2
    :goto_1
    move v0, v6

    .line 444
    goto :goto_0

    .line 438
    :catch_0
    move-exception v3

    .line 439
    .local v3, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v7, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->TAG:Ljava/lang/String;

    const-string v8, "queryMaxPageId fail"

    invoke-static {v7, v8, v3}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 441
    if-eqz v1, :cond_2

    .line 442
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 424
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 441
    :catchall_1
    move-exception v6

    if-eqz v1, :cond_3

    .line 442
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public queryNeedBriefImageChannelItem()[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 5

    .prologue
    .line 128
    iget-object v2, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v3, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v2, v3}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, tableName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " m WHERE m.imgDownloaded=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, selectSQL:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->queryChannelItem(Ljava/lang/String;[Ljava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v2

    return-object v2
.end method

.method public queryNeedBriefImageChannelItemByPage(I)[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 5
    .parameter "postion"

    .prologue
    .line 135
    iget-object v2, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v3, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v2, v3}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, tableName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " m WHERE m.imgDownloaded=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, selectSQL:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->queryChannelItem(Ljava/lang/String;[Ljava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v2

    return-object v2
.end method

.method public queryNeedDetailChannelItem()[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 5

    .prologue
    .line 142
    iget-object v2, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v3, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v2, v3}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, tableName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " m WHERE m.detailDownloaded=?  ORDER BY m._ID DESC"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, selectSQL:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->queryChannelItem(Ljava/lang/String;[Ljava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v2

    return-object v2
.end method

.method public queryPageByPageId(I)[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 5
    .parameter "id"

    .prologue
    .line 449
    iget-object v2, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v3, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v2, v3}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, tableName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " c WHERE c.pageID=? ORDER BY c.pageCellIndex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, spl:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->queryChannelItem(Ljava/lang/String;[Ljava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v2

    return-object v2
.end method

.method public queryPageCount()I
    .locals 6

    .prologue
    .line 406
    iget-object v4, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-virtual {v4}, Lcom/baidu/bulletin/database/Session;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 408
    .local v1, database:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "SELECT count(*) FROM Channel c WHERE c.pageID>0 GROUP BY c.pageID"

    .line 409
    .local v3, sql:Ljava/lang/String;
    const/4 v0, 0x0

    .line 411
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 412
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 416
    if-eqz v0, :cond_0

    .line 417
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 419
    :cond_0
    :goto_0
    return v4

    .line 413
    :catch_0
    move-exception v2

    .line 414
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->TAG:Ljava/lang/String;

    const-string v5, "query page count fail"

    invoke-static {v4, v5, v2}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    if-eqz v0, :cond_1

    .line 417
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 419
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 416
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 417
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4
.end method

.method public queryRemoveFiles(JLjava/lang/String;)Ljava/util/List;
    .locals 16
    .parameter "id"
    .parameter "channelId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v12, fileNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 152
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v3, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v2, v3}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    .line 153
    .local v15, tableName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-virtual {v2}, Lcom/baidu/bulletin/database/Session;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 154
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT m._id,m.img,m.content FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " m WHERE m.imgDownloaded=1 AND m.id<? AND m.channelId=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 158
    .local v13, selectSQL:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {v4, v13, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 160
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 161
    sget-object v2, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIZE IS 0 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    if-eqz v10, :cond_0

    .line 243
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 245
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v13           #selectSQL:Ljava/lang/String;
    .end local v15           #tableName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v12

    .line 183
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v13       #selectSQL:Ljava/lang/String;
    .restart local v15       #tableName:Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 184
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 185
    .local v8, _id:I
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, img:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 187
    .local v9, content:Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_2
    const/4 v14, 0x0

    .line 192
    .local v14, storageFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "music"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 193
    new-instance v2, Lcom/baidu/bulletin/dao/MusicQueryDetailStorageFile;

    invoke-direct {v2, v9}, Lcom/baidu/bulletin/dao/MusicQueryDetailStorageFile;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/baidu/bulletin/dao/MusicQueryDetailStorageFile;->query()Ljava/util/List;

    move-result-object v14

    .line 201
    :cond_3
    :goto_2
    invoke-interface {v12, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 239
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v7           #img:Ljava/lang/String;
    .end local v8           #_id:I
    .end local v9           #content:Ljava/lang/String;
    .end local v13           #selectSQL:Ljava/lang/String;
    .end local v14           #storageFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #tableName:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 240
    .local v11, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    if-eqz v10, :cond_0

    .line 243
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 194
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v7       #img:Ljava/lang/String;
    .restart local v8       #_id:I
    .restart local v9       #content:Ljava/lang/String;
    .restart local v13       #selectSQL:Ljava/lang/String;
    .restart local v14       #storageFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15       #tableName:Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string v2, "baike"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "news"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 196
    :cond_5
    new-instance v2, Lcom/baidu/bulletin/dao/NativeQueryDetailStorageFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-direct {v2, v3, v4, v8, v7}, Lcom/baidu/bulletin/dao/NativeQueryDetailStorageFile;-><init>(Lcom/baidu/bulletin/database/Session;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/baidu/bulletin/dao/NativeQueryDetailStorageFile;->query()Ljava/util/List;

    move-result-object v14

    goto :goto_2

    .line 197
    :cond_6
    const-string v2, "app"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    new-instance v2, Lcom/baidu/bulletin/dao/AppQueryDetailStorageFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    int-to-long v5, v8

    invoke-direct/range {v2 .. v7}, Lcom/baidu/bulletin/dao/AppQueryDetailStorageFile;-><init>(Lcom/baidu/bulletin/database/Session;Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    invoke-virtual {v2}, Lcom/baidu/bulletin/dao/AppQueryDetailStorageFile;->query()Ljava/util/List;

    move-result-object v14

    goto :goto_2

    .line 238
    .end local v7           #img:Ljava/lang/String;
    .end local v8           #_id:I
    .end local v9           #content:Ljava/lang/String;
    .end local v14           #storageFileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    sget-object v2, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileNameList size is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 242
    if-eqz v10, :cond_0

    .line 243
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 242
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v13           #selectSQL:Ljava/lang/String;
    .end local v15           #tableName:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_8

    .line 243
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2
.end method

.method public queryRemoveId(JLjava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "id"
    .parameter "channelId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v3, removeIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 322
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v6, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v7, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v6, v7}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 323
    .local v5, tableName:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-virtual {v6}, Lcom/baidu/bulletin/database/Session;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 324
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT m._id FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " m WHERE m.id<? AND m.channelId=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 326
    .local v4, selectSQL:Ljava/lang/String;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    invoke-virtual {v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 328
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 338
    if-eqz v0, :cond_0

    .line 339
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 341
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #selectSQL:Ljava/lang/String;
    .end local v5           #tableName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 331
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #selectSQL:Ljava/lang/String;
    .restart local v5       #tableName:Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 332
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 335
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #selectSQL:Ljava/lang/String;
    .end local v5           #tableName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 336
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    if-eqz v0, :cond_0

    .line 339
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 334
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #selectSQL:Ljava/lang/String;
    .restart local v5       #tableName:Ljava/lang/String;
    :cond_2
    :try_start_3
    sget-object v6, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeIdList size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 338
    if-eqz v0, :cond_0

    .line 339
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 338
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #selectSQL:Ljava/lang/String;
    .end local v5           #tableName:Ljava/lang/String;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_3

    .line 339
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v6
.end method

.method public queryRemoveIdFitDatabase(JLjava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "id"
    .parameter "channelId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v3, removeIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 349
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v6, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v7, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v6, v7}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, tableName:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-virtual {v6}, Lcom/baidu/bulletin/database/Session;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 351
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT m._id FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " m WHERE m.id>=? AND m.channelId=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 353
    .local v4, selectSQL:Ljava/lang/String;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    invoke-virtual {v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 355
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 365
    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 368
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #selectSQL:Ljava/lang/String;
    .end local v5           #tableName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 358
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #selectSQL:Ljava/lang/String;
    .restart local v5       #tableName:Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 359
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 362
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #selectSQL:Ljava/lang/String;
    .end local v5           #tableName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 363
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 361
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #selectSQL:Ljava/lang/String;
    .restart local v5       #tableName:Ljava/lang/String;
    :cond_2
    :try_start_3
    sget-object v6, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeIdList size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 365
    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 365
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #selectSQL:Ljava/lang/String;
    .end local v5           #tableName:Ljava/lang/String;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_3

    .line 366
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v6
.end method

.method public querySameFileWithAttachement(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .parameter "id"
    .parameter "channelId"
    .parameter "filepath"

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 279
    .local v3, existsame:Z
    :try_start_0
    iget-object v10, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v11, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v10, v11}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    .line 280
    .local v9, tableName:Ljava/lang/String;
    iget-object v10, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-virtual {v10}, Lcom/baidu/bulletin/database/Session;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 281
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT m._id FROM "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " m WHERE m.id<? AND m.channelId=? ORDER BY m._ID DESC"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 283
    .local v8, selectSQL:Ljava/lang/String;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p3, v10, v11

    invoke-virtual {v1, v8, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 285
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_1

    .line 286
    const/4 v3, 0x0

    .line 307
    :goto_0
    sget-object v10, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "in querySameFileWithAttachement(), existsame:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 314
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #selectSQL:Ljava/lang/String;
    .end local v9           #tableName:Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 288
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #selectSQL:Ljava/lang/String;
    .restart local v9       #tableName:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    .line 289
    .local v4, max_id:I
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 290
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 291
    const/4 v10, 0x0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 294
    :cond_2
    iget-object v10, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v11, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;

    invoke-virtual {v10, v11}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    .line 296
    .local v7, secondaryTableName:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT m._id FROM "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " m WHERE m.type=\'image\' AND m.channelId>? AND m.data=?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, secondarySql:Ljava/lang/String;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p4, v10, v11

    invoke-virtual {v1, v6, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 300
    .local v5, secondaryCursor:Landroid/database/Cursor;
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_3

    .line 301
    const/4 v3, 0x0

    .line 305
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 308
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #max_id:I
    .end local v5           #secondaryCursor:Landroid/database/Cursor;
    .end local v6           #secondarySql:Ljava/lang/String;
    .end local v7           #secondaryTableName:Ljava/lang/String;
    .end local v8           #selectSQL:Ljava/lang/String;
    .end local v9           #tableName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 309
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    if-eqz v0, :cond_0

    .line 312
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 303
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #max_id:I
    .restart local v5       #secondaryCursor:Landroid/database/Cursor;
    .restart local v6       #secondarySql:Ljava/lang/String;
    .restart local v7       #secondaryTableName:Ljava/lang/String;
    .restart local v8       #selectSQL:Ljava/lang/String;
    .restart local v9       #tableName:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x1

    goto :goto_2

    .line 311
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #max_id:I
    .end local v5           #secondaryCursor:Landroid/database/Cursor;
    .end local v6           #secondarySql:Ljava/lang/String;
    .end local v7           #secondaryTableName:Ljava/lang/String;
    .end local v8           #selectSQL:Ljava/lang/String;
    .end local v9           #tableName:Ljava/lang/String;
    :catchall_0
    move-exception v10

    if-eqz v0, :cond_4

    .line 312
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v10
.end method

.method public querySameFileWithItem(JLjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "id"
    .parameter "channelId"
    .parameter "filepath"

    .prologue
    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 253
    .local v3, existsame:Z
    :try_start_0
    iget-object v6, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v7, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v6, v7}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 254
    .local v5, tableName:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-virtual {v6}, Lcom/baidu/bulletin/database/Session;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 255
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT m._id,m.img FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " m WHERE m.imgDownloaded=1 AND m.id>=? AND m.channelId=? AND m.img=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, selectSQL:Ljava/lang/String;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    const/4 v7, 0x2

    aput-object p4, v6, v7

    invoke-virtual {v1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 259
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 260
    const/4 v3, 0x0

    .line 264
    :goto_0
    sget-object v6, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "in queryIsSameFile(), existsame:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/bulletin/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 271
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #selectSQL:Ljava/lang/String;
    .end local v5           #tableName:Ljava/lang/String;
    :cond_0
    :goto_1
    return v3

    .line 262
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #selectSQL:Ljava/lang/String;
    .restart local v5       #tableName:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 265
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #selectSQL:Ljava/lang/String;
    .end local v5           #tableName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 266
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 268
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_2

    .line 269
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v6
.end method

.method public queryUnDoPageChannelItem()[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 4

    .prologue
    .line 468
    iget-object v2, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v3, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v2, v3}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, tableName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " m WHERE m.pageFixed=0 ORDER BY m.time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, spl:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->queryChannelItem(Ljava/lang/String;[Ljava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v2

    return-object v2
.end method

.method public queryUnfixedChannelItem()[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 4

    .prologue
    .line 461
    iget-object v2, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v3, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v2, v3}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 462
    .local v1, tableName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " m WHERE m.imgDownloaded=1 AND m.pageFixed=0 ORDER BY m.time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, spl:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->queryChannelItem(Ljava/lang/String;[Ljava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v2

    return-object v2
.end method

.method public queryUnpagedChannelItem()[Lcom/baidu/bulletin/entity/ChannelItem;
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->queryChannelItemByPageId(I)[Lcom/baidu/bulletin/entity/ChannelItem;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized update(Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 6
    .parameter "channel"

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    const-string v1, "channelId=? AND id=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/baidu/bulletin/entity/ChannelItem;->channelId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p1, Lcom/baidu/bulletin/entity/ChannelItem;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, p1, v1, v2}, Lcom/baidu/bulletin/database/Session;->update(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update([Lcom/baidu/bulletin/entity/ChannelItem;)V
    .locals 1
    .parameter "channels"

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/database/Session;->update([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateDetail(Lcom/baidu/bulletin/entity/AbstractDetailEntity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/database/Session;->updateSecondary(Ljava/lang/Object;)V

    .line 390
    return-void
.end method

.method public updateDetail(Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/baidu/bulletin/dao/ChannelItemDAOImpl;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-virtual {v0, p1}, Lcom/baidu/bulletin/database/Session;->updateSecondary(Ljava/lang/Object;)V

    .line 385
    return-void
.end method
