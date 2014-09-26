.class Lcom/baidu/bulletin/BulletinService$1;
.super Ljava/lang/Object;
.source "BulletinService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/BulletinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/BulletinService;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/BulletinService;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/baidu/bulletin/BulletinService$1;->this$0:Lcom/baidu/bulletin/BulletinService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 456
    move-object v0, p2

    check-cast v0, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$LocalBinder;

    .line 457
    .local v0, local:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$LocalBinder;
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService$1;->this$0:Lcom/baidu/bulletin/BulletinService;

    invoke-virtual {v0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService$LocalBinder;->getService()Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    move-result-object v2

    #setter for: Lcom/baidu/bulletin/BulletinService;->mCloudService:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;
    invoke-static {v1, v2}, Lcom/baidu/bulletin/BulletinService;->access$702(Lcom/baidu/bulletin/BulletinService;Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;)Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    .line 458
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService$1;->this$0:Lcom/baidu/bulletin/BulletinService;

    new-instance v2, Lcom/baidu/bulletin/utils/CloudStorageManager;

    iget-object v3, p0, Lcom/baidu/bulletin/BulletinService$1;->this$0:Lcom/baidu/bulletin/BulletinService;

    iget-object v4, p0, Lcom/baidu/bulletin/BulletinService$1;->this$0:Lcom/baidu/bulletin/BulletinService;

    #getter for: Lcom/baidu/bulletin/BulletinService;->mCloudService:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;
    invoke-static {v4}, Lcom/baidu/bulletin/BulletinService;->access$700(Lcom/baidu/bulletin/BulletinService;)Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/baidu/bulletin/utils/CloudStorageManager;-><init>(Landroid/content/Context;Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;)V

    #setter for: Lcom/baidu/bulletin/BulletinService;->mCloudStorageManager:Lcom/baidu/bulletin/utils/CloudStorageManager;
    invoke-static {v1, v2}, Lcom/baidu/bulletin/BulletinService;->access$802(Lcom/baidu/bulletin/BulletinService;Lcom/baidu/bulletin/utils/CloudStorageManager;)Lcom/baidu/bulletin/utils/CloudStorageManager;

    .line 460
    iget-object v1, p0, Lcom/baidu/bulletin/BulletinService$1;->this$0:Lcom/baidu/bulletin/BulletinService;

    #calls: Lcom/baidu/bulletin/BulletinService;->putOAuthInfo()V
    invoke-static {v1}, Lcom/baidu/bulletin/BulletinService;->access$300(Lcom/baidu/bulletin/BulletinService;)V

    .line 461
    const-string v1, "BulletinService"

    const-string v2, "cloud service connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 466
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$1;->this$0:Lcom/baidu/bulletin/BulletinService;

    #setter for: Lcom/baidu/bulletin/BulletinService;->mCloudService:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/BulletinService;->access$702(Lcom/baidu/bulletin/BulletinService;Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;)Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    .line 467
    iget-object v0, p0, Lcom/baidu/bulletin/BulletinService$1;->this$0:Lcom/baidu/bulletin/BulletinService;

    #setter for: Lcom/baidu/bulletin/BulletinService;->mCloudStorageManager:Lcom/baidu/bulletin/utils/CloudStorageManager;
    invoke-static {v0, v1}, Lcom/baidu/bulletin/BulletinService;->access$802(Lcom/baidu/bulletin/BulletinService;Lcom/baidu/bulletin/utils/CloudStorageManager;)Lcom/baidu/bulletin/utils/CloudStorageManager;

    .line 468
    const-string v0, "BulletinService"

    const-string v1, "cloud service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return-void
.end method
