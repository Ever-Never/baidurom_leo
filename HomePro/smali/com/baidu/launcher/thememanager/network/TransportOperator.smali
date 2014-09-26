.class public Lcom/baidu/launcher/thememanager/network/TransportOperator;
.super Ljava/lang/Object;
.source "TransportOperator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/network/TransportOperator$PicRequestParam;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TransportOperator"

.field private static m_instance:Lcom/baidu/launcher/thememanager/network/TransportOperator;


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mPicRequestStask:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/baidu/launcher/thememanager/network/TransportOperator$PicRequestParam;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/launcher/thememanager/network/TransportOperator;->m_instance:Lcom/baidu/launcher/thememanager/network/TransportOperator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/network/TransportOperator;->mCtx:Landroid/content/Context;

    .line 38
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/network/TransportOperator;->mPicRequestStask:Ljava/util/Stack;

    .line 40
    return-void
.end method

.method public static getInstance()Lcom/baidu/launcher/thememanager/network/TransportOperator;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/baidu/launcher/thememanager/network/TransportOperator;->m_instance:Lcom/baidu/launcher/thememanager/network/TransportOperator;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/baidu/launcher/thememanager/network/TransportOperator;

    invoke-direct {v0}, Lcom/baidu/launcher/thememanager/network/TransportOperator;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/network/TransportOperator;->m_instance:Lcom/baidu/launcher/thememanager/network/TransportOperator;

    .line 53
    :cond_0
    sget-object v0, Lcom/baidu/launcher/thememanager/network/TransportOperator;->m_instance:Lcom/baidu/launcher/thememanager/network/TransportOperator;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized sendRequest(Lcom/baidu/launcher/thememanager/network/Request;Lcom/baidu/launcher/thememanager/network/TaskListener;)V
    .locals 4
    .parameter "req"
    .parameter "listener"

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    const-string v1, "TransportOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/network/Request;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lcom/baidu/launcher/thememanager/network/HttpTask;

    invoke-direct {v0, p2}, Lcom/baidu/launcher/thememanager/network/HttpTask;-><init>(Lcom/baidu/launcher/thememanager/network/TaskListener;)V

    .line 59
    .local v0, task:Lcom/baidu/launcher/thememanager/network/HttpTask;
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/baidu/launcher/thememanager/network/Request;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/network/HttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 57
    .end local v0           #task:Lcom/baidu/launcher/thememanager/network/HttpTask;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sendRequest(Lcom/baidu/launcher/thememanager/network/Request;Lcom/baidu/launcher/thememanager/network/TaskListener;Ljava/lang/String;)V
    .locals 4
    .parameter "req"
    .parameter "listener"
    .parameter "req_tag"

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    const-string v1, "TransportOperator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/network/Request;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Lcom/baidu/launcher/thememanager/network/HttpTask;

    invoke-direct {v0, p2}, Lcom/baidu/launcher/thememanager/network/HttpTask;-><init>(Lcom/baidu/launcher/thememanager/network/TaskListener;)V

    .line 65
    .local v0, task:Lcom/baidu/launcher/thememanager/network/HttpTask;
    iput-object p3, v0, Lcom/baidu/launcher/thememanager/network/HttpTask;->req_tag:Ljava/lang/String;

    .line 66
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/baidu/launcher/thememanager/network/Request;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/network/HttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 63
    .end local v0           #task:Lcom/baidu/launcher/thememanager/network/HttpTask;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
