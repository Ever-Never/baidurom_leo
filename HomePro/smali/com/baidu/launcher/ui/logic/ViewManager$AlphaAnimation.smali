.class Lcom/baidu/launcher/ui/logic/ViewManager$AlphaAnimation;
.super Landroid/view/animation/Animation;
.source "ViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/logic/ViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlphaAnimation"
.end annotation


# instance fields
.field private mIsOpen:Z

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/baidu/launcher/ui/logic/ViewManager;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/logic/ViewManager;Landroid/view/View;Z)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "isOpen"

    .prologue
    .line 582
    iput-object p1, p0, Lcom/baidu/launcher/ui/logic/ViewManager$AlphaAnimation;->this$0:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 583
    iput-object p2, p0, Lcom/baidu/launcher/ui/logic/ViewManager$AlphaAnimation;->mView:Landroid/view/View;

    .line 584
    iput-boolean p3, p0, Lcom/baidu/launcher/ui/logic/ViewManager$AlphaAnimation;->mIsOpen:Z

    .line 585
    const-wide/16 v0, 0x12c

    .line 586
    .local v0, duration:J
    invoke-virtual {p0, v0, v1}, Lcom/baidu/launcher/ui/logic/ViewManager$AlphaAnimation;->setDuration(J)V

    .line 587
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/logic/ViewManager$AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 588
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const v2, 0x3f733333

    .line 592
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager$AlphaAnimation;->mIsOpen:Z

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager$AlphaAnimation;->mView:Landroid/view/View;

    const/high16 v1, 0x3f80

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 597
    :goto_0
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/logic/ViewManager$AlphaAnimation;->mView:Landroid/view/View;

    mul-float v1, p1, v2

    const v2, 0x3d4ccccd

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
