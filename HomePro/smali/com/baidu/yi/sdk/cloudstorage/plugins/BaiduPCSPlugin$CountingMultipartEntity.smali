.class Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;
.super Lorg/apache/http/entity/mime/MultipartEntity;
.source "BaiduPCSPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountingMultipartEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;

.field private final mTotalSize:J

.field final synthetic this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;


# direct methods
.method public constructor <init>(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;J)V
    .locals 0
    .parameter
    .parameter "listener"
    .parameter "totalSize"

    .prologue
    .line 556
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    .line 557
    invoke-direct {p0}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 558
    iput-object p2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;->mListener:Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;

    .line 559
    iput-wide p3, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;->mTotalSize:J

    .line 560
    return-void
.end method

.method static synthetic access$0(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;)Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;
    .locals 1
    .parameter

    .prologue
    .line 551
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    return-object v0
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 6
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;

    iget-object v3, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;->mListener:Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;

    iget-wide v4, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;->mTotalSize:J

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity$CountingOutputStream;-><init>(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$CountingMultipartEntity;Ljava/io/OutputStream;Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;J)V

    invoke-super {p0, v0}, Lorg/apache/http/entity/mime/MultipartEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 565
    return-void
.end method
