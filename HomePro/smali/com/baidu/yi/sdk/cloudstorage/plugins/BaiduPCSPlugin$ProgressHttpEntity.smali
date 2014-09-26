.class public Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "BaiduPCSPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProgressHttpEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;
    }
.end annotation


# instance fields
.field private final length:J

.field private final listener:Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;

.field final synthetic this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;


# direct methods
.method public constructor <init>(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;Lorg/apache/http/HttpEntity;Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;)V
    .locals 2
    .parameter
    .parameter "wrapped"
    .parameter "listener"

    .prologue
    .line 629
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    .line 630
    invoke-direct {p0, p2}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 631
    iput-object p3, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->listener:Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;

    .line 632
    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->length:J

    .line 633
    return-void
.end method

.method static synthetic access$0(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;)Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;
    .locals 1
    .parameter

    .prologue
    .line 626
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->listener:Lcom/baidu/yi/sdk/cloudstorage/model/ProgressListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;)J
    .locals 2
    .parameter

    .prologue
    .line 627
    iget-wide v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->length:J

    return-wide v0
.end method

.method static synthetic access$2(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;)Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;
    .locals 1
    .parameter

    .prologue
    .line 624
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    return-object v0
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    iget-object v0, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    new-instance v1, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;

    invoke-direct {v1, p0, p1}, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity$CountingOutputStream;-><init>(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$ProgressHttpEntity;Ljava/io/OutputStream;)V

    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 638
    return-void
.end method
