.class Lcom/baidu/launcher/app/Launcher$2;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/app/Launcher;->checkNewVersionUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/app/Launcher;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/app/Launcher;)V
    .locals 0
    .parameter

    .prologue
    .line 458
    iput-object p1, p0, Lcom/baidu/launcher/app/Launcher$2;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 461
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher$2;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-static {v1}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isWifiConnection(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/baidu/launcher/app/Launcher$2;->this$0:Lcom/baidu/launcher/app/Launcher;

    invoke-virtual {v1}, Lcom/baidu/launcher/app/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/launcher/update/UpdateManager;->getInastance(Landroid/content/Context;)Lcom/baidu/launcher/update/UpdateManager;

    move-result-object v0

    .line 463
    .local v0, updateManager:Lcom/baidu/launcher/update/UpdateManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/update/UpdateManager;->checkUpdate(I)V

    .line 465
    .end local v0           #updateManager:Lcom/baidu/launcher/update/UpdateManager;
    :cond_0
    return-void
.end method
