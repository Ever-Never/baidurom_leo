.class Lcom/baidu/launcher/ui/editview/EditView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EditView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/editview/EditView;->doShowAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/editview/EditView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/editview/EditView;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/EditView$2;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$2;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #calls: Lcom/baidu/launcher/ui/editview/EditView;->loadAndShow()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditView;->access$200(Lcom/baidu/launcher/ui/editview/EditView;)V

    .line 204
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$2;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/editview/EditView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 205
    return-void
.end method
