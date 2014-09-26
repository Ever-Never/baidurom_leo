.class public final Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/flyshare/lru/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final diskKey:Ljava/lang/String;

.field private final ins:[Ljava/io/FileInputStream;

.field private final lengths:[J

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/inveno/flyshare/lru/LruDiskCache;


# direct methods
.method private constructor <init>(Lcom/inveno/flyshare/lru/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[J)V
    .locals 0
    .parameter
    .parameter "diskKey"
    .parameter "sequenceNumber"
    .parameter "ins"
    .parameter "lengths"

    .prologue
    .line 770
    iput-object p1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;->this$0:Lcom/inveno/flyshare/lru/LruDiskCache;

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 766
    iput-object p2, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;->diskKey:Ljava/lang/String;

    .line 767
    iput-wide p3, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;->sequenceNumber:J

    .line 768
    iput-object p5, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;->ins:[Ljava/io/FileInputStream;

    .line 769
    iput-object p6, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;->lengths:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/inveno/flyshare/lru/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[JLcom/inveno/flyshare/lru/LruDiskCache$Snapshot;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 764
    invoke-direct/range {p0 .. p6}, Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;-><init>(Lcom/inveno/flyshare/lru/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 804
    iget-object v2, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;->ins:[Ljava/io/FileInputStream;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 807
    return-void

    .line 804
    :cond_0
    aget-object v0, v2, v1

    .line 805
    .local v0, in:Ljava/io/InputStream;
    invoke-static {v0}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 804
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public edit()Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 778
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;->this$0:Lcom/inveno/flyshare/lru/LruDiskCache;

    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;->diskKey:Ljava/lang/String;

    iget-wide v2, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;->sequenceNumber:J

    #calls: Lcom/inveno/flyshare/lru/LruDiskCache;->editByDiskKey(Ljava/lang/String;J)Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    invoke-static {v0, v1, v2, v3}, Lcom/inveno/flyshare/lru/LruDiskCache;->access$5(Lcom/inveno/flyshare/lru/LruDiskCache;Ljava/lang/String;J)Lcom/inveno/flyshare/lru/LruDiskCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/FileInputStream;
    .locals 1
    .parameter "index"

    .prologue
    .line 785
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;->ins:[Ljava/io/FileInputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLength(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 799
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;->lengths:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 792
    invoke-virtual {p0, p1}, Lcom/inveno/flyshare/lru/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/FileInputStream;

    move-result-object v0

    #calls: Lcom/inveno/flyshare/lru/LruDiskCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/inveno/flyshare/lru/LruDiskCache;->access$6(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
