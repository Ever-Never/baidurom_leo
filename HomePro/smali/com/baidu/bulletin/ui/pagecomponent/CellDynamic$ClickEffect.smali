.class Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$ClickEffect;
.super Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;
.source "CellDynamic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClickEffect"
.end annotation


# static fields
.field private static final DURATION:I = 0x2bc


# instance fields
.field private mAnimation:Landroid/animation/ObjectAnimator;

.field private mOriginalAlpha:F


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$Effect;-><init>(Landroid/view/View;)V

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$ClickEffect;->mOriginalAlpha:F

    .line 50
    return-void
.end method

.method private smoothToAlpha(FFF)V
    .locals 6
    .parameter "fromAlpha"
    .parameter "toAlpha"
    .parameter "duration"

    .prologue
    .line 63
    iget-object v2, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$ClickEffect;->mAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$ClickEffect;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$ClickEffect;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 68
    .local v0, currentAlpha:F
    invoke-static {p3, p1, p2, v0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$ClickEffect;->calculateRemainingDuration(FFFF)F

    move-result v1

    .line 69
    .local v1, remainingDuration:F
    invoke-virtual {p0}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$ClickEffect;->getView()Landroid/view/View;

    move-result-object v2

    const-string v3, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput p2, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$ClickEffect;->mAnimation:Landroid/animation/ObjectAnimator;

    .line 70
    iget-object v2, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$ClickEffect;->mAnimation:Landroid/animation/ObjectAnimator;

    float-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 71
    iget-object v2, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$ClickEffect;->mAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 72
    return-void
.end method


# virtual methods
.method public onVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 77
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 54
    iget v0, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$ClickEffect;->mOriginalAlpha:F

    const v1, 0x3e99999a

    const/high16 v2, 0x442f

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$ClickEffect;->smoothToAlpha(FFF)V

    .line 55
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 59
    const v0, 0x3e99999a

    iget v1, p0, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$ClickEffect;->mOriginalAlpha:F

    const/high16 v2, 0x442f

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/bulletin/ui/pagecomponent/CellDynamic$ClickEffect;->smoothToAlpha(FFF)V

    .line 60
    return-void
.end method
