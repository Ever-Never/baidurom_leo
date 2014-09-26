.class public Lcom/baidu/launcher/ui/editview/WidgetCellView;
.super Landroid/widget/ImageView;
.source "WidgetCellView.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final COLUMN:I = 0x0

.field private static final GAP:I = 0x2

.field private static final ROW:I


# instance fields
.field private final cells:[[Z

.field private draw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 22
    sget v0, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    if-le v0, v1, :cond_0

    sget v0, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->deflautHomeLineNum:I

    :goto_0
    sput v0, Lcom/baidu/launcher/ui/editview/WidgetCellView;->ROW:I

    .line 23
    sget v0, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    if-le v0, v1, :cond_1

    sget v0, Lcom/baidu/launcher/utils/DefaultConfigurationHelper;->defaultHomeRowNum:I

    :goto_1
    sput v0, Lcom/baidu/launcher/ui/editview/WidgetCellView;->COLUMN:I

    return-void

    .line 22
    :cond_0
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_X:I

    goto :goto_0

    .line 23
    :cond_1
    sget v0, Lcom/baidu/launcher/utils/LauncherPreferenceHelper;->NUMBER_CELLS_Y:I

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    sget v0, Lcom/baidu/launcher/ui/editview/WidgetCellView;->ROW:I

    sget v1, Lcom/baidu/launcher/ui/editview/WidgetCellView;->COLUMN:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/baidu/launcher/ui/editview/WidgetCellView;->cells:[[Z

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/editview/WidgetCellView;->draw:Z

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    sget v0, Lcom/baidu/launcher/ui/editview/WidgetCellView;->ROW:I

    sget v1, Lcom/baidu/launcher/ui/editview/WidgetCellView;->COLUMN:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/baidu/launcher/ui/editview/WidgetCellView;->cells:[[Z

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/editview/WidgetCellView;->draw:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    sget v0, Lcom/baidu/launcher/ui/editview/WidgetCellView;->ROW:I

    sget v1, Lcom/baidu/launcher/ui/editview/WidgetCellView;->COLUMN:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/baidu/launcher/ui/editview/WidgetCellView;->cells:[[Z

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/editview/WidgetCellView;->draw:Z

    .line 40
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 17
    .parameter "canvas"

    .prologue
    .line 58
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 59
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/baidu/launcher/ui/editview/WidgetCellView;->draw:Z

    if-nez v12, :cond_1

    .line 86
    :cond_0
    return-void

    .line 61
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/launcher/ui/editview/WidgetCellView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/baidu/launcher/utils/Utilities;->getwidgetCell(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 62
    .local v1, cell:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/launcher/ui/editview/WidgetCellView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/baidu/launcher/utils/Utilities;->getwidgetCellHighlight(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 64
    .local v3, cellHighlight:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/editview/WidgetCellView;->getMeasuredWidth()I

    move-result v12

    sget v13, Lcom/baidu/launcher/ui/editview/WidgetCellView;->ROW:I

    sub-int v11, v12, v13

    .line 65
    .local v11, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/launcher/ui/editview/WidgetCellView;->getMeasuredHeight()I

    move-result v12

    sget v13, Lcom/baidu/launcher/ui/editview/WidgetCellView;->COLUMN:I

    sub-int v5, v12, v13

    .line 66
    .local v5, height:I
    add-int/lit8 v12, v11, -0x6

    div-int/lit8 v4, v12, 0x4

    .line 67
    .local v4, cellW:I
    add-int/lit8 v12, v5, -0x6

    div-int/lit8 v2, v12, 0x4

    .line 69
    .local v2, cellH:I
    const/4 v8, 0x0

    .line 70
    .local v8, offsetX:I
    const/4 v9, 0x0

    .line 72
    .local v9, offsetY:I
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 73
    .local v10, paint:Landroid/graphics/Paint;
    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    sget v12, Lcom/baidu/launcher/ui/editview/WidgetCellView;->ROW:I

    if-ge v6, v12, :cond_0

    .line 76
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    sget v12, Lcom/baidu/launcher/ui/editview/WidgetCellView;->COLUMN:I

    if-ge v7, v12, :cond_3

    .line 77
    mul-int v12, v6, v4

    mul-int/lit8 v13, v6, 0x2

    add-int v8, v12, v13

    .line 78
    mul-int v12, v7, v2

    mul-int/lit8 v13, v7, 0x2

    add-int v9, v12, v13

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 80
    int-to-float v12, v8

    int-to-float v13, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 81
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/baidu/launcher/ui/editview/WidgetCellView;->cells:[[Z

    aget-object v12, v12, v6

    aget-boolean v12, v12, v7

    if-eqz v12, :cond_2

    move-object v12, v3

    :goto_2
    const/4 v13, 0x0

    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v14, v15, v0, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 76
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move-object v12, v1

    .line 81
    goto :goto_2

    .line 75
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public drawCells(II)V
    .locals 5
    .parameter "rows"
    .parameter "columns"

    .prologue
    const/4 v4, 0x1

    .line 43
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/baidu/launcher/ui/editview/WidgetCellView;->ROW:I

    if-ge v0, v2, :cond_2

    .line 44
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    sget v2, Lcom/baidu/launcher/ui/editview/WidgetCellView;->COLUMN:I

    if-ge v1, v2, :cond_1

    .line 45
    if-ge v0, p1, :cond_0

    if-ge v1, p2, :cond_0

    .line 46
    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/WidgetCellView;->cells:[[Z

    aget-object v2, v2, v0

    aput-boolean v4, v2, v1

    .line 47
    iput-boolean v4, p0, Lcom/baidu/launcher/ui/editview/WidgetCellView;->draw:Z

    .line 44
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/baidu/launcher/ui/editview/WidgetCellView;->cells:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    goto :goto_2

    .line 43
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    .end local v1           #j:I
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/WidgetCellView;->invalidate()V

    .line 54
    return-void
.end method
