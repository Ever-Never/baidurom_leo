.class public Landroid/telephony/BaiduSubManager;
.super Landroid/os/Handler;
.source "BaiduSubManager.java"


# static fields
.field private static final CDMA_MODE:I = 0x0

.field private static final DBG:Z = true

.field private static final GSM_MODE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "BaiduSubManager"

.field private static final MAX_SUBSCRIPTIONS:I = 0x2

.field private static final SLOT_0:I = 0x0

.field private static final SLOT_1:I = 0x1

.field private static final SUB_0:I = 0x0

.field private static final SUB_1:I = 0x1

.field private static sBaiduSubManager:Landroid/telephony/BaiduSubManager;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 76
    const-string v0, "BaiduSubManager"

    const-string v1, "Constructor - Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iput-object p1, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    .line 80
    const-string v0, "BaiduSubManager"

    const-string v1, "Constructor - Exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 85
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/telephony/BaiduSubManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 58
    const-string v0, "BaiduSubManager"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v0, Landroid/telephony/BaiduSubManager;->sBaiduSubManager:Landroid/telephony/BaiduSubManager;

    if-nez v0, :cond_1

    .line 61
    if-nez p0, :cond_0

    .line 62
    const-string v0, "BaiduSubManager"

    const-string v1, "sBaiduSubManager == null, context == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    .line 65
    :cond_0
    new-instance v0, Landroid/telephony/BaiduSubManager;

    invoke-direct {v0, p0}, Landroid/telephony/BaiduSubManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/telephony/BaiduSubManager;->sBaiduSubManager:Landroid/telephony/BaiduSubManager;

    .line 67
    :cond_1
    sget-object v0, Landroid/telephony/BaiduSubManager;->sBaiduSubManager:Landroid/telephony/BaiduSubManager;

    goto :goto_0
.end method


# virtual methods
.method public changeIccLockPassword(ILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "subscription"
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "onCompleteMsg"

    .prologue
    .line 342
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 343
    .local v1, mPhone:Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_1

    .line 344
    const-string v3, "BaiduSubManager"

    const-string v4, "mPhone == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-eqz p4, :cond_0

    .line 346
    const/4 v2, 0x0

    .line 347
    .local v2, result:Z
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "mPhone == null"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 348
    .local v0, exception:Ljava/lang/RuntimeException;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p4, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 349
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 354
    .end local v0           #exception:Ljava/lang/RuntimeException;
    .end local v2           #result:Z
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3, p2, p3, p4}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getDataRoamingEnabled(I)Z
    .locals 7
    .parameter "subscription"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, dataRoaming:I
    :try_start_0
    iget-object v4, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_roaming"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 255
    :goto_0
    if-ne v0, v2, :cond_0

    :goto_1
    return v2

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "BaiduSubManager"

    const-string v5, "no such setting"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    move v2, v3

    .line 255
    goto :goto_1
.end method

.method public getMmsRoamingEnabled(I)Z
    .locals 7
    .parameter "subscription"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 277
    const/4 v1, 0x0

    .line 279
    .local v1, mmsRoaming:I
    :try_start_0
    iget-object v4, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_roaming"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 284
    :goto_0
    if-ne v1, v2, :cond_0

    :goto_1
    return v2

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "BaiduSubManager"

    const-string v5, "no such setting"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    move v2, v3

    .line 284
    goto :goto_1
.end method

