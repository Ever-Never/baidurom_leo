.class Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon$1;
.super Ljava/lang/Object;
.source "ThemeIcon.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mThemeIcon:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->access$000(Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->getInstance()Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->getCenterIconFadeOutAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 90
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mThemeIcon:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->access$000(Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->getInstance()Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/PopupManger;->setPopupviewShowAniamtion()V

    .line 92
    return-void
.end method
