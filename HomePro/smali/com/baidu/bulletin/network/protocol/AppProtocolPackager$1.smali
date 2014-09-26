.class Lcom/baidu/bulletin/network/protocol/AppProtocolPackager$1;
.super Lcom/baidu/bulletin/http/HttpTask;
.source "AppProtocolPackager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;->request()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/baidu/bulletin/network/protocol/AppProtocolPackager$1;->this$0:Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;

    invoke-direct {p0}, Lcom/baidu/bulletin/http/HttpTask;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressed()V
    .locals 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/baidu/bulletin/network/protocol/AppProtocolPackager$1;->this$0:Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;

    iget-object v1, p0, Lcom/baidu/bulletin/network/protocol/AppProtocolPackager$1;->mProgress:Lcom/baidu/bulletin/http/HttpTask$Progress;

    iget-object v1, v1, Lcom/baidu/bulletin/http/HttpTask$Progress;->mState:Lcom/baidu/bulletin/http/HttpTask$State;

    #calls: Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;->httpFinished(Lcom/baidu/bulletin/http/HttpTask$State;)Z
    invoke-static {v0, v1}, Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;->access$000(Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;Lcom/baidu/bulletin/http/HttpTask$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/baidu/bulletin/network/protocol/AppProtocolPackager$1;->this$0:Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;

    #getter for: Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;->mObserver:Lcom/baidu/bulletin/network/protocol/IProtocolPakager$IObserver;
    invoke-static {v0}, Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;->access$100(Lcom/baidu/bulletin/network/protocol/AppProtocolPackager;)Lcom/baidu/bulletin/network/protocol/IProtocolPakager$IObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bulletin/network/protocol/AppProtocolPackager$1;->mBuffer:[B

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/baidu/bulletin/network/protocol/IProtocolPakager$IObserver;->onReceive([B[Ljava/lang/Object;)V

    .line 28
    :cond_0
    return-void
.end method
