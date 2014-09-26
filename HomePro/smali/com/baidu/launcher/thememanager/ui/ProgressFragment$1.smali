.class Lcom/baidu/launcher/thememanager/ui/ProgressFragment$1;
.super Ljava/lang/Object;
.source "ProgressFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ProgressFragment;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/ProgressFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment$1;->this$0:Lcom/baidu/launcher/thememanager/ui/ProgressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment$1;->this$0:Lcom/baidu/launcher/thememanager/ui/ProgressFragment;

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->dialogCallback:Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogCallback;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment$1;->this$0:Lcom/baidu/launcher/thememanager/ui/ProgressFragment;

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->dialogCallback:Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogCallback;

    invoke-interface {v0, p1, p2}, Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogCallback;->onClick(Landroid/content/DialogInterface;I)V

    .line 156
    :cond_0
    return-void
.end method
