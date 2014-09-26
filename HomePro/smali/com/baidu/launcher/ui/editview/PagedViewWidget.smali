.class public Lcom/baidu/launcher/ui/editview/PagedViewWidget;
.super Landroid/widget/FrameLayout;
.source "PagedViewWidget.java"


# static fields
.field static final TAG:Ljava/lang/String; = "PagedViewWidgetLayout"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/editview/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/launcher/ui/editview/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/PagedViewWidget;->setWillNotDraw(Z)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/editview/PagedViewWidget;->setClipToPadding(Z)V

    .line 48
    return-void
.end method


# virtual methods
.method public applyFromBaiduWidgetInfo(Ljava/lang/Object;I[I)V
    .locals 6
    .parameter "info"
    .parameter "maxWidth"
    .parameter "cellSpan"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/editview/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    .line 53
    const v4, 0x7f08011c

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/editview/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 54
    .local v1, image:Landroid/widget/ImageView;
    const/4 v4, -0x1

    if-le p2, v4, :cond_0

    .line 55
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 57
    :cond_0
    const v4, 0x7f08011e

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/editview/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 58
    .local v2, name:Landroid/widget/TextView;
    instance-of v4, p1, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    if-eqz v4, :cond_3

    .line 59
    check-cast p1, Lcom/baidu/launcher/data/item/ListWidgetInfo;

    .end local p1
    iget v3, p1, Lcom/baidu/launcher/data/item/ListWidgetInfo;->label:I

    .line 60
    .local v3, res:I
    if-lez v3, :cond_1

    .line 61
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 67
    .end local v3           #res:I
    :cond_1
    :goto_0
    const v4, 0x7f08011d

    invoke-virtual {p0, v4}, Lcom/baidu/launcher/ui/editview/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/editview/WidgetCellView;

    .line 68
    .local v0, dims:Lcom/baidu/launcher/ui/editview/WidgetCellView;
    if-eqz v0, :cond_2

    .line 69
    const/4 v4, 0x0

    aget v4, p3, v4

    const/4 v5, 0x1

    aget v5, p3, v5

    invoke-virtual {v0, v4, v5}, Lcom/baidu/launcher/ui/editview/WidgetCellView;->drawCells(II)V

    .line 71
    :cond_2
    return-void

    .line 63
    .end local v0           #dims:Lcom/baidu/launcher/ui/editview/WidgetCellView;
    .restart local p1
    :cond_3
    instance-of v4, p1, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v4, :cond_1

    .line 64
    check-cast p1, Landroid/appwidget/AppWidgetProviderInfo;

    .end local p1
    iget-object v4, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public loadPreview()V
    .locals 2

    .prologue
    .line 74
    const v1, 0x7f08011c

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/editview/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/editview/PagedViewWidgetImageView;

    .line 75
    .local v0, image:Lcom/baidu/launcher/ui/editview/PagedViewWidgetImageView;
    if-eqz v0, :cond_0

    .line 76
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/editview/PagedViewWidgetImageView;->setAlpha(I)V

    .line 77
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/editview/PagedViewWidget;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/editview/PagedViewWidgetImageView;->setInfo(Ljava/lang/Object;)V

    .line 95
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
