.class Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$6;
.super Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;
.source "AppsCustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->postAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)V
    .locals 0
    .parameter

    .prologue
    .line 2865
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$6;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 2875
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$6;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    #calls: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->resetAnimateViews()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$600(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)V

    .line 2876
    return-void
.end method

.method public onAnimationEnd(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 2869
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$6;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    #calls: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->resetAnimateViews()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$600(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)V

    .line 2870
    return-void
.end method
