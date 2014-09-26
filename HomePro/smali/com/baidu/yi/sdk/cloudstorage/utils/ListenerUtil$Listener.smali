.class Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;
.super Ljava/lang/Object;
.source "ListenerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final mListener:Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;

.field final synthetic this$0:Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;


# direct methods
.method constructor <init>(Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;)V
    .locals 0
    .parameter
    .parameter "listener"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;->this$0:Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/baidu/yi/sdk/cloudstorage/utils/ListenerUtil$Listener;->mListener:Lcom/baidu/yi/sdk/cloudstorage/global/ICloudStorageCallback;

    .line 104
    return-void
.end method
