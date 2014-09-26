.class public Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;
.super Ljava/lang/Object;
.source "FileRequest.java"


# instance fields
.field public cloud:Ljava/lang/String;

.field public fd:Landroid/os/ParcelFileDescriptor;

.field public finishedSize:J

.field public localPath:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public remotePath:Ljava/lang/String;

.field public totalSize:J

.field public type:I

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->uuid:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->fd:Landroid/os/ParcelFileDescriptor;

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->type:I

    .line 20
    iput-wide v1, p0, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->totalSize:J

    .line 21
    iput-wide v1, p0, Lcom/baidu/yi/sdk/cloudstorage/model/FileRequest;->finishedSize:J

    .line 22
    return-void
.end method
