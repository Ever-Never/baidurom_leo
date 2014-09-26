.class Lcom/baidu/launcher/ui/editview/EditAppsListView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EditAppsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/editview/EditAppsListView;->showPages(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/editview/EditAppsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$1;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$1;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1090
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditAppsListView$1;->this$0:Lcom/baidu/launcher/ui/editview/EditAppsListView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/editview/EditAppsListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1085
    return-void
.end method
