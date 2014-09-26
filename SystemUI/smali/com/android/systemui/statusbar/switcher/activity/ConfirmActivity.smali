.class public Lcom/android/systemui/statusbar/switcher/activity/ConfirmActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ConfirmActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConfirmActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    iget-object v0, p0, Lcom/android/systemui/statusbar/switcher/activity/ConfirmActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 22
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x1080027

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/ConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/ConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c010a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 25
    const v1, 0x1040013

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/switcher/activity/ConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 26
    const v1, 0x1040009

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/switcher/activity/ConfirmActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 27
    new-instance v1, Lcom/android/systemui/statusbar/switcher/activity/ConfirmActivity$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/switcher/activity/ConfirmActivity$1;-><init>(Lcom/android/systemui/statusbar/switcher/activity/ConfirmActivity;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/switcher/activity/ConfirmActivity;->setupAlert()V

    .line 39
    return-void
.end method
