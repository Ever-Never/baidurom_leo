.class public Lcom/baidu/launcher/ui/common/AlertDialog;
.super Landroid/app/Dialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/common/AlertDialog$Builder;
    }
.end annotation


# instance fields
.field private mAlert:Lcom/baidu/launcher/ui/common/AlertController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    const v0, 0x7f0a0024

    invoke-direct {p0, p1, v0}, Lcom/baidu/launcher/ui/common/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 28
    new-instance v0, Lcom/baidu/launcher/ui/common/AlertController;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/baidu/launcher/ui/common/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog;->mAlert:Lcom/baidu/launcher/ui/common/AlertController;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .parameter "context"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 32
    const v0, 0x7f0a0024

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/baidu/launcher/ui/common/AlertDialog;->setCancelable(Z)V

    .line 34
    invoke-virtual {p0, p3}, Lcom/baidu/launcher/ui/common/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 35
    new-instance v0, Lcom/baidu/launcher/ui/common/AlertController;

    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/baidu/launcher/ui/common/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog;->mAlert:Lcom/baidu/launcher/ui/common/AlertController;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/common/AlertDialog;)Lcom/baidu/launcher/ui/common/AlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog;->mAlert:Lcom/baidu/launcher/ui/common/AlertController;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 769
    invoke-super {p0}, Landroid/app/Dialog;->cancel()V

    .line 770
    return-void
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 774
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 775
    return-void
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .parameter "whichButton"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog;->mAlert:Lcom/baidu/launcher/ui/common/AlertController;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/common/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog;->mAlert:Lcom/baidu/launcher/ui/common/AlertController;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 212
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog;->mAlert:Lcom/baidu/launcher/ui/common/AlertController;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/common/AlertController;->installContent()V

    .line 213
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog;->mAlert:Lcom/baidu/launcher/ui/common/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/launcher/ui/common/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 218
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog;->mAlert:Lcom/baidu/launcher/ui/common/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/launcher/ui/common/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 224
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog;->mAlert:Lcom/baidu/launcher/ui/common/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/baidu/launcher/ui/common/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 126
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .parameter "whichButton"
    .parameter "text"
    .parameter "msg"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog;->mAlert:Lcom/baidu/launcher/ui/common/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/baidu/launcher/ui/common/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 112
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 166
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/launcher/ui/common/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 167
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/launcher/ui/common/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 135
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 179
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/launcher/ui/common/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 180
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/launcher/ui/common/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 144
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "text"
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/launcher/ui/common/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 193
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .parameter "text"
    .parameter "msg"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/launcher/ui/common/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 153
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .parameter "customTitleView"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog;->mAlert:Lcom/baidu/launcher/ui/common/AlertController;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/common/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 201
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 204
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .parameter "forceInverseBackground"

    .prologue
    .line 207
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog;->mAlert:Lcom/baidu/launcher/ui/common/AlertController;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/common/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog;->mAlert:Lcom/baidu/launcher/ui/common/AlertController;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/common/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 65
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog;->mAlert:Lcom/baidu/launcher/ui/common/AlertController;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/common/AlertController;->setView(Landroid/view/View;)V

    .line 83
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .parameter "view"
    .parameter "viewSpacingLeft"
    .parameter "viewSpacingTop"
    .parameter "viewSpacingRight"
    .parameter "viewSpacingBottom"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/AlertDialog;->mAlert:Lcom/baidu/launcher/ui/common/AlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/launcher/ui/common/AlertController;->setView(Landroid/view/View;IIII)V

    .line 98
    return-void
.end method
