.class public Lcom/baidu/launcher/data/item/BaseItemInfo;
.super Ljava/lang/Object;
.source "BaseItemInfo.java"


# static fields
.field public static final NO_ID:I = -0x1

.field public static final STATUS_DISABLE:I = 0x5

.field public static final STATUS_DOWNLOADED:I = 0x2

.field public static final STATUS_DOWNLOADING:I = 0x1

.field public static final STATUS_NORMAL:I = 0x4

.field public static final STATUS_NOTDOWNLOAD:I = 0x0

.field public static final STATUS_NOTRUN:I = 0x3


# instance fields
.field public businessDescription:Ljava/lang/String;

.field public businessStrategyKey:J

.field public businessTableID:J

.field public businessURL:Ljava/lang/String;

.field public clickCount:J

.field public container:J

.field public dependPackage:Ljava/lang/String;

.field public eventCount:I

.field public iconBitmap:Landroid/graphics/Bitmap;

.field public id:J

.field public isDisable:Z

.field public isDragging:Z

.field public isPreset:Z

.field public itemType:I

.field public replacedIntent:Landroid/content/Intent;

.field public status:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v2, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->isDisable:Z

    .line 39
    iput-wide v0, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->id:J

    .line 68
    iput-wide v0, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->container:J

    .line 73
    iput-boolean v2, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->isPreset:Z

    .line 78
    iput-wide v0, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->businessTableID:J

    .line 79
    iput-object v3, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->businessURL:Ljava/lang/String;

    .line 80
    iput-object v3, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->businessDescription:Ljava/lang/String;

    .line 81
    iput-wide v0, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->businessStrategyKey:J

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->clickCount:J

    .line 90
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->status:I

    .line 101
    iput v2, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->eventCount:I

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/baidu/launcher/data/item/BaseItemInfo;)V
    .locals 4
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v2, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->isDisable:Z

    .line 39
    iput-wide v0, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->id:J

    .line 68
    iput-wide v0, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->container:J

    .line 73
    iput-boolean v2, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->isPreset:Z

    .line 78
    iput-wide v0, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->businessTableID:J

    .line 79
    iput-object v3, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->businessURL:Ljava/lang/String;

    .line 80
    iput-object v3, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->businessDescription:Ljava/lang/String;

    .line 81
    iput-wide v0, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->businessStrategyKey:J

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->clickCount:J

    .line 90
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->status:I

    .line 101
    iput v2, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->eventCount:I

    .line 114
    iget-wide v0, p1, Lcom/baidu/launcher/data/item/BaseItemInfo;->id:J

    iput-wide v0, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->id:J

    .line 115
    iget v0, p1, Lcom/baidu/launcher/data/item/BaseItemInfo;->itemType:I

    iput v0, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->itemType:I

    .line 116
    iget-wide v0, p1, Lcom/baidu/launcher/data/item/BaseItemInfo;->container:J

    iput-wide v0, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->container:J

    .line 117
    iget-object v0, p1, Lcom/baidu/launcher/data/item/BaseItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 118
    iget-object v0, p1, Lcom/baidu/launcher/data/item/BaseItemInfo;->replacedIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->replacedIntent:Landroid/content/Intent;

    .line 119
    iget-boolean v0, p1, Lcom/baidu/launcher/data/item/BaseItemInfo;->isPreset:Z

    iput-boolean v0, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->isPreset:Z

    .line 120
    iget-boolean v0, p1, Lcom/baidu/launcher/data/item/BaseItemInfo;->isDisable:Z

    iput-boolean v0, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->isDisable:Z

    .line 121
    return-void
.end method

.method public static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 140
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 141
    .local v2, size:I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 143
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 144
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 145
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 146
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 149
    :goto_0
    return-object v3

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Favorite"

    const-string v4, "Could not write icon"

    invoke-static {v3, v4, v0}, Lcom/baidu/launcher/utils/LogEx;->debugErro(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "values"
    .parameter "bitmap"

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    invoke-static {p1}, Lcom/baidu/launcher/data/item/BaseItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 156
    .local v0, data:[B
    const-string v1, "icon"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 158
    .end local v0           #data:[B
    :cond_0
    return-void
.end method


# virtual methods
.method public buildDBValues(Landroid/content/ContentValues;Landroid/content/Context;)V
    .locals 3
    .parameter "values"
    .parameter "context"

    .prologue
    .line 129
    const-string v0, "itemType"

    iget v1, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const-string v0, "container"

    iget-wide v1, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->container:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    const-string v1, "isPreset"

    iget-boolean v0, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->isPreset:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v0, "presetID"

    iget-wide v1, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->businessTableID:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    const-string v0, "strategy_table_id"

    iget-wide v1, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->businessStrategyKey:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    const-string v0, "clickCount"

    iget-wide v1, p0, Lcom/baidu/launcher/data/item/BaseItemInfo;->clickCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 135
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
