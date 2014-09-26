.class public Lcom/baidu/bulletin/db/handler/DBHandler;
.super Lcom/baidu/bulletin/db/handler/AbstractDBHandler;
.source "DBHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/db/handler/DBHandler$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final BULLETIN_DATABASE_NAME:Ljava/lang/String; = "Bulletin.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/baidu/bulletin/db/handler/DBHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/db/handler/DBHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Lcom/baidu/bulletin/db/handler/DBHandler$DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/baidu/bulletin/db/handler/DBHandler$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/bulletin/db/handler/DBHandler;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 16
    invoke-virtual {p0}, Lcom/baidu/bulletin/db/handler/DBHandler;->open()Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    return-void
.end method

.method static synthetic access$000(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    invoke-static {p0}, Lcom/baidu/bulletin/db/handler/DBHandler;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 10
    invoke-static {p0}, Lcom/baidu/bulletin/db/handler/DBHandler;->createTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private static createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "sqlite_db_dbhelper"

    .prologue
    .line 50
    :try_start_0
    const-string v1, "CREATE TABLE IF NOT EXISTS channel_item( _id INTEGER PRIMARY KEY AUTOINCREMENT,content TEXT, channelId INTEGER, version LONG, title TEXT, brief TEXT, timestamp LONG, sourceUrl TEXT, imgWidth INTEGER, imgHeigh INTEGER, imgId LONG,  UNIQUE (channelId, version))"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 66
    const-string v1, "CREATE TABLE IF NOT EXISTS appdetail( _id INTEGER PRIMARY KEY AUTOINCREMENT,channelItemId INTEGER, appName TEXT, appId INTEGER, packageName TEXT, score TEXT, size TEXT, downloadcount TEXT, docId TEXT, iconId INTEGER )"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    const-string v1, "CREATE TABLE IF NOT EXISTS newsdetail( _id INTEGER PRIMARY KEY AUTOINCREMENT,channelItemId INTEGER, type INTEGER, data TEXT, imgId INTEGER )"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 86
    const-string v1, "CREATE TABLE IF NOT EXISTS image (_id INTEGER PRIMARY KEY AUTOINCREMENT, type INTEGER, url TEXT, localpath TEXT, size LONG)"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    const-string v1, "CREATE TABLE IF NOT EXISTS op( _id INTEGER PRIMARY KEY AUTOINCREMENT,channel TEXT, topic INTEGER, opid INTEGER, text TEXT, imgwidth INTEGER, imgheight INTEGER, priority INTEGER, packagename TEXT, opkurl TEXT, showurl TEXT, imgId INTEGER ) "

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, ex:Landroid/database/SQLException;
    sget-object v1, Lcom/baidu/bulletin/db/handler/DBHandler;->TAG:Ljava/lang/String;

    const-string v2, "++++couldn\'t create table in database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    throw v0
.end method

.method private static createTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "sqlite_db_dbhelper"

    .prologue
    .line 113
    const-string v0, "CREATE TRIGGER IF NOT EXISTS channel_item_after_delete_trigger AFTER DELETE ON channel_item BEGIN  DELETE FROM image WHERE old.imgId = _id;  DELETE FROM newsdetail WHERE old._id = channelItemId;  END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    const-string v0, "CREATE TRIGGER IF NOT EXISTS newsdetail_after_delete_trigger AFTER DELETE ON newsdetail BEGIN  DELETE FROM image WHERE old.imgId = _id;  END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    const-string v0, "CREATE TRIGGER IF NOT EXISTS appdetail_after_delete_trigger AFTER DELETE ON appdetail BEGIN  DELETE FROM image WHERE old.iconId = _id;  END;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 136
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 20
    invoke-super {p0}, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->close()V

    .line 21
    return-void
.end method
