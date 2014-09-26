.class public Lcom/inveno/newpiflow/biz/SaveDataService;
.super Landroid/app/IntentService;
.source "SaveDataService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "SaveDataService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    .line 20
    if-nez p1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    const-string v4, "data"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, message:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 27
    const-string v4, "type"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 28
    .local v3, type:I
    if-eq v3, v6, :cond_0

    .line 31
    invoke-static {v2}, Lcom/inveno/newpiflow/tools/AdUtil;->getBycUrlFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, bycUrl:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 33
    invoke-static {p0, v1}, Lcom/inveno/newpiflow/tools/AdUtil;->setUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p0, v2, v3}, Lcom/inveno/newpiflow/tools/AdUtil;->initBizData(Landroid/content/Context;Ljava/lang/String;I)Lcom/inveno/newpiflow/model/BizShowFlowNew;

    move-result-object v0

    .line 36
    .local v0, bizShowFlowNew:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-lt v4, v5, :cond_0

    .line 40
    invoke-static {p0, v0, v2}, Lcom/inveno/newpiflow/biz/OpDataUtil;->insertBaiyi(Landroid/content/Context;Lcom/inveno/newpiflow/model/BizShowFlowNew;Ljava/lang/String;)V

    .line 42
    invoke-static {p0}, Lcom/inveno/newpiflow/tools/AdUtil;->getCount(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 43
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/inveno/newpiflow/tools/AdUtil;->setCount(Landroid/content/Context;I)V

    goto :goto_0
.end method
