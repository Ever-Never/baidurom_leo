.class Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogShowListener;
.super Ljava/lang/Object;
.source "ProgressFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/ProgressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogShowListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ProgressFragment;


# direct methods
.method private constructor <init>(Lcom/baidu/launcher/thememanager/ui/ProgressFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogShowListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ProgressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/launcher/thememanager/ui/ProgressFragment;Lcom/baidu/launcher/thememanager/ui/ProgressFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogShowListener;-><init>(Lcom/baidu/launcher/thememanager/ui/ProgressFragment;)V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogShowListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ProgressFragment;

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->dialogCallback:Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogCallback;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogShowListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ProgressFragment;

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->dialogCallback:Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogCallback;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogShowListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ProgressFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->dialog_style:I
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->access$100(Lcom/baidu/launcher/thememanager/ui/ProgressFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogShowListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ProgressFragment;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogCallback;->onShowDialog(ILandroid/app/Activity;)V

    .line 219
    :cond_0
    return-void
.end method
