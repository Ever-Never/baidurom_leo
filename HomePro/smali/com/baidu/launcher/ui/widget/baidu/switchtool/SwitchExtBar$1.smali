.class Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$1;
.super Ljava/lang/Object;
.source "SwitchExtBar.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->loadShortcutSwitch()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->access$000(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;)V

    .line 80
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->mCallback:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$InitAnimationCallback;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->access$100(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;)Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$InitAnimationCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$1$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$1$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$1;)V

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->post(Ljava/lang/Runnable;)Z

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/switchtool/SwitchExtBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 92
    return-void
.end method
