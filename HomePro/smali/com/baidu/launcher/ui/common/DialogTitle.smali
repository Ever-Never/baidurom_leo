.class public Lcom/baidu/launcher/ui/common/DialogTitle;
.super Landroid/widget/TextView;
.source "DialogTitle.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/DialogTitle;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/DialogTitle;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/DialogTitle;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v10, 0x0

    .line 52
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 54
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/DialogTitle;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 55
    .local v2, layout:Landroid/text/Layout;
    if-eqz v2, :cond_1

    .line 56
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    .line 57
    .local v3, lineCount:I
    if-lez v3, :cond_1

    .line 58
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    .line 59
    .local v1, ellipsisCount:I
    if-lez v1, :cond_1

    .line 60
    invoke-virtual {p0, v10}, Lcom/baidu/launcher/ui/common/DialogTitle;->setSingleLine(Z)V

    .line 61
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/baidu/launcher/ui/common/DialogTitle;->setMaxLines(I)V

    .line 63
    iget-object v5, p0, Lcom/baidu/launcher/ui/common/DialogTitle;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    sget-object v7, Lcom/baidu/home2/R$styleable;->TextAppearance:[I

    const v8, 0x1010041

    const v9, 0x7f0a0034

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 68
    .local v4, textSize:I
    if-eqz v4, :cond_0

    .line 70
    int-to-float v5, v4

    invoke-virtual {p0, v10, v5}, Lcom/baidu/launcher/ui/common/DialogTitle;->setTextSize(IF)V

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 78
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #ellipsisCount:I
    .end local v3           #lineCount:I
    .end local v4           #textSize:I
    :cond_1
    return-void
.end method
