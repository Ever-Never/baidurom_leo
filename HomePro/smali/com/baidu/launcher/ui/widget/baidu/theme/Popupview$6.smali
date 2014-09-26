.class Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$6;
.super Ljava/lang/Object;
.source "Popupview.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->setChildViewAnimation(ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$6;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$6;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mTheme:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->access$300(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 214
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 211
    return-void
.end method
