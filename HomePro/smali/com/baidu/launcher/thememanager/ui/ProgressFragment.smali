.class public Lcom/baidu/launcher/thememanager/ui/ProgressFragment;
.super Landroid/support/v4/app/Fragment;
.source "ProgressFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogCallback;,
        Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogShowListener;
    }
.end annotation


# static fields
.field public static final DIALOG_ALERT:I = 0x1

.field public static final DIALOG_PROGRESS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ProgressFragment"

.field public static be_attach:Z


# instance fields
.field private alert_dialog:Landroid/app/AlertDialog;

.field public dialogCallback:Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogCallback;

.field private dialogShowListener:Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogShowListener;

.field private dialog_style:I

.field private mCount:I

.field private mProgress:I

.field private mStyle:I

.field private message_str:Ljava/lang/String;

.field private progress_dialog:Landroid/app/ProgressDialog;

.field private title_id:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->be_attach:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->mStyle:I

    .line 29
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->message_str:Ljava/lang/String;

    .line 30
    iput v2, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->mCount:I

    .line 32
    iput v2, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->mProgress:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->dialog_style:I

    .line 36
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->dialogCallback:Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogCallback;

    .line 37
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogShowListener;

    invoke-direct {v0, p0, v1}, Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogShowListener;-><init>(Lcom/baidu/launcher/thememanager/ui/ProgressFragment;Lcom/baidu/launcher/thememanager/ui/ProgressFragment$1;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->dialogShowListener:Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogShowListener;

    .line 40
    const-string v0, "ProgressFragment"

    const-string v1, "new fragment"

    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/thememanager/ui/ProgressFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->dialog_style:I

    return v0
.end method

.method public static attach(Landroid/support/v4/app/FragmentActivity;)Lcom/baidu/launcher/thememanager/ui/ProgressFragment;
    .locals 4
    .parameter "activity"

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 99
    .local v1, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v2, "ProgressFragment"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;

    .line 101
    .local v0, fragment:Lcom/baidu/launcher/thememanager/ui/ProgressFragment;
    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;

    .end local v0           #fragment:Lcom/baidu/launcher/thememanager/ui/ProgressFragment;
    invoke-direct {v0}, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;-><init>()V

    .line 103
    .restart local v0       #fragment:Lcom/baidu/launcher/thememanager/ui/ProgressFragment;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "ProgressFragment"

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 105
    const/4 v2, 0x1

    sput-boolean v2, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->be_attach:Z

    .line 108
    :cond_0
    invoke-direct {v0}, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->dialog_release()V

    .line 109
    return-object v0
.end method

.method private dialog_release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 197
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->progress_dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->progress_dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->progress_dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 199
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->progress_dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 200
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->progress_dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 201
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->progress_dialog:Landroid/app/ProgressDialog;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->alert_dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->alert_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->alert_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 206
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->alert_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 207
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->alert_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 208
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->alert_dialog:Landroid/app/AlertDialog;

    .line 210
    :cond_1
    return-void
.end method

.method private release()V
    .locals 6

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 120
    .local v0, a:Landroid/support/v4/app/FragmentActivity;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 122
    .local v2, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v3, "ProgressFragment"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;

    .line 124
    .local v1, fragment:Lcom/baidu/launcher/thememanager/ui/ProgressFragment;
    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 130
    .end local v1           #fragment:Lcom/baidu/launcher/thememanager/ui/ProgressFragment;
    .end local v2           #fragmentManager:Landroid/support/v4/app/FragmentManager;
    :cond_0
    const-string v3, "ProgressFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "progress fragment release "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method


# virtual methods
.method public detach()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->be_attach:Z

    .line 114
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->release()V

    .line 115
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->dialog_release()V

    .line 116
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 92
    const-string v0, "ProgressFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "progress fragment attach "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->dialog_style:I

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->showDialog(I)V

    .line 95
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->dialog_release()V

    .line 86
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 87
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 49
    iput p1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->mCount:I

    .line 50
    return-void
.end method

.method public setMessage(ILjava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 44
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->message_str:Ljava/lang/String;

    .line 45
    iput p1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->title_id:I

    .line 46
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "p"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->progress_dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->progress_dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->progress_dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 60
    iput p1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->mProgress:I

    .line 62
    :cond_0
    return-void
.end method

.method public setProgressBarStyle(I)V
    .locals 1
    .parameter "s"

    .prologue
    .line 53
    iput p1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->mStyle:I

    .line 54
    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->dialog_style:I

    .line 55
    return-void
.end method

.method public showDialog(I)V
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 134
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->dialog_release()V

    .line 136
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 140
    :cond_0
    iput p1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->dialog_style:I

    .line 142
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 144
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->title_id:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->message_str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/baidu/launcher/thememanager/ui/ProgressFragment$1;

    invoke-direct {v3, p0}, Lcom/baidu/launcher/thememanager/ui/ProgressFragment$1;-><init>(Lcom/baidu/launcher/thememanager/ui/ProgressFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 159
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->alert_dialog:Landroid/app/AlertDialog;

    .line 160
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->alert_dialog:Landroid/app/AlertDialog;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->dialogShowListener:Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogShowListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 161
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->alert_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 162
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->alert_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 170
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->alert_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 175
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_1
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->progress_dialog:Landroid/app/ProgressDialog;

    .line 176
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->progress_dialog:Landroid/app/ProgressDialog;

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->mStyle:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 177
    iget v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->title_id:I

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->progress_dialog:Landroid/app/ProgressDialog;

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->title_id:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 180
    :cond_1
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->progress_dialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->dialogShowListener:Lcom/baidu/launcher/thememanager/ui/ProgressFragment$DialogShowListener;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 181
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->message_str:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->progress_dialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->message_str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->progress_dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 185
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->progress_dialog:Landroid/app/ProgressDialog;

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->mCount:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 186
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->progress_dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 187
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->progress_dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 189
    const-string v1, "ProgressFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProgress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->mProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->progress_dialog:Landroid/app/ProgressDialog;

    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/ProgressFragment;->mProgress:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto/16 :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
