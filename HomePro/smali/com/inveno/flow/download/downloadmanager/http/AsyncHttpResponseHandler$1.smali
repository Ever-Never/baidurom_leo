.class Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler$1;
.super Landroid/os/Handler;
.source "AsyncHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;


# direct methods
.method constructor <init>(Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler$1;->this$0:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    .line 34
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler$1;->this$0:Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;

    invoke-virtual {v0, p1}, Lcom/inveno/flow/download/downloadmanager/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 38
    return-void
.end method
