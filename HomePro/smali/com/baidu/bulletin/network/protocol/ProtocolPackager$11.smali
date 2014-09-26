.class Lcom/baidu/bulletin/network/protocol/ProtocolPackager$11;
.super Lcom/baidu/bulletin/http/HttpTask;
.source "ProtocolPackager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->requestNewsDetail(Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

.field final synthetic val$request:Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$11;->this$0:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    iput-object p2, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$11;->val$request:Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;

    invoke-direct {p0}, Lcom/baidu/bulletin/http/HttpTask;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressed()V
    .locals 8

    .prologue
    .line 171
    iget-object v0, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$11;->this$0:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    iget-object v1, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$11;->mProgress:Lcom/baidu/bulletin/http/HttpTask$Progress;

    iget-object v1, v1, Lcom/baidu/bulletin/http/HttpTask$Progress;->mState:Lcom/baidu/bulletin/http/HttpTask$State;

    #calls: Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->httpFinished(Lcom/baidu/bulletin/http/HttpTask$State;)Z
    invoke-static {v0, v1}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->access$000(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;Lcom/baidu/bulletin/http/HttpTask$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$11;->this$0:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    #getter for: Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->mObserver:Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;
    invoke-static {v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->access$200(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;)Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;

    move-result-object v1

    iget-object v0, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$11;->this$0:Lcom/baidu/bulletin/network/protocol/ProtocolPackager;

    const-class v2, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;

    iget-object v3, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$11;->mBuffer:[B

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$11;->val$request:Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;

    iget-wide v6, v6, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;->newsId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$11;->val$request:Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;

    iget-object v6, v6, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Request;->callback:Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;

    aput-object v6, v4, v5

    #calls: Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->buildResponse(Ljava/lang/Class;[B[Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v2, v3, v4}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager;->access$100(Lcom/baidu/bulletin/network/protocol/ProtocolPackager;Ljava/lang/Class;[B[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;

    invoke-virtual {v1, v0}, Lcom/baidu/bulletin/network/protocol/ProtocolPackager$Observer;->receiveNewsDetail(Lcom/baidu/bulletin/network/protocol/RawNewsDetail$Response;)V

    .line 175
    :cond_0
    return-void
.end method
