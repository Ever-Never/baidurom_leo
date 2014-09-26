.class public Lcom/baidu/bulletin/pager/PageResStatic;
.super Ljava/lang/Object;
.source "PageResStatic.java"


# static fields
.field private static final CELL_ID:[I

.field static final COVER_RES:[I

.field private static final HEIGHT_RADIO:[I

.field static final HISTORY_TODATY_COVER_RES:[I

.field static final PAGE_RES:[I

.field private static final RES:[I

.field private static final WIDTH_RADIO:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/bulletin/pager/PageResStatic;->CELL_ID:[I

    .line 17
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/baidu/bulletin/pager/PageResStatic;->COVER_RES:[I

    .line 24
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/baidu/bulletin/pager/PageResStatic;->HISTORY_TODATY_COVER_RES:[I

    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/baidu/bulletin/pager/PageResStatic;->PAGE_RES:[I

    .line 38
    const/16 v0, 0x8

    new-array v0, v0, [I

    sget-object v1, Lcom/baidu/bulletin/pager/PageResStatic;->HISTORY_TODATY_COVER_RES:[I

    aget v1, v1, v2

    aput v1, v0, v2

    sget-object v1, Lcom/baidu/bulletin/pager/PageResStatic;->HISTORY_TODATY_COVER_RES:[I

    aget v1, v1, v3

    aput v1, v0, v3

    sget-object v1, Lcom/baidu/bulletin/pager/PageResStatic;->PAGE_RES:[I

    aget v1, v1, v2

    aput v1, v0, v4

    const/4 v1, 0x3

    sget-object v2, Lcom/baidu/bulletin/pager/PageResStatic;->PAGE_RES:[I

    aget v2, v2, v3

    aput v2, v0, v1

    sget-object v1, Lcom/baidu/bulletin/pager/PageResStatic;->PAGE_RES:[I

    aget v1, v1, v4

    aput v1, v0, v5

    sget-object v1, Lcom/baidu/bulletin/pager/PageResStatic;->PAGE_RES:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    aput v1, v0, v6

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/bulletin/pager/PageResStatic;->PAGE_RES:[I

    aget v2, v2, v5

    aput v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/baidu/bulletin/pager/PageResStatic;->PAGE_RES:[I

    aget v2, v2, v6

    aput v2, v0, v1

    sput-object v0, Lcom/baidu/bulletin/pager/PageResStatic;->RES:[I

    .line 49
    const/16 v0, 0x28

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/baidu/bulletin/pager/PageResStatic;->WIDTH_RADIO:[I

    .line 60
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/baidu/bulletin/pager/PageResStatic;->HEIGHT_RADIO:[I

    return-void

    .line 8
    nop

    :array_0
    .array-data 0x4
        0x8et 0x0t 0x8t 0x7ft
        0x8ft 0x0t 0x8t 0x7ft
        0x90t 0x0t 0x8t 0x7ft
        0x91t 0x0t 0x8t 0x7ft
        0xdat 0x0t 0x8t 0x7ft
    .end array-data

    .line 17
    :array_1
    .array-data 0x4
        0x1ct 0x0t 0x3t 0x7ft
        0x1dt 0x0t 0x3t 0x7ft
        0x1et 0x0t 0x3t 0x7ft
        0x1ft 0x0t 0x3t 0x7ft
    .end array-data

    .line 24
    :array_2
    .array-data 0x4
        0x1et 0x0t 0x3t 0x7ft
        0x1ft 0x0t 0x3t 0x7ft
    .end array-data

    .line 29
    :array_3
    .array-data 0x4
        0x35t 0x0t 0x3t 0x7ft
        0x36t 0x0t 0x3t 0x7ft
        0x37t 0x0t 0x3t 0x7ft
        0x38t 0x0t 0x3t 0x7ft
        0x39t 0x0t 0x3t 0x7ft
        0x3at 0x0t 0x3t 0x7ft
    .end array-data

    .line 49
    :array_4
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 60
    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getArray([II)I
    .locals 1
    .parameter "array"
    .parameter "index"

    .prologue
    .line 116
    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget v0, p0, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getCellHeight(II)I
    .locals 1
    .parameter "pageResIndex"
    .parameter "countIndex"

    .prologue
    .line 78
    sget-object v0, Lcom/baidu/bulletin/pager/PageResStatic;->HEIGHT_RADIO:[I

    invoke-static {v0, p0}, Lcom/baidu/bulletin/pager/PageResStatic;->getArray([II)I

    move-result v0

    return v0
.end method

.method public static getCellName(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 82
    sget-object v0, Lcom/baidu/bulletin/pager/PageResStatic;->CELL_ID:[I

    invoke-static {v0, p0}, Lcom/baidu/bulletin/pager/PageResStatic;->getArray([II)I

    move-result v0

    return v0
.end method

.method public static getCellWidth(II)I
    .locals 2
    .parameter "pageResIndex"
    .parameter "countIndex"

    .prologue
    .line 74
    sget-object v0, Lcom/baidu/bulletin/pager/PageResStatic;->WIDTH_RADIO:[I

    sget-object v1, Lcom/baidu/bulletin/pager/PageResStatic;->CELL_ID:[I

    array-length v1, v1

    mul-int/2addr v1, p0

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/baidu/bulletin/pager/PageResStatic;->getArray([II)I

    move-result v0

    return v0
.end method

.method public static getCoverCellName()I
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f08008d

    return v0
.end method

.method public static getIndexFromResId(I)I
    .locals 5
    .parameter "resId"

    .prologue
    .line 98
    const/4 v3, 0x0

    .line 100
    .local v3, index:I
    sget-object v0, Lcom/baidu/bulletin/pager/PageResStatic;->RES:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget v2, v0, v1

    .line 101
    .local v2, id:I
    if-ne v2, p0, :cond_0

    .line 108
    .end local v2           #id:I
    .end local v3           #index:I
    :goto_1
    return v3

    .line 105
    .restart local v2       #id:I
    .restart local v3       #index:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 108
    .end local v2           #id:I
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public static getPageMaxVolume()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x5

    return v0
.end method

.method public static getPageMinVolume()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x4

    return v0
.end method

.method public static getResIdFromIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 112
    sget-object v0, Lcom/baidu/bulletin/pager/PageResStatic;->RES:[I

    invoke-static {v0, p0}, Lcom/baidu/bulletin/pager/PageResStatic;->getArray([II)I

    move-result v0

    return v0
.end method
