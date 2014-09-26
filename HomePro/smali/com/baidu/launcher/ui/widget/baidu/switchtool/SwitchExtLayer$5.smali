.class Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$5;
.super Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;
.source "SwitchExtLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->startCloseAnimation()V
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
    .line 194
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    invoke-direct {p0}, Lcom/baidu/launcher/ui/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->onLayerClosed()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$1300(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;)V

    .line 203
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer$5;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;

    const/4 v1, 0x0

    #setter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->mDrawBg:Z
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;->access$1002(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtLayer;Z)Z

    .line 204
    return-void
.end method

.method public onAnimationStart(Lcom/baidu/launcher/ui/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 198
    return-void
.end method
