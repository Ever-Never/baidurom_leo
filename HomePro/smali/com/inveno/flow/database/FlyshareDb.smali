.class public Lcom/inveno/flow/database/FlyshareDb;
.super Ljava/lang/Object;
.source "FlyshareDb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/flow/database/FlyshareDb$DaoConfig;,
        Lcom/inveno/flow/database/FlyshareDb$DbUpdateListener;,
        Lcom/inveno/flow/database/FlyshareDb$SqliteDbHelper;
    }
.end annotation


# static fields
.field private static daoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/flow/database/FlyshareDb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private config:Lcom/inveno/flow/database/FlyshareDb$DaoConfig;

.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inveno/flow/database/FlyshareDb;->daoMap:Ljava/util/HashMap;

    .line 22
    return-void
.end method

.method private constructor <init>(Lcom/inveno/flow/database/FlyshareDb$DaoConfig;)V
    .locals 6
    .parameter "config"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "daoConfig is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 39
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "android context is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    new-instance v0, Lcom/inveno/flow/database/FlyshareDb$SqliteDbHelper;

    invoke-virtual {p1}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-virtual {p1}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->getDbVersion()I

    move-result v4

    invoke-virtual {p1}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->getDbUpdateListener()Lcom/inveno/flow/database/FlyshareDb$DbUpdateListener;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/inveno/flow/database/FlyshareDb$SqliteDbHelper;-><init>(Lcom/inveno/flow/database/FlyshareDb;Landroid/content/Context;Ljava/lang/String;ILcom/inveno/flow/database/FlyshareDb$DbUpdateListener;)V

    .line 43
    invoke-virtual {v0}, Lcom/inveno/flow/database/FlyshareDb$SqliteDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/inveno/flow/database/FlyshareDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 44
    iput-object p1, p0, Lcom/inveno/flow/database/FlyshareDb;->config:Lcom/inveno/flow/database/FlyshareDb$DaoConfig;

    .line 45
    return-void
.end method

.method private checkTableExist(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p1}, Lcom/inveno/flow/database/table/TableInfo;->get(Ljava/lang/Class;)Lcom/inveno/flow/database/table/TableInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/inveno/flow/database/FlyshareDb;->tableIsExist(Lcom/inveno/flow/database/table/TableInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    invoke-static {p1}, Lcom/inveno/flow/database/SqlBuilder;->getCreatTableSQL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, sql:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/inveno/flow/database/FlyshareDb;->debugSql(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/inveno/flow/database/FlyshareDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 388
    .end local v0           #sql:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/inveno/flow/database/FlyshareDb;
    .locals 2
    .parameter "context"

    .prologue
    .line 68
    new-instance v0, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;

    invoke-direct {v0}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;-><init>()V

    .line 69
    .local v0, config:Lcom/inveno/flow/database/FlyshareDb$DaoConfig;
    invoke-virtual {v0, p0}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 71
    invoke-static {v0}, Lcom/inveno/flow/database/FlyshareDb;->getInstance(Lcom/inveno/flow/database/FlyshareDb$DaoConfig;)Lcom/inveno/flow/database/FlyshareDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/inveno/flow/database/FlyshareDb;
    .locals 2
    .parameter "context"
    .parameter "dbName"

    .prologue
    .line 98
    new-instance v0, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;

    invoke-direct {v0}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;-><init>()V

    .line 99
    .local v0, config:Lcom/inveno/flow/database/FlyshareDb$DaoConfig;
    invoke-virtual {v0, p0}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v0, p1}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 102
    invoke-static {v0}, Lcom/inveno/flow/database/FlyshareDb;->getInstance(Lcom/inveno/flow/database/FlyshareDb$DaoConfig;)Lcom/inveno/flow/database/FlyshareDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Z)Lcom/inveno/flow/database/FlyshareDb;
    .locals 2
    .parameter "context"
    .parameter "dbName"
    .parameter "isDebug"

    .prologue
    .line 116
    new-instance v0, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;

    invoke-direct {v0}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;-><init>()V

    .line 117
    .local v0, config:Lcom/inveno/flow/database/FlyshareDb$DaoConfig;
    invoke-virtual {v0, p0}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v0, p1}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, p2}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->setDebug(Z)V

    .line 120
    invoke-static {v0}, Lcom/inveno/flow/database/FlyshareDb;->getInstance(Lcom/inveno/flow/database/FlyshareDb$DaoConfig;)Lcom/inveno/flow/database/FlyshareDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;ZILcom/inveno/flow/database/FlyshareDb$DbUpdateListener;)Lcom/inveno/flow/database/FlyshareDb;
    .locals 2
    .parameter "context"
    .parameter "dbName"
    .parameter "isDebug"
    .parameter "dbVersion"
    .parameter "dbUpdateListener"

    .prologue
    .line 140
    new-instance v0, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;

    invoke-direct {v0}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;-><init>()V

    .line 141
    .local v0, config:Lcom/inveno/flow/database/FlyshareDb$DaoConfig;
    invoke-virtual {v0, p0}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 142
    invoke-virtual {v0, p1}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->setDbName(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v0, p2}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->setDebug(Z)V

    .line 144
    invoke-virtual {v0, p3}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->setDbVersion(I)V

    .line 145
    invoke-virtual {v0, p4}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->setDbUpdateListener(Lcom/inveno/flow/database/FlyshareDb$DbUpdateListener;)V

    .line 146
    invoke-static {v0}, Lcom/inveno/flow/database/FlyshareDb;->getInstance(Lcom/inveno/flow/database/FlyshareDb$DaoConfig;)Lcom/inveno/flow/database/FlyshareDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Landroid/content/Context;Z)Lcom/inveno/flow/database/FlyshareDb;
    .locals 2
    .parameter "context"
    .parameter "isDebug"

    .prologue
    .line 83
    new-instance v0, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;

    invoke-direct {v0}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;-><init>()V

    .line 84
    .local v0, config:Lcom/inveno/flow/database/FlyshareDb$DaoConfig;
    invoke-virtual {v0, p0}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->setContext(Landroid/content/Context;)V

    .line 85
    invoke-virtual {v0, p1}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->setDebug(Z)V

    .line 86
    invoke-static {v0}, Lcom/inveno/flow/database/FlyshareDb;->getInstance(Lcom/inveno/flow/database/FlyshareDb$DaoConfig;)Lcom/inveno/flow/database/FlyshareDb;

    move-result-object v1

    return-object v1
