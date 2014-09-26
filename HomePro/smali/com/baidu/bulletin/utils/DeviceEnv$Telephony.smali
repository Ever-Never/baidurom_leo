.class public Lcom/baidu/bulletin/utils/DeviceEnv$Telephony;
.super Ljava/lang/Object;
.source "DeviceEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/DeviceEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Telephony"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony;->telephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 64
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager is not exsited!"

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, ""

    .line 69
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony;->telephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getSubscriberId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony;->telephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 77
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_0

    .line 78
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TelephonyManager is not exsited!"

    invoke-static {v1, v2}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, ""

    .line 82
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony;->telephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static telephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 187
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Static;->context()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Static;->context()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    goto :goto_0
.end method


# virtual methods
.method public getCellLocation()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v13, cellArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;>;"
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony;->telephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v18

    .line 119
    .local v18, telephonyManager:Landroid/telephony/TelephonyManager;
    if-nez v18, :cond_1

    .line 120
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v6, "TelephonyManager is not exsited!"

    invoke-static {v2, v6}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_0
    :goto_0
    return-object v13

    .line 124
    :cond_1
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v19

    .line 126
    .local v19, type:I
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v17

    .line 127
    .local v17, operator:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v6, 0x3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 128
    .local v3, mcc:I
    const/4 v2, 0x3

    const/4 v6, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 130
    .local v4, mnc:I
    const/4 v2, 0x1

    move/from16 v0, v19

    if-eq v2, v0, :cond_2

    const/4 v2, 0x2

    move/from16 v0, v19

    if-eq v2, v0, :cond_2

    const/16 v2, 0x8

    move/from16 v0, v19

    if-ne v2, v0, :cond_4

    .line 135
    :cond_2
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v15

    check-cast v15, Landroid/telephony/gsm/GsmCellLocation;

    .line 136
    .local v15, location:Landroid/telephony/gsm/GsmCellLocation;
    if-nez v15, :cond_3

    .line 137
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v6, "GsmCellLocation is null!"

    invoke-static {v2, v6}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_3
    new-instance v1, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;

    sget-object v2, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;->GSM:Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;

    invoke-virtual {v15}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    invoke-virtual {v15}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;-><init>(Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;IIII)V

    .line 144
    .local v1, currentCell:Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v16

    .line 148
    .local v16, neighboringCells:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/NeighboringCellInfo;

    .line 149
    .local v12, cell:Landroid/telephony/NeighboringCellInfo;
    new-instance v5, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;

    sget-object v6, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;->GSM:Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;

    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v9

    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v10

    move v7, v3

    move v8, v4

    invoke-direct/range {v5 .. v10}, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;-><init>(Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;IIII)V

    .line 152
    .local v5, neighboringCell:Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 154
    .end local v1           #currentCell:Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;
    .end local v5           #neighboringCell:Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;
    .end local v12           #cell:Landroid/telephony/NeighboringCellInfo;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #location:Landroid/telephony/gsm/GsmCellLocation;
    .end local v16           #neighboringCells:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :cond_4
    const/4 v2, 0x4

    move/from16 v0, v19

    if-eq v2, v0, :cond_5

    const/4 v2, 0x5

    move/from16 v0, v19

    if-eq v2, v0, :cond_5

    const/4 v2, 0x6

    move/from16 v0, v19

    if-eq v2, v0, :cond_5

    const/4 v2, 0x7

    move/from16 v0, v19

    if-ne v2, v0, :cond_0

    .line 160
    :cond_5
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v15

    check-cast v15, Landroid/telephony/cdma/CdmaCellLocation;

    .line 161
    .local v15, location:Landroid/telephony/cdma/CdmaCellLocation;
    if-nez v15, :cond_6

    .line 162
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v6, "CdmaCellLocation is null!"

    invoke-static {v2, v6}, Lcom/baidu/bulletin/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 166
    :cond_6
    invoke-virtual {v15}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v4

    .line 168
    new-instance v1, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;

    sget-object v7, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;->CDMA:Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;

    invoke-virtual {v15}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v10

    invoke-virtual {v15}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v11

    move-object v6, v1

    move v8, v3

    move v9, v4

    invoke-direct/range {v6 .. v11}, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;-><init>(Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;IIII)V

    .line 171
    .restart local v1       #currentCell:Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v16

    .line 175
    .restart local v16       #neighboringCells:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/NeighboringCellInfo;

    .line 176
    .restart local v12       #cell:Landroid/telephony/NeighboringCellInfo;
    new-instance v5, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;

    sget-object v6, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;->CDMA:Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;

    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v9

    invoke-virtual {v12}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v10

    move v7, v3

    move v8, v4

    invoke-direct/range {v5 .. v10}, Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;-><init>(Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo$Type;IIII)V

    .line 179
    .restart local v5       #neighboringCell:Lcom/baidu/bulletin/utils/DeviceEnv$Telephony$CellInfo;
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
