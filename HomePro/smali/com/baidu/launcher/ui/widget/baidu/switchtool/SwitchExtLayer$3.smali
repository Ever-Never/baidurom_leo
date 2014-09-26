.class Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$3;
.super Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;
.source "SwitchExtLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->startStretchAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$1102(Z)Z

    .line 151
    return-void
.end method

.method public onAnimationStart(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mSwitchWidgetBar:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$900(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchWidgetBar;->hideWidget()V

    .line 146
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    const/4 v1, 0x1

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mDrawBg:Z
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$1002(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;Z)Z

    .line 147
    return-void
.end method
