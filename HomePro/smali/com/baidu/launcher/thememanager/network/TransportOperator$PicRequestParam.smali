.class Lcom/baidu/launcher/thememanager/network/TransportOperator$PicRequestParam;
.super Ljava/lang/Object;
.source "TransportOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/network/TransportOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PicRequestParam"
.end annotation


# instance fields
.field mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/baidu/launcher/thememanager/network/TaskListener;",
            ">;"
        }
    .end annotation
.end field

.field mPicRequest:Lcom/baidu/launcher/thememanager/network/Request;

.field final synthetic this$0:Lcom/baidu/launcher/thememanager/network/TransportOperator;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/network/TransportOperator;Lcom/baidu/launcher/thememanager/network/Request;Lcom/baidu/launcher/thememanager/network/TaskListener;)V
    .locals 1
    .parameter
    .parameter "req"
    .parameter "listener"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/network/TransportOperator$PicRequestParam;->this$0:Lcom/baidu/launcher/thememanager/network/TransportOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/baidu/launcher/thememanager/network/TransportOperator$PicRequestParam;->mPicRequest:Lcom/baidu/launcher/thememanager/network/Request;

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/network/TransportOperator$PicRequestParam;->mListener:Ljava/lang/ref/WeakReference;

    .line 47
    return-void
.end method
