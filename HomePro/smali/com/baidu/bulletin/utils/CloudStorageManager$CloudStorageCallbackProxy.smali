.class Lcom/baidu/bulletin/utils/CloudStorageManager$CloudStorageCallbackProxy;
.super Ljava/lang/Object;
.source "CloudStorageManager.java"

# interfaces
.implements Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/CloudStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudStorageCallbackProxy"
.end annotation


# instance fields
.field private mListener:Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;

.field final synthetic this$0:Lcom/baidu/bulletin/utils/CloudStorageManager;


# direct methods
.method public constructor <init>(Lcom/baidu/bulletin/utils/CloudStorageManager;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)V
    .locals 0
    .parameter
    .parameter "listener"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/baidu/bulletin/utils/CloudStorageManager$CloudStorageCallbackProxy;->this$0:Lcom/baidu/bulletin/utils/CloudStorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p2, p0, Lcom/baidu/bulletin/utils/CloudStorageManager$CloudStorageCallbackProxy;->mListener:Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;

    .line 112
    return-void
.end method


# virtual methods
.method public OnDeleteFile(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "uuid"
    .parameter "remotePath"
    .parameter "errorCode"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/baidu/bulletin/utils/CloudStorageManager$CloudStorageCallbackProxy;->mListener:Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;

    if-nez v0, :cond_0

    .line 126
    const-string v0, "CloudStorageManager"

    const-string v1, "Invalid local listener!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/utils/CloudStorageManager$CloudStorageCallbackProxy;->mListener:Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;->OnDeleteFile(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onAuthResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "uuid"
    .parameter "appid"
    .parameter "token"
    .parameter "errorCode"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/baidu/bulletin/utils/CloudStorageManager$CloudStorageCallbackProxy;->mListener:Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;

    if-nez v0, :cond_0

    .line 135
    const-string v0, "CloudStorageManager"

    const-string v1, "Invalid local listener!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/utils/CloudStorageManager$CloudStorageCallbackProxy;->mListener:Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;->onAuthResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onListDirectory(Ljava/lang/String;Ljava/util/List;I)V
    .locals 2
    .parameter "uuid"
    .parameter
    .parameter "errorCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p2, entries:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;>;"
    iget-object v0, p0, Lcom/baidu/bulletin/utils/CloudStorageManager$CloudStorageCallbackProxy;->mListener:Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;

    if-nez v0, :cond_0

    .line 117
    const-string v0, "CloudStorageManager"

    const-string v1, "Invalid local listener!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/baidu/bulletin/utils/CloudStorageManager$CloudStorageCallbackProxy;->mListener:Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;->onListDirectory(Ljava/lang/String;Ljava/util/List;I)V

    goto :goto_0
.end method
