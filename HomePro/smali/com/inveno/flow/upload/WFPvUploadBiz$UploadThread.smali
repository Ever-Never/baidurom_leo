.class Lcom/inveno/flow/upload/WFPvUploadBiz$UploadThread;
.super Ljava/lang/Thread;
.source "WFPvUploadBiz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/flow/upload/WFPvUploadBiz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadThread"
.end annotation


# instance fields
.field ShowFlowNewinfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field operation:Lcom/inveno/flow/entity/model/upload/WFPvOperation;

.field pvUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/inveno/flow/upload/WFPvUploadBiz;


# direct methods
.method public constructor <init>(Lcom/inveno/flow/upload/WFPvUploadBiz;Ljava/lang/String;Lcom/inveno/flow/entity/model/upload/WFPvOperation;Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "url"
    .parameter "wfPvOperation"
    .parameter
    .parameter "mContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/inveno/flow/entity/model/upload/WFPvOperation;",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 265
    .local p4, showFlowNewinfos:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;>;"
    iput-object p1, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$UploadThread;->this$0:Lcom/inveno/flow/upload/WFPvUploadBiz;

    .line 257
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 261
    iput-object p2, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$UploadThread;->pvUrl:Ljava/lang/String;

    .line 262
    iput-object p3, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$UploadThread;->operation:Lcom/inveno/flow/entity/model/upload/WFPvOperation;

    .line 263
    iput-object p4, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$UploadThread;->ShowFlowNewinfos:Ljava/util/List;

    .line 264
    iput-object p5, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$UploadThread;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 269
    iget-object v3, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$UploadThread;->ShowFlowNewinfos:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 270
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$UploadThread;->ShowFlowNewinfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 278
    iget-object v3, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$UploadThread;->this$0:Lcom/inveno/flow/upload/WFPvUploadBiz;

    iget-object v4, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$UploadThread;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$UploadThread;->ShowFlowNewinfos:Ljava/util/List;

    .line 279
    iget-object v6, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$UploadThread;->operation:Lcom/inveno/flow/entity/model/upload/WFPvOperation;

    iget-object v7, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$UploadThread;->pvUrl:Ljava/lang/String;

    .line 278
    #calls: Lcom/inveno/flow/upload/WFPvUploadBiz;->postWFPvData(Landroid/content/Context;Ljava/util/List;Lcom/inveno/flow/entity/model/upload/WFPvOperation;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, v6, v7}, Lcom/inveno/flow/upload/WFPvUploadBiz;->access$0(Lcom/inveno/flow/upload/WFPvUploadBiz;Landroid/content/Context;Ljava/util/List;Lcom/inveno/flow/entity/model/upload/WFPvOperation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
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

    .line 282
    .end local v0           #code:Ljava/lang/String;
    .end local v1           #i:I
    :cond_0
    return-void

    .line 271
    .restart local v1       #i:I
    :cond_1
    iget-object v3, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$UploadThread;->ShowFlowNewinfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    .line 272
    .local v2, sf:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    invoke-virtual {v2}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$UploadThread;->operation:Lcom/inveno/flow/entity/model/upload/WFPvOperation;

    invoke-virtual {v4}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->getClick_item_id()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 273
    const-string v3, "pvp"

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5220\u9664\u5f53\u524d\u70b9\u51fb\u7684\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$UploadThread;->operation:Lcom/inveno/flow/entity/model/upload/WFPvOperation;

    invoke-virtual {v5}, Lcom/inveno/flow/entity/model/upload/WFPvOperation;->getClick_item_id()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 273
    invoke-static {v3, v4}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v3, p0, Lcom/inveno/flow/upload/WFPvUploadBiz$UploadThread;->ShowFlowNewinfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 270
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
