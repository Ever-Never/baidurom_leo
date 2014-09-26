.class Lcom/baidu/launcher/app/SelectAppDialog$1;
.super Ljava/lang/Object;
.source "SelectAppDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/app/SelectAppDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/app/SelectAppDialog;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/app/SelectAppDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/baidu/launcher/app/SelectAppDialog$1;->this$0:Lcom/baidu/launcher/app/SelectAppDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 62
    iget-object v0, p0, Lcom/baidu/launcher/app/SelectAppDialog$1;->this$0:Lcom/baidu/launcher/app/SelectAppDialog;

    #getter for: Lcom/baidu/launcher/app/SelectAppDialog;->mType:I
    invoke-static {v0}, Lcom/baidu/launcher/app/SelectAppDialog;->access$000(Lcom/baidu/launcher/app/SelectAppDialog;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/baidu/launcher/app/SelectAppDialog$1;->this$0:Lcom/baidu/launcher/app/SelectAppDialog;

    #getter for: Lcom/baidu/launcher/app/SelectAppDialog;->selectView:Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;
    invoke-static {v0}, Lcom/baidu/launcher/app/SelectAppDialog;->access$100(Lcom/baidu/launcher/app/SelectAppDialog;)Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;

    move-result-object v0

    sget v1, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->SELECT_APP:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->updateApps(IZ)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/app/SelectAppDialog$1;->this$0:Lcom/baidu/launcher/app/SelectAppDialog;

    #getter for: Lcom/baidu/launcher/app/SelectAppDialog;->selectView:Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;
    invoke-static {v0}, Lcom/baidu/launcher/app/SelectAppDialog;->access$100(Lcom/baidu/launcher/app/SelectAppDialog;)Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;

    move-result-object v0

    sget v1, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->SELECT_SHORTCUT:I

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/homeview/SelectAppOrShortcutView;->updateApps(IZ)V

    goto :goto_0
.end method
