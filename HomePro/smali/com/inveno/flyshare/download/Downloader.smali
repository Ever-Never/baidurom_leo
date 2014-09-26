.class public abstract Lcom/inveno/flyshare/download/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# instance fields
.field private defaultConnectTimeout:I

.field private defaultExpiry:J

.field private defaultReadTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract downloadAndCompress(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;Lcom/inveno/flyshare/download/FlowUsedApi;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/inveno/flyshare/config/BitmapDisplayConfig;",
            "Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask",
            "<*>;",
            "Lcom/inveno/flyshare/callback/BitmapLoadCallBack",
            "<*>;",
            "Lcom/inveno/flyshare/download/FlowUsedApi;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method

.method public abstract downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask",
            "<*>;",
            "Lcom/inveno/flyshare/callback/BitmapLoadCallBack",
            "<*>;)J"
        }
    .end annotation
.end method

.method public abstract downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;Lcom/inveno/flyshare/download/FlowUsedApi;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask",
            "<*>;",
            "Lcom/inveno/flyshare/callback/BitmapLoadCallBack",
            "<*>;",
            "Lcom/inveno/flyshare/download/FlowUsedApi;",
            ")J"
        }
    .end annotation
.end method

.method public getDefaultConnectTimeout()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/inveno/flyshare/download/Downloader;->defaultConnectTimeout:I

    return v0
.end method

.method public getDefaultExpiry()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/inveno/flyshare/download/Downloader;->defaultExpiry:J

    return-wide v0
.end method

.method public getDefaultReadTimeout()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/inveno/flyshare/download/Downloader;->defaultReadTimeout:I

    return v0
.end method

.method public setDefaultConnectTimeout(I)V
    .locals 0
    .parameter "defaultConnectTimeout"

    .prologue
    .line 65
    iput p1, p0, Lcom/inveno/flyshare/download/Downloader;->defaultConnectTimeout:I

    .line 66
    return-void
.end method

.method public setDefaultExpiry(J)V
    .locals 0
    .parameter "expiry"

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/inveno/flyshare/download/Downloader;->defaultExpiry:J

    .line 54
    return-void
.end method

.method public setDefaultReadTimeout(I)V
    .locals 0
    .parameter "defaultReadTimeout"

    .prologue
    .line 73
    iput p1, p0, Lcom/inveno/flyshare/download/Downloader;->defaultReadTimeout:I

    .line 74
    return-void
.end method
