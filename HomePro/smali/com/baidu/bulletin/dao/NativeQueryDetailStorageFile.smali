.class public Lcom/baidu/bulletin/dao/NativeQueryDetailStorageFile;
.super Ljava/lang/Object;
.source "NativeQueryDetailStorageFile.java"

# interfaces
.implements Lcom/baidu/bulletin/dao/IQueryDetailStorageFile;


# instance fields
.field private mChannelImg:Ljava/lang/String;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mForignKey:I

.field private mSession:Lcom/baidu/bulletin/database/Session;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/database/Session;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V
    .locals 0
    .parameter "session"
    .parameter "db"
    .parameter "forignKey"
    .parameter "channelImg"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/baidu/bulletin/dao/NativeQueryDetailStorageFile;->mSession:Lcom/baidu/bulletin/database/Session;

    .line 27
    iput-object p2, p0, Lcom/baidu/bulletin/dao/NativeQueryDetailStorageFile;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 28
    iput p3, p0, Lcom/baidu/bulletin/dao/NativeQueryDetailStorageFile;->mForignKey:I

    .line 29
    iput-object p4, p0, Lcom/baidu/bulletin/dao/NativeQueryDetailStorageFile;->mChannelImg:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public query()Ljava/util/List;
    .locals 10
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
    const/4 v9, 0x0

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v1, fileNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/baidu/bulletin/dao/NativeQueryDetailStorageFile;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v7, Lcom/baidu/bulletin/entity/ChannelItem;

    invoke-virtual {v6, v7}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 38
    .local v5, tableName:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/bulletin/dao/NativeQueryDetailStorageFile;->mSession:Lcom/baidu/bulletin/database/Session;

    const-class v7, Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;

    invoke-virtual {v6, v7}, Lcom/baidu/bulletin/database/Session;->getTableNamefromClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, secondaryTableName:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/bulletin/dao/NativeQueryDetailStorageFile;->mSession:Lcom/baidu/bulletin/database/Session;

    invoke-virtual {v6}, Lcom/baidu/bulletin/database/Session;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT c.data FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " m, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " c WHERE m._id=c.channelId AND m._id=? AND c.type=\'image\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, secondarySql:Ljava/lang/String;
    iget-object v6, p0, Lcom/baidu/bulletin/dao/NativeQueryDetailStorageFile;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iget v8, p0, Lcom/baidu/bulletin/dao/NativeQueryDetailStorageFile;->mForignKey:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v6, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 51
    .local v2, secondaryCursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 52
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, data:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/baidu/bulletin/dao/NativeQueryDetailStorageFile;->mChannelImg:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 55
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    .end local v0           #data:Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 61
    return-object v1
.end method
