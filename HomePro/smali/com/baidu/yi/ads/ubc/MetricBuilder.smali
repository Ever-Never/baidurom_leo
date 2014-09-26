.class public Lcom/baidu/yi/ads/ubc/MetricBuilder;
.super Ljava/lang/Object;
.source "MetricBuilder.java"


# static fields
.field public static final SIZE_CHAR:I = 0x1

.field public static final SIZE_DOUBLE:I = 0x8

.field public static final SIZE_FLOAT:I = 0x4

.field public static final SIZE_INT:I = 0x4

.field public static final SIZE_SHORT:I = 0x2

.field public static final SIZE_UCHAR:I = 0x1

.field public static final SIZE_UINT:I = 0x4

.field public static final SIZE_USHORT:I = 0x2


# instance fields
.field private final BUFFER_BLOCK_SIZE:I

.field private mBufferLength:I

.field mByteOrder:Ljava/nio/ByteOrder;

.field private mContentLength:I

.field private mMetricBuffer:Ljava/nio/ByteBuffer;

.field private mMetricId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x10

    iput v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->BUFFER_BLOCK_SIZE:I

    .line 44
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    .line 45
    invoke-virtual {p0}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->reset()V

    .line 46
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .parameter "metricId"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x10

    iput v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->BUFFER_BLOCK_SIZE:I

    .line 66
    iput-wide p1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mMetricId:J

    .line 67
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    .line 68
    invoke-virtual {p0}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->reset()V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1
    .parameter "byteOrder"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x10

    iput v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->BUFFER_BLOCK_SIZE:I

    .line 55
    iput-object p1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    .line 56
    invoke-virtual {p0}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->reset()V

    .line 57
    return-void
.end method

.method private prepareBuffer(I)V
    .locals 5
    .parameter "newAddedByteNumber"

    .prologue
    .line 309
    iget v2, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mBufferLength:I

    if-le v2, v3, :cond_0

    .line 310
    iget v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mBufferLength:I

    .line 311
    .local v1, newLength:I
    :goto_0
    iget v2, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    add-int/2addr v2, p1

    if-lt v1, v2, :cond_1

    .line 314
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 315
    .local v0, newBuffer:Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 316
    iget-object v2, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    invoke-virtual {v0, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 317
    iput-object v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    .line 318
    iput v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mBufferLength:I

    .line 320
    .end local v0           #newBuffer:Ljava/nio/ByteBuffer;
    .end local v1           #newLength:I
    :cond_0
    return-void

    .line 312
    .restart local v1       #newLength:I
    :cond_1
    add-int/lit8 v1, v1, 0x10

    goto :goto_0
.end method


# virtual methods
.method public appendByteArray([B)Lcom/baidu/yi/ads/ubc/MetricBuilder;
    .locals 2
    .parameter "value"

    .prologue
    .line 246
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 247
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->appendINT(I)Lcom/baidu/yi/ads/ubc/MetricBuilder;

    .line 255
    :goto_0
    return-object p0

    .line 249
    :cond_1
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->appendINT(I)Lcom/baidu/yi/ads/ubc/MetricBuilder;

    .line 251
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->prepareBuffer(I)V

    .line 252
    iget-object v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 253
    iget v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    goto :goto_0
.end method

.method public appendCHAR(B)Lcom/baidu/yi/ads/ubc/MetricBuilder;
    .locals 1
    .parameter "value"

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->prepareBuffer(I)V

    .line 141
    iget-object v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 142
    iget v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    .line 143
    return-object p0
.end method

.method public appendDOUBLE(D)Lcom/baidu/yi/ads/ubc/MetricBuilder;
    .locals 1
    .parameter "value"

    .prologue
    .line 216
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->prepareBuffer(I)V

    .line 217
    iget-object v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    .line 218
    iget v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    .line 219
    return-object p0
.end method

.method public appendFLOAT(F)Lcom/baidu/yi/ads/ubc/MetricBuilder;
    .locals 1
    .parameter "value"

    .prologue
    .line 231
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->prepareBuffer(I)V

    .line 232
    iget-object v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    .line 233
    iget v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    .line 234
    return-object p0
.end method

.method public appendINT(I)Lcom/baidu/yi/ads/ubc/MetricBuilder;
    .locals 1
    .parameter "value"

    .prologue
    .line 98
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->prepareBuffer(I)V

    .line 99
    iget-object v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 100
    iget v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    .line 101
    return-object p0
.end method

.method public appendSHORT(S)Lcom/baidu/yi/ads/ubc/MetricBuilder;
    .locals 1
    .parameter "value"

    .prologue
    .line 179
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->prepareBuffer(I)V

    .line 180
    iget-object v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 181
    iget v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    .line 182
    return-object p0
.end method

.method public appendStringZ(Ljava/lang/String;)Lcom/baidu/yi/ads/ubc/MetricBuilder;
    .locals 4
    .parameter "value"

    .prologue
    .line 267
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->appendINT(I)Lcom/baidu/yi/ads/ubc/MetricBuilder;

    .line 280
    :goto_0
    return-object p0

    .line 271
    :cond_1
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 272
    .local v0, b:[B
    array-length v2, v0

    invoke-virtual {p0, v2}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->appendINT(I)Lcom/baidu/yi/ads/ubc/MetricBuilder;

    .line 273
    array-length v2, v0

    invoke-direct {p0, v2}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->prepareBuffer(I)V

    .line 274
    iget-object v2, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 275
    iget v2, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    array-length v3, v0

    add-int/2addr v2, v3

    iput v2, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    .end local v0           #b:[B
    :catch_0
    move-exception v1

    .line 277
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public appendUCHAR(C)Lcom/baidu/yi/ads/ubc/MetricBuilder;
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    .line 155
    invoke-direct {p0, v4}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->prepareBuffer(I)V

    .line 158
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 159
    .local v0, cache:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 160
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 161
    iget-object v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    .line 162
    iget-object v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 166
    :goto_0
    iget v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    .line 167
    return-object p0

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public appendUINT(J)Lcom/baidu/yi/ads/ubc/MetricBuilder;
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x4

    .line 116
    invoke-direct {p0, v4}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->prepareBuffer(I)V

    .line 119
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 120
    .local v0, cache:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 122
    iget-object v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    .line 123
    iget-object v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 127
    :goto_0
    iget v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    .line 128
    return-object p0

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public appendUSHORT(I)Lcom/baidu/yi/ads/ubc/MetricBuilder;
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x2

    .line 194
    invoke-direct {p0, v4}, Lcom/baidu/yi/ads/ubc/MetricBuilder;->prepareBuffer(I)V

    .line 195
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 196
    .local v0, cache:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 197
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 198
    iget-object v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    .line 199
    iget-object v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 203
    :goto_0
    iget v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    .line 204
    return-object p0

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public buffer()[B
    .locals 4

    .prologue
    .line 289
    iget v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 290
    .local v0, b:Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public getMetricId()J
    .locals 2

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mMetricId:J

    return-wide v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 75
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    .line 76
    iget-object v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mMetricBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 77
    iput v2, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mBufferLength:I

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mContentLength:I

    .line 79
    return-void
.end method

.method public setMetricId(J)V
    .locals 0
    .parameter "metricId"

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/baidu/yi/ads/ubc/MetricBuilder;->mMetricId:J

    .line 83
    return-void
.end method
