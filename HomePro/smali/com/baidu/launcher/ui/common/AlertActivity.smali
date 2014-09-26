.class public abstract Lcom/baidu/launcher/ui/common/AlertActivity;
.super Landroid/app/Activity;
.source "AlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field protected mAlert:Lcom/baidu/launcher/ui/common/AlertController;

.field protected mAlertParams:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/AlertActivity;->finish()V

    .line 56
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/AlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/AlertActivity;->finish()V

    .line 64
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    new-instance v0, Lcom/baidu/launcher/ui/common/AlertController;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/baidu/launcher/ui/common/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/AlertActivity;->mAlert:Lcom/baidu/launcher/ui/common/AlertController;

    .line 51
    new-instance v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/AlertActivity;->mAlertParams:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    .line 52
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertActivity;->mAlert:Lcom/baidu/launcher/ui/common/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/launcher/ui/common/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertActivity;->mAlert:Lcom/baidu/launcher/ui/common/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/launcher/ui/common/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setupAlert()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertActivity;->mAlertParams:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    iget-object v1, p0, Lcom/baidu/launcher/ui/common/AlertActivity;->mAlert:Lcom/baidu/launcher/ui/common/AlertController;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->apply(Lcom/baidu/launcher/ui/common/AlertController;)V

    .line 75
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertActivity;->mAlert:Lcom/baidu/launcher/ui/common/AlertController;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/AlertController;->installContent()V

    .line 76
    return-void
.end method
