.class Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$2;
.super Ljava/lang/Object;
.source "QuickSwitchPanel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->postAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$2;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7
    .parameter "animation"

    .prologue
    .line 1088
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 1089
    .local v2, progress:F
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$2;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViews:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$2300(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1091
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 1092
    .local v1, lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget v4, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    int-to-float v4, v4

    iget v5, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesX:I

    iget v6, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationX:I

    .line 1093
    iget v4, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    int-to-float v4, v4

    iget v5, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesY:I

    iget v6, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationY:I

    goto :goto_0

    .line 1095
    .end local v1           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    .end local v3           #view:Landroid/view/View;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$2;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViewsForward:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$2700(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1097
    .restart local v3       #view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 1098
    .restart local v1       #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget v4, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    int-to-float v4, v4

    iget v5, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesX:I

    iget v6, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationX:I

    .line 1099
    iget v4, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    int-to-float v4, v4

    iget v5, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesY:I

    iget v6, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationY:I

    goto :goto_1

    .line 1102
    .end local v1           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$2;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    #getter for: Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->mAnimateViewsBackward:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->access$2800(Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1104
    .restart local v3       #view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;

    .line 1105
    .restart local v1       #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    iget v4, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    int-to-float v4, v4

    iget v5, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesX:I

    iget v6, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcX:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationX:I

    .line 1106
    iget v4, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    int-to-float v4, v4

    iget v5, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mDesY:I

    iget v6, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mSrcY:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;->mAnimationY:I

    goto :goto_2

    .line 1108
    .end local v1           #lp:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$SwitchLayoutParams;
    .end local v3           #view:Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel$2;->this$0:Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/switcher/QuickSwitchPanel;->requestLayout()V

    .line 1109
    return-void
.end method
