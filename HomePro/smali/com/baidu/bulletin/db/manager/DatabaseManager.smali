.class public Lcom/baidu/bulletin/db/manager/DatabaseManager;
.super Ljava/lang/Object;
.source "DatabaseManager.java"

# interfaces
.implements Lcom/baidu/bulletin/db/manager/IDatabaseManager;


# static fields
.field public static final ASC:I = 0x1

.field public static final DESC:I

.field private static ID_DEFALUT:J

.field private static final TAG:Ljava/lang/String;

.field private static volatile _INSTANCE:Lcom/baidu/bulletin/db/manager/DatabaseManager;


# instance fields
.field private mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-class v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    .line 39
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->ID_DEFALUT:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/baidu/bulletin/db/handler/DBHandler;

    invoke-direct {v0, p1}, Lcom/baidu/bulletin/db/handler/DBHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/db/manager/DatabaseManager;Lcom/baidu/bulletin/db/entity/ImageInfo;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->insertImg(Lcom/baidu/bulletin/db/entity/ImageInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/db/manager/DatabaseManager;)Lcom/baidu/bulletin/db/handler/DBHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    return-object v0
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 34
    sget-wide v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->ID_DEFALUT:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/baidu/bulletin/db/manager/DatabaseManager;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->queryImgId(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/baidu/bulletin/db/manager/DatabaseManager;JLcom/baidu/bulletin/db/entity/ImageInfo;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->updateImg(JLcom/baidu/bulletin/db/entity/ImageInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method private deleteImg(J)V
    .locals 6
    .parameter "deleteKey"

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v1, "image"

    const-string v2, "_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/bulletin/db/handler/DBHandler;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1256
    return-void
.end method

.method public static getInstance()Lcom/baidu/bulletin/db/manager/DatabaseManager;
    .locals 3

    .prologue
    .line 45
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->_INSTANCE:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lcom/baidu/bulletin/db/manager/DatabaseManager;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->_INSTANCE:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;

    invoke-static {}, Lcom/baidu/launcher/app/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/baidu/bulletin/db/manager/DatabaseManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->_INSTANCE:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->_INSTANCE:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private insertImg(Lcom/baidu/bulletin/db/entity/ImageInfo;)J
    .locals 6
    .parameter "imageInfo"

    .prologue
    .line 1238
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1239
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "type"

    iget v4, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1240
    const-string v3, "url"

    iget-object v4, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    const-string v3, "localpath"

    iget-object v4, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    const-string v3, "size"

    iget-wide v4, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1244
    iget-object v3, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v4, "image"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v0}, Lcom/baidu/bulletin/db/handler/DBHandler;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 1250
    .local v1, imgId:J
    return-wide v1
.end method

.method private queryImg(J)Lcom/baidu/bulletin/db/entity/ImageInfo;
    .locals 11
    .parameter "queryKey"

    .prologue
    .line 1261
    const/4 v9, 0x0

    .line 1263
    .local v9, imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    const/4 v8, 0x0

    .line 1267
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v1, "image"

    const/4 v2, 0x0

    const-string v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1271
    if-eqz v8, :cond_2

    move-object v10, v9

    .line 1273
    .end local v9           #imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    .local v10, imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1274
    new-instance v9, Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-direct {v9}, Lcom/baidu/bulletin/db/entity/ImageInfo;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1275
    .end local v10           #imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    .restart local v9       #imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    :try_start_2
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v9, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    .line 1277
    const-string v0, "type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgType:I

    .line 1279
    const-string v0, "url"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    .line 1281
    const-string v0, "localpath"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    .line 1283
    const-string v0, "size"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/baidu/bulletin/db/entity/ImageInfo;->size:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v10, v9

    .end local v9           #imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    .restart local v10       #imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    goto :goto_0

    .line 1290
    .end local v10           #imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    .restart local v9       #imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v8, :cond_0

    .line 1291
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1290
    :cond_0
    throw v0

    .end local v9           #imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    .restart local v10       #imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    :cond_1
    move-object v9, v10

    .end local v10           #imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    .restart local v9       #imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    :cond_2
    if-eqz v8, :cond_3

    .line 1291
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1295
    :cond_3
    return-object v9

    .line 1290
    .end local v9           #imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    .restart local v10       #imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10           #imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    .restart local v9       #imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    goto :goto_1
.end method

.method private queryImgId(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 11
    .parameter "tableName"
    .parameter "imgIdColumn"
    .parameter "queryKey"

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1206
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    new-array v2, v1, [Ljava/lang/String;

    aput-object p2, v2, v6

    const-string v3, "_id = ? "

    new-array v4, v1, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    move-object v1, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1212
    .local v8, cursor:Landroid/database/Cursor;
    const-wide/16 v9, -0x1

    .line 1213
    .local v9, imgId:J
    if-eqz v8, :cond_1

    .line 1214
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1215
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1216
    invoke-interface {v8, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1218
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1220
    :cond_1
    return-wide v9
.end method

.method private updateImg(JLcom/baidu/bulletin/db/entity/ImageInfo;)J
    .locals 9
    .parameter "updateKey"
    .parameter "imageInfo"

    .prologue
    .line 1299
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1300
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "type"

    iget v4, p3, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1301
    const-string v3, "url"

    iget-object v4, p3, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const-string v3, "localpath"

    iget-object v4, p3, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    const-string v3, "size"

    iget-wide v4, p3, Lcom/baidu/bulletin/db/entity/ImageInfo;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1304
    iget-object v3, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v4, "image"

    const-string v5, "_id = ? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/baidu/bulletin/db/handler/DBHandler;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v1, v3

    .line 1310
    .local v1, retImgId:J
    return-wide v1
.end method

.method private updateImgId(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 6
    .parameter "tableName"
    .parameter "imgIdColumn"
    .parameter "imgId"
    .parameter "updateKey"

    .prologue
    .line 1225
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1226
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "imgId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1227
    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v2, "_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/baidu/bulletin/db/handler/DBHandler;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1229
    return-void
.end method


# virtual methods
.method public deleteChannelItem(IJJ)V
    .locals 6
    .parameter "channelId"
    .parameter "minVersion"
    .parameter "maxVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 1449
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteChannelItem. channelId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", minVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v1, "channel_item"

    const-string v2, "channelId = ? AND version >= ? AND version <= ? "

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/bulletin/db/handler/DBHandler;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1459
    return-void
.end method

.method public deleteChannelItemEqualLess(IJI)V
    .locals 15
    .parameter "channelId"
    .parameter "version"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 1403
    sget-object v2, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteChannelItemLess. channelId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    const/4 v10, 0x0

    .line 1407
    .local v10, cursor:Landroid/database/Cursor;
    const-wide/16 v13, 0x0

    .line 1408
    .local v13, minVersion:J
    const-wide/16 v11, 0x0

    .line 1410
    .local v11, maxVersion:J
    :try_start_0
    const-string v9, "version DESC "

    .line 1411
    .local v9, orderBy:Ljava/lang/String;
    const/4 v2, -0x1

    move/from16 v0, p4

    if-eq v0, v2, :cond_0

    .line 1412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LIMIT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1414
    :cond_0
    iget-object v2, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v3, "channel_item"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "version"

    aput-object v6, v4, v5

    const-string v5, "channelId = ? AND version <= ? "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1421
    if-eqz v10, :cond_1

    .line 1422
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1423
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1424
    const-string v2, "version"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1427
    invoke-interface {v10}, Landroid/database/Cursor;->moveToLast()Z

    .line 1428
    const-string v2, "version"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v13

    .line 1433
    :cond_1
    if-eqz v10, :cond_2

    .line 1434
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1437
    :cond_2
    iget-object v2, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v3, "channel_item"

    const-string v4, "channelId = ? AND version >= ? AND version <= ? "

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/baidu/bulletin/db/handler/DBHandler;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1443
    return-void

    .line 1433
    .end local v9           #orderBy:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_3

    .line 1434
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1433
    :cond_3
    throw v2
.end method

.method public declared-synchronized deleteChannelItemEqualMore(IJI)V
    .locals 15
    .parameter "channelId"
    .parameter "version"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 1356
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteChannelItemMore. channelId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", count ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1360
    const/4 v10, 0x0

    .line 1361
    .local v10, cursor:Landroid/database/Cursor;
    const-wide/16 v13, 0x0

    .line 1362
    .local v13, minVersion:J
    const-wide/16 v11, 0x0

    .line 1364
    .local v11, maxVersion:J
    :try_start_1
    const-string v9, "version ASC "

    .line 1365
    .local v9, orderBy:Ljava/lang/String;
    const/4 v2, -0x1

    move/from16 v0, p4

    if-eq v0, v2, :cond_0

    .line 1366
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LIMIT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1368
    :cond_0
    iget-object v2, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v3, "channel_item"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "version"

    aput-object v6, v4, v5

    const-string v5, "channelId = ? AND version >= ? "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1375
    if-eqz v10, :cond_1

    .line 1376
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1377
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1378
    const-string v2, "version"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1381
    invoke-interface {v10}, Landroid/database/Cursor;->moveToLast()Z

    .line 1382
    const-string v2, "version"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v11

    .line 1387
    :cond_1
    if-eqz v10, :cond_2

    .line 1388
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1391
    :cond_2
    iget-object v2, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v3, "channel_item"

    const-string v4, "channelId = ? AND version >= ? AND version <= ? "

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/baidu/bulletin/db/handler/DBHandler;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1397
    monitor-exit p0

    return-void

    .line 1387
    .end local v9           #orderBy:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_3

    .line 1388
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1387
    :cond_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1356
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #maxVersion:J
    .end local v13           #minVersion:J
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public insterImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)J
    .locals 2
    .parameter "imageInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 1233
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->insertImg(Lcom/baidu/bulletin/db/entity/ImageInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method public queryAllImage()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ImageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 421
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    const-string v1, "queryAllImage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v1, "image"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 426
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 427
    .local v10, imageInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ImageInfo;>;"
    if-eqz v8, :cond_1

    .line 428
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 429
    new-instance v10, Ljava/util/ArrayList;

    .end local v10           #imageInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ImageInfo;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .restart local v10       #imageInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ImageInfo;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    new-instance v9, Lcom/baidu/bulletin/db/entity/ImageInfo;

    invoke-direct {v9}, Lcom/baidu/bulletin/db/entity/ImageInfo;-><init>()V

    .line 433
    .local v9, imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v9, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    .line 435
    const-string v0, "type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v9, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgType:I

    .line 437
    const-string v0, "url"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    .line 439
    const-string v0, "localpath"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    .line 441
    const-string v0, "size"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/baidu/bulletin/db/entity/ImageInfo;->size:J

    .line 444
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 447
    .end local v9           #imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 450
    :cond_1
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryImage. ret imageInfos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-object v10
.end method

.method public declared-synchronized queryAppDetailByDetailId(I)Lcom/baidu/bulletin/db/entity/AppDetailInfo;
    .locals 14
    .parameter "appDetailId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 922
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryAppDetailByDetailId. appDetailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const/4 v8, 0x0

    .line 924
    .local v8, appItemInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    if-eqz v0, :cond_3

    .line 925
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v1, "appdetail"

    const/4 v2, 0x0

    const-string v3, "appId = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 929
    .local v9, cursor:Landroid/database/Cursor;
    sget-wide v11, Lcom/baidu/bulletin/db/manager/DatabaseManager;->ID_DEFALUT:J

    .line 930
    .local v11, imgId:J
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 931
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 932
    new-instance v8, Lcom/baidu/bulletin/db/entity/AppDetailInfo;

    .end local v8           #appItemInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;
    invoke-direct {v8}, Lcom/baidu/bulletin/db/entity/AppDetailInfo;-><init>()V

    .line 933
    .restart local v8       #appItemInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;
    const-string v0, "appId"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v8, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->appId:J

    .line 935
    const-string v0, "appName"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->appName:Ljava/lang/String;

    .line 937
    const-string v0, "docId"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->docId:Ljava/lang/String;

    .line 939
    const-string v0, "downloadcount"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->downloadCount:Ljava/lang/String;

    .line 941
    const-string v0, "packageName"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->packageName:Ljava/lang/String;

    .line 943
    const-string v0, "score"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->score:Ljava/lang/String;

    .line 945
    const-string v0, "size"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->size:Ljava/lang/String;

    .line 947
    const-string v0, "packageName"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->packageName:Ljava/lang/String;

    .line 949
    const-string v0, "channelItemId"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->channelItemId:J

    .line 951
    const-string v0, "iconId"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 953
    const/4 v13, 0x0

    .line 954
    .local v13, imgInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    const-wide/16 v0, 0x0

    cmp-long v0, v11, v0

    if-lez v0, :cond_1

    .line 955
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v1, "image"

    const/4 v2, 0x0

    const-string v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 959
    .local v10, imgCursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 960
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 961
    new-instance v13, Lcom/baidu/bulletin/db/entity/ImageInfo;

    .end local v13           #imgInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    invoke-direct {v13}, Lcom/baidu/bulletin/db/entity/ImageInfo;-><init>()V

    .line 962
    .restart local v13       #imgInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v13, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    .line 964
    const-string v0, "localpath"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    .line 966
    const-string v0, "type"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v13, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgType:I

    .line 968
    const-string v0, "url"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    .line 970
    const-string v0, "size"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v13, Lcom/baidu/bulletin/db/entity/ImageInfo;->size:J

    .line 974
    :cond_0
    if-eqz v10, :cond_1

    .line 975
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 979
    .end local v10           #imgCursor:Landroid/database/Cursor;
    :cond_1
    iput-object v13, v8, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 981
    .end local v13           #imgInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    :cond_2
    if-eqz v9, :cond_3

    .line 982
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 985
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #imgId:J
    :cond_3
    monitor-exit p0

    return-object v8

    .line 922
    .end local v8           #appItemInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryAppDetailByItemId(I)Ljava/util/List;
    .locals 17
    .parameter "channelItemId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/AppDetailInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 846
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryAppDetailByItemId. channelItemId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v9, 0x0

    .line 848
    .local v9, appItemInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;
    const/4 v10, 0x0

    .line 849
    .local v10, appList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/AppDetailInfo;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    if-eqz v1, :cond_3

    .line 850
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v2, "appdetail"

    const/4 v3, 0x0

    const-string v4, "channelItemId = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 854
    .local v11, cursor:Landroid/database/Cursor;
    sget-wide v14, Lcom/baidu/bulletin/db/manager/DatabaseManager;->ID_DEFALUT:J

    .line 855
    .local v14, imgId:J
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 856
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 857
    new-instance v10, Ljava/util/ArrayList;

    .end local v10           #appList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/AppDetailInfo;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 858
    .restart local v10       #appList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/AppDetailInfo;>;"
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v12, v1, :cond_2

    .line 859
    new-instance v9, Lcom/baidu/bulletin/db/entity/AppDetailInfo;

    .end local v9           #appItemInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;
    invoke-direct {v9}, Lcom/baidu/bulletin/db/entity/AppDetailInfo;-><init>()V

    .line 860
    .restart local v9       #appItemInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;
    const-string v1, "appId"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v9, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->appId:J

    .line 862
    const-string v1, "appName"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->appName:Ljava/lang/String;

    .line 864
    const-string v1, "docId"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->docId:Ljava/lang/String;

    .line 866
    const-string v1, "downloadcount"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->downloadCount:Ljava/lang/String;

    .line 868
    const-string v1, "packageName"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->packageName:Ljava/lang/String;

    .line 870
    const-string v1, "score"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->score:Ljava/lang/String;

    .line 872
    const-string v1, "size"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->size:Ljava/lang/String;

    .line 874
    const-string v1, "packageName"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->packageName:Ljava/lang/String;

    .line 876
    const-string v1, "_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v9, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->_id:J

    .line 878
    move/from16 v0, p1

    int-to-long v1, v0

    iput-wide v1, v9, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->channelItemId:J

    .line 879
    const-string v1, "iconId"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 881
    const/16 v16, 0x0

    .line 882
    .local v16, imgInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    const-wide/16 v1, 0x0

    cmp-long v1, v14, v1

    if-lez v1, :cond_1

    .line 883
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v2, "image"

    const/4 v3, 0x0

    const-string v4, "_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 888
    .local v13, imgCursor:Landroid/database/Cursor;
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 889
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 890
    new-instance v16, Lcom/baidu/bulletin/db/entity/ImageInfo;

    .end local v16           #imgInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    invoke-direct/range {v16 .. v16}, Lcom/baidu/bulletin/db/entity/ImageInfo;-><init>()V

    .line 891
    .restart local v16       #imgInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    const-string v1, "_id"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    move-object/from16 v0, v16

    iput-wide v1, v0, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    .line 893
    const-string v1, "localpath"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    .line 895
    const-string v1, "type"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    move-object/from16 v0, v16

    iput v1, v0, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgType:I

    .line 897
    const-string v1, "url"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    .line 899
    const-string v1, "size"

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    move-object/from16 v0, v16

    iput-wide v1, v0, Lcom/baidu/bulletin/db/entity/ImageInfo;->size:J

    .line 903
    :cond_0
    if-eqz v13, :cond_1

    .line 904
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 908
    .end local v13           #imgCursor:Landroid/database/Cursor;
    :cond_1
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 909
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 858
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 913
    .end local v12           #i:I
    .end local v16           #imgInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    :cond_2
    if-eqz v11, :cond_3

    .line 914
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 917
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v14           #imgId:J
    :cond_3
    monitor-exit p0

    return-object v10

    .line 846
    .end local v9           #appItemInfo:Lcom/baidu/bulletin/db/entity/AppDetailInfo;
    .end local v10           #appList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/AppDetailInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized queryChanelItemMaxVersion(I)J
    .locals 11
    .parameter "topic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 1316
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryChanelItemMaxVersion. topic = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    const-wide/16 v9, 0x0

    .line 1318
    .local v9, ret:J
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v1, "channel_item"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MAX(version)"

    aput-object v4, v2, v3

    const-string v3, "channelId = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1322
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1323
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1324
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1325
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1327
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1329
    :cond_1
    monitor-exit p0

    return-wide v9

    .line 1316
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #ret:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryChanelItemMinVersion(I)J
    .locals 11
    .parameter "topic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 1335
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryChanelItemMaxVersion. topic = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    const-wide/16 v9, 0x0

    .line 1337
    .local v9, ret:J
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v1, "channel_item"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MIN(version)"

    aput-object v4, v2, v3

    const-string v3, "channelId = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1341
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1342
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1343
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1344
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1346
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1348
    :cond_1
    monitor-exit p0

    return-wide v9

    .line 1335
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #ret:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryChannelItem(J)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .locals 12
    .parameter "channelItemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 193
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryChannelItem. channelItemId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v8, 0x0

    .line 196
    .local v8, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 236
    :goto_0
    monitor-exit p0

    return-object v0

    .line 199
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v1, "channel_item"

    const/4 v2, 0x0

    const-string v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 203
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 204
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 205
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 207
    new-instance v8, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    .end local v8           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    invoke-direct {v8}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;-><init>()V

    .line 208
    .restart local v8       #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, v8, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    .line 210
    const-string v0, "content"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    .line 212
    const-string v0, "channelId"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    .line 214
    const-string v0, "version"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    .line 216
    const-string v0, "title"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    .line 218
    const-string v0, "brief"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    .line 220
    const-string v0, "timestamp"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->timestamp:J

    .line 222
    const-string v0, "sourceUrl"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    .line 224
    const-string v0, "imgWidth"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    .line 226
    const-string v0, "imgHeigh"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    .line 228
    const-string v0, "imgId"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 230
    .local v10, queryImgId:J
    invoke-direct {p0, v10, v11}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->queryImg(J)Lcom/baidu/bulletin/db/entity/ImageInfo;

    move-result-object v0

    iput-object v0, v8, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 232
    .end local v10           #queryImgId:J
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_2
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryChannelItem. ret channelItemInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v8

    .line 236
    goto/16 :goto_0

    .line 193
    .end local v8           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v9           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public queryChannelItem(IJII)Ljava/util/List;
    .locals 15
    .parameter "channelId"
    .parameter "version"
    .parameter "maxcount"
    .parameter "order"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJII)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 243
    sget-object v2, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryChannelItem. channelId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", maxcount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", order = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v11, 0x0

    .line 252
    .local v11, channelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    .line 253
    const-string v5, "channelId = ? "

    .line 254
    .local v5, selection:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 272
    .local v6, selectionArgs:[Ljava/lang/String;
    :goto_0
    if-nez p5, :cond_4

    .line 273
    const-string v9, "version DESC "

    .line 280
    .local v9, orderBy:Ljava/lang/String;
    :goto_1
    const/4 v2, -0x1

    move/from16 v0, p4

    if-eq v0, v2, :cond_0

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "LIMIT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 284
    :cond_0
    iget-object v2, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v3, "channel_item"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 287
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_7

    .line 288
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 289
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #channelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .restart local v11       #channelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_6

    .line 292
    new-instance v10, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-direct {v10}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;-><init>()V

    .line 294
    .local v10, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    const-string v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v10, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    .line 296
    const-string v2, "content"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    .line 298
    const-string v2, "channelId"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v10, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    .line 300
    const-string v2, "version"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    .line 302
    const-string v2, "title"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    .line 304
    const-string v2, "brief"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    .line 306
    const-string v2, "timestamp"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v10, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->timestamp:J

    .line 308
    const-string v2, "sourceUrl"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    .line 310
    const-string v2, "imgWidth"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v10, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    .line 312
    const-string v2, "imgHeigh"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v10, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    .line 314
    const-string v2, "imgId"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 316
    .local v13, queryImgId:J
    invoke-direct {p0, v13, v14}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->queryImg(J)Lcom/baidu/bulletin/db/entity/ImageInfo;

    move-result-object v2

    iput-object v2, v10, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 318
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_2

    .line 256
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v9           #orderBy:Ljava/lang/String;
    .end local v10           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v12           #cursor:Landroid/database/Cursor;
    .end local v13           #queryImgId:J
    :cond_1
    if-nez p5, :cond_2

    .line 257
    const-string v5, "channelId = ? and version < ? "

    .line 259
    .restart local v5       #selection:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .restart local v6       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_0

    .line 261
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_3

    .line 262
    const-string v5, "channelId = ? and version > ? "

    .line 264
    .restart local v5       #selection:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .restart local v6       #selectionArgs:[Ljava/lang/String;
    goto/16 :goto_0

    .line 268
    .end local v5           #selection:Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/baidu/bulletin/db/exception/DatabaseException;

    const-string v3, "argument is invalid."

    invoke-direct {v2, v3}, Lcom/baidu/bulletin/db/exception/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 274
    .restart local v5       #selection:Ljava/lang/String;
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, p5

    if-ne v0, v2, :cond_5

    .line 275
    const-string v9, "version ASC "

    .restart local v9       #orderBy:Ljava/lang/String;
    goto/16 :goto_1

    .line 277
    .end local v9           #orderBy:Ljava/lang/String;
    :cond_5
    new-instance v2, Lcom/baidu/bulletin/db/exception/DatabaseException;

    const-string v3, "argument is invalid."

    invoke-direct {v2, v3}, Lcom/baidu/bulletin/db/exception/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 321
    .restart local v9       #orderBy:Ljava/lang/String;
    .restart local v12       #cursor:Landroid/database/Cursor;
    :cond_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 324
    :cond_7
    sget-object v2, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryChannelItem. ret channelItemInfos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-object v11
.end method

.method public queryChannelItemByVersion(IJ)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .locals 16
    .parameter "channelId"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 1533
    sget-object v2, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryChannelItemByVersion. channelId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", version = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    const/4 v13, 0x0

    .line 1537
    .local v13, cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 1539
    .local v11, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v3, "channel_item"

    const/4 v4, 0x0

    const-string v5, "channelId = ? AND version = ? "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1546
    if-eqz v13, :cond_0

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 1547
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1548
    new-instance v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-direct {v12}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1550
    .end local v11           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .local v12, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :try_start_1
    const-string v2, "_id"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    .line 1552
    const-string v2, "content"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    .line 1554
    const-string v2, "channelId"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    .line 1556
    const-string v2, "version"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    .line 1558
    const-string v2, "title"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    .line 1560
    const-string v2, "brief"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    .line 1562
    const-string v2, "timestamp"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->timestamp:J

    .line 1564
    const-string v2, "sourceUrl"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    .line 1566
    const-string v2, "imgWidth"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    .line 1568
    const-string v2, "imgHeigh"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    .line 1570
    const-string v2, "imgId"

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1572
    .local v14, queryImgId:J
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->queryImg(J)Lcom/baidu/bulletin/db/entity/ImageInfo;

    move-result-object v2

    iput-object v2, v12, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v11, v12

    .line 1576
    .end local v12           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v14           #queryImgId:J
    .restart local v11       #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :cond_0
    if-eqz v13, :cond_1

    .line 1577
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1580
    :cond_1
    return-object v11

    .line 1576
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v13, :cond_2

    .line 1577
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1576
    :cond_2
    throw v2

    .end local v11           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .restart local v12       #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :catchall_1
    move-exception v2

    move-object v11, v12

    .end local v12           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .restart local v11       #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    goto :goto_0
.end method

.method public queryChannelItemCountEqualLess(IJ)I
    .locals 10
    .parameter "channelId"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 1498
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryChannelItemCountLess. channelId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    const-string v3, "channelId = ? and version <= ? "

    .line 1506
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1509
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1510
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1512
    .local v8, count:I
    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v1, "channel_item"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1514
    if-eqz v9, :cond_1

    .line 1515
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1517
    add-int/lit8 v8, v8, 0x1

    .line 1515
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1522
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_0

    .line 1523
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1522
    :cond_0
    throw v0

    :cond_1
    if-eqz v9, :cond_2

    .line 1523
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1526
    :cond_2
    return v8
.end method

.method public queryChannelItemCountEqualMore(IJ)I
    .locals 10
    .parameter "channelId"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 1464
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryChannelItemCountMore. channelId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    const-string v3, "channelId = ? and version >= ? "

    .line 1472
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1475
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1476
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1478
    .local v8, count:I
    :try_start_0
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v1, "channel_item"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1480
    if-eqz v9, :cond_1

    .line 1481
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1483
    add-int/lit8 v8, v8, 0x1

    .line 1481
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1488
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_0

    .line 1489
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1488
    :cond_0
    throw v0

    :cond_1
    if-eqz v9, :cond_2

    .line 1489
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1492
    :cond_2
    return v8
.end method

.method public queryChannelItemTopVersion(II)Ljava/util/List;
    .locals 15
    .parameter "channelId"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 332
    sget-object v1, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryChannelItemTopVersion. channelId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v8, "version DESC "

    .line 336
    .local v8, orderBy:Ljava/lang/String;
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_0

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIMIT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 339
    :cond_0
    const/4 v11, 0x0

    .line 340
    .local v11, queryChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    const/4 v10, 0x0

    .line 342
    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v2, "channel_item"

    const/4 v3, 0x0

    const-string v4, "channelId = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 346
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 347
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 348
    .end local v11           #queryChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    .local v12, queryChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 350
    new-instance v9, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-direct {v9}, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;-><init>()V

    .line 352
    .local v9, channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v9, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    .line 354
    const-string v1, "content"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    .line 356
    const-string v1, "channelId"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v9, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    .line 358
    const-string v1, "version"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v9, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->version:J

    .line 360
    const-string v1, "title"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    .line 362
    const-string v1, "brief"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    .line 364
    const-string v1, "timestamp"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v9, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->timestamp:J

    .line 366
    const-string v1, "sourceUrl"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    .line 368
    const-string v1, "imgWidth"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v9, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgWidth:I

    .line 370
    const-string v1, "imgHeigh"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v9, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imgHeight:I

    .line 372
    const-string v1, "imgId"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 374
    .local v13, queryImgId:J
    invoke-direct {p0, v13, v14}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->queryImg(J)Lcom/baidu/bulletin/db/entity/ImageInfo;

    move-result-object v1

    iput-object v1, v9, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 376
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 380
    .end local v9           #channelItemInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v13           #queryImgId:J
    :catchall_0
    move-exception v1

    move-object v11, v12

    .end local v12           #queryChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    .restart local v11       #queryChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    :goto_1
    if-eqz v10, :cond_1

    .line 381
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 380
    :cond_1
    throw v1

    .end local v11           #queryChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    .restart local v12       #queryChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    :cond_2
    move-object v11, v12

    .end local v12           #queryChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    .restart local v11       #queryChannelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    :cond_3
    if-eqz v10, :cond_4

    .line 381
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 384
    :cond_4
    return-object v11

    .line 380
    :catchall_1
    move-exception v1

    goto :goto_1
.end method

.method public queryImage(J)Lcom/baidu/bulletin/db/entity/ImageInfo;
    .locals 4
    .parameter "imgId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 400
    sget-object v1, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryImage. imgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-direct {p0, p1, p2}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->queryImg(J)Lcom/baidu/bulletin/db/entity/ImageInfo;

    move-result-object v0

    .line 402
    .local v0, retImageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    sget-object v1, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryImage. ret imageInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-object v0
.end method

.method public queryImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Lcom/baidu/bulletin/db/entity/ImageInfo;
    .locals 4
    .parameter "imageInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 409
    sget-object v1, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryImage. imageInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    if-nez p1, :cond_0

    .line 411
    new-instance v1, Lcom/baidu/bulletin/db/exception/DatabaseException;

    const-string v2, "argument is null!"

    invoke-direct {v1, v2}, Lcom/baidu/bulletin/db/exception/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 413
    :cond_0
    iget-wide v1, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-direct {p0, v1, v2}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->queryImg(J)Lcom/baidu/bulletin/db/entity/ImageInfo;

    move-result-object v0

    .line 414
    .local v0, retImageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    sget-object v1, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryImage. ret imageInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-object v0
.end method

.method public declared-synchronized queryNewsDetailByDetailId(I)Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    .locals 14
    .parameter "newsDetailId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 651
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryNewsDetailByDetailId. newsDetailId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v13, 0x0

    .line 653
    .local v13, newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    if-eqz v0, :cond_3

    .line 654
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v1, "newsdetail"

    const/4 v2, 0x0

    const-string v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 658
    .local v8, cursor:Landroid/database/Cursor;
    sget-wide v10, Lcom/baidu/bulletin/db/manager/DatabaseManager;->ID_DEFALUT:J

    .line 659
    .local v10, imgId:J
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 660
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 661
    new-instance v13, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    .end local v13           #newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    invoke-direct {v13}, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;-><init>()V

    .line 662
    .restart local v13       #newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    const-string v0, "data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->data:Ljava/lang/String;

    .line 664
    const-string v0, "type"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v13, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->type:I

    .line 666
    const-string v0, "channelItemId"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v13, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->channelItemId:J

    .line 668
    const-string v0, "imgId"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 670
    const/4 v12, 0x0

    .line 671
    .local v12, imgInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v1, "image"

    const/4 v2, 0x0

    const-string v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 676
    .local v9, imgCursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 677
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 678
    new-instance v12, Lcom/baidu/bulletin/db/entity/ImageInfo;

    .end local v12           #imgInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    invoke-direct {v12}, Lcom/baidu/bulletin/db/entity/ImageInfo;-><init>()V

    .line 679
    .restart local v12       #imgInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    const-string v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v12, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    .line 681
    const-string v0, "localpath"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    .line 683
    const-string v0, "type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v12, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgType:I

    .line 685
    const-string v0, "url"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    .line 687
    const-string v0, "size"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v12, Lcom/baidu/bulletin/db/entity/ImageInfo;->size:J

    .line 691
    :cond_0
    if-eqz v9, :cond_1

    .line 692
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 696
    .end local v9           #imgCursor:Landroid/database/Cursor;
    :cond_1
    iput-object v12, v13, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 698
    .end local v12           #imgInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    :cond_2
    if-eqz v8, :cond_3

    .line 699
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #imgId:J
    :cond_3
    monitor-exit p0

    return-object v13

    .line 651
    .end local v13           #newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryNewsDetailByItemId(I)Ljava/util/List;
    .locals 17
    .parameter "channelItemId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/NewsDetailInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 586
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryNewsDetailByItemId. channelItemId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v15, 0x0

    .line 588
    .local v15, newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    const/16 v16, 0x0

    .line 589
    .local v16, newsList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    if-eqz v1, :cond_3

    .line 590
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v2, "newsdetail"

    const/4 v3, 0x0

    const-string v4, "channelItemId = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 594
    .local v9, cursor:Landroid/database/Cursor;
    sget-wide v12, Lcom/baidu/bulletin/db/manager/DatabaseManager;->ID_DEFALUT:J

    .line 595
    .local v12, imgId:J
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 596
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 597
    new-instance v16, Ljava/util/ArrayList;

    .end local v16           #newsList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .restart local v16       #newsList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v10, v1, :cond_2

    .line 599
    new-instance v15, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    .end local v15           #newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    invoke-direct {v15}, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;-><init>()V

    .line 600
    .restart local v15       #newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    const-string v1, "data"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->data:Ljava/lang/String;

    .line 602
    const-string v1, "type"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v15, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->type:I

    .line 604
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v15, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->_id:J

    .line 606
    move/from16 v0, p1

    int-to-long v1, v0

    iput-wide v1, v15, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->channelItemId:J

    .line 607
    const-string v1, "imgId"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v12, v1

    .line 609
    const/4 v14, 0x0

    .line 610
    .local v14, imgInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    const-wide/16 v1, 0x0

    cmp-long v1, v12, v1

    if-lez v1, :cond_1

    .line 611
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v2, "image"

    const/4 v3, 0x0

    const-string v4, "_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 616
    .local v11, imgCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 617
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 618
    new-instance v14, Lcom/baidu/bulletin/db/entity/ImageInfo;

    .end local v14           #imgInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    invoke-direct {v14}, Lcom/baidu/bulletin/db/entity/ImageInfo;-><init>()V

    .line 619
    .restart local v14       #imgInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    const-string v1, "_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v14, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    .line 621
    const-string v1, "localpath"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    .line 623
    const-string v1, "type"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v14, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgType:I

    .line 625
    const-string v1, "url"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    .line 627
    const-string v1, "size"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v14, Lcom/baidu/bulletin/db/entity/ImageInfo;->size:J

    .line 631
    :cond_0
    if-eqz v11, :cond_1

    .line 632
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 636
    .end local v11           #imgCursor:Landroid/database/Cursor;
    :cond_1
    iput-object v14, v15, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 637
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 598
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 641
    .end local v10           #i:I
    .end local v14           #imgInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    :cond_2
    if-eqz v9, :cond_3

    .line 642
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v12           #imgId:J
    :cond_3
    monitor-exit p0

    return-object v16

    .line 586
    .end local v15           #newsDetailInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    .end local v16           #newsList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized queryOpItems(Ljava/lang/String;I)Ljava/util/List;
    .locals 17
    .parameter "channel"
    .parameter "topic"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/OpItemInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 1128
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryOpItems. channel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  topic = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const/4 v15, 0x0

    .line 1130
    .local v15, opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;
    const/16 v16, 0x0

    .line 1131
    .local v16, opItemList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/OpItemInfo;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    if-eqz v1, :cond_3

    .line 1132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v2, "op"

    const/4 v3, 0x0

    const-string v4, "channel = ?  AND topic =? "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1136
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1137
    new-instance v16, Ljava/util/ArrayList;

    .end local v16           #opItemList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/OpItemInfo;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    .restart local v16       #opItemList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/OpItemInfo;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1139
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v10, v1, :cond_2

    .line 1140
    new-instance v15, Lcom/baidu/bulletin/db/entity/OpItemInfo;

    .end local v15           #opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;
    invoke-direct {v15}, Lcom/baidu/bulletin/db/entity/OpItemInfo;-><init>()V

    .line 1141
    .restart local v15       #opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v15, Lcom/baidu/bulletin/db/entity/OpItemInfo;->_id:J

    .line 1143
    const-string v1, "channel"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/baidu/bulletin/db/entity/OpItemInfo;->channel:Ljava/lang/String;

    .line 1145
    const-string v1, "imgheight"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v15, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imgHeight:I

    .line 1147
    const-string v1, "imgwidth"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v15, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imgWidth:I

    .line 1149
    const-string v1, "opid"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v15, Lcom/baidu/bulletin/db/entity/OpItemInfo;->opId:J

    .line 1151
    const-string v1, "opkurl"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/baidu/bulletin/db/entity/OpItemInfo;->opUrl:Ljava/lang/String;

    .line 1153
    const-string v1, "packagename"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/baidu/bulletin/db/entity/OpItemInfo;->packageName:Ljava/lang/String;

    .line 1155
    const-string v1, "priority"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v15, Lcom/baidu/bulletin/db/entity/OpItemInfo;->priority:I

    .line 1157
    const-string v1, "showurl"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/baidu/bulletin/db/entity/OpItemInfo;->showUrl:Ljava/lang/String;

    .line 1159
    const-string v1, "text"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v15, Lcom/baidu/bulletin/db/entity/OpItemInfo;->text:Ljava/lang/String;

    .line 1161
    const-string v1, "topic"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v15, Lcom/baidu/bulletin/db/entity/OpItemInfo;->topic:I

    .line 1163
    sget-wide v12, Lcom/baidu/bulletin/db/manager/DatabaseManager;->ID_DEFALUT:J

    .line 1164
    .local v12, imgId:J
    const-string v1, "imgId"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1166
    const/4 v14, 0x0

    .line 1167
    .local v14, imgInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    const-wide/16 v1, 0x0

    cmp-long v1, v12, v1

    if-lez v1, :cond_1

    .line 1168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    const-string v2, "image"

    const/4 v3, 0x0

    const-string v4, "_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/baidu/bulletin/db/handler/DBHandler;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1173
    .local v11, imgCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1174
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1175
    new-instance v14, Lcom/baidu/bulletin/db/entity/ImageInfo;

    .end local v14           #imgInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    invoke-direct {v14}, Lcom/baidu/bulletin/db/entity/ImageInfo;-><init>()V

    .line 1176
    .restart local v14       #imgInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    const-string v1, "_id"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v14, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    .line 1178
    const-string v1, "localpath"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    .line 1180
    const-string v1, "type"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v14, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgType:I

    .line 1182
    const-string v1, "url"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v14, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgUrl:Ljava/lang/String;

    .line 1184
    const-string v1, "size"

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v14, Lcom/baidu/bulletin/db/entity/ImageInfo;->size:J

    .line 1188
    :cond_0
    if-eqz v11, :cond_1

    .line 1189
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1193
    .end local v11           #imgCursor:Landroid/database/Cursor;
    :cond_1
    iput-object v14, v15, Lcom/baidu/bulletin/db/entity/OpItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    .line 1194
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1195
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1139
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1198
    .end local v10           #i:I
    .end local v12           #imgId:J
    .end local v14           #imgInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;
    :cond_2
    if-eqz v9, :cond_3

    .line 1199
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_3
    monitor-exit p0

    return-object v16

    .line 1128
    .end local v15           #opItemInfo:Lcom/baidu/bulletin/db/entity/OpItemInfo;
    .end local v16           #opItemList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/OpItemInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized saveAppDetail(Lcom/baidu/bulletin/db/entity/AppDetailInfo;)V
    .locals 3
    .parameter "appDetailInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 707
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAppDetail. saveAppDetail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 709
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    new-instance v1, Lcom/baidu/bulletin/db/manager/DatabaseManager$7;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bulletin/db/manager/DatabaseManager$7;-><init>(Lcom/baidu/bulletin/db/manager/DatabaseManager;Lcom/baidu/bulletin/db/entity/AppDetailInfo;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/db/handler/DBHandler;->runTransactionSync(Lcom/baidu/bulletin/db/handler/SQLiteTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    :cond_0
    monitor-exit p0

    return-void

    .line 707
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public saveAppDetail(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/AppDetailInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 746
    .local p1, appDetailInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/AppDetailInfo;>;"
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAppDetail. saveAppDetail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 749
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    new-instance v1, Lcom/baidu/bulletin/db/manager/DatabaseManager$8;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bulletin/db/manager/DatabaseManager$8;-><init>(Lcom/baidu/bulletin/db/manager/DatabaseManager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/db/handler/DBHandler;->runTransactionSync(Lcom/baidu/bulletin/db/handler/SQLiteTask;)V

    .line 790
    :cond_0
    return-void
.end method

.method public declared-synchronized saveChannelItem(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 3
    .parameter "channelItemInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveChannelItem. channelItemInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-nez p1, :cond_0

    .line 69
    new-instance v0, Lcom/baidu/bulletin/db/exception/DatabaseException;

    const-string v1, "argument is null!"

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/db/exception/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 100
    :goto_0
    monitor-exit p0

    return-void

    .line 72
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    new-instance v1, Lcom/baidu/bulletin/db/manager/DatabaseManager$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bulletin/db/manager/DatabaseManager$1;-><init>(Lcom/baidu/bulletin/db/manager/DatabaseManager;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/db/handler/DBHandler;->runTransactionSync(Lcom/baidu/bulletin/db/handler/SQLiteTask;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public saveChannelItem(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 106
    .local p1, channelItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/ChannelItemInfo;>;"
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveChannelItem. channelItemInfos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Lcom/baidu/bulletin/db/exception/DatabaseException;

    const-string v1, "argument is null!"

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/db/exception/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    if-nez v0, :cond_1

    .line 148
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    new-instance v1, Lcom/baidu/bulletin/db/manager/DatabaseManager$2;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bulletin/db/manager/DatabaseManager$2;-><init>(Lcom/baidu/bulletin/db/manager/DatabaseManager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/db/handler/DBHandler;->runTransactionSync(Lcom/baidu/bulletin/db/handler/SQLiteTask;)V

    goto :goto_0
.end method

.method public declared-synchronized saveNewsDetail(Lcom/baidu/bulletin/db/entity/NewsDetailInfo;)V
    .locals 3
    .parameter "newsDetailInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 458
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveNewsDetail. newsDetailInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    new-instance v1, Lcom/baidu/bulletin/db/manager/DatabaseManager$4;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bulletin/db/manager/DatabaseManager$4;-><init>(Lcom/baidu/bulletin/db/manager/DatabaseManager;Lcom/baidu/bulletin/db/entity/NewsDetailInfo;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/db/handler/DBHandler;->runTransactionSync(Lcom/baidu/bulletin/db/handler/SQLiteTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    :cond_0
    monitor-exit p0

    return-void

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public saveNewsDetail(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/NewsDetailInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 492
    .local p1, newsDetailInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveNewsDetail. newsDetailInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 497
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    new-instance v1, Lcom/baidu/bulletin/db/manager/DatabaseManager$5;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bulletin/db/manager/DatabaseManager$5;-><init>(Lcom/baidu/bulletin/db/manager/DatabaseManager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/db/handler/DBHandler;->runTransactionSync(Lcom/baidu/bulletin/db/handler/SQLiteTask;)V

    .line 531
    :cond_0
    return-void
.end method

.method public declared-synchronized saveOpItems(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/OpItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 992
    .local p1, opItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/OpItemInfo;>;"
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    const-string v1, "saveOpItems"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 994
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    new-instance v1, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bulletin/db/manager/DatabaseManager$10;-><init>(Lcom/baidu/bulletin/db/manager/DatabaseManager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/db/handler/DBHandler;->runTransactionSync(Lcom/baidu/bulletin/db/handler/SQLiteTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1026
    :cond_0
    monitor-exit p0

    return-void

    .line 992
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateAppDetail(Lcom/baidu/bulletin/db/entity/AppDetailInfo;)V
    .locals 3
    .parameter "appDetailInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 795
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAppDetail. appDetailInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/bulletin/db/entity/AppDetailInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 799
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    new-instance v1, Lcom/baidu/bulletin/db/manager/DatabaseManager$9;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bulletin/db/manager/DatabaseManager$9;-><init>(Lcom/baidu/bulletin/db/manager/DatabaseManager;Lcom/baidu/bulletin/db/entity/AppDetailInfo;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/db/handler/DBHandler;->runTransactionSync(Lcom/baidu/bulletin/db/handler/SQLiteTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    :cond_0
    monitor-exit p0

    return-void

    .line 795
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateChannelItem(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 3
    .parameter "channelItemInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateChannelItem. channelItemInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    if-nez p1, :cond_0

    .line 156
    new-instance v0, Lcom/baidu/bulletin/db/exception/DatabaseException;

    const-string v1, "argument is null!"

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/db/exception/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 157
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 188
    :goto_0
    monitor-exit p0

    return-void

    .line 159
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    new-instance v1, Lcom/baidu/bulletin/db/manager/DatabaseManager$3;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bulletin/db/manager/DatabaseManager$3;-><init>(Lcom/baidu/bulletin/db/manager/DatabaseManager;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/db/handler/DBHandler;->runTransactionSync(Lcom/baidu/bulletin/db/handler/SQLiteTask;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public updateImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)V
    .locals 3
    .parameter "imageInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 389
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateImage. imageInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    if-nez p1, :cond_0

    .line 392
    new-instance v0, Lcom/baidu/bulletin/db/exception/DatabaseException;

    const-string v1, "argument is null!"

    invoke-direct {v0, v1}, Lcom/baidu/bulletin/db/exception/DatabaseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    iget-wide v0, p1, Lcom/baidu/bulletin/db/entity/ImageInfo;->_id:J

    invoke-direct {p0, v0, v1, p1}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->updateImg(JLcom/baidu/bulletin/db/entity/ImageInfo;)J

    .line 395
    return-void
.end method

.method public declared-synchronized updateNewsDetail(Lcom/baidu/bulletin/db/entity/NewsDetailInfo;)V
    .locals 3
    .parameter "newsDetailInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNewsDetail. newsDetailInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 541
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    new-instance v1, Lcom/baidu/bulletin/db/manager/DatabaseManager$6;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bulletin/db/manager/DatabaseManager$6;-><init>(Lcom/baidu/bulletin/db/manager/DatabaseManager;Lcom/baidu/bulletin/db/entity/NewsDetailInfo;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/db/handler/DBHandler;->runTransactionSync(Lcom/baidu/bulletin/db/handler/SQLiteTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    :cond_0
    monitor-exit p0

    return-void

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateOpItem(Lcom/baidu/bulletin/db/entity/OpItemInfo;)V
    .locals 2
    .parameter "opItemInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 1080
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    const-string v1, "updateOpItem"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    new-instance v1, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bulletin/db/manager/DatabaseManager$12;-><init>(Lcom/baidu/bulletin/db/manager/DatabaseManager;Lcom/baidu/bulletin/db/entity/OpItemInfo;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/db/handler/DBHandler;->runTransactionSync(Lcom/baidu/bulletin/db/handler/SQLiteTask;)V

    .line 1122
    :cond_0
    return-void
.end method

.method public declared-synchronized updateOpItem(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/OpItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation

    .prologue
    .line 1031
    .local p1, opItemInfos:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/OpItemInfo;>;"
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->TAG:Ljava/lang/String;

    const-string v1, "updateOpItem"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/baidu/bulletin/db/manager/DatabaseManager;->mDBHandler:Lcom/baidu/bulletin/db/handler/DBHandler;

    new-instance v1, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;

    invoke-direct {v1, p0, p1}, Lcom/baidu/bulletin/db/manager/DatabaseManager$11;-><init>(Lcom/baidu/bulletin/db/manager/DatabaseManager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/db/handler/DBHandler;->runTransactionSync(Lcom/baidu/bulletin/db/handler/SQLiteTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1075
    :cond_0
    monitor-exit p0

    return-void

    .line 1031
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
