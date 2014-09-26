.class Lcom/android/systemui/recent/RecentSwipeHelper$4;
.super Ljava/lang/Object;
.source "RecentSwipeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentSwipeHelper;->dismissChildAnim(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentSwipeHelper;

.field final synthetic val$animView:Landroid/view/View;

.field final synthetic val$canAnimViewBeDismissed:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentSwipeHelper;ZLandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/systemui/recent/RecentSwipeHelper$4;->this$0:Lcom/android/systemui/recent/RecentSwipeHelper;

    iput-boolean p2, p0, Lcom/android/systemui/recent/RecentSwipeHelper$4;->val$canAnimViewBeDismissed:Z

    iput-object p3, p0, Lcom/android/systemui/recent/RecentSwipeHelper$4;->val$animView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentSwipeHelper$4;->val$canAnimViewBeDismissed:Z

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/systemui/recent/RecentSwipeHelper$4;->val$animView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentSwipeHelper$4;->this$0:Lcom/android/systemui/recent/RecentSwipeHelper;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentSwipeHelper$4;->val$animView:Landroid/view/View;

    #calls: Lcom/android/systemui/recent/RecentSwipeHelper;->getAlphaForOffset(Landroid/view/View;)F
    invoke-static {v1, v2}, Lcom/android/systemui/recent/RecentSwipeHelper;->access$400(Lcom/android/systemui/recent/RecentSwipeHelper;Landroid/view/View;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentSwipeHelper$4;->val$animView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/recent/RecentSwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    .line 334
    return-void
.end method
