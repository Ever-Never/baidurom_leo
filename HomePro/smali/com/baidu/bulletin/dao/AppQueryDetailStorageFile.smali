.class public Lcom/baidu/bulletin/dao/AppQueryDetailStorageFile;
.super Ljava/lang/Object;
.source "AppQueryDetailStorageFile.java"

# interfaces
.implements Lcom/baidu/bulletin/dao/IQueryDetailStorageFile;


# instance fields
.field private mChannelImg:Ljava/lang/String;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mForignKey:J

.field private mSession:Lcom/baidu/bulletin/database/Session;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/database/Session;Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "db"
    .parameter "forignKey"
    .parameter "channelImg"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/baidu/bulletin/dao/AppQueryDetailStorageFile;->mSession:Lcom/baidu/bulletin/database/Session;

    .line 22
    iput-object p2, p0, Lcom/baidu/bulletin/dao/AppQueryDetailStorageFile;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 23
    iput-wide p3, p0, Lcom/baidu/bulletin/dao/AppQueryDetailStorageFile;->mForignKey:J

    .line 24
    iput-object p5, p0, Lcom/baidu/bulletin/dao/AppQueryDetailStorageFile;->mChannelImg:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public query()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .local v2, fileNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/baidu/bulletin/dao/AppQueryDetailStorageFile;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v7, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v6, v7}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, tableName:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/bulletin/dao/AppQueryDetailStorageFile;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v7, Lcom/baidu/bulletin/entity/ChannelItemAppList$Entity;

    invoke-virtual {v6, v7}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, appListTableName:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/bulletin/dao/AppQueryDetailStorageFile;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-virtual {v6}, Lcom/baidu/bulletin/database/Session;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 37
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT c.icon FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " m, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " c WHERE m._id=c.channelId AND m._id=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, secondaryAppDetailSqlString:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/bulletin/dao/AppQueryDetailStorageFile;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iget-wide v8, p0, Lcom/baidu/bulletin/dao/AppQueryDetailStorageFile;->mForignKey:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 45
    .local v0, appListSecondaryCursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 46
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, icon:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/baidu/bulletin/dao/AppQueryDetailStorageFile;->mChannelImg:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 49
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    .end local v3           #icon:Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 55
    return-object v2
.end method
