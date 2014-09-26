.class public final Lcom/inveno/flyshare/lru/LruDiskCache;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;,
        Lcom/inveno/flyshare/lru/LruDiskCache$Editor;,
        Lcom/inveno/flyshare/lru/LruDiskCache$Entry;,
        Lcom/inveno/flyshare/lru/LruDiskCache$MD5DiskCacheFileNameGenerator;,
        Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;,
        Lcom/inveno/flyshare/lru/LruDiskCache$StrictLineReader;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern; = null

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream; = null

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private diskCacheFileNameGenerator:Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inveno/flyshare/lru/LruDiskCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-string v0, "[a-z0-9_-]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 96
    sput-object v0, Lcom/inveno/flyshare/lru/LruDiskCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 810
    new-instance v0, Lcom/inveno/flyshare/lru/LruDiskCache$2;

    invoke-direct {v0}, Lcom/inveno/flyshare/lru/LruDiskCache$2;-><init>()V

    sput-object v0, Lcom/inveno/flyshare/lru/LruDiskCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    .line 89
    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 7
    .parameter "directory"
    .parameter "appVersion"
    .parameter "valueCount"
    .parameter "maxSize"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-wide v4, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->size:J

    .line 144
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 145
    const/high16 v3, 0x3f40

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 153
    iput-wide v4, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->nextSequenceNumber:J

    .line 158
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 159
    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 160
    new-instance v0, Lcom/inveno/flyshare/lru/LruDiskCache$1;

    invoke-direct {v0, p0}, Lcom/inveno/flyshare/lru/LruDiskCache$1;-><init>(Lcom/inveno/flyshare/lru/LruDiskCache;)V

    iput-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 1300
    new-instance v0, Lcom/inveno/flyshare/lru/LruDiskCache$MD5DiskCacheFileNameGenerator;

    invoke-direct {v0, p0}, Lcom/inveno/flyshare/lru/LruDiskCache$MD5DiskCacheFileNameGenerator;-><init>(Lcom/inveno/flyshare/lru/LruDiskCache;)V

    iput-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->diskCacheFileNameGenerator:Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;

    .line 178
    iput-object p1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->directory:Ljava/io/File;

    .line 179
    iput p2, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->appVersion:I

    .line 180
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalFile:Ljava/io/File;

    .line 181
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalFileTmp:Ljava/io/File;

    .line 182
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalFileBackup:Ljava/io/File;

    .line 183
    iput p3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->valueCount:I

    .line 184
    iput-wide p4, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->maxSize:J

    .line 185
    return-void
.end method

