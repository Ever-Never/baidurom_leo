.class Lcom/baidu/launcher/thememanager/util/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/util/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/util/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/util/DiskLruCache;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/DiskLruCache$1;->this$0:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/util/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 275
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/util/DiskLruCache$1;->this$0:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    monitor-enter v1

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/DiskLruCache$1;->this$0:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    #getter for: Lcom/baidu/launcher/thememanager/util/DiskLruCache;->journalWriter:Ljava/io/Writer;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/DiskLruCache;->access$000(Lcom/baidu/launcher/thememanager/util/DiskLruCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 277
    monitor-exit v1

    .line 285
    :goto_0
    return-object v3

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/DiskLruCache$1;->this$0:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    #calls: Lcom/baidu/launcher/thememanager/util/DiskLruCache;->trimToSize()V
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/DiskLruCache;->access$100(Lcom/baidu/launcher/thememanager/util/DiskLruCache;)V

    .line 280
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/DiskLruCache$1;->this$0:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    #calls: Lcom/baidu/launcher/thememanager/util/DiskLruCache;->journalRebuildRequired()Z
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/DiskLruCache;->access$200(Lcom/baidu/launcher/thememanager/util/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/DiskLruCache$1;->this$0:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    #calls: Lcom/baidu/launcher/thememanager/util/DiskLruCache;->rebuildJournal()V
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/util/DiskLruCache;->access$300(Lcom/baidu/launcher/thememanager/util/DiskLruCache;)V

    .line 282
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/DiskLruCache$1;->this$0:Lcom/baidu/launcher/thememanager/util/DiskLruCache;

    const/4 v2, 0x0

    #setter for: Lcom/baidu/launcher/thememanager/util/DiskLruCache;->redundantOpCount:I
    invoke-static {v0, v2}, Lcom/baidu/launcher/thememanager/util/DiskLruCache;->access$402(Lcom/baidu/launcher/thememanager/util/DiskLruCache;I)I

    .line 284
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