.end method

.method public static create(Lcom/inveno/flow/database/FlyshareDb$DaoConfig;)Lcom/inveno/flow/database/FlyshareDb;
    .locals 1
    .parameter "daoConfig"

    .prologue
    .line 157
    invoke-static {p0}, Lcom/inveno/flow/database/FlyshareDb;->getInstance(Lcom/inveno/flow/database/FlyshareDb$DaoConfig;)Lcom/inveno/flow/database/FlyshareDb;

    move-result-object v0

    return-object v0
.end method

.method private debugSql(Ljava/lang/String;)V
    .locals 3
    .parameter "sql"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/inveno/flow/database/FlyshareDb;->config:Lcom/inveno/flow/database/FlyshareDb$DaoConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/flow/database/FlyshareDb;->config:Lcom/inveno/flow/database/FlyshareDb$DaoConfig;

    invoke-virtual {v0}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const-string v0, "FlyshareDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">>>>>>  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_0
    return-void
.end method

.method private exeSqlInfo(Lcom/inveno/flow/database/SqlInfo;)V
    .locals 3
    .parameter "sqlInfo"

    .prologue
    .line 259
    if-eqz p1, :cond_0

    .line 260
    invoke-virtual {p1}, Lcom/inveno/flow/database/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inveno/flow/database/FlyshareDb;->debugSql(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/inveno/flow/database/FlyshareDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/inveno/flow/database/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/inveno/flow/database/SqlInfo;->getBindArgsAsArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    :goto_0
    return-void

    .line 263
    :cond_0
    const-string v0, "FlyshareDb"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sql\u8bed\u53e5\u4e3anull\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter "strSQL"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 356
    invoke-direct {p0, p1}, Lcom/inveno/flow/database/FlyshareDb;->checkTableExist(Ljava/lang/Class;)V

    .line 357
    invoke-direct {p0, p2}, Lcom/inveno/flow/database/FlyshareDb;->debugSql(Ljava/lang/String;)V

    .line 358
    iget-object v5, p0, Lcom/inveno/flow/database/FlyshareDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5, p2, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 360
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    .local v2, list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    .line 369
    if-eqz v0, :cond_0

    .line 370
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 371
    :cond_0
    const/4 v0, 0x0

    .line 373
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :goto_1
    return-object v2

    .line 362
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :cond_1
    :try_start_1
    invoke-static {v0, p1}, Lcom/inveno/flow/database/CursorUtils;->getEntity(Landroid/database/Cursor;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 363
    .local v3, t:Ljava/lang/Object;,"TT;"
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 366
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .end local v3           #t:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v1

    .line 367
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    if-eqz v0, :cond_2

    .line 370
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 371
    :cond_2
    const/4 v0, 0x0

    move-object v2, v4

    .line 373
    goto :goto_1

    .line 368
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 369
    if-eqz v0, :cond_3

    .line 370
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 371
    :cond_3
    const/4 v0, 0x0

    .line 372
    throw v4
.end method

.method private static declared-synchronized getInstance(Lcom/inveno/flow/database/FlyshareDb$DaoConfig;)Lcom/inveno/flow/database/FlyshareDb;
    .locals 4
    .parameter "daoConfig"

    .prologue
    .line 54
    const-class v2, Lcom/inveno/flow/database/FlyshareDb;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/inveno/flow/database/FlyshareDb;->daoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/flow/database/FlyshareDb;

    .line 55
    .local v0, dao:Lcom/inveno/flow/database/FlyshareDb;
    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/inveno/flow/database/FlyshareDb;

    .end local v0           #dao:Lcom/inveno/flow/database/FlyshareDb;
    invoke-direct {v0, p0}, Lcom/inveno/flow/database/FlyshareDb;-><init>(Lcom/inveno/flow/database/FlyshareDb$DaoConfig;)V

    .line 57
    .restart local v0       #dao:Lcom/inveno/flow/database/FlyshareDb;
    sget-object v1, Lcom/inveno/flow/database/FlyshareDb;->daoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/inveno/flow/database/FlyshareDb$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit v2

    return-object v0

    .line 54
    .end local v0           #dao:Lcom/inveno/flow/database/FlyshareDb;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private tableIsExist(Lcom/inveno/flow/database/table/TableInfo;)Z
    .locals 8
    .parameter "table"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 399
    invoke-virtual {p1}, Lcom/inveno/flow/database/table/TableInfo;->isCheckDatabese()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 425
    :goto_0
    return v4

    .line 402
    :cond_0
    const/4 v1, 0x0

    .line 404
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SELECT COUNT(*) AS c FROM sqlite_master WHERE type =\'table\' AND name =\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p1}, Lcom/inveno/flow/database/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 404
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, sql:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/inveno/flow/database/FlyshareDb;->debugSql(Ljava/lang/String;)V

    .line 407
    iget-object v6, p0, Lcom/inveno/flow/database/FlyshareDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 408
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 410
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 411
    .local v0, count:I
    if-lez v0, :cond_4

    .line 412
    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Lcom/inveno/flow/database/table/TableInfo;->setCheckDatabese(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    if-eqz v1, :cond_1

    .line 421
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 422
    :cond_1
    const/4 v1, 0x0

    .line 413
    goto :goto_0

    .line 417
    .end local v0           #count:I
    .end local v3           #sql:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 418
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    if-eqz v1, :cond_2

    .line 421
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 422
    :cond_2
    const/4 v1, 0x0

    .end local v2           #e:Ljava/lang/Exception;
    :goto_1
    move v4, v5

    .line 425
    goto :goto_0

    .line 419
    :catchall_0
    move-exception v4

    .line 420
    if-eqz v1, :cond_3

    .line 421
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 422
    :cond_3
    const/4 v1, 0x0

    .line 423
    throw v4

    .line 420
    .restart local v3       #sql:Ljava/lang/String;
    :cond_4
    if-eqz v1, :cond_5

    .line 421
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 422
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/inveno/flow/database/FlyshareDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 165
    return-void
.end method

.method public delete(Ljava/lang/Object;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inveno/flow/database/FlyshareDb;->checkTableExist(Ljava/lang/Class;)V

    .line 223
    invoke-static {p1}, Lcom/inveno/flow/database/SqlBuilder;->buildDeleteSql(Ljava/lang/Object;)Lcom/inveno/flow/database/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inveno/flow/database/FlyshareDb;->exeSqlInfo(Lcom/inveno/flow/database/SqlInfo;)V

    .line 224
    return-void
.end method

.method public deleteById(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/inveno/flow/database/FlyshareDb;->checkTableExist(Ljava/lang/Class;)V

    .line 236
    invoke-static {p1, p2}, Lcom/inveno/flow/database/SqlBuilder;->buildDeleteSql(Ljava/lang/Class;Ljava/lang/Object;)Lcom/inveno/flow/database/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inveno/flow/database/FlyshareDb;->exeSqlInfo(Lcom/inveno/flow/database/SqlInfo;)V

    .line 237
    return-void
.end method

.method public deleteByWhere(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "strWhere"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0, p1}, Lcom/inveno/flow/database/FlyshareDb;->checkTableExist(Ljava/lang/Class;)V

    .line 248
    invoke-static {p1, p2}, Lcom/inveno/flow/database/SqlBuilder;->buildDeleteSql(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, sql:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/inveno/flow/database/FlyshareDb;->debugSql(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/inveno/flow/database/FlyshareDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public endTransaction()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/inveno/flow/database/FlyshareDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 179
    return-void
.end method

.method public findAll(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 300
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/inveno/flow/database/FlyshareDb;->checkTableExist(Ljava/lang/Class;)V

    .line 301
    invoke-static {p1}, Lcom/inveno/flow/database/SqlBuilder;->getSelectSQL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/inveno/flow/database/FlyshareDb;->findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findAll(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter
    .parameter "orderBy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/inveno/flow/database/FlyshareDb;->checkTableExist(Ljava/lang/Class;)V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/inveno/flow/database/SqlBuilder;->getSelectSQL(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    const-string v1, " ORDER BY \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-direct {p0, p1, v0}, Lcom/inveno/flow/database/FlyshareDb;->findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findAllByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter "strWhere"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/inveno/flow/database/FlyshareDb;->checkTableExist(Ljava/lang/Class;)V

    .line 327
    invoke-static {p1, p2}, Lcom/inveno/flow/database/SqlBuilder;->getSelectSQLByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-direct {p0, p1, v0}, Lcom/inveno/flow/database/FlyshareDb;->findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findAllByWhere(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter
    .parameter "strWhere"
    .parameter "orderBy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/inveno/flow/database/FlyshareDb;->checkTableExist(Ljava/lang/Class;)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/inveno/flow/database/SqlBuilder;->getSelectSQLByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    invoke-direct {p0, p1, v0}, Lcom/inveno/flow/database/FlyshareDb;->findAllBySql(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findById(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 275
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p2}, Lcom/inveno/flow/database/FlyshareDb;->checkTableExist(Ljava/lang/Class;)V

    .line 276
    invoke-static {p2, p1}, Lcom/inveno/flow/database/SqlBuilder;->getSelectSqlAsSqlInfo(Ljava/lang/Class;Ljava/lang/Object;)Lcom/inveno/flow/database/SqlInfo;

    move-result-object v2

    .line 277
    .local v2, sqlInfo:Lcom/inveno/flow/database/SqlInfo;
    if-eqz v2, :cond_0

    .line 278
    invoke-virtual {v2}, Lcom/inveno/flow/database/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/inveno/flow/database/FlyshareDb;->debugSql(Ljava/lang/String;)V

    .line 279
    iget-object v3, p0, Lcom/inveno/flow/database/FlyshareDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Lcom/inveno/flow/database/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v4

    .line 280
    invoke-virtual {v2}, Lcom/inveno/flow/database/SqlInfo;->getBindArgsAsStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 279
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 282
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 283
    invoke-static {v0, p2}, Lcom/inveno/flow/database/CursorUtils;->getEntity(Landroid/database/Cursor;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 288
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 291
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object v3

    .line 285
    .restart local v0       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 286
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 291
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 287
    .restart local v0       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    .line 288
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 289
    throw v3

    .line 288
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public save(Ljava/lang/Object;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inveno/flow/database/FlyshareDb;->checkTableExist(Ljava/lang/Class;)V

    .line 190
    invoke-static {p1}, Lcom/inveno/flow/database/SqlBuilder;->buildInsertSql(Ljava/lang/Object;)Lcom/inveno/flow/database/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inveno/flow/database/FlyshareDb;->exeSqlInfo(Lcom/inveno/flow/database/SqlInfo;)V

    .line 191
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/inveno/flow/database/FlyshareDb;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 172
    return-void
.end method

.method public update(Ljava/lang/Object;)V
    .locals 1
    .parameter "entity"

    .prologue
    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inveno/flow/database/FlyshareDb;->checkTableExist(Ljava/lang/Class;)V

    .line 200
    invoke-static {p1}, Lcom/inveno/flow/database/SqlBuilder;->getUpdateSqlAsSqlInfo(Ljava/lang/Object;)Lcom/inveno/flow/database/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inveno/flow/database/FlyshareDb;->exeSqlInfo(Lcom/inveno/flow/database/SqlInfo;)V

    .line 201
    return-void
.end method

.method public update(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "entity"
    .parameter "strWhere"

    .prologue
    .line 211
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inveno/flow/database/FlyshareDb;->checkTableExist(Ljava/lang/Class;)V

    .line 212
    invoke-static {p1, p2}, Lcom/inveno/flow/database/SqlBuilder;->getUpdateSqlAsSqlInfo(Ljava/lang/Object;Ljava/lang/String;)Lcom/inveno/flow/database/SqlInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inveno/flow/database/FlyshareDb;->exeSqlInfo(Lcom/inveno/flow/database/SqlInfo;)V

    .line 213
    return-void
.end method
