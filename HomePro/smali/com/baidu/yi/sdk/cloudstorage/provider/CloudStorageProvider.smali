.class public Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;
.super Landroid/content/ContentProvider;
.source "CloudStorageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$DatabaseHelper;,
        Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CloudStorageProvider"


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;->createCloudStorageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private createCloudStorageTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 114
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS tasklist"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    const-string v1, "DROP TABLE IF EXISTS authinfo"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    const-string v1, "DROP TABLE IF EXISTS taskhistory"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 117
    const-string v1, "CREATE TABLE tasklist(_id INTEGER PRIMARY KEY AUTOINCREMENT,uri TEXT, file_name TEXT, mimetype TEXT, destination INTEGER, description TEXT, allowed_network INTEGER, visibility INTEGER, control INTEGER, status INTEGER, create_time BIGINT, lastmod BIGINT, total_bytes INTEGER, current_bytes INTEGER, num_failed INTEGER, retry_after INTEGER, notify_status INTEGER, error_code INTEGER, action INTEGER, cloud_provider TEXT, package_name TEXT, md5 TEXT, title TEXT, relative_path TEXT, task_id TEXT, local_path TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    const-string v1, "CREATE TABLE authinfo(_id INTEGER PRIMARY KEY AUTOINCREMENT,package_name TEXT, app_id TEXT, api_key TEXT, root_dir TEXT, token TEXT, cloud_provider TEXT, secret_key TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    const-string v1, "CREATE TABLE taskhistory(_id INTEGER PRIMARY KEY AUTOINCREMENT,uri TEXT, file_name TEXT, mimetype TEXT, destination INTEGER, description TEXT, allowed_network INTEGER, visibility INTEGER, control INTEGER, status INTEGER, create_time BIGINT, lastmod BIGINT, total_bytes INTEGER, current_bytes INTEGER, num_failed INTEGER, retry_after INTEGER, notify_status INTEGER, error_code INTEGER, action INTEGER, cloud_provider TEXT, package_name TEXT, md5 TEXT, title TEXT, relative_path TEXT, task_id TEXT, local_path TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, ex:Landroid/database/SQLException;
    const-string v1, "CloudStorageProvider"

    const-string v2, "couldn\'t create table in cloudstorage database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    throw v0
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 72
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 73
    .local v0, args:Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;
    iget-object v3, p0, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 74
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 75
    .local v1, count:I
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 56
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 57
    .local v0, args:Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;
    iget-object v6, p0, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 58
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v6, v0, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v3

    .line 59
    .local v3, rowId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-gtz v6, :cond_0

    .line 67
    :goto_0
    monitor-exit p0

    return-object v5

    .line 62
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 65
    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 66
    invoke-virtual {p0}, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, p1

    .line 67
    goto :goto_0

    .line 56
    .end local v0           #args:Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #rowId:J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$DatabaseHelper;-><init>(Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 30
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 38
    new-instance v8, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 39
    .local v8, args:Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 40
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v8, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 42
    iget-object v2, p0, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 43
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v8, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 44
    .local v9, result:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 46
    return-object v9
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 81
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 83
    .local v0, args:Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;
    iget-object v4, p0, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 84
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v4, v0, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v5, v0, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v6, v0, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v4, p2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 85
    .local v1, count:I
    if-lez v1, :cond_0

    .line 86
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 88
    invoke-virtual {p0}, Lcom/baidu/yi/sdk/cloudstorage/provider/CloudStorageProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 90
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    return v1
.end method
