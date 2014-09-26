.class public Lcom/inveno/newpiflow/model/BizNewsUtil;
.super Ljava/lang/Object;
.source "BizNewsUtil.java"


# static fields
.field public static final SRCTYPE_BAIYI:I = 0x0

.field public static final SRCTYPE_IQIYI:I = 0x1

.field public static final SRC_BAIYI:Ljava/lang/String; = "baiyi"

.field public static final SRC_IQIYI:Ljava/lang/String; = "iqiyi"

.field private static final TAG:Ljava/lang/String; = "BizNewsUtil"

.field public static final TAG_ACTION:Ljava/lang/String; = "action"

.field public static final TAG_BIZTYPE:Ljava/lang/String; = "biztype"

.field public static final TAG_CLSNAME:Ljava/lang/String; = "clsname"

.field public static final TAG_PKGNAME:Ljava/lang/String; = "pkgname"

.field public static final TAG_PROTOCAL:Ljava/lang/String; = "protocal"

.field public static final TAG_PROTOCAL_SCHEMA:Ljava/lang/String; = "schema"

.field public static final TAG_URI:Ljava/lang/String; = "uri"

.field public static final TYPE_FIRSTPAGE:I = 0x0

.field public static final TYPE_SECONDPAGE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBanner(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)Z
    .locals 4
    .parameter "info"

    .prologue
    .line 43
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->s:F

    float-to-double v0, v0

    const-wide v2, 0x3ffccccccccccccdL

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resizeBanner(Landroid/content/Context;Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;)V
    .locals 4
    .parameter "context"
    .parameter "flowNewinfos"

    .prologue
    .line 28
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 41
    :cond_0
    return-void

    .line 31
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 32
    invoke-virtual {p1, v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->get(I)Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    move-result-object v1

    .line 33
    .local v1, info:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    if-eqz v1, :cond_2

    .line 34
    invoke-virtual {v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/inveno/newpiflow/biz/OpDataUtil;->getTypeById(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 35
    .local v2, type:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    invoke-static {v1}, Lcom/inveno/newpiflow/model/BizNewsUtil;->isBanner(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 36
    invoke-virtual {v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getIconWidht()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->setIconHeight(I)V

    .line 37
    const/high16 v3, 0x3f80

    iput v3, v1, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->s:F

    .line 31
    .end local v2           #type:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
