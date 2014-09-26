.class final Lcom/inveno/flyshare/lru/LruDiskCache$Entry;
.super Ljava/lang/Object;
.source "LruDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/flyshare/lru/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private currentEditor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;

.field private final diskKey:Ljava/lang/String;

.field private expiryTimestamp:J

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lcom/inveno/flyshare/lru/LruDiskCache;


# direct methods
.method private constructor <init>(Lcom/inveno/flyshare/lru/LruDiskCache;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "diskKey"

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->this$0:Lcom/inveno/flyshare/lru/LruDiskCache;

    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 989
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->expiryTimestamp:J

    .line 1013
    iput-object p2, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->diskKey:Ljava/lang/String;

    .line 1014
    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache;->valueCount:I
    invoke-static {p1}, Lcom/inveno/flyshare/lru/LruDiskCache;->access$7(Lcom/inveno/flyshare/lru/LruDiskCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->lengths:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/inveno/flyshare/lru/LruDiskCache;Ljava/lang/String;Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1012
    invoke-direct {p0, p1, p2}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;-><init>(Lcom/inveno/flyshare/lru/LruDiskCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$0(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Z
    .locals 1
    .parameter

    .prologue
    .line 999
    iget-boolean v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->readable:Z

    return v0
.end method

.method static synthetic access$1(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 989
    iput-wide p1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->expiryTimestamp:J

    return-void
.end method

.method static synthetic access$10(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)J
    .locals 2
    .parameter

    .prologue
    .line 1010
    iget-wide v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$11(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1010
    iput-wide p1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->sequenceNumber:J

    return-void
.end method

.method static synthetic access$2(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Lcom/inveno/flyshare/lru/LruDiskCache$Editor;
    .locals 1
    .parameter

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->currentEditor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;

    return-object v0
.end method

.method static synthetic access$3(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 987
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->diskKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 999
    iput-boolean p1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->readable:Z

    return-void
.end method

.method static synthetic access$6(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;Lcom/inveno/flyshare/lru/LruDiskCache$Editor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1004
    iput-object p1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->currentEditor:Lcom/inveno/flyshare/lru/LruDiskCache$Editor;

    return-void
.end method

.method static synthetic access$7(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;[Ljava/lang/String;I)V
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
    .line 1028
    invoke-direct {p0, p1, p2}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->setLengths([Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$8(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)[J
    .locals 1
    .parameter

    .prologue
    .line 994
    iget-object v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->lengths:[J

    return-object v0
.end method

.method static synthetic access$9(Lcom/inveno/flyshare/lru/LruDiskCache$Entry;)J
    .locals 2
    .parameter

    .prologue
    .line 989
    iget-wide v0, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->expiryTimestamp:J

    return-wide v0
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .parameter "strings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1044
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1045
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1044
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLengths([Ljava/lang/String;I)V
    .locals 5
    .parameter "strings"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1030
    array-length v2, p1

    sub-int/2addr v2, p2

    iget-object v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->this$0:Lcom/inveno/flyshare/lru/LruDiskCache;

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache;->valueCount:I
    invoke-static {v3}, Lcom/inveno/flyshare/lru/LruDiskCache;->access$7(Lcom/inveno/flyshare/lru/LruDiskCache;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1031
    invoke-direct {p0, p1}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1035
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->this$0:Lcom/inveno/flyshare/lru/LruDiskCache;

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache;->valueCount:I
    invoke-static {v2}, Lcom/inveno/flyshare/lru/LruDiskCache;->access$7(Lcom/inveno/flyshare/lru/LruDiskCache;)I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1041
    return-void

    .line 1036
    :cond_1
    iget-object v2, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->lengths:[J

    add-int v3, v1, p2

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1038
    :catch_0
    move-exception v0

    .line 1039
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public getCleanFile(I)Ljava/io/File;
    .locals 4
    .parameter "i"

    .prologue
    .line 1049
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->this$0:Lcom/inveno/flyshare/lru/LruDiskCache;

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache;->directory:Ljava/io/File;
    invoke-static {v1}, Lcom/inveno/flyshare/lru/LruDiskCache;->access$8(Lcom/inveno/flyshare/lru/LruDiskCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->diskKey:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirtyFile(I)Ljava/io/File;
    .locals 4
    .parameter "i"

    .prologue
    .line 1053
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->this$0:Lcom/inveno/flyshare/lru/LruDiskCache;

    #getter for: Lcom/inveno/flyshare/lru/LruDiskCache;->directory:Ljava/io/File;
    invoke-static {v1}, Lcom/inveno/flyshare/lru/LruDiskCache;->access$8(Lcom/inveno/flyshare/lru/LruDiskCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->diskKey:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLengths()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1019
    .local v0, result:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/inveno/flyshare/lru/LruDiskCache$Entry;->lengths:[J

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v5, :cond_0

    .line 1022
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1019
    :cond_0
    aget-wide v1, v4, v3

    .line 1020
    .local v1, size:J
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1019
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
