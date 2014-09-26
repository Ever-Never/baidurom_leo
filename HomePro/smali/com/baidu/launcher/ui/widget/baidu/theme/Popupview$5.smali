.class Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$5;
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

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$5;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x4

    .line 197
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mCenter:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->access$100(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mCenter:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->access$100(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mWallpaper:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->access$200(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 194
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 191
    return-void
.end method
