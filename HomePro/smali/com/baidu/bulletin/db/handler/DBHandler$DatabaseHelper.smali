.class public Lcom/baidu/bulletin/db/handler/DBHandler$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/db/handler/DBHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 32
    const-string v0, "Bulletin.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 38
    #calls: Lcom/baidu/bulletin/db/handler/DBHandler;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/baidu/bulletin/db/handler/DBHandler;->access$000(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 39
    #calls: Lcom/baidu/bulletin/db/handler/DBHandler;->createTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/baidu/bulletin/db/handler/DBHandler;->access$100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 40
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .parameter "db"
    .parameter "oldVer"
    .parameter "newVer"

    .prologue
    .line 44
    return-void
.end method
