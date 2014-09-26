.class Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AllAppsIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->hideScrollingIndicator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;)V
    .locals 1
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$2;->this$0:Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$2;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$2;->cancelled:Z

    .line 153
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$2;->cancelled:Z

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$2;->this$0:Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;

    #getter for: Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->indicator:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->access$000(Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :cond_0
    return-void
.end method
