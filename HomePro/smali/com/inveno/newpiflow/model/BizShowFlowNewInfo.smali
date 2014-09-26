.class public Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;
.super Ljava/lang/Object;
.source "BizShowFlowNewInfo.java"


# instance fields
.field public action:Ljava/lang/String;

.field public allintent:Ljava/lang/String;

.field public bizType:I

.field public clsName:Ljava/lang/String;

.field public endTime:I

.field public extra1:Ljava/lang/String;

.field public extra2:Ljava/lang/String;

.field public extra3:Ljava/lang/String;

.field public info:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

.field public intentType:Ljava/lang/String;

.field public page:I

.field public pkgName:Ljava/lang/String;

.field public startTime:I

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;IIII)V
    .locals 15
    .parameter "info"
    .parameter "bizType"
    .parameter "page"
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    .line 21
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v14}, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;-><init>(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "info"
    .parameter "bizType"
    .parameter "page"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "allintent"
    .parameter "uri"
    .parameter "action"
    .parameter "pkgName"
    .parameter "clsName"
    .parameter "intentType"
    .parameter "extra1"
    .parameter "extra2"
    .parameter "extra3"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->info:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    .line 28
    iput p2, p0, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->bizType:I

    .line 29
    iput p3, p0, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->page:I

    .line 30
    iput p4, p0, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->startTime:I

    .line 31
    iput p5, p0, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->endTime:I

    .line 32
    iput-object p6, p0, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->allintent:Ljava/lang/String;

    .line 33
    iput-object p7, p0, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->uri:Ljava/lang/String;

    .line 34
    iput-object p8, p0, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->action:Ljava/lang/String;

    .line 35
    iput-object p9, p0, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->pkgName:Ljava/lang/String;

    .line 36
    iput-object p10, p0, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->clsName:Ljava/lang/String;

    .line 37
    iput-object p11, p0, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->intentType:Ljava/lang/String;

    .line 38
    iput-object p12, p0, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->extra1:Ljava/lang/String;

    .line 39
    iput-object p13, p0, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->extra2:Ljava/lang/String;

    .line 40
    iput-object p14, p0, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->extra3:Ljava/lang/String;

    .line 41
    return-void
.end method
