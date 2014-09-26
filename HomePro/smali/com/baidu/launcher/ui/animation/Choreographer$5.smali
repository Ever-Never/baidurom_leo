.class final Lcom/baidu/launcher/ui/animation/Choreographer$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/animation/Choreographer;->startWeatherAnim(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$setLocationLayer:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lcom/baidu/launcher/ui/animation/Choreographer$5;->val$setLocationLayer:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$5;->val$setLocationLayer:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 592
    return-void
.end method
