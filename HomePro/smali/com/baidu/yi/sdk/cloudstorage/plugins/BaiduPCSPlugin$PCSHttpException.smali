.class Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;
.super Ljava/lang/Exception;
.source "BaiduPCSPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PCSHttpException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x72047b286fde43eL


# instance fields
.field public bytesRead:J

.field public errorCode:I

.field final synthetic this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;


# direct methods
.method public constructor <init>(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;I)V
    .locals 0
    .parameter
    .parameter "code"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 306
    iput p2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;->errorCode:I

    .line 307
    return-void
.end method

.method public constructor <init>(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;J)V
    .locals 0
    .parameter
    .parameter "bytes"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 310
    iput-wide p2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;->bytesRead:J

    .line 311
    return-void
.end method

.method public constructor <init>(Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "string"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin$PCSHttpException;->this$0:Lcom/baidu/yi/sdk/cloudstorage/plugins/BaiduPCSPlugin;

    .line 302
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 303
    return-void
.end method
