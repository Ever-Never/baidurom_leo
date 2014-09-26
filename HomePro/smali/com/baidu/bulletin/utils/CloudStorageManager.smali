.class public Lcom/baidu/bulletin/utils/CloudStorageManager;
.super Ljava/lang/Object;
.source "CloudStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/utils/CloudStorageManager$CloudStorageCallbackProxy;
    }
.end annotation


# static fields
.field private static final SERVICE_NAME:Ljava/lang/String; = "com.baidu.cloudstorage.CloudStorageService"

.field private static final TAG:Ljava/lang/String; = "CloudStorageManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;)V
    .locals 0
    .parameter "context"
    .parameter "service"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/baidu/bulletin/utils/CloudStorageManager;->mService:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    .line 36
    iput-object p1, p0, Lcom/baidu/bulletin/utils/CloudStorageManager;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method private checkService()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/baidu/bulletin/utils/CloudStorageManager;->mService:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelTask(Ljava/lang/String;)V
    .locals 1
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/CloudStorageManager;->checkService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/utils/CloudStorageManager;->mService:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    invoke-virtual {v0, p1}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->cancelTask(Ljava/lang/String;)I

    .line 81
    return-void
.end method

.method public checkOfflineTaskInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "taskid"
    .parameter "remotePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/CloudStorageManager;->checkService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/utils/CloudStorageManager;->mService:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    const-string v1, "baidu"

    invoke-virtual {v0, v1, p1, p2}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->checkOfflineTaskInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public listDirectory(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Z
    .locals 3
    .parameter "remotePath"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/CloudStorageManager;->checkService()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    const/4 v1, 0x0

    .line 97
    :goto_0
    return v1

    .line 94
    :cond_0
    new-instance v0, Lcom/baidu/bulletin/utils/CloudStorageManager$CloudStorageCallbackProxy;

    invoke-direct {v0, p0, p2}, Lcom/baidu/bulletin/utils/CloudStorageManager$CloudStorageCallbackProxy;-><init>(Lcom/baidu/bulletin/utils/CloudStorageManager;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)V

    .line 95
    .local v0, proxy:Lcom/baidu/bulletin/utils/CloudStorageManager$CloudStorageCallbackProxy;
    iget-object v1, p0, Lcom/baidu/bulletin/utils/CloudStorageManager;->mService:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    const-string v2, "baidu"

    invoke-virtual {v1, v2, p1, v0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->listDirectory(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Ljava/lang/String;

    .line 97
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public offlineFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "localPath"
    .parameter "relativePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/CloudStorageManager;->checkService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/utils/CloudStorageManager;->mService:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    const-string v1, "baidu"

    invoke-virtual {v0, v1, p1, p2}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->offlineFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putAuthInfo(Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Ljava/lang/String;
    .locals 4
    .parameter "appId"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/CloudStorageManager;->checkService()Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    throw v1

    .line 63
    :cond_0
    new-instance v0, Lcom/baidu/bulletin/utils/CloudStorageManager$CloudStorageCallbackProxy;

    invoke-direct {v0, p0, p2}, Lcom/baidu/bulletin/utils/CloudStorageManager$CloudStorageCallbackProxy;-><init>(Lcom/baidu/bulletin/utils/CloudStorageManager;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)V

    .line 64
    .local v0, proxy:Lcom/baidu/bulletin/utils/CloudStorageManager$CloudStorageCallbackProxy;
    iget-object v1, p0, Lcom/baidu/bulletin/utils/CloudStorageManager;->mService:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    const-string v2, "baidu"

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->putAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public putOAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Ljava/lang/String;
    .locals 7
    .parameter "appId"
    .parameter "apiKey"
    .parameter "secretKey"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/CloudStorageManager;->checkService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 72
    :cond_0
    new-instance v6, Lcom/baidu/bulletin/utils/CloudStorageManager$CloudStorageCallbackProxy;

    invoke-direct {v6, p0, p4}, Lcom/baidu/bulletin/utils/CloudStorageManager$CloudStorageCallbackProxy;-><init>(Lcom/baidu/bulletin/utils/CloudStorageManager;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)V

    .line 73
    .local v6, proxy:Lcom/baidu/bulletin/utils/CloudStorageManager$CloudStorageCallbackProxy;
    iget-object v0, p0, Lcom/baidu/bulletin/utils/CloudStorageManager;->mService:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    const-string v2, "baidu"

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->putOAuthInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resumeTask(Ljava/lang/String;)V
    .locals 1
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/baidu/bulletin/utils/CloudStorageManager;->checkService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/utils/CloudStorageManager;->mService:Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;

    invoke-virtual {v0, p1}, Lcom/baidu/yi/sdk/cloudstorage/CloudStorageService;->resumeTask(Ljava/lang/String;)I

    .line 88
    return-void
.end method