.method public getRetryPin1Count(I)I
    .locals 4
    .parameter "subscription"

    .prologue
    const/4 v1, -0x1

    .line 364
    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/BaiduExtITelephonyProxy;

    invoke-direct {v2}, Lcom/android/internal/telephony/BaiduExtITelephonyProxy;-><init>()V

    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/BaiduExtITelephonyProxy;->getIccPinPukRetryTimes(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 371
    :goto_0
    return v1

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "BaiduSubManager"

    const-string v3, "RemoteException ex"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 370
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "BaiduSubManager"

    const-string v3, "NullPointerException ex"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSlotActive(I)Z
    .locals 2
    .parameter "slot"

    .prologue
    .line 146
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const-string v0, "BaiduSubManager"

    const-string v1, "no card in slot"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSlotMode(I)I
    .locals 3
    .parameter "slot"

    .prologue
    const/4 v0, 0x1

    .line 191
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    const-string v1, "BaiduSubManager"

    const-string v2, "no card in slot"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 195
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 196
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCardInsert(I)Z
    .locals 4
    .parameter "slot"

    .prologue
    const/4 v1, 0x0

    .line 96
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/BaiduSubManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->hasIccCard()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 103
    :goto_0
    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "BaiduSubManager"

    const-string v3, "RemoteException ex"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 102
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v2, "BaiduSubManager"

    const-string v3, "NullPointerException ex"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isIccLockEnabled(I)Z
    .locals 3
    .parameter "subscription"

    .prologue
    .line 295
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 296
    .local v0, mPhone:Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    .line 297
    const-string v1, "BaiduSubManager"

    const-string v2, "mPhone == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v1, 0x0

    .line 300
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method public setDataRoamingEnabled(IZ)V
    .locals 3
    .parameter "subscription"
    .parameter "enable"

    .prologue
    .line 236
    iget-object v0, p0, Landroid/telephony/BaiduSubManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    return-void

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataSubscription(ILandroid/os/Message;)V
    .locals 4
    .parameter "subscription"
    .parameter "onCompleteMsg"

    .prologue
    .line 211
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 212
    const-string v2, "BaiduSubManager"

    const-string v3, "no card in slot"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-eqz p2, :cond_0

    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, result:Z
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "no card in slot"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 217
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 227
    .end local v0           #exception:Ljava/lang/RuntimeException;
    .end local v1           #result:Z
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    if-eqz p2, :cond_0

    .line 222
    const/4 v1, 0x1

    .line 223
    .restart local v1       #result:Z
    const/4 v0, 0x0

    .line 224
    .restart local v0       #exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p2, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 225
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setIccLockEnabled(IZLjava/lang/String;Landroid/os/Message;)V
    .locals 5
    .parameter "subscription"
    .parameter "enable"
    .parameter "password"
    .parameter "onCompleteMsg"

    .prologue
    .line 316
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 317
    .local v1, mPhone:Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_1

    .line 318
    const-string v3, "BaiduSubManager"

    const-string v4, "mPhone == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    if-eqz p4, :cond_0

    .line 320
    const/4 v2, 0x0

    .line 321
    .local v2, result:Z
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "mPhone == null"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, exception:Ljava/lang/RuntimeException;
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p4, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 323
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 328
    .end local v0           #exception:Ljava/lang/RuntimeException;
    .end local v2           #result:Z
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    invoke-interface {v3, p2, p3, p4}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setMmsRoamingEnabled(IZ)V
    .locals 0
    .parameter "subscription"
    .parameter "enable"

    .prologue
    .line 267
    return-void
.end method

.method public setSlotActive(IZLandroid/os/Message;)V
    .locals 4
    .parameter "slot"
    .parameter "active"
    .parameter "onCompleteMsg"

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 121
    const-string v2, "BaiduSubManager"

    const-string v3, "no card in slot"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-eqz p3, :cond_0

    .line 123
    const/4 v1, 0x0

    .line 124
    .local v1, result:Z
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "no card in slot"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p3, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 126
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 136
    .end local v0           #exception:Ljava/lang/RuntimeException;
    .end local v1           #result:Z
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    if-eqz p3, :cond_0

    .line 131
    const/4 v1, 0x1

    .line 132
    .restart local v1       #result:Z
    const/4 v0, 0x0

    .line 133
    .restart local v0       #exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p3, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 134
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setSlotMode(IILandroid/os/Message;)V
    .locals 4
    .parameter "slot"
    .parameter "mode"
    .parameter "onCompleteMsg"

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Landroid/telephony/BaiduSubManager;->isCardInsert(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 167
    const-string v2, "BaiduSubManager"

    const-string v3, "no card in slot"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    if-eqz p3, :cond_0

    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, result:Z
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "no card in slot"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p3, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 172
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 182
    .end local v0           #exception:Ljava/lang/RuntimeException;
    .end local v1           #result:Z
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    if-eqz p3, :cond_0

    .line 177
    const/4 v1, 0x1

    .line 178
    .restart local v1       #result:Z
    const/4 v0, 0x0

    .line 179
    .restart local v0       #exception:Ljava/lang/RuntimeException;
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p3, v2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 180
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
