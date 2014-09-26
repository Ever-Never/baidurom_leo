.class public Lcom/inveno/newpiflow/model/BizShowFlowNew;
.super Ljava/lang/Object;
.source "BizShowFlowNew.java"


# instance fields
.field public mBizNewInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mProList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inveno/newpiflow/model/BizProtocal;",
            ">;"
        }
    .end annotation
.end field

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mProList:Ljava/util/List;

    .line 22
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/inveno/newpiflow/model/BizShowFlowNew;->type:I

    return v0
.end method

.method public initData(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;I)V
    .locals 26
    .parameter "context"
    .parameter "content"
    .parameter "flowNewinfosBiz"
    .parameter "type"

    .prologue
    .line 27
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/inveno/newpiflow/model/BizShowFlowNew;->type:I

    .line 28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mProList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 31
    :try_start_0
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    .local v21, obj:Lorg/json/JSONObject;
    const-string v3, "data"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 33
    .local v17, dataArray:Lorg/json/JSONArray;
    if-eqz v17, :cond_5

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-virtual/range {p3 .. p3}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->size()I

    move-result v25

    move/from16 v0, v25

    if-ne v3, v0, :cond_5

    .line 35
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_5

    .line 37
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    .line 38
    .local v20, newsObject:Lorg/json/JSONObject;
    if-eqz v20, :cond_2

    .line 39
    const-string v3, "page"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 40
    .local v5, page:I
    const-string v3, "adType"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 41
    .local v4, bizType:I
    const-string v3, "uri"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 42
    .local v9, uri:Ljava/lang/String;
    const-string v3, "action"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 43
    .local v10, action:Ljava/lang/String;
    const-string v3, "allintent"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 44
    .local v8, allintent:Ljava/lang/String;
    const-string v3, "pkgName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 45
    .local v11, pkgName:Ljava/lang/String;
    const-string v3, "clsName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 46
    .local v12, clsName:Ljava/lang/String;
    const-string v3, "intenttype"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 47
    .local v13, intentType:Ljava/lang/String;
    const-string v3, "extra1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 48
    .local v14, extra1:Ljava/lang/String;
    const-string v3, "extra2"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 49
    .local v15, extra2:Ljava/lang/String;
    const-string v3, "extra3"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 50
    .local v16, extra3:Ljava/lang/String;
    const/4 v6, 0x0

    .line 51
    .local v6, startTime:I
    const/4 v7, 0x0

    .line 52
    .local v7, endTime:I
    if-nez p4, :cond_0

    .line 53
    const-string v3, "startTime"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 54
    const-string v3, "endTime"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 56
    :cond_0
    new-instance v2, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->get(I)Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    move-result-object v3

    invoke-direct/range {v2 .. v16}, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;-><init>(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v2, info:Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v3, v0, :cond_3

    .line 60
    iget-object v3, v2, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->info:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    const v25, 0x7f0c02f2

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->setSrc(Ljava/lang/String;)V

    .line 64
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    .end local v2           #info:Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;
    .end local v4           #bizType:I
    .end local v5           #page:I
    .end local v6           #startTime:I
    .end local v7           #endTime:I
    .end local v8           #allintent:Ljava/lang/String;
    .end local v9           #uri:Ljava/lang/String;
    .end local v10           #action:Ljava/lang/String;
    .end local v11           #pkgName:Ljava/lang/String;
    .end local v12           #clsName:Ljava/lang/String;
    .end local v13           #intentType:Ljava/lang/String;
    .end local v14           #extra1:Ljava/lang/String;
    .end local v15           #extra2:Ljava/lang/String;
    .end local v16           #extra3:Ljava/lang/String;
    :cond_2
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    .line 61
    .restart local v2       #info:Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;
    .restart local v4       #bizType:I
    .restart local v5       #page:I
    .restart local v6       #startTime:I
    .restart local v7       #endTime:I
    .restart local v8       #allintent:Ljava/lang/String;
    .restart local v9       #uri:Ljava/lang/String;
    .restart local v10       #action:Ljava/lang/String;
    .restart local v11       #pkgName:Ljava/lang/String;
    .restart local v12       #clsName:Ljava/lang/String;
    .restart local v13       #intentType:Ljava/lang/String;
    .restart local v14       #extra1:Ljava/lang/String;
    .restart local v15       #extra2:Ljava/lang/String;
    .restart local v16       #extra3:Ljava/lang/String;
    :cond_3
    if-nez p4, :cond_1

    .line 62
    iget-object v3, v2, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->info:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    const v25, 0x7f0c02f1

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->setSrc(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 82
    .end local v2           #info:Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;
    .end local v4           #bizType:I
    .end local v5           #page:I
    .end local v6           #startTime:I
    .end local v7           #endTime:I
    .end local v8           #allintent:Ljava/lang/String;
    .end local v9           #uri:Ljava/lang/String;
    .end local v10           #action:Ljava/lang/String;
    .end local v11           #pkgName:Ljava/lang/String;
    .end local v12           #clsName:Ljava/lang/String;
    .end local v13           #intentType:Ljava/lang/String;
    .end local v14           #extra1:Ljava/lang/String;
    .end local v15           #extra2:Ljava/lang/String;
    .end local v16           #extra3:Ljava/lang/String;
    .end local v17           #dataArray:Lorg/json/JSONArray;
    .end local v19           #i:I
    .end local v20           #newsObject:Lorg/json/JSONObject;
    .end local v21           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v18

    .line 83
    .local v18, e:Lorg/json/JSONException;
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONException;->printStackTrace()V

    .line 85
    .end local v18           #e:Lorg/json/JSONException;
    :cond_4
    return-void

    .line 68
    .restart local v17       #dataArray:Lorg/json/JSONArray;
    .restart local v21       #obj:Lorg/json/JSONObject;
    :cond_5
    :try_start_1
    const-string v3, "protocal"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 69
    .local v22, proArray:Lorg/json/JSONArray;
    if-eqz v22, :cond_4

    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 70
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_2
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_4

    .line 71
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    .line 72
    .restart local v20       #newsObject:Lorg/json/JSONObject;
    if-eqz v20, :cond_6

    .line 73
    const-string v3, "schema"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 74
    .local v24, schema:Ljava/lang/String;
    const-string v3, "action"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 75
    .restart local v10       #action:Ljava/lang/String;
    const-string v3, "pkgName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 76
    .restart local v11       #pkgName:Ljava/lang/String;
    const-string v3, "clsName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 77
    .restart local v12       #clsName:Ljava/lang/String;
    new-instance v23, Lcom/inveno/newpiflow/model/BizProtocal;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v10, v11, v12}, Lcom/inveno/newpiflow/model/BizProtocal;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v23, protocal:Lcom/inveno/newpiflow/model/BizProtocal;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mProList:Ljava/util/List;

    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    .end local v10           #action:Ljava/lang/String;
    .end local v11           #pkgName:Ljava/lang/String;
    .end local v12           #clsName:Ljava/lang/String;
    .end local v23           #protocal:Lcom/inveno/newpiflow/model/BizProtocal;
    .end local v24           #schema:Ljava/lang/String;
    :cond_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_2
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 91
    iput p1, p0, Lcom/inveno/newpiflow/model/BizShowFlowNew;->type:I

    .line 92
    return-void
.end method
