.class public Lcom/inveno/newpiflow/widget/TestLayout;
.super Lcom/baidu/launcher/ui/homeview/CellLayout;
.source "TestLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 11
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/homeview/CellLayout;-><init>(Landroid/content/Context;)V

    .line 12
    new-instance v0, Lcom/inveno/newpiflow/widget/PiScrollView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/inveno/newpiflow/widget/PiScrollView;-><init>(Landroid/content/Context;Lcom/inveno/flyshare/BitmapUtils;)V

    .line 13
    .local v0, innerView:Lcom/inveno/newpiflow/widget/PiScrollView;
    new-instance v1, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;

    const/16 v2, 0x32

    const/16 v3, 0x50

    invoke-direct {v1, v4, v4, v2, v3}, Lcom/baidu/launcher/ui/homeview/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, v0, v1}, Lcom/inveno/newpiflow/widget/TestLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    return-void
.end method
