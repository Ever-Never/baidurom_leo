.class Lcom/inveno/flow/database/FlyshareDb$SqliteDbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "FlyshareDb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/flow/database/FlyshareDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SqliteDbHelper"
.end annotation


# instance fields
.field private mDbUpdateListener:Lcom/inveno/flow/database/FlyshareDb$DbUpdateListener;

.field final synthetic this$0:Lcom/inveno/flow/database/FlyshareDb;


# direct methods
.method public constructor <init>(Lcom/inveno/flow/database/FlyshareDb;Landroid/content/Context;Ljava/lang/String;ILcom/inveno/flow/database/FlyshareDb$DbUpdateListener;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "name"
    .parameter "version"
    .parameter "dbUpdateListener"

    .prologue
    .line 507
    iput-object p1, p0, Lcom/inveno/flow/database/FlyshareDb$SqliteDbHelper;->this$0:Lcom/inveno/flow/database/FlyshareDb;

    .line 505
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 506
    iput-object p5, p0, Lcom/inveno/flow/database/FlyshareDb$SqliteDbHelper;->mDbUpdateListener:Lcom/inveno/flow/database/FlyshareDb$DbUpdateListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 511
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v4, 0x0

    .line 515
    iget-object v1, p0, Lcom/inveno/flow/database/FlyshareDb$SqliteDbHelper;->mDbUpdateListener:Lcom/inveno/flow/database/FlyshareDb$DbUpdateListener;

    if-eqz v1, :cond_1

    .line 516
    iget-object v1, p0, Lcom/inveno/flow/database/FlyshareDb$SqliteDbHelper;->mDbUpdateListener:Lcom/inveno/flow/database/FlyshareDb$DbUpdateListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/inveno/flow/database/FlyshareDb$DbUpdateListener;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    const-string v1, "FlyshareDb"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6e05\u7a7a\u6240\u6709\u6570\u636e\u5e93"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v1, "SELECT name FROM sqlite_master WHERE type =\'table\'"

    .line 522
    const/4 v2, 0x0

    .line 520
    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 523
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 524
    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 529
    :cond_3
    if-eqz v0, :cond_0

    .line 530
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 525
    :cond_4
    const-string v1, "sqlite_sequence"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1
.end method
