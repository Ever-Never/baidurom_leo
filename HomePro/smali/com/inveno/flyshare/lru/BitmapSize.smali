.class public Lcom/inveno/flyshare/lru/BitmapSize;
.super Ljava/lang/Object;
.source "BitmapSize.java"


# static fields
.field public static final ZERO:Lcom/inveno/flyshare/lru/BitmapSize;


# instance fields
.field private height:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    new-instance v0, Lcom/inveno/flyshare/lru/BitmapSize;

    invoke-direct {v0, v1, v1}, Lcom/inveno/flyshare/lru/BitmapSize;-><init>(II)V

    sput-object v0, Lcom/inveno/flyshare/lru/BitmapSize;->ZERO:Lcom/inveno/flyshare/lru/BitmapSize;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/inveno/flyshare/lru/BitmapSize;->width:I

    .line 21
    iput p2, p0, Lcom/inveno/flyshare/lru/BitmapSize;->height:I

    .line 22
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/inveno/flyshare/lru/BitmapSize;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/inveno/flyshare/lru/BitmapSize;->width:I

    return v0
.end method

.method public scale(F)Lcom/inveno/flyshare/lru/BitmapSize;
    .locals 3
    .parameter "scale"

    .prologue
    .line 29
    new-instance v0, Lcom/inveno/flyshare/lru/BitmapSize;

    iget v1, p0, Lcom/inveno/flyshare/lru/BitmapSize;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iget v2, p0, Lcom/inveno/flyshare/lru/BitmapSize;->height:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/inveno/flyshare/lru/BitmapSize;-><init>(II)V

    return-object v0
.end method

.method public scaleDown(I)Lcom/inveno/flyshare/lru/BitmapSize;
    .locals 3
    .parameter "sampleSize"

    .prologue
    .line 25
    new-instance v0, Lcom/inveno/flyshare/lru/BitmapSize;

    iget v1, p0, Lcom/inveno/flyshare/lru/BitmapSize;->width:I

    div-int/2addr v1, p1

    iget v2, p0, Lcom/inveno/flyshare/lru/BitmapSize;->height:I

    div-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/inveno/flyshare/lru/BitmapSize;-><init>(II)V

    return-object v0
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 45
    iput p1, p0, Lcom/inveno/flyshare/lru/BitmapSize;->height:I

    .line 46
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 37
    iput p1, p0, Lcom/inveno/flyshare/lru/BitmapSize;->width:I

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/inveno/flyshare/lru/BitmapSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inveno/flyshare/lru/BitmapSize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
