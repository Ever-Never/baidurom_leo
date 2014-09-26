.class Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$4;
.super Ljava/lang/Object;
.source "PopupActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->onItemClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

.field final synthetic val$appItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$4;->val$appItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAppList:Ljava/util/List;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$1000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$4;->val$appItem:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppItem;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAdapter:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$1100(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAppList:Ljava/util/List;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$1000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;->setList(Ljava/util/List;)V

    .line 328
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->mAdapter:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$1100(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;->notifyDataSetChanged()V

    .line 329
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 333
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 337
    return-void
.end method
