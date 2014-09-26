.class Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob$1;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob$1;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob$1;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->mActivity:Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->access$400(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;)Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob$1;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity;->removeLifeCycleListener(Lcom/baidu/launcher/ui/applistview/setAppearance/MonitoredActivity$LifeCycleListener;)V

    .line 228
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob$1;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->access$500(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob$1;->this$0:Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;

    #getter for: Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;->access$500(Lcom/baidu/launcher/ui/applistview/setAppearance/CropImage$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 230
    :cond_0
    return-void
.end method
