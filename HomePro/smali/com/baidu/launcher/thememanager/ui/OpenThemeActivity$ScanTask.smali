.class Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$ScanTask;
.super Landroid/os/AsyncTask;
.source "OpenThemeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$ScanTask;->this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$ScanTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$ScanTask;->this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mScanning:Z
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->access$100(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$ScanTask;->this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;

    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$ScanTask;->this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;

    #getter for: Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->access$500(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)Landroid/content/Context;

    move-result-object v2

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #calls: Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->getDetail(Landroid/content/Context;I)V
    invoke-static {v1, v2, v0}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->access$600(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;Landroid/content/Context;I)V

    .line 237
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$ScanTask;->this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity$ScanTask;->this$0:Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;

    #calls: Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->setIntent()Landroid/content/Intent;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->access$700(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;)Landroid/content/Intent;

    move-result-object v1

    #calls: Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->showDetail(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;->access$800(Lcom/baidu/launcher/thememanager/ui/OpenThemeActivity;Landroid/content/Intent;)V

    .line 239
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
