.class Lcom/baidu/launcher/ui/preview/Preview$5;
.super Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/preview/Preview;->postAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/preview/Preview;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/preview/Preview;)V
    .locals 0
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/baidu/launcher/ui/preview/Preview$5;->this$0:Lcom/baidu/launcher/ui/preview/Preview;

    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview$5;->this$0:Lcom/baidu/launcher/ui/preview/Preview;

    #calls: Lcom/baidu/launcher/ui/preview/Preview;->resetAnimateViews()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/preview/Preview;->access$300(Lcom/baidu/launcher/ui/preview/Preview;)V

    .line 523
    return-void
.end method

.method public onAnimationEnd(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/baidu/launcher/ui/preview/Preview$5;->this$0:Lcom/baidu/launcher/ui/preview/Preview;

    #calls: Lcom/baidu/launcher/ui/preview/Preview;->resetAnimateViews()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/preview/Preview;->access$300(Lcom/baidu/launcher/ui/preview/Preview;)V

    .line 519
    return-void
.end method
