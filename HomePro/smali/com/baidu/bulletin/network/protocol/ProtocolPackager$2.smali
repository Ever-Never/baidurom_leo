.class Lcom/baidu/bulletin/network/protocol/ProtocolPackager$2;
.super Lcom/baidu/bulletin/http/HttpTask;
.source "ProtocolPackager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->requestUpdateInfo(Lcom/baidu/bulletin/network/protocol/RawUpdate$Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$2;->this$0:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    invoke-direct {p0}, Lcom/baidu/bulletin/http/HttpTask;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressed()V
    .locals 5

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$2;->this$0:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    iget-object v1, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$2;->mProgress:Lcom/baidu/bulletin/http/HttpTask$Progress;

    iget-object v1, v1, Lcom/baidu/bulletin/http/HttpTask$Progress;->mState:Lcom/baidu/bulletin/http/HttpTask$State;

    #calls: Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->httpFinished(Lcom/baidu/bulletin/http/HttpTask$State;)Z
    invoke-static {v0, v1}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->access$000(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;Lcom/baidu/bulletin/http/HttpTask$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$2;->this$0:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    #getter for: Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->mObserver:Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;
    invoke-static {v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->access$200(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;)Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$2;->this$0:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    const-class v2, Lcom/baidu/bulletin/network/protocol/RawUpdate$Response;

    iget-object v3, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$2;->mBuffer:[B

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    #calls: Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->buildResponse(Ljava/lang/Class;[B[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v2, v3, v4}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->access$100(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;Ljava/lang/Class;[B[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/network/protocol/RawUpdate$Response;

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;->receiveUpdateInfo(Lcom/baidu/bulletin/network/protocol/RawUpdate$Response;)V

    .line 67
    :cond_0
    return-void
.end method
