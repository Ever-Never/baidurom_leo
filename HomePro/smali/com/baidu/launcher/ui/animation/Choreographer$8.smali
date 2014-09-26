.class final Lcom/baidu/launcher/ui/animation/Choreographer$8;
.super Ljava/lang/Object;
.source "Choreographer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/animation/Choreographer;->closeWeatherAnim(Lcom/baidu/launcher/app/Launcher;Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mLauncher:Lcom/baidu/launcher/app/Launcher;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/app/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 663
    iput-object p1, p0, Lcom/baidu/launcher/ui/animation/Choreographer$8;->val$mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/baidu/launcher/ui/animation/Choreographer$8;->val$mLauncher:Lcom/baidu/launcher/app/Launcher;

    invoke-static {v0}, Lcom/baidu/launcher/ui/animation/Choreographer;->removeBlurView(Landroid/app/Activity;)V

    .line 671
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 665
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 664
    return-void
.end method
