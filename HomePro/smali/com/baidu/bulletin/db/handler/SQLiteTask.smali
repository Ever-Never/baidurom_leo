.class public abstract Lcom/baidu/bulletin/db/handler/SQLiteTask;
.super Ljava/lang/Object;
.source "SQLiteTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected performQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)Z
    .locals 1
    .parameter "db"
    .parameter "handler"

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method protected performTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)Z
    .locals 1
    .parameter "db"
    .parameter "handler"

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public runQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)V
    .locals 0
    .parameter "db"
    .parameter "handler"

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/baidu/bulletin/db/handler/SQLiteTask;->performQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)Z

    .line 59
    return-void
.end method

.method public runTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)V
    .locals 2
    .parameter "db"
    .parameter "handler"

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 41
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/baidu/bulletin/db/handler/SQLiteTask;->performTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 44
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 46
    .restart local v0       #e:Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    :try_start_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 50
    :catch_2
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    .line 49
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    .line 52
    :goto_1
    throw v1

    .line 50
    :catch_3
    move-exception v0

    .line 51
    .restart local v0       #e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1
.end method
