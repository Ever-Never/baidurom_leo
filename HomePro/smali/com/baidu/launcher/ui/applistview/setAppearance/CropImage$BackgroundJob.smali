.class Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;
.super Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity$LifeCycleAdapter;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundJob"
.end annotation


# instance fields
.field private final mActivity:Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity;

.field private final mCleanupRunner:Ljava/lang/Runnable;

.field private final mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mJob:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 1
    .parameter "activity"
    .parameter "job"
    .parameter "dialog"
    .parameter "handler"

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity$LifeCycleAdapter;-><init>()V

    .line 225
    new-instance v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob$1;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob$1;-><init>(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    .line 235
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->mActivity:Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity;

    .line 236
    iput-object p3, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    .line 237
    iput-object p2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->mJob:Ljava/lang/Runnable;

    .line 238
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->mActivity:Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity;

    invoke-virtual {v0, p0}, Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity;->addLifeCycleListener(Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity$LifeCycleListener;)V

    .line 239
    iput-object p4, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->mHandler:Landroid/os/Handler;

    .line 240
    return-void
.end method

.method static synthetic access$400(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;)Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->mActivity:Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onActivityDestroyed(Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 255
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 256
    return-void
.end method

.method public onActivityStarted(Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 266
    return-void
.end method

.method public onActivityStopped(Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 261
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->mJob:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    return-void

    .line 246
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method
