.class Lcom/baidu/launcher/ui/editview/EditView$3;
.super Lcom/baidu/launcher/ui/animation/AnimationAdapter;
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
    .line 213
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/EditView$3;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/AnimationAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/EditView$3;->this$0:Lcom/baidu/launcher/ui/editview/EditView;

    #calls: Lcom/baidu/launcher/ui/editview/EditView;->loadAndShow()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/editview/EditView;->access$200(Lcom/baidu/launcher/ui/editview/EditView;)V

    .line 217
    return-void
.end method
