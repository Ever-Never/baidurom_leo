.class public Lcom/baidu/launcher/thememanager/ui/DownloadAlert;
.super Lcom/baidu/launcher/thememanager/ui/AlertActivity;
.source "DownloadAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/ui/DownloadAlert$DownloadReceiver;
    }
.end annotation


# static fields
.field private static final MSG_DOWNLOAD_COMPLETED:I = 0x1

.field private static final MSG_UPDATE_PROGRESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DownloadAlert"


# instance fields
.field private handler:Landroid/os/Handler;

.field private mBar:Landroid/widget/ProgressBar;

.field private mDownloadId:J

.field mDownloadReceiver:Lcom/baidu/launcher/thememanager/ui/DownloadAlert$DownloadReceiver;

.field private mMessage:Landroid/widget/TextView;

.field mProgress:I

.field private mTitle:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/AlertActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->mProgress:I

    .line 126
    new-instance v0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/ui/DownloadAlert$1;-><init>(Lcom/baidu/launcher/thememanager/ui/DownloadAlert;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->handler:Landroid/os/Handler;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/thememanager/ui/DownloadAlert;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->updateProgress(I)V

    return-void
.end method

.method private createDialog()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->mAlertParams:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    .line 74
    .local v0, p:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->createProgressDialog()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 76
    const v1, 0x7f0c00b5

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 77
    iput-object p0, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 79
    const v1, 0x7f0c00b4

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 80
    iput-object p0, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 82
    const v1, 0x7f0c00be

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 83
    return-void
.end method

.method private createProgressDialog()Landroid/view/View;
    .locals 7

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03007e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0801a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    .local v0, downloading:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0c00cb

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    const v2, 0x7f0801a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->mMessage:Landroid/widget/TextView;

    .line 67
    const v2, 0x7f0801a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->mBar:Landroid/widget/ProgressBar;

    .line 68
    return-object v1
.end method

.method private updateProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->mBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 87
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->mMessage:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const/16 v0, 0x64

    if-ne v0, p1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->finish()V

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "arg0"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 96
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const/4 v0, 0x1

    .line 98
    .local v0, positiveResult:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 110
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->finish()V

    .line 111
    return-void

    .end local v0           #positiveResult:Z
    :cond_0
    move v0, v1

    .line 96
    goto :goto_0

    .line 106
    .restart local v0       #positiveResult:Z
    :cond_1
    invoke-static {}, Lcom/baidu/launcher/network/http/DownloadThemeManager;->getInstance()Lcom/baidu/launcher/network/http/DownloadThemeManager;

    move-result-object v2

    iget-wide v3, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->mDownloadId:J

    invoke-virtual {v2, p0, v3, v4}, Lcom/baidu/launcher/network/http/DownloadThemeManager;->stopTask(Landroid/content/Context;J)V

    .line 107
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v3, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->mDownloadId:J

    invoke-static {v2, v3, v4, v1}, Lcom/baidu/launcher/thememanager/network/DownloadUtil;->cancelDownloadWithNotice(Landroid/content/Context;JZ)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/baidu/launcher/thememanager/ui/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 42
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "extra_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->mDownloadId:J

    .line 43
    const-string v2, "extra_title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->mTitle:Ljava/lang/String;

    .line 44
    const-string v2, "extra_progress"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->mProgress:I

    .line 45
    iget v2, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->mProgress:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->createDialog()V

    .line 47
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->setupAlert()V

    .line 51
    :goto_0
    new-instance v2, Lcom/baidu/launcher/thememanager/ui/DownloadAlert$DownloadReceiver;

    iget-object v3, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->handler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->mDownloadId:J

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/launcher/thememanager/ui/DownloadAlert$DownloadReceiver;-><init>(Landroid/os/Handler;J)V

    iput-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->mDownloadReceiver:Lcom/baidu/launcher/thememanager/ui/DownloadAlert$DownloadReceiver;

    .line 52
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.baidu.launcher.download_progress"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v2, "com.baidu.launcher.download_completed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->mDownloadReceiver:Lcom/baidu/launcher/thememanager/ui/DownloadAlert$DownloadReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    return-void

    .line 49
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->finish()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/AlertActivity;->onDestroy()V

    .line 116
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->mDownloadReceiver:Lcom/baidu/launcher/thememanager/ui/DownloadAlert$DownloadReceiver;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/baidu/launcher/thememanager/ui/AlertActivity;->onResume()V

    .line 123
    iget v0, p0, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->mProgress:I

    invoke-direct {p0, v0}, Lcom/baidu/launcher/thememanager/ui/DownloadAlert;->updateProgress(I)V

    .line 124
    return-void
.end method
