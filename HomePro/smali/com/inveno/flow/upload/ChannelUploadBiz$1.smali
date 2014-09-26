.class Lcom/inveno/flow/upload/ChannelUploadBiz$1;
.super Ljava/lang/Object;
.source "ChannelUploadBiz.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/flow/upload/ChannelUploadBiz;->post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/flow/upload/ChannelUploadBiz;

.field private final synthetic val$channels:Ljava/lang/String;

.field private final synthetic val$uid:Ljava/lang/String;

.field private final synthetic val$url:Ljava/lang/String;

.field private final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/inveno/flow/upload/ChannelUploadBiz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inveno/flow/upload/ChannelUploadBiz$1;->this$0:Lcom/inveno/flow/upload/ChannelUploadBiz;

    iput-object p2, p0, Lcom/inveno/flow/upload/ChannelUploadBiz$1;->val$uid:Ljava/lang/String;

    iput-object p3, p0, Lcom/inveno/flow/upload/ChannelUploadBiz$1;->val$version:Ljava/lang/String;

    iput-object p4, p0, Lcom/inveno/flow/upload/ChannelUploadBiz$1;->val$channels:Ljava/lang/String;

    iput-object p5, p0, Lcom/inveno/flow/upload/ChannelUploadBiz$1;->val$url:Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 59
    iget-object v1, p0, Lcom/inveno/flow/upload/ChannelUploadBiz$1;->this$0:Lcom/inveno/flow/upload/ChannelUploadBiz;

    iget-object v2, p0, Lcom/inveno/flow/upload/ChannelUploadBiz$1;->val$uid:Ljava/lang/String;

    iget-object v3, p0, Lcom/inveno/flow/upload/ChannelUploadBiz$1;->val$version:Ljava/lang/String;

    iget-object v4, p0, Lcom/inveno/flow/upload/ChannelUploadBiz$1;->val$channels:Ljava/lang/String;

    iget-object v5, p0, Lcom/inveno/flow/upload/ChannelUploadBiz$1;->val$url:Ljava/lang/String;

    #calls: Lcom/inveno/flow/upload/ChannelUploadBiz;->post(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4, v5}, Lcom/inveno/flow/upload/ChannelUploadBiz;->access$0(Lcom/inveno/flow/upload/ChannelUploadBiz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, result:Ljava/lang/String;
    const-string v1, "lhc"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u4e0a\u4f20\u9891\u9053\u70b9\u51fb\u5206\u7c7b\u8fd4\u56de\u7801\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method
