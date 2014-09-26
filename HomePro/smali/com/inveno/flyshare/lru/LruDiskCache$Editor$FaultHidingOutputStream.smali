.class Lcom/inveno/flyshare/lru/LruDiskCache$Editor$FaultHidingOutputStream;
.super Ljava/io/FilterOutputStream;
.source "LruDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FaultHidingOutputStream"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;


# direct methods
.method private constructor <init>(Lcom/inveno/flyshare/lru/LruDiskCache$Editor;Ljava/io/OutputStream;)V
    .locals 0
    .parameter
    .parameter "out"

    .prologue
    .line 945
    iput-object p1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;

    .line 944
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/inveno/flyshare/lru/LruDiskCache$Editor;Ljava/io/OutputStream;Lcom/inveno/flyshare/lru/LruDiskCache$Editor$FaultHidingOutputStream;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 943
    invoke-direct {p0, p1, p2}, Lcom/inveno/flyshare/lru/LruDiskCache$Editor$FaultHidingOutputStream;-><init>(Lcom/inveno/flyshare/lru/LruDiskCache$Editor;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 969
    :try_start_0
    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 973
    :goto_0
    return-void

    .line 970
    :catch_0
    move-exception v0

    .line 971
    .local v0, e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->access$0(Lcom/inveno/flyshare/lru/LruDiskCache$Editor;Z)V

    goto :goto_0
.end method

.method public flush()V
    .locals 3

    .prologue
    .line 978
    :try_start_0
    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    :goto_0
    return-void

    .line 979
    :catch_0
    move-exception v0

    .line 980
    .local v0, e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->access$0(Lcom/inveno/flyshare/lru/LruDiskCache$Editor;Z)V

    goto :goto_0
.end method

.method public write(I)V
    .locals 3
    .parameter "oneByte"

    .prologue
    .line 950
    :try_start_0
    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    :goto_0
    return-void

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->access$0(Lcom/inveno/flyshare/lru/LruDiskCache$Editor;Z)V

    goto :goto_0
.end method

.method public write([BII)V
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 959
    :try_start_0
    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 960
    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor$FaultHidingOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    :goto_0
    return-void

    .line 961
    :catch_0
    move-exception v0

    .line 962
    .local v0, e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor$FaultHidingOutputStream;->this$1:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;

    const/4 v2, 0x1

    #setter for: Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->hasErrors:Z
    invoke-static {v1, v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->access$0(Lcom/inveno/flyshare/lru/LruDiskCache$Editor;Z)V

    goto :goto_0
.end method
