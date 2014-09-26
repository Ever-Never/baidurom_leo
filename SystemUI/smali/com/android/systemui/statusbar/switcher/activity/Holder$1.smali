.class Lcom/android/systemui/statusbar/switcher/activity/Holder$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Holder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/switcher/activity/Holder;->animationSwapItem(Lcom/android/systemui/statusbar/switcher/activity/Item;Lcom/android/systemui/statusbar/switcher/activity/Item;Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/switcher/activity/Holder;

.field final synthetic val$currItem:Lcom/android/systemui/statusbar/switcher/activity/Item;

.field final synthetic val$dragItem:Lcom/android/systemui/statusbar/switcher/activity/Item;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/switcher/activity/Holder;Lcom/android/systemui/statusbar/switcher/activity/Item;Lcom/android/systemui/statusbar/switcher/activity/Item;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder$1;->this$0:Lcom/android/systemui/statusbar/switcher/activity/Holder;

    iput-object p2, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder$1;->val$currItem:Lcom/android/systemui/statusbar/switcher/activity/Item;

    iput-object p3, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder$1;->val$dragItem:Lcom/android/systemui/statusbar/switcher/activity/Item;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder$1;->this$0:Lcom/android/systemui/statusbar/switcher/activity/Holder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder$1;->val$currItem:Lcom/android/systemui/statusbar/switcher/activity/Item;

    iget-object v2, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder$1;->val$dragItem:Lcom/android/systemui/statusbar/switcher/activity/Item;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/switcher/activity/Holder;->onSwapItem(Lcom/android/systemui/statusbar/switcher/activity/Item;Lcom/android/systemui/statusbar/switcher/activity/Item;)V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder$1;->val$currItem:Lcom/android/systemui/statusbar/switcher/activity/Item;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/switcher/activity/Item;->setTranslationY(F)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/activity/Holder$1;->val$currItem:Lcom/android/systemui/statusbar/switcher/activity/Item;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/switcher/activity/Item;->setLayerType(ILandroid/graphics/Paint;)V

    .line 327
    return-void
.end method
