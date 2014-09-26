.class Lcom/baidu/launcher/ui/common/GridLayout$5$1;
.super Lcom/baidu/launcher/ui/common/GridLayout$Bounds;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/common/GridLayout$5;->getBounds()Lcom/baidu/launcher/ui/common/GridLayout$Bounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private size:I

.field final synthetic this$0:Lcom/baidu/launcher/ui/common/GridLayout$5;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/common/GridLayout$5;)V
    .locals 1
    .parameter

    .prologue
    .line 2415
    iput-object p1, p0, Lcom/baidu/launcher/ui/common/GridLayout$5$1;->this$0:Lcom/baidu/launcher/ui/common/GridLayout$5;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;-><init>(Lcom/baidu/launcher/ui/common/GridLayout$1;)V

    return-void
.end method


# virtual methods
.method protected getOffset(Landroid/view/View;Lcom/baidu/launcher/ui/common/GridLayout$Alignment;I)I
    .locals 2
    .parameter "c"
    .parameter "alignment"
    .parameter "size"

    .prologue
    .line 2443
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->getOffset(Landroid/view/View;Lcom/baidu/launcher/ui/common/GridLayout$Alignment;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected include(II)V
    .locals 2
    .parameter "before"
    .parameter "after"

    .prologue
    .line 2432
    invoke-super {p0, p1, p2}, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->include(II)V

    .line 2433
    iget v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$5$1;->size:I

    add-int v1, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$5$1;->size:I

    .line 2434
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 2426
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->reset()V

    .line 2427
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/baidu/launcher/ui/common/GridLayout$5$1;->size:I

    .line 2428
    return-void
.end method

.method protected size(Z)I
    .locals 2
    .parameter "min"

    .prologue
    .line 2438
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/common/GridLayout$Bounds;->size(Z)I

    move-result v0

    iget v1, p0, Lcom/baidu/launcher/ui/common/GridLayout$5$1;->size:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
