.class Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation$2;
.super Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->animate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;)V
    .locals 0
    .parameter

    .prologue
    .line 3074
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation$2;->this$1:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;

    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 3077
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation$2;->this$1:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;

    iput v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->initDeltaX:F

    .line 3078
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation$2;->this$1:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;

    iput v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->initDeltaY:F

    .line 3079
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation$2;->this$1:Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;

    const/high16 v1, 0x3f80

    iput v1, v0, Lcom/baidu/launcher/ui/homeview/CellLayout$ReorderHintAnimation;->initScale:F

    .line 3080
    return-void
.end method
