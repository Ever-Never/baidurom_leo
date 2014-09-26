.class public Lcom/baidu/launcher/ui/common/DownloadAlert;
.super Lcom/baidu/launcher/ui/common/AlertActivity;
.source "DownloadAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/ui/common/DownloadAlert$DownloadReceiver;
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

.field mDownloadReceiver:Lcom/baidu/launcher/ui/common/DownloadAlert$DownloadReceiver;

.field private mMessage:Landroid/widget/TextView;

.field mProgress:I

.field private mTitle:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/AlertActivity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/ui/common/DownloadAlert;->mProgress:I

    .line 131
    new-instance v0, Lcom/baidu/launcher/ui/common/DownloadAlert$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/common/DownloadAlert$1;-><init>(Lcom/baidu/launcher/ui/common/DownloadAlert;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/common/DownloadAlert;->handler:Landroid/os/Handler;

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/common/DownloadAlert;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/common/DownloadAlert;->updateProgress(I)V

    return-void
.end method

.method private createDialog()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/DownloadAlert;->mAlertParams:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;

    .line 78
    .local v0, p:Lcom/baidu/launcher/ui/common/AlertController$AlertParams;
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/DownloadAlert;->createProgressDialog()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 80
    const v1, 0x7f0c00b5

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/DownloadAlert;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 81
    iput-object p0, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 83
    const v1, 0x7f0c00b4

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/DownloadAlert;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 84
    iput-object p0, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 86
    const v1, 0x7f0c00be

    invoke-virtual {p0, v1}, Lcom/baidu/launcher/ui/common/DownloadAlert;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/launcher/ui/common/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 87
    return-void
.end method

.method private createProgressDialog()Landroid/view/View;
    .locals 7

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/DownloadAlert;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03007e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0801a1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 67
    .local v0, downloading:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0c00cb

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/baidu/launcher/ui/common/DownloadAlert;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/launcher/ui/common/DownloadAlert;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    const v2, 0x7f0801a0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/baidu/launcher/ui/common/DownloadAlert;->mMessage:Landroid/widget/TextView;

    .line 71
    const v2, 0x7f0801a2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/baidu/launcher/ui/common/DownloadAlert;->mBar:Landroid/widget/ProgressBar;

    .line 72
    return-object v1
.end method

.method private updateProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/DownloadAlert;->mBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 91
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/DownloadAlert;->mMessage:Landroid/widget/TextView;

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

    .line 92
    const/16 v0, 0x64

    if-ne v0, p1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/DownloadAlert;->finish()V

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "arg0"
    .parameter "which"

    .prologue
    .line 100
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    .line 102
    .local v0, positiveResult:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 115
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/DownloadAlert;->finish()V

    .line 116
    return-void

    .line 100
    .end local v0           #positiveResult:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 110
    .restart local v0       #positiveResult:Z
    :cond_1
    invoke-static {}, Lcom/baidu/launcher/network/http/DownloadFileManager;->getInstance()Lcom/baidu/launcher/network/http/DownloadFileManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/launcher/ui/common/DownloadAlert;->mDownloadId:J

    invoke-virtual {v1, p0, v2, v3}, Lcom/baidu/launcher/network/http/DownloadFileManager;->stopTask(Landroid/content/Context;J)V

    .line 111
    invoke-static {}, Lcom/baidu/launcher/network/http/DownloadThemeManager;->getInstance()Lcom/baidu/launcher/network/http/DownloadThemeManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/baidu/launcher/ui/common/DownloadAlert;->mDownloadId:J

    invoke-virtual {v1, p0, v2, v3}, Lcom/baidu/launcher/network/http/DownloadThemeManager;->stopTask(Landroid/content/Context;J)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/baidu/launcher/ui/common/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget-boolean v2, Lcom/baidu/launcher/app/LauncherApplication;->onlyPortait:Z

    if-eqz v2, :cond_0

    .line 41
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/ui/common/DownloadAlert;->setRequestedOrientation(I)V

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/DownloadAlert;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 46
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "extra_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/launcher/ui/common/DownloadAlert;->mDownloadId:J

    .line 47
    const-string v2, "extra_title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/launcher/ui/common/DownloadAlert;->mTitle:Ljava/lang/String;

    .line 48
    const-string v2, "extra_progress"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/baidu/launcher/ui/common/DownloadAlert;->mProgress:I

    .line 49
    iget v2, p0, Lcom/baidu/launcher/ui/common/DownloadAlert;->mProgress:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/baidu/launcher/ui/common/DownloadAlert;->createDialog()V

    .line 51
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/DownloadAlert;->setupAlert()V

    .line 55
    :goto_0
    new-instance v2, Lcom/baidu/launcher/ui/common/DownloadAlert$DownloadReceiver;

    iget-object v3, p0, Lcom/baidu/launcher/ui/common/DownloadAlert;->handler:Landroid/os/Handler;

    iget-wide v4, p0, Lcom/baidu/launcher/ui/common/DownloadAlert;->mDownloadId:J

    invoke-direct {v2, v3, v4, v5}, Lcom/baidu/launcher/ui/common/DownloadAlert$DownloadReceiver;-><init>(Landroid/os/Handler;J)V

    iput-object v2, p0, Lcom/baidu/launcher/ui/common/DownloadAlert;->mDownloadReceiver:Lcom/baidu/launcher/ui/common/DownloadAlert$DownloadReceiver;

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.baidu.launcher.download_progress"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v2, "com.baidu.launcher.download_completed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/baidu/launcher/ui/common/DownloadAlert;->mDownloadReceiver:Lcom/baidu/launcher/ui/common/DownloadAlert$DownloadReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/baidu/launcher/ui/common/DownloadAlert;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void

    .line 53
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/common/DownloadAlert;->finish()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/AlertActivity;->onDestroy()V

    .line 121
    iget-object v0, p0, Lcom/baidu/launcher/ui/common/DownloadAlert;->mDownloadReceiver:Lcom/baidu/launcher/ui/common/DownloadAlert$DownloadReceiver;

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/common/DownloadAlert;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Lcom/baidu/launcher/ui/common/AlertActivity;->onResume()V

    .line 128
    iget v0, p0, Lcom/baidu/launcher/ui/common/DownloadAlert;->mProgress:I

    invoke-direct {p0, v0}, Lcom/baidu/launcher/ui/common/DownloadAlert;->updateProgress(I)V

    .line 129
    return-void
.end method
