.class public Lcom/baidu/launcher/data/item/HomeItemInfo;
.super Lcom/baidu/launcher/data/item/BaseItemInfo;
.source "HomeItemInfo.java"


# instance fields
.field public cellX:I

.field public cellY:I

.field public screen:I

.field public spanX:I

.field public spanY:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 54
    invoke-direct {p0}, Lcom/baidu/launcher/data/item/BaseItemInfo;-><init>()V

    .line 31
    iput v0, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    .line 37
    iput v0, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    .line 42
    iput v0, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    .line 47
    iput v1, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    .line 52
    iput v1, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/baidu/launcher/data/item/HomeItemInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 59
    invoke-direct {p0, p1}, Lcom/baidu/launcher/data/item/BaseItemInfo;-><init>(Lcom/baidu/launcher/data/item/BaseItemInfo;)V

    .line 31
    iput v0, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    .line 37
    iput v0, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    .line 42
    iput v0, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    .line 47
    iput v1, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    .line 52
    iput v1, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    .line 60
    iget v0, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    iput v0, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    .line 61
    iget v0, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    iput v0, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    .line 62
    iget v0, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    iput v0, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    .line 63
    iget v0, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    iput v0, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    .line 64
    iget v0, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    iput v0, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    .line 65
    iget-boolean v0, p1, Lcom/baidu/launcher/data/item/HomeItemInfo;->isDisable:Z

    iput-boolean v0, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->isDisable:Z

    .line 66
    return-void
.end method


# virtual methods
.method public buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V
    .locals 2
    .parameter "values"
    .parameter "context"

    .prologue
    .line 69
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/data/item/BaseItemInfo;->buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V

    .line 70
    const-string v0, "screen"

    iget v1, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->screen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 71
    const-string v0, "cellX"

    iget v1, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const-string v0, "cellY"

    iget v1, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string v0, "spanX"

    iget v1, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 74
    const-string v0, "spanY"

    iget v1, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Item(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/launcher/data/item/HomeItemInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
