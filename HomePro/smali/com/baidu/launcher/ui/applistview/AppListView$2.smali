.class Lcom/baidu/launcher/ui/applistview/AppListView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppListView;->inAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppListView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppListView;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppListView$2;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 379
    new-instance v0, Lcom/baidu/launcher/ui/applistview/AppListView$2$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/applistview/AppListView$2$1;-><init>(Lcom/baidu/launcher/ui/applistview/AppListView$2;)V

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/applistview/AppListView$2$1;->start()V

    .line 384
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppListView$2;->this$0:Lcom/baidu/launcher/ui/applistview/AppListView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/applistview/AppListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 385
    return-void
.end method
