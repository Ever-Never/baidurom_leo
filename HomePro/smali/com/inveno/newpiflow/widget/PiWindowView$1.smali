.class Lcom/inveno/newpiflow/widget/PiWindowView$1;
.super Ljava/lang/Object;
.source "PiWindowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/newpiflow/widget/PiWindowView;->setTTData(Lcom/inveno/newpiflow/model/PiData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/newpiflow/widget/PiWindowView;

.field final synthetic val$newInfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

.field final synthetic val$uploadInfos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/inveno/newpiflow/widget/PiWindowView;Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/PiWindowView$1;->this$0:Lcom/inveno/newpiflow/widget/PiWindowView;

    iput-object p2, p0, Lcom/inveno/newpiflow/widget/PiWindowView$1;->val$newInfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    iput-object p3, p0, Lcom/inveno/newpiflow/widget/PiWindowView$1;->val$uploadInfos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/inveno/newpiflow/widget/PiWindowView$1;->this$0:Lcom/inveno/newpiflow/widget/PiWindowView;

    #getter for: Lcom/inveno/newpiflow/widget/PiWindowView;->lastClick:J
    invoke-static {v4}, Lcom/inveno/newpiflow/widget/PiWindowView;->access$000(Lcom/inveno/newpiflow/widget/PiWindowView;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiWindowView$1;->val$newInfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    invoke-virtual {v2}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getShowFlowHardAd()Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;

    move-result-object v0

    .line 227
    .local v0, ad:Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->getFirst()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 228
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiWindowView$1;->this$0:Lcom/inveno/newpiflow/widget/PiWindowView;

    invoke-virtual {v2, v0}, Lcom/inveno/newpiflow/widget/PiWindowView;->openFirstAD(Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;)Z

    move-result v1

    .line 229
    .local v1, isOpen:Z
    if-nez v1, :cond_0

    .line 230
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiWindowView$1;->this$0:Lcom/inveno/newpiflow/widget/PiWindowView;

    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PiWindowView$1;->val$newInfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    iget-object v4, p0, Lcom/inveno/newpiflow/widget/PiWindowView$1;->val$uploadInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/inveno/newpiflow/widget/PiWindowView;->startDeailAct(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 234
    .end local v1           #isOpen:Z
    :cond_2
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiWindowView$1;->this$0:Lcom/inveno/newpiflow/widget/PiWindowView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    #setter for: Lcom/inveno/newpiflow/widget/PiWindowView;->lastClick:J
    invoke-static {v2, v3, v4}, Lcom/inveno/newpiflow/widget/PiWindowView;->access$002(Lcom/inveno/newpiflow/widget/PiWindowView;J)J

    .line 235
    iget-object v2, p0, Lcom/inveno/newpiflow/widget/PiWindowView$1;->this$0:Lcom/inveno/newpiflow/widget/PiWindowView;

    iget-object v3, p0, Lcom/inveno/newpiflow/widget/PiWindowView$1;->val$newInfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    iget-object v4, p0, Lcom/inveno/newpiflow/widget/PiWindowView$1;->val$uploadInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Lcom/inveno/newpiflow/widget/PiWindowView;->startDeailAct(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
