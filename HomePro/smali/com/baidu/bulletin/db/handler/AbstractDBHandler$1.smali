.class Lcom/baidu/bulletin/db/handler/AbstractDBHandler$1;
.super Ljava/lang/Object;
.source "AbstractDBHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->runTransactionAsync(Lcom/baidu/bulletin/db/handler/SQLiteTask;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/db/handler/AbstractDBHandler;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$transaction:Lcom/baidu/bulletin/db/handler/SQLiteTask;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/db/handler/AbstractDBHandler;Lcom/baidu/bulletin/db/handler/SQLiteTask;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler$1;->this$0:Lcom/baidu/bulletin/db/handler/AbstractDBHandler;

    iput-object p2, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler$1;->val$transaction:Lcom/baidu/bulletin/db/handler/SQLiteTask;

    iput-object p3, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler$1;->this$0:Lcom/baidu/bulletin/db/handler/AbstractDBHandler;

    invoke-virtual {v1}, Lcom/baidu/bulletin/db/handler/AbstractDBHandler;->open()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 87
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler$1;->val$transaction:Lcom/baidu/bulletin/db/handler/SQLiteTask;

    iget-object v2, p0, Lcom/baidu/bulletin/db/handler/AbstractDBHandler$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Lcom/baidu/bulletin/db/handler/SQLiteTask;->runTransaction(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Handler;)V

    .line 92
    :cond_0
    return-void
.end method
