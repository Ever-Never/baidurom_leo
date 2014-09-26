.class public Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
.super Ljava/lang/Object;
.source "ShowFlowNewinfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private click_num:I

.field private comments_num:I

.field private content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowP;",
            ">;"
        }
    .end annotation
.end field

.field private favorite_num:I

.field private hot_tag:Ljava/lang/String;

.field private iconHeight:I

.field private iconWidht:I

.field private id:Ljava/lang/String;

.field private imgUrl:Ljava/lang/String;

.field private infoId:Ljava/lang/String;

.field json:Ljava/lang/String;

.field private originUrl:Ljava/lang/String;

.field private reco_id:Ljava/lang/String;

.field private reco_tag:Ljava/lang/String;

.field private rtime:J

.field public s:F

.field private share_num:I

.field private showFlowAd:Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;

.field private showFlowHardAd:Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;

.field private snippet:Ljava/lang/String;

.field private src:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 588
    new-instance v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo$1;

    invoke-direct {v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo$1;-><init>()V

    sput-object v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->content:Ljava/util/List;

    .line 97
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->id:Ljava/lang/String;

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->infoId:Ljava/lang/String;

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->type:Ljava/lang/String;

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->src:Ljava/lang/String;

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->title:Ljava/lang/String;

    .line 498
    const-class v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->content:Ljava/util/List;

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->snippet:Ljava/lang/String;

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->originUrl:Ljava/lang/String;

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->imgUrl:Ljava/lang/String;

    .line 510
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->iconWidht:I

    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->iconHeight:I

    .line 516
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->rtime:J

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->reco_id:Ljava/lang/String;

    .line 522
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->reco_tag:Ljava/lang/String;

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->hot_tag:Ljava/lang/String;

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->click_num:I

    .line 529
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->comments_num:I

    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->favorite_num:I

    .line 533
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->share_num:I

    .line 536
    const-class v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->showFlowAd:Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;

    .line 539
    const-class v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;

    iput-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->showFlowHardAd:Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;

    .line 542
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static parse(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    .locals 25
    .parameter "context"
    .parameter "newsObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v18, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    invoke-direct/range {v18 .. v18}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;-><init>()V

    .line 116
    .local v18, newinfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->json:Ljava/lang/String;

    .line 118
    const-string v21, "extend_json"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 119
    const-string v21, "extend_json"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 120
    .local v3, adObject:Lorg/json/JSONObject;
    const-string v21, "second"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 122
    .local v20, second:I
    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 123
    const/16 v18, 0x0

    .line 124
    const/16 v21, 0x0

    .line 295
    .end local v3           #adObject:Lorg/json/JSONObject;
    .end local v20           #second:I
    :goto_0
    return-object v21

    .line 127
    .restart local v3       #adObject:Lorg/json/JSONObject;
    .restart local v20       #second:I
    :cond_0
    const-string v21, "cpApk"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, apkUrl:Ljava/lang/String;
    const-string v21, "linkUrl"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 129
    .local v17, linkUrl:Ljava/lang/String;
    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    invoke-static {v4}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 130
    const/16 v18, 0x0

    .line 131
    const/16 v21, 0x0

    goto :goto_0

    .line 132
    :cond_1
    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    invoke-static/range {v17 .. v17}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 133
    const/16 v18, 0x0

    .line 134
    const/16 v21, 0x0

    goto :goto_0

    .line 137
    :cond_2
    new-instance v12, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;

    invoke-direct {v12}, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;-><init>()V

    .line 138
    .local v12, flowAd:Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;
    const-string v21, "adTitle"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->setAdTitle(Ljava/lang/String;)V

    .line 139
    const-string v21, "cpIcon"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->setCpIcon(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v12, v4}, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->setCpApk(Ljava/lang/String;)V

    .line 141
    const-string v21, "cpName"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->setCpName(Ljava/lang/String;)V

    .line 142
    const-string v21, "cpPackage"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->setCpPackage(Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->setLinkUrl(Ljava/lang/String;)V

    .line 144
    const-string v21, "phone"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->setPhone(Ljava/lang/String;)V

    .line 145
    move/from16 v0, v20

    invoke-virtual {v12, v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->setSecond(I)V

    .line 147
    const-string v21, "banner"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 148
    const-string v21, "banner"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, banner:Ljava/lang/String;
    invoke-virtual {v12, v5}, Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;->setBanner(Ljava/lang/String;)V

    .line 150
    const-string v21, "2"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 155
    .end local v5           #banner:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->setShowFlowAd(Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;)V

    .line 159
    .end local v3           #adObject:Lorg/json/JSONObject;
    .end local v4           #apkUrl:Ljava/lang/String;
    .end local v12           #flowAd:Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;
    .end local v17           #linkUrl:Ljava/lang/String;
    .end local v20           #second:I
    :cond_4
    const-string v21, "ad"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 162
    :try_start_0
    const-string v21, "ad"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 164
    .restart local v3       #adObject:Lorg/json/JSONObject;
    const-string v21, "first"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 165
    .local v11, first:I
    const-string v21, "second"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 166
    .restart local v20       #second:I
    const-string v21, "cpapk"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 167
    .restart local v4       #apkUrl:Ljava/lang/String;
    const-string v21, "linkurl"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 168
    .restart local v17       #linkUrl:Ljava/lang/String;
    const/16 v21, 0x3

    move/from16 v0, v21

    if-ne v11, v0, :cond_7

    .line 169
    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 170
    const/16 v18, 0x0

    .line 171
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 174
    :cond_5
    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    invoke-static {v4}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 175
    const/16 v18, 0x0

    .line 176
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 177
    :cond_6
    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    invoke-static/range {v17 .. v17}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 178
    const/16 v18, 0x0

    .line 179
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 181
    :cond_7
    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v11, v0, :cond_8

    .line 182
    invoke-static {v4}, Lcom/inveno/flyshare/utils/StringTools;->isEmpty(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 183
    const/16 v18, 0x0

    .line 184
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 188
    :cond_8
    new-instance v13, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;

    invoke-direct {v13}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;-><init>()V

    .line 189
    .local v13, flowHardAd:Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;
    invoke-virtual {v13, v11}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->setFirst(I)V

    .line 190
    const-string v21, "adTitle"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->setAdTitle(Ljava/lang/String;)V

    .line 191
    const-string v21, "content"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->setContent(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v13, v4}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->setCpapk(Ljava/lang/String;)V

    .line 193
    const-string v21, "cpicon"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->setCpicon(Ljava/lang/String;)V

    .line 194
    const-string v21, "cpname"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->setCpname(Ljava/lang/String;)V

    .line 195
    const-string v21, "cppackage"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->setCppackage(Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->setLinkurl(Ljava/lang/String;)V

    .line 197
    move/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->setSecond(I)V

    .line 198
    const-string v21, "state"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->setState(I)V

    .line 199
    const-string v21, "ctype"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->setCtype(Ljava/lang/String;)V

    .line 200
    const-string v21, "cpauthor"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->setCpauthor(Ljava/lang/String;)V

    .line 201
    const-string v21, "duration"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;->setDuration(Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->setShowFlowHardAd(Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v3           #adObject:Lorg/json/JSONObject;
    .end local v4           #apkUrl:Ljava/lang/String;
    .end local v11           #first:I
    .end local v13           #flowHardAd:Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;
    .end local v17           #linkUrl:Ljava/lang/String;
    .end local v20           #second:I
    :cond_9
    :goto_1
    const-string v21, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->setId(Ljava/lang/String;)V

    .line 211
    const-string v21, "title"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->setTitle(Ljava/lang/String;)V

    .line 212
    const-string v21, "snippet"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->setSnippet(Ljava/lang/String;)V

    .line 213
    const-string v21, "reco_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->setReco_id(Ljava/lang/String;)V

    .line 214
    const-string v21, "src"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->setSrc(Ljava/lang/String;)V

    .line 215
    const-string v21, "url"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->setOriginUrl(Ljava/lang/String;)V

    .line 216
    const-string v21, "tm"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v21

    move-object/from16 v0, v18

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->setRtime(J)V

    .line 217
    const-string v21, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->setType(Ljava/lang/String;)V

    .line 220
    const-string v21, "imgs"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 221
    const/4 v15, 0x0

    .line 223
    .local v15, imgArray:Lorg/json/JSONArray;
    :try_start_1
    const-string v21, "imgs"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    .line 227
    :goto_2
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v21

    if-lez v21, :cond_a

    .line 228
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 229
    .local v16, imgObject:Lorg/json/JSONObject;
    const-string v21, "url"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->setImgUrl(Ljava/lang/String;)V

    .line 230
    const-string v21, "width"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->setIconWidht(I)V

    .line 231
    const-string v21, "height"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->setIconHeight(I)V

    .line 235
    invoke-virtual/range {v18 .. v18}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getIconWidht()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f80

    mul-float v21, v21, v22

    invoke-virtual/range {v18 .. v18}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getIconHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, v18

    iput v0, v1, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->s:F

    .line 240
    move-object/from16 v0, v18

    iget v0, v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->s:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x3fd0

    cmpg-double v21, v21, v23

    if-gez v21, :cond_a

    .line 241
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 203
    .end local v15           #imgArray:Lorg/json/JSONArray;
    .end local v16           #imgObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v10

    .line 205
    .local v10, e:Lorg/json/JSONException;
    const-string v21, "lhc"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "\u89e3\u6790\u5e7f\u544a\u5f02\u5e38\uff1a"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v10}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 224
    .end local v10           #e:Lorg/json/JSONException;
    .restart local v15       #imgArray:Lorg/json/JSONArray;
    :catch_1
    move-exception v10

    .line 225
    .restart local v10       #e:Lorg/json/JSONException;
    const-string v21, "\u89e3\u6790\u7011\u5e03\u6d41\u8d44\u8baf\u6570\u636e\u6ca1\u6709img\u5b57\u6bb5"

    invoke-static/range {v21 .. v21}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 252
    .end local v10           #e:Lorg/json/JSONException;
    .end local v15           #imgArray:Lorg/json/JSONArray;
    :cond_a
    const-string v21, "content"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 253
    .local v8, contentArray:Lorg/json/JSONArray;
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v21

    if-lez v21, :cond_c

    .line 254
    new-instance v7, Ljava/util/ArrayList;

    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    .local v7, content:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/entity/model/showflow/ShowFlowP;>;"
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v21

    if-ge v14, v0, :cond_b

    .line 256
    new-instance v19, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;

    invoke-direct/range {v19 .. v19}, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;-><init>()V

    .line 258
    .local v19, p:Lcom/inveno/flow/entity/model/showflow/ShowFlowP;
    :try_start_2
    invoke-virtual {v8, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 260
    .local v9, contentObject:Lorg/json/JSONObject;
    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->setImg(Z)V

    .line 261
    const-string v21, "url"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->setUrl(Ljava/lang/String;)V

    .line 262
    const-string v21, "type"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->setType(Ljava/lang/String;)V

    .line 263
    const-string v21, "format"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->setFormat(Ljava/lang/String;)V

    .line 264
    const-string v21, "width"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->setWidth(I)V

    .line 265
    const-string v21, "height"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->setHeight(I)V

    .line 266
    const-string v21, "size"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->setImgSize(I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 274
    .end local v9           #contentObject:Lorg/json/JSONObject;
    :goto_4
    move-object/from16 v0, v19

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 267
    :catch_2
    move-exception v10

    .line 268
    .restart local v10       #e:Lorg/json/JSONException;
    invoke-virtual {v8, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, c:Ljava/lang/String;
    invoke-static {v6}, Lcom/inveno/flyshare/utils/StringTools;->removeHtmlFlow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowP;->setContent(Ljava/lang/String;)V

    goto :goto_4

    .line 277
    .end local v6           #c:Ljava/lang/String;
    .end local v10           #e:Lorg/json/JSONException;
    .end local v19           #p:Lcom/inveno/flow/entity/model/showflow/ShowFlowP;
    :cond_b
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->setContent(Ljava/util/List;)V

    .end local v7           #content:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/entity/model/showflow/ShowFlowP;>;"
    .end local v14           #i:I
    :cond_c
    move-object/from16 v21, v18

    .line 295
    goto/16 :goto_0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    .locals 2
    .parameter "newsObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    invoke-direct {v0}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;-><init>()V

    .line 103
    .local v0, newinfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->setId(Ljava/lang/String;)V

    .line 104
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->setType(Ljava/lang/String;)V

    .line 106
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x0

    return v0
.end method

.method public getClick_num()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->click_num:I

    return v0
.end method

.method public getComments_num()I
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->comments_num:I

    return v0
.end method

.method public getContent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowP;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->content:Ljava/util/List;

    return-object v0
.end method

.method public getFavorite_num()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->favorite_num:I

    return v0
.end method

.method public getHot_tag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->hot_tag:Ljava/lang/String;

    return-object v0
.end method

.method public getIconHeight()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->iconHeight:I

    return v0
.end method

.method public getIconWidht()I
    .locals 1

    .prologue
    .line 363
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->iconWidht:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->imgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getInfoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->infoId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->originUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReco_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->reco_id:Ljava/lang/String;

    return-object v0
.end method

.method public getReco_tag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->reco_tag:Ljava/lang/String;

    return-object v0
.end method

.method public getRtime()J
    .locals 2

    .prologue
    .line 379
    iget-wide v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->rtime:J

    return-wide v0
.end method

.method public getShare_num()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->share_num:I

    return v0
.end method

.method public getShowFlowAd()Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->showFlowAd:Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;

    return-object v0
.end method

.method public getShowFlowHardAd()Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->showFlowHardAd:Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->snippet:Ljava/lang/String;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->src:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setClick_num(I)V
    .locals 0
    .parameter "click_num"

    .prologue
    .line 415
    iput p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->click_num:I

    .line 416
    return-void
.end method

.method public setComments_num(I)V
    .locals 0
    .parameter "comments_num"

    .prologue
    .line 423
    iput p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->comments_num:I

    .line 424
    return-void
.end method

.method public setContent(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p1, content:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/entity/model/showflow/ShowFlowP;>;"
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->content:Ljava/util/List;

    .line 456
    return-void
.end method

.method public setFavorite_num(I)V
    .locals 0
    .parameter "favorite_num"

    .prologue
    .line 431
    iput p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->favorite_num:I

    .line 432
    return-void
.end method

.method public setHot_tag(Ljava/lang/String;)V
    .locals 0
    .parameter "hot_tag"

    .prologue
    .line 407
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->hot_tag:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public setIconHeight(I)V
    .locals 0
    .parameter "iconHeight"

    .prologue
    .line 375
    iput p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->iconHeight:I

    .line 376
    return-void
.end method

.method public setIconWidht(I)V
    .locals 0
    .parameter "iconWidht"

    .prologue
    .line 367
    iput p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->iconWidht:I

    .line 368
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->id:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "imgUrl"

    .prologue
    .line 359
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->imgUrl:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setInfoId(Ljava/lang/String;)V
    .locals 0
    .parameter "infoId"

    .prologue
    .line 447
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->infoId:Ljava/lang/String;

    .line 448
    return-void
.end method

.method public setOriginUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "originUrl"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->originUrl:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setReco_id(Ljava/lang/String;)V
    .locals 0
    .parameter "reco_id"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->reco_id:Ljava/lang/String;

    .line 392
    return-void
.end method

.method public setReco_tag(Ljava/lang/String;)V
    .locals 0
    .parameter "reco_tag"

    .prologue
    .line 399
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->reco_tag:Ljava/lang/String;

    .line 400
    return-void
.end method

.method public setRtime(J)V
    .locals 0
    .parameter "rtime"

    .prologue
    .line 383
    iput-wide p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->rtime:J

    .line 384
    return-void
.end method

.method public setShare_num(I)V
    .locals 0
    .parameter "share_num"

    .prologue
    .line 439
    iput p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->share_num:I

    .line 440
    return-void
.end method

.method public setShowFlowAd(Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;)V
    .locals 0
    .parameter "showFlowAd"

    .prologue
    .line 463
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->showFlowAd:Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;

    .line 464
    return-void
.end method

.method public setShowFlowHardAd(Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;)V
    .locals 0
    .parameter "showFlowHardAd"

    .prologue
    .line 471
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->showFlowHardAd:Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;

    .line 472
    return-void
.end method

.method public setSnippet(Ljava/lang/String;)V
    .locals 0
    .parameter "snippet"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->snippet:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->src:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 327
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->title:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->type:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->json:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 554
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->infoId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 560
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->src:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->content:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 568
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->snippet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->originUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->imgUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 574
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->iconWidht:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->iconHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    iget-wide v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->rtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 577
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->reco_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->reco_tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->hot_tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 580
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->click_num:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->comments_num:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->favorite_num:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    iget v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->share_num:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->showFlowAd:Lcom/inveno/flow/entity/model/showflow/ShowFlowAd;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 585
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->showFlowHardAd:Lcom/inveno/flow/entity/model/showflow/ShowFlowHardAd;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 586
    return-void
.end method
