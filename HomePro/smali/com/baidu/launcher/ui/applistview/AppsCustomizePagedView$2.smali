.class Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsCustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->showPage(IZ)V
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
    .line 2224
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$2;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$2;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2233
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$2;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2228
    return-void
.end method
