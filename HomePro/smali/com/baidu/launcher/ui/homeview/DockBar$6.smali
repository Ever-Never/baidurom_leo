.class Lcom/baidu/launcher/ui/homeview/DockBar$6;
.super Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;
.source "DockBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/homeview/DockBar;->postAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/DockBar;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/homeview/DockBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1487
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/DockBar$6;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 1497
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar$6;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    #calls: Lcom/baidu/launcher/ui/homeview/DockBar;->resetAnimateViews()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/DockBar;->access$800(Lcom/baidu/launcher/ui/homeview/DockBar;)V

    .line 1498
    return-void
.end method

.method public onAnimationEnd(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/DockBar$6;->this$0:Lcom/baidu/launcher/ui/homeview/DockBar;

    #calls: Lcom/baidu/launcher/ui/homeview/DockBar;->resetAnimateViews()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/homeview/DockBar;->access$800(Lcom/baidu/launcher/ui/homeview/DockBar;)V

    .line 1492
    return-void
.end method
