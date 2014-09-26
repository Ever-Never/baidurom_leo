.class public Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;
.super Ljava/lang/Exception;
.source "HttpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestHttpException"
.end annotation


# instance fields
.field public responseBody:Ljava/lang/String;

.field public statusCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .parameter "statusCode"
    .parameter "responseBody"

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 214
    iput p1, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;->statusCode:I

    .line 215
    iput-object p2, p0, Lcom/baidu/yi/sdk/cloudstorage/plugins/HttpHelper$RestHttpException;->responseBody:Ljava/lang/String;

    .line 216
    return-void
.end method
