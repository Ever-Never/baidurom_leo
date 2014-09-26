.class public Lcom/inveno/flyshare/utils/GetMobileNetInfoUtils;
.super Ljava/lang/Object;
.source "GetMobileNetInfoUtils.java"


# static fields
.field public static final CMNET:Ljava/lang/String; = "cmnet"

.field public static final CMWAP:Ljava/lang/String; = "cmwap"

.field public static final CTNET:Ljava/lang/String; = "ctnet"

.field public static final CTWAP:Ljava/lang/String; = "ctwap"

.field public static final NET_3G:Ljava/lang/String; = "3gnet"

.field public static PREFERRED_APN_URI:Landroid/net/Uri; = null

.field public static final TYPE_CM_NET:I = 0xa

.field public static final TYPE_CM_NET_2G:I = 0xc

.field public static final TYPE_CM_WAP:I = 0x9

.field public static final TYPE_CM_WAP_2G:I = 0xb

.field public static final TYPE_CT_NET:I = 0x6

.field public static final TYPE_CT_NET_2G:I = 0x8

.field public static final TYPE_CT_WAP:I = 0x5

.field public static final TYPE_CT_WAP_2G:I = 0x7

.field public static final TYPE_CU_NET:I = 0xe

.field public static final TYPE_CU_NET_2G:I = 0x10

.field public static final TYPE_CU_WAP:I = 0xd

.field public static final TYPE_CU_WAP_2G:I = 0xf

.field public static final TYPE_NET_WORK_DISABLED:I = 0x0

.field public static final TYPE_OTHER:I = 0x11

.field public static final TYPE_WIFI:I = 0x4

.field public static final UNINET:Ljava/lang/String; = "uninet"

.field public static final UNIWAP:Ljava/lang/String; = "uniwap"

.field public static final WAP_3G:Ljava/lang/String; = "3gwap"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 51
    sput-object v0, Lcom/inveno/flyshare/utils/GetMobileNetInfoUtils;->PREFERRED_APN_URI:Landroid/net/Uri;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNetworkType(Landroid/content/Context;)I
    .locals 15
    .parameter "context"

    .prologue
    const/16 v14, 0x11

    .line 213
    .line 214
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 213
    check-cast v7, Landroid/net/ConnectivityManager;

    .line 216
    .local v7, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    .line 217
    .local v10, mobNetInfoActivity:Landroid/net/NetworkInfo;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    :cond_0
    const/4 v0, 0x0

    .line 289
    .end local v7           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v10           #mobNetInfoActivity:Landroid/net/NetworkInfo;
    :goto_0
    return v0

    .line 226
    .restart local v7       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v10       #mobNetInfoActivity:Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    .line 227
    .local v12, netType:I
    const/4 v0, 0x1

    if-ne v12, v0, :cond_2

    .line 229
    const/4 v0, 0x4

    goto :goto_0

    .line 230
    :cond_2
    if-nez v12, :cond_10

    .line 238
    invoke-static {p0}, Lcom/inveno/flyshare/utils/GetMobileNetInfoUtils;->isFastMobileNetwork(Landroid/content/Context;)Z

    move-result v9

    .line 240
    .local v9, is3G:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 241
    sget-object v1, Lcom/inveno/flyshare/utils/GetMobileNetInfoUtils;->PREFERRED_APN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 240
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 242
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 243
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 245
    const-string v0, "user"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 244
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 246
    .local v13, user:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 247
    const-string v0, "ctwap"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 248
    if-eqz v9, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    goto :goto_0

    .line 249
    :cond_4
    const-string v0, "ctnet"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 250
    if-eqz v9, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const/16 v0, 0x8

    goto :goto_0

    .line 254
    .end local v13           #user:Ljava/lang/String;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 263
    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v11

    .line 265
    .local v11, netMode:Ljava/lang/String;
    if-eqz v11, :cond_10

    .line 267
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 269
    const-string v0, "cmwap"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 270
    if-eqz v9, :cond_7

    const/16 v0, 0x9

    goto :goto_0

    :cond_7
    const/16 v0, 0xb

    goto :goto_0

    .line 271
    :cond_8
    const-string v0, "cmnet"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 272
    if-eqz v9, :cond_9

    const/16 v0, 0xa

    goto :goto_0

    :cond_9
    const/16 v0, 0xc

    goto :goto_0

    .line 273
    :cond_a
    const-string v0, "3gnet"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 274
    const-string v0, "uninet"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 275
    :cond_b
    if-eqz v9, :cond_c

    const/16 v0, 0xe

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 276
    :cond_d
    const-string v0, "3gwap"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 277
    const-string v0, "uniwap"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_10

    .line 278
    :cond_e
    if-eqz v9, :cond_f

    const/16 v0, 0xd

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 284
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v9           #is3G:Z
    .end local v10           #mobNetInfoActivity:Landroid/net/NetworkInfo;
    .end local v11           #netMode:Ljava/lang/String;
    .end local v12           #netType:I
    :catch_0
    move-exception v8

    .line 285
    .local v8, ex:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v14

    .line 286
    goto/16 :goto_0

    .end local v8           #ex:Ljava/lang/Exception;
    .restart local v7       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v10       #mobNetInfoActivity:Landroid/net/NetworkInfo;
    .restart local v12       #netType:I
    :cond_10
    move v0, v14

    .line 289
    goto/16 :goto_0
