.class Lcom/baidu/bulletin/db/handler/AbstractDBHandler$2;
.super Ljava/lang/Object;
.source "AbstractDBHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->runQueryAsync(Lcom/baidu/bulletin/db/handler/SQLiteTask;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/db/handler/AbstractDBHandler;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$query:Lcom/baidu/bulletin/db/handler/SQLiteTask;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/db/handler/AbstractDBHandler;Lcom/baidu/bulletin/db/handler/SQLiteTask;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler$2;->this$0:Lcom/baidu/bulletin/db/handler/AbstractDBHandler;

    iput-object p2, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler$2;->val$query:Lcom/baidu/bulletin/db/handler/SQLiteTask;

    iput-object p3, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler$2;->this$0:Lcom/baidu/bulletin/db/handler/AbstractDBHandler;

    invoke-virtual {v1}, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 130
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler$2;->val$query:Lcom/baidu/bulletin/db/handler/SQLiteTask;

    iget-object v2, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bulletin/db/handler/SQLiteTask;->runQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)V

    .line 135
    :cond_0
    return-void
.end method