.method static synthetic access$0(Lcom/inveno/flyshare/lru/LruDiskCache;)Ljava/io/Writer;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/inveno/flyshare/lru/LruDiskCache;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 723
    invoke-direct {p0}, Lcom/inveno/flyshare/lru/LruDiskCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$10(Lcom/inveno/flyshare/lru/LruDiskCache;Lcom/inveno/flyshare/lru/LruDiskCache$Editor;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    invoke-direct {p0, p1, p2}, Lcom/inveno/flyshare/lru/LruDiskCache;->completeEdit(Lcom/inveno/flyshare/lru/LruDiskCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/inveno/flyshare/lru/LruDiskCache;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 654
    invoke-direct {p0, p1}, Lcom/inveno/flyshare/lru/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/inveno/flyshare/lru/LruDiskCache;)Z
    .locals 1
    .parameter

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/inveno/flyshare/lru/LruDiskCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/inveno/flyshare/lru/LruDiskCache;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/inveno/flyshare/lru/LruDiskCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$4(Lcom/inveno/flyshare/lru/LruDiskCache;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    iput p1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->redundantOpCount:I

    return-void
.end method

.method static synthetic access$5(Lcom/inveno/flyshare/lru/LruDiskCache;Ljava/lang/String;J)Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    invoke-direct {p0, p1, p2, p3}, Lcom/inveno/flyshare/lru/LruDiskCache;->editByDiskKey(Ljava/lang/String;J)Lcom/inveno/flyshare/lru/LruDiskCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 750
    invoke-static {p0}, Lcom/inveno/flyshare/lru/LruDiskCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/inveno/flyshare/lru/LruDiskCache;)I
    .locals 1
    .parameter

    .prologue
    .line 141
    iget v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->valueCount:I

    return v0
.end method

.method static synthetic access$8(Lcom/inveno/flyshare/lru/LruDiskCache;)Ljava/io/File;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$9()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 810
    sget-object v0, Lcom/inveno/flyshare/lru/LruDiskCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 692
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 694
    :cond_0
    return-void
.end method

.method private declared-synchronized completeEdit(Lcom/inveno/flyshare/lru/LruDiskCache$Editor;Z)V
    .locals 12
    .parameter "editor"
    .parameter "success"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    monitor-enter p0

    :try_start_0
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    invoke-static {p1}, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->access$2(Lcom/inveno/flyshare/lru/LruDiskCache$Editor;)Lcom/inveno/flyshare/lru/LruDiskCache$Entry;

    move-result-object v2

    .line 576
    .local v2, entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->currentEditor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    invoke-static {v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$2(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Lcom/inveno/flyshare/lru/LruDiskCache$Editor;

    move-result-object v8

    if-eq v8, p1, :cond_0

    .line 577
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    .end local v2           #entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 582
    .restart local v2       #entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    :cond_0
    if-eqz p2, :cond_1

    :try_start_1
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$0(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 583
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v8, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->valueCount:I

    if-lt v3, v8, :cond_5

    .line 597
    .end local v3           #i:I
    :cond_1
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    iget v8, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->valueCount:I

    if-lt v3, v8, :cond_8

    .line 613
    iget v8, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->redundantOpCount:I

    .line 614
    const/4 v8, 0x0

    #setter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->currentEditor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    invoke-static {v2, v8}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$6(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;Lcom/inveno/flyshare/lru/LruDiskCache$Editor;)V

    .line 615
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$0(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_b

    .line 616
    const/4 v8, 0x1

    #setter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->readable:Z
    invoke-static {v2, v8}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$5(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;Z)V

    .line 617
    iget-object v8, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "CLEAN "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$3(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " t_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 618
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->expiryTimestamp:J
    invoke-static {v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$9(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 617
    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 619
    if-eqz p2, :cond_2

    .line 620
    iget-wide v8, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->nextSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->nextSequenceNumber:J

    #setter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->sequenceNumber:J
    invoke-static {v2, v8, v9}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$11(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;J)V

    .line 626
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v8}, Ljava/io/Writer;->flush()V

    .line 628
    iget-wide v8, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->size:J

    iget-wide v10, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_3

    invoke-direct {p0}, Lcom/inveno/flyshare/lru/LruDiskCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 629
    :cond_3
    iget-object v8, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v9, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    :cond_4
    :goto_3
    monitor-exit p0

    return-void

    .line 584
    :cond_5
    :try_start_2
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->written:[Z
    invoke-static {p1}, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->access$3(Lcom/inveno/flyshare/lru/LruDiskCache$Editor;)[Z

    move-result-object v8

    aget-boolean v8, v8, v3

    if-nez v8, :cond_6

    .line 585
    invoke-virtual {p1}, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->abort()V

    .line 586
    new-instance v8, Ljava/lang/IllegalStateException;

    .line 587
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Newly created entry didn\'t create value for index "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 588
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 587
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 586
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 590
    :cond_6
    invoke-virtual {v2, v3}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_7

    .line 591
    invoke-virtual {p1}, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->abort()V

    goto :goto_3

    .line 583
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 598
    :cond_8
    invoke-virtual {v2, v3}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 599
    .local v1, dirty:Ljava/io/File;
    if-eqz p2, :cond_a

    .line 600
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 601
    invoke-virtual {v2, v3}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    .line 602
    .local v0, clean:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 603
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$8(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 604
    .local v6, oldLength:J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 605
    .local v4, newLength:J
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$8(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 606
    iget-wide v8, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->size:J

    .line 597
    .end local v0           #clean:Ljava/io/File;
    .end local v4           #newLength:J
    .end local v6           #oldLength:J
    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 609
    :cond_a
    invoke-static {v1}, Lcom/inveno/flyshare/lru/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_4

    .line 623
    .end local v1           #dirty:Ljava/io/File;
    :cond_b
    iget-object v8, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$3(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    iget-object v8, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "REMOVE "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$3(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method private static deleteContents(Ljava/io/File;)V
    .locals 5
    .parameter "dir"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1080
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1081
    .local v1, files:[Ljava/io/File;
    if-nez v1, :cond_0

    .line 1082
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "not a readable directory: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1084
    :cond_0
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    .line 1092
    return-void

    .line 1084
    :cond_1
    aget-object v0, v1, v2

    .line 1085
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1086
    invoke-static {v0}, Lcom/inveno/flyshare/lru/LruDiskCache;->deleteContents(Ljava/io/File;)V

    .line 1088
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1089
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to delete file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1084
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 406
    :cond_0
    return-void
.end method

.method private declared-synchronized editByDiskKey(Ljava/lang/String;J)Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    .locals 5
    .parameter "diskKey"
    .parameter "expectedSequenceNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 517
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/inveno/flyshare/lru/LruDiskCache;->checkNotClosed()V

    .line 518
    invoke-direct {p0, p1}, Lcom/inveno/flyshare/lru/LruDiskCache;->validateKey(Ljava/lang/String;)V

    .line 519
    iget-object v2, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;

    .line 520
    .local v1, entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    .line 521
    if-eqz v1, :cond_0

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->sequenceNumber:J
    invoke-static {v1}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$10(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    .line 537
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 524
    :cond_1
    if-nez v1, :cond_3

    .line 525
    :try_start_1
    new-instance v1, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;

    .end local v1           #entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;-><init>(Lcom/inveno/flyshare/lru/LruDiskCache;Ljava/lang/String;Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)V

    .line 526
    .restart local v1       #entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    iget-object v2, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    :cond_2
    new-instance v0, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;-><init>(Lcom/inveno/flyshare/lru/LruDiskCache;Lcom/inveno/flyshare/lru/LruDiskCache$Entry;Lcom/inveno/flyshare/lru/LruDiskCache$Editor;)V

    .line 532
    .local v0, editor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    #setter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->currentEditor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    invoke-static {v1, v0}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$6(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;Lcom/inveno/flyshare/lru/LruDiskCache$Editor;)V

    .line 535
    iget-object v2, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 536
    iget-object v2, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 517
    .end local v0           #editor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    .end local v1           #entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 527
    .restart local v1       #entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    :cond_3
    :try_start_2
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->currentEditor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    invoke-static {v1}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$2(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method private declared-synchronized getByDiskKey(Ljava/lang/String;)Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;
    .locals 12
    .parameter "diskKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 447
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/inveno/flyshare/lru/LruDiskCache;->checkNotClosed()V

    .line 448
    invoke-direct {p0, p1}, Lcom/inveno/flyshare/lru/LruDiskCache;->validateKey(Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    .local v9, entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    if-nez v9, :cond_1

    .line 503
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 454
    :cond_1
    :try_start_1
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->readable:Z
    invoke-static {v9}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$0(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->expiryTimestamp:J
    invoke-static {v9}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$9(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_4

    .line 460
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    iget v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->valueCount:I

    if-lt v11, v1, :cond_2

    .line 468
    iget v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->redundantOpCount:I

    .line 469
    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "REMOVE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 470
    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    invoke-direct {p0}, Lcom/inveno/flyshare/lru/LruDiskCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 447
    .end local v9           #entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    .end local v11           #i:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 461
    .restart local v9       #entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    .restart local v11       #i:I
    :cond_2
    :try_start_2
    invoke-virtual {v9, v11}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v10

    .line 462
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 463
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to delete "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_3
    iget-wide v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->size:J

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->lengths:[J
    invoke-static {v9}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$8(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)[J

    move-result-object v3

    aget-wide v3, v3, v11

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->size:J

    .line 466
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->lengths:[J
    invoke-static {v9}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$8(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)[J

    move-result-object v1

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v11

    .line 460
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 480
    .end local v10           #file:Ljava/io/File;
    .end local v11           #i:I
    :cond_4
    iget v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->valueCount:I

    new-array v5, v1, [Ljava/io/FileInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 482
    .local v5, ins:[Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_2
    :try_start_3
    iget v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->valueCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    if-lt v11, v1, :cond_6

    .line 497
    :try_start_4
    iget v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->redundantOpCount:I

    .line 498
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "READ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 499
    invoke-direct {p0}, Lcom/inveno/flyshare/lru/LruDiskCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 500
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 503
    :cond_5
    new-instance v0, Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->sequenceNumber:J
    invoke-static {v9}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$10(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)J

    move-result-wide v3

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->lengths:[J
    invoke-static {v9}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$8(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)[J

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;-><init>(Lcom/inveno/flyshare/lru/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[JLcom/inveno/flyshare/lru/LruDiskCache$Snapshot;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 483
    :cond_6
    :try_start_5
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v9, v11}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v1, v5, v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0

    .line 482
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 485
    :catch_0
    move-exception v8

    .line 487
    .local v8, e:Ljava/io/FileNotFoundException;
    const/4 v11, 0x0

    :goto_3
    :try_start_6
    iget v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->valueCount:I

    if-ge v11, v1, :cond_0

    .line 488
    aget-object v1, v5, v11

    if-eqz v1, :cond_0

    .line 489
    aget-object v1, v5, v11

    invoke-static {v1}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 487
    add-int/lit8 v11, v11, 0x1

    goto :goto_3
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 752
    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/inveno/flyshare/lru/LruDiskCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 3

    .prologue
    .line 638
    const/16 v0, 0x7d0

    .line 639
    .local v0, redundantOpCompactThreshold:I
    iget v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    .line 640
    iget v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->redundantOpCount:I

    iget-object v2, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    .line 639
    goto :goto_0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/inveno/flyshare/lru/LruDiskCache;
    .locals 10
    .parameter "directory"
    .parameter "appVersion"
    .parameter "valueCount"
    .parameter "maxSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gtz v1, :cond_0

    .line 203
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_0
    if-gtz p2, :cond_1

    .line 206
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_1
    new-instance v6, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v6, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    .local v6, backupFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    new-instance v8, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v8, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 214
    .local v8, journalFile:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 215
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 222
    .end local v8           #journalFile:Ljava/io/File;
    :cond_2
    :goto_0
    new-instance v0, Lcom/inveno/flyshare/lru/LruDiskCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/inveno/flyshare/lru/LruDiskCache;-><init>(Ljava/io/File;IIJ)V

    .line 224
    .local v0, cache:Lcom/inveno/flyshare/lru/LruDiskCache;
    iget-object v1, v0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 226
    :try_start_0
    invoke-direct {v0}, Lcom/inveno/flyshare/lru/LruDiskCache;->readJournal()V

    .line 227
    invoke-direct {v0}, Lcom/inveno/flyshare/lru/LruDiskCache;->processJournal()V

    .line 228
    new-instance v1, Ljava/io/BufferedWriter;

    .line 229
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    .line 230
    iget-object v4, v0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v4, "US-ASCII"

    .line 229
    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 228
    iput-object v1, v0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v0

    .line 243
    .end local v0           #cache:Lcom/inveno/flyshare/lru/LruDiskCache;
    .local v7, cache:Ljava/lang/Object;
    :goto_1
    return-object v7

    .line 217
    .end local v7           #cache:Ljava/lang/Object;
    .restart local v8       #journalFile:Ljava/io/File;
    :cond_3
    const/4 v1, 0x0

    invoke-static {v6, v8, v1}, Lcom/inveno/flyshare/lru/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_0

    .line 232
    .end local v8           #journalFile:Ljava/io/File;
    .restart local v0       #cache:Lcom/inveno/flyshare/lru/LruDiskCache;
    :catch_0
    move-exception v9

    .line 233
    .local v9, journalIsCorrupt:Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DiskLruCache "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is corrupt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 234
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 233
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0}, Lcom/inveno/flyshare/lru/LruDiskCache;->delete()V

    .line 240
    .end local v9           #journalIsCorrupt:Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 241
    new-instance v0, Lcom/inveno/flyshare/lru/LruDiskCache;

    .end local v0           #cache:Lcom/inveno/flyshare/lru/LruDiskCache;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/inveno/flyshare/lru/LruDiskCache;-><init>(Ljava/io/File;IIJ)V

    .line 242
    .restart local v0       #cache:Lcom/inveno/flyshare/lru/LruDiskCache;
    invoke-direct {v0}, Lcom/inveno/flyshare/lru/LruDiskCache;->rebuildJournal()V

    move-object v7, v0

    .line 243
    .restart local v7       #cache:Ljava/lang/Object;
    goto :goto_1
.end method

.method private processJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Lcom/inveno/flyshare/lru/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 340
    iget-object v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/inveno/flyshare/lru/LruDiskCache$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 355
    return-void

    .line 341
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;

    .line 342
    .local v0, entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->currentEditor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    invoke-static {v0}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$2(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Lcom/inveno/flyshare/lru/LruDiskCache$Editor;

    move-result-object v3

    if-nez v3, :cond_2

    .line 343
    const/4 v2, 0x0

    .local v2, t:I
    :goto_1
    iget v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 344
    iget-wide v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->size:J

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$8(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->size:J

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 347
    .end local v2           #t:I
    :cond_2
    const/4 v3, 0x0

    #setter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->currentEditor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    invoke-static {v0, v3}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$6(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;Lcom/inveno/flyshare/lru/LruDiskCache$Editor;)V

    .line 348
    const/4 v2, 0x0

    .restart local v2       #t:I
    :goto_2
    iget v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->valueCount:I

    if-lt v2, v3, :cond_3

    .line 352
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 349
    :cond_3
    invoke-virtual {v0, v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/flyshare/lru/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 350
    invoke-virtual {v0, v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/flyshare/lru/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 5
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1060
    const/4 v2, 0x0

    .line 1062
    .local v2, writer:Ljava/io/StringWriter;
    :try_start_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1063
    .end local v2           #writer:Ljava/io/StringWriter;
    .local v3, writer:Ljava/io/StringWriter;
    const/16 v4, 0x400

    :try_start_1
    new-array v0, v4, [C

    .line 1065
    .local v0, buffer:[C
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, count:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 1068
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1070
    invoke-static {p0}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1071
    invoke-static {v3}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1068
    return-object v4

    .line 1066
    :cond_0
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v3, v0, v4, v1}, Ljava/io/StringWriter;->write([CII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1069
    .end local v0           #buffer:[C
    .end local v1           #count:I
    :catchall_0
    move-exception v4

    move-object v2, v3

    .line 1070
    .end local v3           #writer:Ljava/io/StringWriter;
    .restart local v2       #writer:Ljava/io/StringWriter;
    :goto_1
    invoke-static {p0}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1071
    invoke-static {v2}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1072
    throw v4

    .line 1069
    :catchall_1
    move-exception v4

    goto :goto_1
.end method

.method private readJournal()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v4, 0x0

    .line 249
    .local v4, reader:Lcom/inveno/flyshare/lru/LruDiskCache$StrictLineReader;
    :try_start_0
    new-instance v5, Lcom/inveno/flyshare/lru/LruDiskCache$StrictLineReader;

    new-instance v8, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, p0, v8}, Lcom/inveno/flyshare/lru/LruDiskCache$StrictLineReader;-><init>(Lcom/inveno/flyshare/lru/LruDiskCache;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 250
    .end local v4           #reader:Lcom/inveno/flyshare/lru/LruDiskCache$StrictLineReader;
    .local v5, reader:Lcom/inveno/flyshare/lru/LruDiskCache$StrictLineReader;
    :try_start_1
    invoke-virtual {v5}, Lcom/inveno/flyshare/lru/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, magic:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/inveno/flyshare/lru/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 252
    .local v7, version:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/inveno/flyshare/lru/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, appVersionString:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/inveno/flyshare/lru/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 254
    .local v6, valueCountString:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/inveno/flyshare/lru/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, blank:Ljava/lang/String;
    const-string v8, "libcore.io.DiskLruCache"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 256
    iget v8, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->appVersion:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 257
    iget v8, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->valueCount:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 258
    const-string v8, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 259
    :cond_0
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "unexpected journal header: ["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 260
    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 261
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 259
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    .end local v0           #appVersionString:Ljava/lang/String;
    .end local v1           #blank:Ljava/lang/String;
    .end local v3           #magic:Ljava/lang/String;
    .end local v6           #valueCountString:Ljava/lang/String;
    .end local v7           #version:Ljava/lang/String;
    :catchall_0
    move-exception v8

    move-object v4, v5

    .line 275
    .end local v5           #reader:Lcom/inveno/flyshare/lru/LruDiskCache$StrictLineReader;
    .restart local v4       #reader:Lcom/inveno/flyshare/lru/LruDiskCache$StrictLineReader;
    :goto_0
    invoke-static {v4}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 276
    throw v8

    .line 264
    .end local v4           #reader:Lcom/inveno/flyshare/lru/LruDiskCache$StrictLineReader;
    .restart local v0       #appVersionString:Ljava/lang/String;
    .restart local v1       #blank:Ljava/lang/String;
    .restart local v3       #magic:Ljava/lang/String;
    .restart local v5       #reader:Lcom/inveno/flyshare/lru/LruDiskCache$StrictLineReader;
    .restart local v6       #valueCountString:Ljava/lang/String;
    .restart local v7       #version:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    .line 267
    .local v2, lineCount:I
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Lcom/inveno/flyshare/lru/LruDiskCache$StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/inveno/flyshare/lru/LruDiskCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 269
    :catch_0
    move-exception v8

    .line 273
    :try_start_3
    iget-object v8, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    sub-int v8, v2, v8

    iput v8, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->redundantOpCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 275
    invoke-static {v5}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 277
    return-void

    .line 274
    .end local v0           #appVersionString:Ljava/lang/String;
    .end local v1           #blank:Ljava/lang/String;
    .end local v2           #lineCount:I
    .end local v3           #magic:Ljava/lang/String;
    .end local v5           #reader:Lcom/inveno/flyshare/lru/LruDiskCache$StrictLineReader;
    .end local v6           #valueCountString:Ljava/lang/String;
    .end local v7           #version:Ljava/lang/String;
    .restart local v4       #reader:Lcom/inveno/flyshare/lru/LruDiskCache$StrictLineReader;
    :catchall_1
    move-exception v8

    goto :goto_0
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 11
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x20

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 280
    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 281
    .local v3, firstSpace:I
    if-ne v3, v8, :cond_0

    .line 282
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "unexpected journal line: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 285
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 286
    .local v4, keyBegin:I
    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 288
    .local v6, secondSpace:I
    if-ne v6, v8, :cond_2

    .line 289
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, diskKey:Ljava/lang/String;
    const-string v7, "REMOVE"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v3, v7, :cond_3

    const-string v7, "REMOVE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 291
    iget-object v7, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_1
    :goto_0
    return-void

    .line 295
    .end local v0           #diskKey:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 298
    .restart local v0       #diskKey:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;

    .line 299
    .local v2, entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    if-nez v2, :cond_4

    .line 300
    new-instance v2, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;

    .end local v2           #entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    invoke-direct {v2, p0, v0, v9}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;-><init>(Lcom/inveno/flyshare/lru/LruDiskCache;Ljava/lang/String;Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)V

    .line 301
    .restart local v2       #entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    iget-object v7, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_4
    if-eq v6, v8, :cond_6

    const-string v7, "CLEAN"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v3, v7, :cond_6

    .line 305
    const-string v7, "CLEAN"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 306
    #setter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->readable:Z
    invoke-static {v2, v10}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$5(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;Z)V

    .line 307
    #setter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->currentEditor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    invoke-static {v2, v9}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$6(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;Lcom/inveno/flyshare/lru/LruDiskCache$Editor;)V

    .line 308
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, parts:[Ljava/lang/String;
    array-length v7, v5

    if-lez v7, :cond_1

    .line 311
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v5, v7

    const-string v8, "t_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 312
    const/4 v7, 0x0

    aget-object v7, v5, v7

    .line 313
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 312
    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    #setter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->expiryTimestamp:J
    invoke-static {v2, v7, v8}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$1(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;J)V

    .line 314
    const/4 v7, 0x1

    #calls: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->setLengths([Ljava/lang/String;I)V
    invoke-static {v2, v5, v7}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$7(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 319
    :catch_0
    move-exception v1

    .line 320
    .local v1, e:Ljava/lang/Throwable;
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "unexpected journal line: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 316
    .end local v1           #e:Ljava/lang/Throwable;
    :cond_5
    const-wide v7, 0x7fffffffffffffffL

    :try_start_1
    #setter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->expiryTimestamp:J
    invoke-static {v2, v7, v8}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$1(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;J)V

    .line 317
    const/4 v7, 0x0

    #calls: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->setLengths([Ljava/lang/String;I)V
    invoke-static {v2, v5, v7}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$7(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;[Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 323
    .end local v5           #parts:[Ljava/lang/String;
    :cond_6
    if-ne v6, v8, :cond_7

    const-string v7, "DIRTY"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v3, v7, :cond_7

    .line 324
    const-string v7, "DIRTY"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 325
    new-instance v7, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;

    invoke-direct {v7, p0, v2, v9}, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;-><init>(Lcom/inveno/flyshare/lru/LruDiskCache;Lcom/inveno/flyshare/lru/LruDiskCache$Entry;Lcom/inveno/flyshare/lru/LruDiskCache$Editor;)V

    #setter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->currentEditor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    invoke-static {v2, v7}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$6(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;Lcom/inveno/flyshare/lru/LruDiskCache$Editor;)V

    goto/16 :goto_0

    .line 326
    :cond_7
    if-ne v6, v8, :cond_8

    const-string v7, "READ"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v3, v7, :cond_8

    .line 327
    const-string v7, "READ"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 330
    :cond_8
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "unexpected journal line: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalWriter:Ljava/io/Writer;

    if-eqz v3, :cond_0

    .line 363
    iget-object v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-static {v3}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 366
    :cond_0
    const/4 v1, 0x0

    .line 368
    .local v1, writer:Ljava/io/Writer;
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    .line 369
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v5, "US-ASCII"

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 368
    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 370
    .end local v1           #writer:Ljava/io/Writer;
    .local v2, writer:Ljava/io/Writer;
    :try_start_2
    const-string v3, "libcore.io.DiskLruCache"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 371
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 372
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 373
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 374
    iget v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->appVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 375
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 376
    iget v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->valueCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 377
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 378
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 380
    iget-object v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 389
    :try_start_3
    invoke-static {v2}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 392
    iget-object v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 393
    iget-object v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalFile:Ljava/io/File;

    iget-object v4, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalFileBackup:Ljava/io/File;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/inveno/flyshare/lru/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 395
    :cond_1
    iget-object v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalFileTmp:Ljava/io/File;

    iget-object v4, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/inveno/flyshare/lru/LruDiskCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 396
    iget-object v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 398
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    .line 399
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalFile:Ljava/io/File;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v6, "US-ASCII"

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 398
    iput-object v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 400
    monitor-exit p0

    return-void

    .line 380
    :cond_2
    :try_start_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;

    .line 381
    .local v0, entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->currentEditor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    invoke-static {v0}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$2(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Lcom/inveno/flyshare/lru/LruDiskCache$Editor;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 382
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DIRTY "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$3(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 388
    .end local v0           #entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    :catchall_0
    move-exception v3

    move-object v1, v2

    .line 389
    .end local v2           #writer:Ljava/io/Writer;
    .restart local v1       #writer:Ljava/io/Writer;
    :goto_1
    :try_start_5
    invoke-static {v1}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 390
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 362
    .end local v1           #writer:Ljava/io/Writer;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 384
    .restart local v0       #entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    .restart local v2       #writer:Ljava/io/Writer;
    :cond_3
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CLEAN "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->diskKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$3(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " t_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 385
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->expiryTimestamp:J
    invoke-static {v0}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$9(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 384
    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 388
    .end local v0           #entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    .end local v2           #writer:Ljava/io/Writer;
    .restart local v1       #writer:Ljava/io/Writer;
    :catchall_2
    move-exception v3

    goto :goto_1
.end method

.method private declared-synchronized removeByDiskKey(Ljava/lang/String;)Z
    .locals 7
    .parameter "diskKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 656
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/inveno/flyshare/lru/LruDiskCache;->checkNotClosed()V

    .line 657
    invoke-direct {p0, p1}, Lcom/inveno/flyshare/lru/LruDiskCache;->validateKey(Ljava/lang/String;)V

    .line 658
    iget-object v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;

    .line 659
    .local v0, entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    if-eqz v0, :cond_0

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->currentEditor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    invoke-static {v0}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$2(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    .line 660
    :cond_0
    const/4 v3, 0x0

    .line 680
    :goto_0
    monitor-exit p0

    return v3

    .line 663
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->valueCount:I

    if-lt v2, v3, :cond_3

    .line 672
    iget v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->redundantOpCount:I

    .line 673
    iget-object v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "REMOVE "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 674
    iget-object v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    invoke-direct {p0}, Lcom/inveno/flyshare/lru/LruDiskCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 677
    iget-object v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v4, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 680
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 664
    :cond_3
    invoke-virtual {v0, v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    .line 665
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_4

    .line 666
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed to delete "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 656
    .end local v0           #entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 668
    .restart local v0       #entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #i:I
    :cond_4
    :try_start_2
    iget-wide v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->size:J

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$8(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->size:J

    .line 669
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$8(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 663
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .locals 1
    .parameter "from"
    .parameter "to"
    .parameter "deleteDestination"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 410
    if-eqz p2, :cond_0

    .line 411
    invoke-static {p1}, Lcom/inveno/flyshare/lru/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 413
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 416
    :cond_1
    return-void
.end method

.method private trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 724
    :goto_0
    iget-wide v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->size:J

    iget-wide v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->maxSize:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 729
    return-void

    .line 725
    :cond_0
    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 726
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 727
    .local v0, toEvict:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/inveno/flyshare/lru/LruDiskCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/inveno/flyshare/lru/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 4
    .parameter "diskKey"

    .prologue
    .line 742
    sget-object v1, Lcom/inveno/flyshare/lru/LruDiskCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 743
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 744
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 745
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "keys must match regex [a-z0-9_-]{1,64}: \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 746
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 745
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 744
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 748
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 710
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 721
    :goto_0
    monitor-exit p0

    return-void

    .line 713
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 718
    invoke-direct {p0}, Lcom/inveno/flyshare/lru/LruDiskCache;->trimToSize()V

    .line 719
    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 720
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 710
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 713
    :cond_2
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;

    .line 714
    .local v0, entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->currentEditor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    invoke-static {v0}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$2(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Lcom/inveno/flyshare/lru/LruDiskCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 715
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->currentEditor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    invoke-static {v0}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$2(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Lcom/inveno/flyshare/lru/LruDiskCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inveno/flyshare/lru/LruDiskCache$Editor;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 737
    invoke-static {p0}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 738
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/inveno/flyshare/lru/LruDiskCache;->deleteContents(Ljava/io/File;)V

    .line 739
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 511
    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->diskCacheFileNameGenerator:Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;

    invoke-interface {v1, p1}, Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, diskKey:Ljava/lang/String;
    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/inveno/flyshare/lru/LruDiskCache;->editByDiskKey(Ljava/lang/String;J)Lcom/inveno/flyshare/lru/LruDiskCache$Editor;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 700
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/inveno/flyshare/lru/LruDiskCache;->checkNotClosed()V

    .line 701
    invoke-direct {p0}, Lcom/inveno/flyshare/lru/LruDiskCache;->trimToSize()V

    .line 702
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    monitor-exit p0

    return-void

    .line 700
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/String;)Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->diskCacheFileNameGenerator:Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;

    invoke-interface {v1, p1}, Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, diskKey:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/inveno/flyshare/lru/LruDiskCache;->getByDiskKey(Ljava/lang/String;)Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;

    move-result-object v1

    return-object v1
.end method

.method public getCacheFile(Ljava/lang/String;I)Ljava/io/File;
    .locals 5
    .parameter "key"
    .parameter "index"

    .prologue
    .line 431
    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->diskCacheFileNameGenerator:Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;

    invoke-interface {v1, p1}, Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, diskKey:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->directory:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public getDiskCacheFileNameGenerator()Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->diskCacheFileNameGenerator:Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;

    return-object v0
.end method

.method public declared-synchronized getExpiryTimestamp(Ljava/lang/String;)J
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->diskCacheFileNameGenerator:Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;

    invoke-interface {v2, p1}, Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, diskKey:Ljava/lang/String;
    invoke-direct {p0}, Lcom/inveno/flyshare/lru/LruDiskCache;->checkNotClosed()V

    .line 421
    invoke-direct {p0, v0}, Lcom/inveno/flyshare/lru/LruDiskCache;->validateKey(Ljava/lang/String;)V

    .line 422
    iget-object v2, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    .local v1, entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    if-nez v1, :cond_0

    .line 424
    const-wide/16 v2, 0x0

    .line 426
    :goto_0
    monitor-exit p0

    return-wide v2

    :cond_0
    :try_start_1
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->expiryTimestamp:J
    invoke-static {v1}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->access$9(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 419
    .end local v0           #diskKey:Ljava/lang/String;
    .end local v1           #entry:Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getMaxSize()J
    .locals 2

    .prologue
    .line 552
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .prologue
    .line 687
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->diskCacheFileNameGenerator:Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;

    invoke-interface {v1, p1}, Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, diskKey:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/inveno/flyshare/lru/LruDiskCache;->removeByDiskKey(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setDiskCacheFileNameGenerator(Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;)V
    .locals 0
    .parameter "diskCacheFileNameGenerator"

    .prologue
    .line 1308
    if-eqz p1, :cond_0

    .line 1309
    iput-object p1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->diskCacheFileNameGenerator:Lcom/inveno/flyshare/lru/LruDiskCache$DiskCacheFileNameGenerator;

    .line 1311
    :cond_0
    return-void
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 2
    .parameter "maxSize"

    .prologue
    .line 560
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->maxSize:J

    .line 561
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    monitor-exit p0

    return-void

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()J
    .locals 2

    .prologue
    .line 570
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
