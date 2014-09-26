.class Lcom/inveno/flow/upload/WFPvUploadBiz$1;
.super Ljava/lang/Object;
.source "WFPvUploadBiz.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/flow/upload/WFPvUploadBiz;->post(Landroid/content/Context;Lcom/inveno/flow/entity/model/upload/WFPvOperation;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/flow/upload/WFPvUploadBiz;

.field private final synthetic val$ShowFlowNewinfos:Ljava/util/List;

.field private final synthetic val$mContext:Landroid/content/Context;

.field private final synthetic val$pvOperation:Lcom/inveno/flow/entity/model/upload/WFPvOperation;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/inveno/flow/upload/WFPvUploadBiz;Ljava/util/List;Lcom/inveno/flow/entity/model/upload/WFPvOperation;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$1;->this$0:Lcom/inveno/flow/upload/WFPvUploadBiz;

    iput-object p2, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$1;->val$ShowFlowNewinfos:Ljava/util/List;

    iput-object p3, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$1;->val$pvOperation:Lcom/inveno/flow/entity/model/upload/WFPvOperation;

    iput-object p4, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$1;->val$mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$1;->val$url:Ljava/lang/String;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 228
    iget-object v3, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$1;->val$ShowFlowNewinfos:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 229
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$1;->val$ShowFlowNewinfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 238
    iget-object v3, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$1;->this$0:Lcom/inveno/flow/upload/WFPvUploadBiz;

    iget-object v4, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$1;->val$mContext:Landroid/content/Context;

    .line 239
    iget-object v5, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$1;->val$ShowFlowNewinfos:Ljava/util/List;

    iget-object v6, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$1;->val$pvOperation:Lcom/inveno/flow/entity/model/upload/WFPvOperation;

    iget-object v7, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$1;->val$url:Ljava/lang/String;

    .line 238
    #calls: Lcom/inveno/flow/upload/WFPvUploadBiz;->postWFPvData(Landroid/content/Context;Ljava/util/List;Lcom/inveno/flow/entity/model/upload/WFPvOperation;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6, v7}, Lcom/inveno/flow/upload/WFPvUploadBiz;->access$0(Lcom/inveno/flow/upload/WFPvUploadBiz;Landroid/content/Context;Ljava/util/List;Lcom/inveno/flow/entity/model/upload/WFPvOperation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, code:Ljava/lang/String;
    const-string v3, "pvp"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u4e0a\u4f20\u7011\u5e03\u6d41pv\u8fd4\u56de\u7801:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .end local v0           #code:Ljava/lang/String;
    .end local v1           #i:I
    :cond_0
    return-void

    .line 230
    .restart local v1       #i:I
    :cond_1
    iget-object v3, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$1;->val$ShowFlowNewinfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    .line 231
    .local v2, sf:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    invoke-virtual {v2}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getId()Ljava/lang/String;

    move-result-object v3

    .line 232
    iget-object v4, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$1;->val$pvOperation:Lcom/inveno/flow/entity/model/upload/WFPvOperation;

    invoke-virtual {v4}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->getClick_item_id()Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 233
    const-string v3, "pvp"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5220\u9664\u5f53\u524d\u70b9\u51fb\u7684\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    iget-object v5, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$1;->val$pvOperation:Lcom/inveno/flow/entity/model/upload/WFPvOperation;

    invoke-virtual {v5}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->getClick_item_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 233
    invoke-static {v3, v4}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v3, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$1;->val$ShowFlowNewinfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 229
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
