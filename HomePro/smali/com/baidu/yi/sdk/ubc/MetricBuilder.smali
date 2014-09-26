.class public Lcom/baidu/yi/sdk/ubc/MetricBuilder;
.super Ljava/lang/Object;


# static fields
.field private static final f:I = 0x4

.field private static final g:I = 0x4

.field private static final h:I = 0x1

.field private static final i:I = 0x1

.field private static final j:I = 0x2

.field private static final k:I = 0x2

.field private static final l:I = 0x8

.field private static final m:I = 0x4


# instance fields
.field private a:J

.field private b:Ljava/nio/ByteBuffer;

.field private c:I

.field private d:I

.field private final e:I

.field private n:Ljava/nio/ByteOrder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->e:I

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->n:Ljava/nio/ByteOrder;

    invoke-direct {p0}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->a()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->e:I

    iput-wide p1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->a:J

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->n:Ljava/nio/ByteOrder;

    invoke-direct {p0}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->a()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->e:I

    iput-object p1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->n:Ljava/nio/ByteOrder;

    invoke-direct {p0}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->b:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->b:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->n:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iput v2, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    return-void
.end method

.method private a(I)V
    .locals 5

    iget v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->c:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->c:I

    :goto_0
    iget v1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    add-int/2addr v1, p1

    if-lt v0, v1, :cond_1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->n:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->b:Ljava/nio/ByteBuffer;

    iput v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->c:I

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x10

    goto :goto_0
.end method


# virtual methods
.method public appendByteArray([B)Lcom/baidu/yi/sdk/ubc/MetricBuilder;
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->appendINT(I)Lcom/baidu/yi/sdk/ubc/MetricBuilder;

    :goto_0
    return-object p0

    :cond_1
    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->appendINT(I)Lcom/baidu/yi/sdk/ubc/MetricBuilder;

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->a(I)V

    iget-object v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    goto :goto_0
.end method

.method public appendCHAR(B)Lcom/baidu/yi/sdk/ubc/MetricBuilder;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->a(I)V

    iget-object v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    return-object p0
.end method

.method public appendDOUBLE(D)Lcom/baidu/yi/sdk/ubc/MetricBuilder;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->a(I)V

    iget-object v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    return-object p0
.end method

.method public appendFLOAT(F)Lcom/baidu/yi/sdk/ubc/MetricBuilder;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->a(I)V

    iget-object v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    return-object p0
.end method

.method public appendINT(I)Lcom/baidu/yi/sdk/ubc/MetricBuilder;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->a(I)V

    iget-object v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    return-object p0
.end method

.method public appendSHORT(S)Lcom/baidu/yi/sdk/ubc/MetricBuilder;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->a(I)V

    iget-object v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    return-object p0
.end method

.method public appendStringZ(Ljava/lang/String;)Lcom/baidu/yi/sdk/ubc/MetricBuilder;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->appendINT(I)Lcom/baidu/yi/sdk/ubc/MetricBuilder;

    :goto_0
    return-object p0

    :cond_1
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->appendINT(I)Lcom/baidu/yi/sdk/ubc/MetricBuilder;

    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->a(I)V

    iget-object v1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    array-length v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public appendUCHAR(C)Lcom/baidu/yi/sdk/ubc/MetricBuilder;
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->a(I)V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->n:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->n:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :goto_0
    iget v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v0, v3, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public appendUINT(J)Lcom/baidu/yi/sdk/ubc/MetricBuilder;
    .locals 4

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->a(I)V

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->n:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->n:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :goto_0
    iget v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v0, v3, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public appendUSHORT(I)Lcom/baidu/yi/sdk/ubc/MetricBuilder;
    .locals 4

    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->a(I)V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->n:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->n:Ljava/nio/ByteOrder;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :goto_0
    iget v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1, v0, v3, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public buffer()[B
    .locals 4

    iget v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public getMetricId()J
    .locals 2

    iget-wide v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->a:J

    return-wide v0
.end method

.method public length()I
    .locals 1

    iget v0, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->d:I

    return v0
.end method

.method public setMetricId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/baidu/yi/sdk/ubc/MetricBuilder;->a:J

    return-void
.end method
