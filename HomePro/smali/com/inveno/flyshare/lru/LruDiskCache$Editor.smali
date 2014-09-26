.class public final Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
.super Ljava/lang/Object;
.source "LruDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/flyshare/lru/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/flyshare/lru/LruDiskCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/inveno/flyshare/lru/LruDiskCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/inveno/flyshare/lru/LruDiskCache;Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)V
    .locals 1
    .parameter
    .parameter "entry"

    .prologue
    .line 829
    iput-object p1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->this$0:Lcom/inveno/flyshare/lru/LruDiskCache;

    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 827
    iput-object p2, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;

    .line 828
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->readable:Z
    invoke-static {p2}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$0(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->written:[Z

    return-void

    :cond_0
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache;->valueCount:I
    invoke-static {p1}, Lcom/inveno/flyshare/lru/LruDiskCache;->access$7(Lcom/inveno/flyshare/lru/LruDiskCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/inveno/flyshare/lru/LruDiskCache;Lcom/inveno/flyshare/lru/LruDiskCache$Entry;Lcom/inveno/flyshare/lru/LruDiskCache$Editor;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 826
    invoke-direct {p0, p1, p2}, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;-><init>(Lcom/inveno/flyshare/lru/LruDiskCache;Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)V

    return-void
.end method

.method static synthetic access$0(Lcom/inveno/flyshare/lru/LruDiskCache$Editor;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 823
    iput-boolean p1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->hasErrors:Z

    return-void
.end method

.method static synthetic access$2(Lcom/inveno/flyshare/lru/LruDiskCache$Editor;)Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    .locals 1
    .parameter

    .prologue
    .line 821
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;

    return-object v0
.end method

.method static synthetic access$3(Lcom/inveno/flyshare/lru/LruDiskCache$Editor;)[Z
    .locals 1
    .parameter

    .prologue
    .line 822
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->written:[Z

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 930
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->this$0:Lcom/inveno/flyshare/lru/LruDiskCache;

    const/4 v1, 0x0

    #calls: Lcom/inveno/flyshare/lru/LruDiskCache;->completeEdit(Lcom/inveno/flyshare/lru/LruDiskCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/inveno/flyshare/lru/LruDiskCache;->access$10(Lcom/inveno/flyshare/lru/LruDiskCache;Lcom/inveno/flyshare/lru/LruDiskCache$Editor;Z)V

    .line 931
    return-void
.end method

.method public abortUnlessCommitted()V
    .locals 1

    .prologue
    .line 934
    iget-boolean v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->committed:Z

    if-nez v0, :cond_0

    .line 936
    :try_start_0
    invoke-virtual {p0}, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 937
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public commit()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 916
    iget-boolean v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->this$0:Lcom/inveno/flyshare/lru/LruDiskCache;

    const/4 v1, 0x0

    #calls: Lcom/inveno/flyshare/lru/LruDiskCache;->completeEdit(Lcom/inveno/flyshare/lru/LruDiskCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/inveno/flyshare/lru/LruDiskCache;->access$10(Lcom/inveno/flyshare/lru/LruDiskCache;Lcom/inveno/flyshare/lru/LruDiskCache$Editor;Z)V

    .line 918
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->this$0:Lcom/inveno/flyshare/lru/LruDiskCache;

    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v1}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$3(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/inveno/flyshare/lru/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/inveno/flyshare/lru/LruDiskCache;->access$11(Lcom/inveno/flyshare/lru/LruDiskCache;Ljava/lang/String;)Z

    .line 922
    :goto_0
    iput-boolean v2, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->committed:Z

    .line 923
    return-void

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->this$0:Lcom/inveno/flyshare/lru/LruDiskCache;

    #calls: Lcom/inveno/flyshare/lru/LruDiskCache;->completeEdit(Lcom/inveno/flyshare/lru/LruDiskCache$Editor;Z)V
    invoke-static {v0, p0, v2}, Lcom/inveno/flyshare/lru/LruDiskCache;->access$10(Lcom/inveno/flyshare/lru/LruDiskCache;Lcom/inveno/flyshare/lru/LruDiskCache$Editor;Z)V

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 860
    invoke-virtual {p0, p1}, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 861
    .local v0, in:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    #calls: Lcom/inveno/flyshare/lru/LruDiskCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/inveno/flyshare/lru/LruDiskCache;->access$6(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .locals 5
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 840
    iget-object v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->this$0:Lcom/inveno/flyshare/lru/LruDiskCache;

    monitor-enter v3

    .line 841
    :try_start_0
    iget-object v2, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->currentEditor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    invoke-static {v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$2(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Lcom/inveno/flyshare/lru/LruDiskCache$Editor;

    move-result-object v2

    if-eq v2, p0, :cond_0

    .line 842
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 840
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 844
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$0(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 845
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 850
    :goto_0
    return-object v1

    .line 848
    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;

    invoke-virtual {v4, p1}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, e:Ljava/io/FileNotFoundException;
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .locals 7
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 872
    iget-object v5, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->this$0:Lcom/inveno/flyshare/lru/LruDiskCache;

    monitor-enter v5

    .line 873
    :try_start_0
    iget-object v4, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->currentEditor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    invoke-static {v4}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$2(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Lcom/inveno/flyshare/lru/LruDiskCache$Editor;

    move-result-object v4

    if-eq v4, p0, :cond_0

    .line 874
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 872
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 876
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->readable:Z
    invoke-static {v4}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$0(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 877
    iget-object v4, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->written:[Z

    const/4 v6, 0x1

    aput-boolean v6, v4, p1

    .line 879
    :cond_1
    iget-object v4, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;

    invoke-virtual {v4, p1}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 882
    .local v0, dirtyFile:Ljava/io/File;
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 893
    .local v3, outputStream:Ljava/io/FileOutputStream;
    :goto_0
    :try_start_3
    new-instance v4, Lcom/inveno/flyshare/lru/LruDiskCache$Editor$FaultHidingOutputStream;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v3, v6}, Lcom/inveno/flyshare/lru/LruDiskCache$Editor$FaultHidingOutputStream;-><init>(Lcom/inveno/flyshare/lru/LruDiskCache$Editor;Ljava/io/OutputStream;Lcom/inveno/flyshare/lru/LruDiskCache$Editor$FaultHidingOutputStream;)V

    monitor-exit v5

    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    :goto_1
    return-object v4

    .line 883
    :catch_0
    move-exception v1

    .line 885
    .local v1, e:Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->this$0:Lcom/inveno/flyshare/lru/LruDiskCache;

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache;->directory:Ljava/io/File;
    invoke-static {v4}, Lcom/inveno/flyshare/lru/LruDiskCache;->access$8(Lcom/inveno/flyshare/lru/LruDiskCache;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 887
    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .restart local v3       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 888
    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 890
    .local v2, e2:Ljava/io/FileNotFoundException;
    :try_start_5
    invoke-static {}, Lcom/inveno/flyshare/lru/LruDiskCache;->access$9()Ljava/io/OutputStream;

    move-result-object v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public set(ILjava/lang/String;)V
    .locals 4
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 901
    const/4 v0, 0x0

    .line 903
    .local v0, writer:Ljava/io/Writer;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v2

    .line 904
    const-string v3, "UTF-8"

    .line 903
    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    .end local v0           #writer:Ljava/io/Writer;
    .local v1, writer:Ljava/io/Writer;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 907
    invoke-static {v1}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 909
    return-void

    .line 906
    .end local v1           #writer:Ljava/io/Writer;
    .restart local v0       #writer:Ljava/io/Writer;
    :catchall_0
    move-exception v2

    .line 907
    :goto_0
    invoke-static {v0}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 908
    throw v2

    .line 906
    .end local v0           #writer:Ljava/io/Writer;
    .restart local v1       #writer:Ljava/io/Writer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #writer:Ljava/io/Writer;
    .restart local v0       #writer:Ljava/io/Writer;
    goto :goto_0
.end method

.method public setEntryExpiryTimestamp(J)V
    .locals 1
    .parameter "timestamp"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;

    #setter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->expiryTimestamp:J
    invoke-static {v0, p1, p2}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$1(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;J)V

    .line 833
    return-void
.end method
