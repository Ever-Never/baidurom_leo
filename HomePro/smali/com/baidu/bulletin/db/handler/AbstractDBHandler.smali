.class public abstract Lcom/baidu/bulletin/db/handler/AbstractDBHandler;
.super Ljava/lang/Object;
.source "AbstractDBHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteDBHandler"


# instance fields
.field protected mDB:Landroid/database/sqlite/SQLiteDatabase;

.field protected mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field protected mExecutor:Ljava/util/concurrent/Executor;

.field protected mQueryExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    iput-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 28
    iput-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mExecutor:Ljava/util/concurrent/Executor;

    .line 29
    iput-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mQueryExecutor:Ljava/util/concurrent/Executor;

    .line 33
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 34
    .local v0, logThreadFactory:Ljava/util/concurrent/ThreadFactory;
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mExecutor:Ljava/util/concurrent/Executor;

    .line 35
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mQueryExecutor:Ljava/util/concurrent/Executor;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "dbName"
    .parameter "dbVersion"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 26
    iput-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 28
    iput-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mExecutor:Ljava/util/concurrent/Executor;

    .line 29
    iput-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mQueryExecutor:Ljava/util/concurrent/Executor;

    .line 40
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 41
    .local v0, logThreadFactory:Ljava/util/concurrent/ThreadFactory;
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mExecutor:Ljava/util/concurrent/Executor;

    .line 42
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mQueryExecutor:Ljava/util/concurrent/Executor;

    .line 43
    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 358
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    const-string v0, "SQLiteDBHandler"

    const-string v1, "Database is not opened"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected close()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 74
    :cond_0
    return-void
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "table"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 221
    const/4 v0, 0x0

    .line 223
    .local v0, affected:I
    iget-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 228
    :cond_1
    const-string v1, "SQLiteDBHandler"

    const-string v2, "Database is not opened"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endTransaction()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    const-string v0, "SQLiteDBHandler"

    const-string v1, "Database is not opened"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public endTransactionSuccessful()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 406
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    const-string v0, "SQLiteDBHandler"

    const-string v1, "Database is not opened"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 2
    .parameter "sql"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    const-string v0, "SQLiteDBHandler"

    const-string v1, "Database is not opened"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"

    .prologue
    .line 148
    const-wide/16 v0, -0x1

    .line 150
    .local v0, row:J
    iget-object v2, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    .line 151
    iget-object v2, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 158
    :cond_0
    :goto_0
    return-wide v0

    .line 155
    :cond_1
    const-string v2, "SQLiteDBHandler"

    const-string v3, "Database is not opened"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected open()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "sql"
    .parameter "selectionArgs"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 303
    :goto_0
    return-object v0

    .line 301
    :cond_0
    const-string v0, "SQLiteDBHandler"

    const-string v1, "Database is not opened"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 280
    :goto_0
    return-object v0

    .line 278
    :cond_0
    const-string v0, "SQLiteDBHandler"

    const-string v1, "Database is not opened"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"
    .parameter "limit"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 330
    :goto_0
    return-object v0

    .line 328
    :cond_0
    const-string v0, "SQLiteDBHandler"

    const-string v1, "Database is not opened"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "values"

    .prologue
    .line 171
    const-wide/16 v0, -0x1

    .line 172
    .local v0, row:J
    iget-object v2, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_1

    .line 173
    iget-object v2, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 180
    :cond_0
    :goto_0
    return-wide v0

    .line 177
    :cond_1
    const-string v2, "SQLiteDBHandler"

    const-string v3, "Database is not opened"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public runQueryAsync(Lcom/baidu/bulletin/db/handler/SQLiteTask;Landroid/os/Handler;)V
    .locals 2
    .parameter "query"
    .parameter "handler"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mQueryExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/baidu/bulletin/db/handler/AbstractDBHandler$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/bulletin/db/handler/AbstractDBHandler$2;-><init>(Lcom/baidu/bulletin/db/handler/AbstractDBHandler;Lcom/baidu/bulletin/db/handler/SQLiteTask;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 137
    return-void
.end method

.method public runTransactionAsync(Lcom/baidu/bulletin/db/handler/SQLiteTask;)V
    .locals 1
    .parameter "transaction"

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->runTransactionAsync(Lcom/baidu/bulletin/db/handler/SQLiteTask;Landroid/os/Handler;)V

    .line 118
    return-void
.end method

.method public runTransactionAsync(Lcom/baidu/bulletin/db/handler/SQLiteTask;Landroid/os/Handler;)V
    .locals 2
    .parameter "transaction"
    .parameter "handler"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/baidu/bulletin/db/handler/AbstractDBHandler$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/baidu/bulletin/db/handler/AbstractDBHandler$1;-><init>(Lcom/baidu/bulletin/db/handler/AbstractDBHandler;Lcom/baidu/bulletin/db/handler/SQLiteTask;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method

.method public runTransactionSync(Lcom/baidu/bulletin/db/handler/SQLiteTask;)V
    .locals 2
    .parameter "transaction"

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 104
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/baidu/bulletin/db/handler/SQLiteTask;->runTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)V

    .line 109
    :cond_0
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    const-string v0, "SQLiteDBHandler"

    const-string v1, "Database is not opened"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "table"
    .parameter "values"
    .parameter "whereClause"
    .parameter "whereArgs"

    .prologue
    .line 194
    const/4 v0, -0x1

    .line 196
    .local v0, affected:I
    iget-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    .line 197
    iget-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 206
    :cond_1
    const-string v1, "SQLiteDBHandler"

    const-string v2, "mDBnull,Database is not opened"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
