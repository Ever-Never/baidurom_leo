.class public Lcom/baidu/bulletin/database/DataBaseHelper;
.super Ljava/lang/Object;
.source "DataBaseHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mIsInitializing:Z

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/baidu/bulletin/database/DataBaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/database/DataBaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 26
    new-instance v0, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v0}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/baidu/bulletin/database/DataBaseHelper;-><init>(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)V

    .line 27
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)V
    .locals 2
    .parameter "context"
    .parameter "errorHandler"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p2, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DatabaseErrorHandler param value can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mContext:Landroid/content/Context;

    .line 35
    const-string v0, "BaiduLauncher.db"

    iput-object v0, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mName:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 37
    iput-object p2, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 38
    return-void
.end method


# virtual methods
.method declared-synchronized close()V
    .locals 2

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mIsInitializing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 122
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :cond_1
    monitor-exit p0

    return-void
.end method

.method declared-synchronized getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_0

    .line 81
    iget-object v3, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 89
    :cond_0
    iget-boolean v3, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mIsInitializing:Z

    if-eqz v3, :cond_3

    .line 90
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "getReadableDatabase called recursively"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 85
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v3

    .line 94
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/baidu/bulletin/database/DataBaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v3

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    iget-object v3, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mName:Ljava/lang/String;

    if-nez v3, :cond_4

    throw v1

    .line 97
    :cond_4
    sget-object v3, Lcom/baidu/bulletin/database/DataBaseHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t open "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for writing (will try read-only):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x1

    :try_start_4
    iput-boolean v3, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mIsInitializing:Z

    .line 103
    iget-object v3, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 104
    .local v2, path:Ljava/lang/String;
    iget-object v3, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-static {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 107
    sget-object v3, Lcom/baidu/bulletin/database/DataBaseHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opened "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in read-only mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/bulletin/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iput-object v0, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 109
    iget-object v3, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    const/4 v4, 0x0

    :try_start_5
    iput-boolean v4, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mIsInitializing:Z

    .line 112
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v4, :cond_2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 111
    .end local v2           #path:Ljava/lang/String;
    :catchall_1
    move-exception v3

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mIsInitializing:Z

    .line 112
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v4, :cond_5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 7

    .prologue
    .line 41
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 44
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 50
    :cond_0
    iget-boolean v2, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mIsInitializing:Z

    if-eqz v2, :cond_3

    .line 51
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "getWritableDatabase called recursively"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 45
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    iget-object v0, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :cond_2
    :goto_0
    monitor-exit p0

    return-object v0

    .line 54
    :cond_3
    const/4 v1, 0x0

    .line 55
    .local v1, success:Z
    const/4 v0, 0x0

    .line 57
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mIsInitializing:Z

    .line 58
    iget-object v2, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mName:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 59
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 64
    :goto_1
    const/4 v1, 0x1

    .line 67
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mIsInitializing:Z

    .line 68
    if-eqz v1, :cond_6

    .line 69
    iget-object v2, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_4

    .line 70
    :try_start_4
    iget-object v2, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 72
    :cond_4
    :goto_2
    :try_start_5
    iput-object v0, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 61
    :cond_5
    :try_start_6
    iget-object v2, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iget-object v6, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v0

    goto :goto_1

    .line 74
    :cond_6
    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 67
    :catchall_1
    move-exception v2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mIsInitializing:Z

    .line 68
    if-eqz v1, :cond_9

    .line 69
    iget-object v3, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v3, :cond_7

    .line 70
    :try_start_8
    iget-object v3, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 72
    :cond_7
    :goto_3
    :try_start_9
    iput-object v0, p0, Lcom/baidu/bulletin/database/DataBaseHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 74
    :cond_8
    :goto_4
    throw v2

    :cond_9
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    .line 70
    :catch_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_2
.end method