.end method

.method public static getNetworkTypeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 103
    const-string v1, ""

    .line 105
    .local v1, net:Ljava/lang/String;
    invoke-static {p0}, Lcom/inveno/flyshare/utils/GetMobileNetInfoUtils;->checkNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 107
    .local v0, checkNetworkType:I
    packed-switch v0, :pswitch_data_0

    .line 204
    :goto_0
    :pswitch_0
    return-object v1

    .line 110
    :pswitch_1
    const-string v1, "wifi"

    .line 112
    goto :goto_0

    .line 116
    :pswitch_2
    const-string v1, "noNetwork"

    .line 118
    goto :goto_0

    .line 122
    :pswitch_3
    const-string v1, "ctwap3G"

    .line 124
    goto :goto_0

    .line 128
    :pswitch_4
    const-string v1, "ctwap2G"

    .line 130
    goto :goto_0

    .line 134
    :pswitch_5
    const-string v1, "ctnet3G"

    .line 136
    goto :goto_0

    .line 140
    :pswitch_6
    const-string v1, "ctnet2G"

    .line 142
    goto :goto_0

    .line 146
    :pswitch_7
    const-string v1, "cmwap3G"

    .line 148
    goto :goto_0

    .line 152
    :pswitch_8
    const-string v1, "cmwap2G"

    .line 154
    goto :goto_0

    .line 158
    :pswitch_9
    const-string v1, "cmnet3G"

    .line 160
    goto :goto_0

    .line 164
    :pswitch_a
    const-string v1, "cmnet2G"

    .line 166
    goto :goto_0

    .line 170
    :pswitch_b
    const-string v1, "cunet3G"

    .line 172
    goto :goto_0

    .line 176
    :pswitch_c
    const-string v1, "cunet2G"

    .line 178
    goto :goto_0

    .line 182
    :pswitch_d
    const-string v1, "cuwap3G"

    .line 184
    goto :goto_0

    .line 188
    :pswitch_e
    const-string v1, "cuwap2G"

    .line 190
    goto :goto_0

    .line 194
    :pswitch_f
    const-string v1, "other"

    .line 196
    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_d
        :pswitch_b
        :pswitch_e
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public static getProvidersName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 68
    .line 69
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 68
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 70
    .local v2, telMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, imsi:Ljava/lang/String;
    const-string v1, ""

    .line 72
    .local v1, providersName:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    const-string v3, "46000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    :cond_0
    const-string v1, "CMCC"

    .line 92
    :cond_1
    :goto_0
    return-object v1

    .line 79
    :cond_2
    const-string v3, "46001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    const-string v1, "CUCC"

    goto :goto_0

    .line 84
    :cond_3
    const-string v3, "46003"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    const-string v1, "CTCC"

    goto :goto_0
.end method

.method private static isFastMobileNetwork(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 294
    .line 295
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 294
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 297
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 331
    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    move v1, v2

    .line 305
    goto :goto_0

    :pswitch_2
    move v1, v2

    .line 307
    goto :goto_0

    :pswitch_3
    move v1, v2

    .line 311
    goto :goto_0

    :pswitch_4
    move v1, v2

    .line 313
    goto :goto_0

    :pswitch_5
    move v1, v2

    .line 315
    goto :goto_0

    :pswitch_6
    move v1, v2

    .line 317
    goto :goto_0

    :pswitch_7
    move v1, v2

    .line 319
    goto :goto_0

    :pswitch_8
    move v1, v2

    .line 321
    goto :goto_0

    :pswitch_9
    move v1, v2

    .line 323
    goto :goto_0

    :pswitch_a
    move v1, v2

    .line 327
    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method
