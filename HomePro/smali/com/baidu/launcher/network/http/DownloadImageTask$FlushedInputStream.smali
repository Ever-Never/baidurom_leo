.class Lcom/baidu/launcher/network/http/DownloadImageTask$FlushedInputStream;
.super Ljava/io/FilterInputStream;
.source "DownloadImageTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/network/http/DownloadImageTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FlushedInputStream"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "inputStream"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 73
    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 8
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const-wide/16 v3, 0x0

    .line 78
    .local v3, totalBytesSkipped:J
    :goto_0
    cmp-long v5, v3, p1

    if-gez v5, :cond_0

    .line 79
    iget-object v5, p0, Lcom/baidu/launcher/network/http/DownloadImageTask$FlushedInputStream;->in:Ljava/io/InputStream;

    sub-long v6, p1, v3

    invoke-virtual {v5, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    .line 80
    .local v1, bytesSkipped:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-nez v5, :cond_2

    .line 81
    invoke-virtual {p0}, Lcom/baidu/launcher/network/http/DownloadImageTask$FlushedInputStream;->read()I

    move-result v0

    .line 82
    .local v0, b:I
    if-gez v0, :cond_1

    .line 90
    .end local v0           #b:I
    .end local v1           #bytesSkipped:J
    :cond_0
    return-wide v3

    .line 85
    .restart local v0       #b:I
    .restart local v1       #bytesSkipped:J
    :cond_1
    const-wide/16 v1, 0x1

    .line 88
    .end local v0           #b:I
    :cond_2
    add-long/2addr v3, v1

    .line 89
    goto :goto_0
.end method
