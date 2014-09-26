.class Lcom/baidu/launcher/ui/homeview/Workspace$DropAnimation;
.super Landroid/view/animation/Animation;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropAnimation"
.end annotation


# instance fields
.field private mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/Workspace;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/Workspace;Lcom/baidu/launcher/ui/homeview/CellLayout;)V
    .locals 3
    .parameter
    .parameter "cellLayout"

    .prologue
    .line 2340
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$DropAnimation;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 2341
    iput-object p2, p0, Lcom/baidu/launcher/ui/homeview/Workspace$DropAnimation;->mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    .line 2342
    const-wide/16 v0, 0x1f4

    .line 2343
    .local v0, duration:J
    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/homeview/Workspace$DropAnimation;->setDuration(J)V

    .line 2344
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/homeview/Workspace$DropAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2345
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 11
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 2349
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace$DropAnimation;->mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v7}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildCount()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 2350
    iget-object v7, p0, Lcom/baidu/launcher/ui/homeview/Workspace$DropAnimation;->mCellLayout:Lcom/baidu/launcher/ui/homeview/CellLayout;

    invoke-virtual {v7, v1}, Lcom/baidu/launcher/ui/homeview/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2351
    .local v0, childView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2352
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 2353
    .local v5, tag:Ljava/lang/Object;
    if-eqz v5, :cond_0

    instance-of v7, v5, Lcom/baidu/launcher/data/item/HomeItemInfo;

    if-eqz v7, :cond_0

    move-object v2, v5

    .line 2354
    check-cast v2, Lcom/baidu/launcher/data/item/HomeItemInfo;

    .line 2356
    .local v2, item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    iget v7, v2, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    iget v8, v2, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    if-le v7, v8, :cond_1

    iget v3, v2, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanX:I

    .line 2358
    .local v3, ratio:I
    :goto_1
    const v7, 0x38d1b717

    cmpl-float v7, p1, v7

    if-lez v7, :cond_0

    .line 2359
    const/high16 v7, 0x4040

    mul-float/2addr v7, p1

    float-to-double v7, v7

    const-wide v9, 0x400921fb54442d18L

    mul-double/2addr v7, v9

    double-to-float v6, v7

    .line 2360
    .local v6, x:F
    const/high16 v7, 0x3f80

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v8, v8

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    double-to-float v9, v9

    div-float/2addr v8, v9

    const v9, 0x3d4ccccd

    mul-float/2addr v8, v9

    int-to-float v9, v3

    div-float/2addr v8, v9

    add-float v4, v7, v8

    .line 2361
    .local v4, scaleRatio:F
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleX(F)V

    .line 2362
    invoke-virtual {v0, v4}, Landroid/view/View;->setScaleY(F)V

    .line 2349
    .end local v2           #item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v3           #ratio:I
    .end local v4           #scaleRatio:F
    .end local v5           #tag:Ljava/lang/Object;
    .end local v6           #x:F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2356
    .restart local v2       #item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .restart local v5       #tag:Ljava/lang/Object;
    :cond_1
    iget v3, v2, Lcom/baidu/launcher/data/item/HomeItemInfo;->spanY:I

    goto :goto_1

    .line 2367
    .end local v0           #childView:Landroid/view/View;
    .end local v2           #item:Lcom/baidu/launcher/data/item/HomeItemInfo;
    .end local v5           #tag:Ljava/lang/Object;
    :cond_2
    return-void
.end method
