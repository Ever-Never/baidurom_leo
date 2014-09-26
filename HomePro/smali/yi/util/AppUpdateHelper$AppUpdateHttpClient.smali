.class Lyi/util/AppUpdateHelper$AppUpdateHttpClient;
.super Ljava/lang/Object;
.source "AppUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/util/AppUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppUpdateHttpClient"
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x2710

.field private static final MAX_ROUTE_CONN:I = 0x32

.field private static final MAX_TOTAL_CONNECTIONS:I = 0x64

.field private static final SOCKET_CONNECTION_TIMEOUT:I = 0x2710


# instance fields
.field private mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method public constructor <init>(Z)V
    .locals 5
    .parameter "useSSL"

    .prologue
    const/16 v3, 0x2710

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 704
    .local v1, params:Lorg/apache/http/params/HttpParams;
    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 705
    .local v0, connPerRoute:Lorg/apache/http/conn/params/ConnPerRoute;
    invoke-static {v1, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 707
    const/16 v2, 0x64

    .line 706
    invoke-static {v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 708
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 711
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 712
    const/16 v2, 0x800

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 713
    const-wide/16 v2, 0x2710

    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 715
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v2, p0, Lyi/util/AppUpdateHelper$AppUpdateHttpClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 716
    iget-object v2, p0, Lyi/util/AppUpdateHelper$AppUpdateHttpClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v3, "Content-Type"

    const-string v4, "UTF-8"

    invoke-interface {v2, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 717
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lyi/util/AppUpdateHelper$AppUpdateHttpClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lyi/util/AppUpdateHelper$AppUpdateHttpClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 744
    :cond_0
    return-void
.end method

.method public checkUpdate(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 729
    iget-object v0, p0, Lyi/util/AppUpdateHelper$AppUpdateHttpClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v0, :cond_0

    .line 730
    const/4 v0, 0x0

    .line 733
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lyi/util/AppUpdateHelper$AppUpdateHttpClient;->mHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_0
.end method
