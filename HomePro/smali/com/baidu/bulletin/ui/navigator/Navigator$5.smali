.class Lcom/baidu/bulletin/ui/navigator/Navigator$5;
.super Ljava/lang/Object;
.source "Navigator.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/navigator/Navigator;->openPopupwin(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/navigator/Navigator;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator$5;->this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator$5;->this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;

    #getter for: Lcom/baidu/bulletin/ui/navigator/Navigator;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/navigator/Navigator;->access$400(Lcom/baidu/bulletin/ui/navigator/Navigator;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator$5;->this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;

    #getter for: Lcom/baidu/bulletin/ui/navigator/Navigator;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/navigator/Navigator;->access$400(Lcom/baidu/bulletin/ui/navigator/Navigator;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator$5;->this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;

    #getter for: Lcom/baidu/bulletin/ui/navigator/Navigator;->popupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/baidu/bulletin/ui/navigator/Navigator;->access$400(Lcom/baidu/bulletin/ui/navigator/Navigator;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 340
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
