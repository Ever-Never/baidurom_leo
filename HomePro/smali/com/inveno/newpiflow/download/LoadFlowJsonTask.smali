.class public Lcom/inveno/newpiflow/download/LoadFlowJsonTask;
.super Ljava/lang/Object;
.source "LoadFlowJsonTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/newpiflow/download/LoadFlowJsonTask$LoadNewsInfoListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final IQIYI_FLAG:Z = false

.field private static final MAX_TEMP_DATA:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LoadFlowJsonTask"

.field private static final TAGT:Ljava/lang/String; = "BYC_TEST"


# instance fields
.field private cancle:Z

.field private context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inveno/newpiflow/model/PiData;",
            ">;"
        }
    .end annotation
.end field

.field private deviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

.field private first:Z

.field private iQiyiPage:I

.field private iShowflowApi:Lcom/inveno/newpiflow/download/IShowflowApi;

.field private lock:Ljava/lang/Object;

.field private mLoadListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/inveno/newpiflow/download/LoadFlowJsonTask$LoadNewsInfoListener;",
            ">;"
        }
    .end annotation
.end field

.field private mode:I

.field private style:I

.field private theme:I

.field private uiLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 4
    .parameter "context"
    .parameter "object"
    .parameter "uiLock"
    .parameter "style"
    .parameter "mode"
    .parameter "theme"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v3, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->first:Z

    .line 47
    iput v2, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->iQiyiPage:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    .line 65
    iput-object p1, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->context:Landroid/content/Context;

    .line 66
    iput p4, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->style:I

    .line 67
    iput p5, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mode:I

    .line 68
    iput p6, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->theme:I

    .line 69
    iput-object p2, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->lock:Ljava/lang/Object;

    .line 70
    iput-object p3, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->uiLock:Ljava/lang/Object;

    .line 71
    invoke-static {p1}, Lcom/inveno/newpiflow/tools/DeviceConfig;->getInstance(Landroid/content/Context;)Lcom/inveno/newpiflow/tools/DeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->deviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->datas:Ljava/util/List;

    .line 73
    new-instance v0, Lcom/inveno/newpiflow/download/ShowFlowImpl;

    invoke-direct {v0}, Lcom/inveno/newpiflow/download/ShowFlowImpl;-><init>()V

    iput-object v0, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->iShowflowApi:Lcom/inveno/newpiflow/download/IShowflowApi;

    .line 74
    iput-boolean v3, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->cancle:Z

    .line 76
    iput v2, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->iQiyiPage:I

    .line 78
    return-void
.end method


# virtual methods
.method public addUpdateListener(Lcom/inveno/newpiflow/download/LoadFlowJsonTask$LoadNewsInfoListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    return-void
.end method

.method public getData()Lcom/inveno/newpiflow/model/PiData;
    .locals 4

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 261
    .local v0, result:Lcom/inveno/newpiflow/model/PiData;
    iget-object v2, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 263
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    iget-object v1, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->datas:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 266
    :cond_0
    iget-object v2, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 268
    :try_start_1
    const-string v1, "task"

    const-string v3, "11\u65e0\u6570\u636e\uff0c\u7b49\u5f85"

    invoke-static {v1, v3}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->datas:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 276
    iget-object v1, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->datas:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Lcom/inveno/newpiflow/model/PiData;
    check-cast v0, Lcom/inveno/newpiflow/model/PiData;

    .line 278
    .restart local v0       #result:Lcom/inveno/newpiflow/model/PiData;
    iget-object v2, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 279
    :try_start_3
    iget-object v1, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 280
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 283
    :cond_2
    return-object v0

    .line 263
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 272
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 280
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    .line 270
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public release()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    :try_start_0
    iget-object v1, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->iShowflowApi:Lcom/inveno/newpiflow/download/IShowflowApi;

    iget-object v2, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->context:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/inveno/newpiflow/download/IShowflowApi;->saveLastShowNews(Landroid/content/Context;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    invoke-virtual {p0}, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->removeAllUpdateListeners()V

    .line 310
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->cancle:Z

    .line 311
    iget-object v1, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->datas:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 314
    :cond_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public removeUpdateListener(Lcom/inveno/newpiflow/download/LoadFlowJsonTask$LoadNewsInfoListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public run()V
    .locals 22

    .prologue
    .line 81
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->cancle:Z

    .line 82
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->cancle:Z

    if-eqz v1, :cond_c

    .line 83
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 84
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    const/4 v4, 0x3

    if-lt v1, v4, :cond_1

    .line 86
    :try_start_1
    const-string v1, "task"

    const-string v4, "11\u6570\u636e\u8fc7\u91cf\uff0c\u7b49\u5f85"

    invoke-static {v1, v4}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_a

    .line 91
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, flowNewinfos:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->first:Z

    if-eqz v1, :cond_4

    .line 96
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/inveno/flyshare/utils/StringTools;->getSDPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "flow.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/flyshare/utils/StringTools;->getJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->parse(Landroid/content/Context;Ljava/lang/String;)Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/inveno/newpiflow/download/NoUpdateException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .line 105
    :goto_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->first:Z

    .line 169
    :goto_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->size()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size:::::"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/inveno/newpiflow/tools/AdUtil;->getCount(Landroid/content/Context;)I

    move-result v10

    .line 173
    .local v10, baiyiPage:I
    if-ltz v10, :cond_9

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->context:Landroid/content/Context;

    invoke-static {v1, v10}, Lcom/inveno/newpiflow/biz/OpDataUtil;->getEnabledBaiyiList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v9

    .line 175
    .local v9, baiyiList:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/newpiflow/model/BizShowFlowNew;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->context:Landroid/content/Context;

    add-int/lit8 v3, v10, 0x1

    invoke-static {v1, v3}, Lcom/inveno/newpiflow/tools/AdUtil;->setCount(Landroid/content/Context;I)V

    .line 176
    if-eqz v9, :cond_9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 177
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_2
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/inveno/newpiflow/model/BizShowFlowNew;

    .line 178
    .local v11, bizShowFlowNew:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    if-eqz v11, :cond_2

    iget-object v1, v11, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, v11, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, v11, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, v11, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;

    .line 183
    .local v16, info:Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;
    const/4 v15, 0x0

    .line 184
    .local v15, index:I
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->info:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    invoke-static {v1}, Lcom/inveno/newpiflow/model/BizNewsUtil;->isBanner(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 185
    new-instance v19, Ljava/util/Random;

    invoke-direct/range {v19 .. v19}, Ljava/util/Random;-><init>()V

    .line 186
    .local v19, random:Ljava/util/Random;
    invoke-virtual/range {v19 .. v19}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v2}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->size()I

    move-result v3

    rem-int v15, v1, v3

    .line 188
    .end local v19           #random:Ljava/util/Random;
    :cond_3
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->info:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    invoke-virtual {v2, v15, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->add(ILcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)V

    goto :goto_4

    .line 91
    .end local v2           #flowNewinfos:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    .end local v9           #baiyiList:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/newpiflow/model/BizShowFlowNew;>;"
    .end local v10           #baiyiPage:I
    .end local v11           #bizShowFlowNew:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #index:I
    .end local v16           #info:Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 99
    .restart local v2       #flowNewinfos:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    :catch_0
    move-exception v12

    .line 101
    .local v12, e:Lorg/json/JSONException;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->first:Z

    goto/16 :goto_2

    .line 102
    .end local v12           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v12

    .line 103
    .local v12, e:Lcom/inveno/newpiflow/download/NoUpdateException;
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->first:Z

    goto/16 :goto_2

    .line 109
    .end local v12           #e:Lcom/inveno/newpiflow/download/NoUpdateException;
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->iShowflowApi:Lcom/inveno/newpiflow/download/IShowflowApi;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->context:Landroid/content/Context;

    invoke-interface {v1, v3}, Lcom/inveno/newpiflow/download/IShowflowApi;->getShowflowNews(Landroid/content/Context;)Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    :try_end_5
    .catch Lorg/apache/http/HttpException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/inveno/newpiflow/download/NoUpdateException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v2

    goto/16 :goto_3

    .line 110
    :catch_2
    move-exception v12

    .line 111
    .local v12, e:Lorg/apache/http/HttpException;
    const-string v1, "LoadFlowJsonTask"

    const-string v3, "load data HttpException"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 114
    .local v17, numListeners:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_5
    move/from16 v0, v17

    if-ge v13, v0, :cond_5

    .line 115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/newpiflow/download/LoadFlowJsonTask$LoadNewsInfoListener;

    invoke-interface {v1}, Lcom/inveno/newpiflow/download/LoadFlowJsonTask$LoadNewsInfoListener;->onLoadFailed()V

    .line 114
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 118
    .end local v13           #i:I
    .end local v17           #numListeners:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 120
    :try_start_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_9

    .line 123
    :goto_6
    :try_start_7
    monitor-exit v3

    goto/16 :goto_3

    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    .line 124
    .end local v12           #e:Lorg/apache/http/HttpException;
    :catch_3
    move-exception v12

    .line 125
    .local v12, e:Ljava/io/IOException;
    const-string v1, "LoadFlowJsonTask"

    const-string v3, "load data IOException"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 128
    .restart local v17       #numListeners:I
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_7
    move/from16 v0, v17

    if-ge v13, v0, :cond_6

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/newpiflow/download/LoadFlowJsonTask$LoadNewsInfoListener;

    invoke-interface {v1}, Lcom/inveno/newpiflow/download/LoadFlowJsonTask$LoadNewsInfoListener;->onLoadFailed()V

    .line 128
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 132
    .end local v13           #i:I
    .end local v17           #numListeners:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 134
    :try_start_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_8

    .line 137
    :goto_8
    :try_start_9
    monitor-exit v3

    goto/16 :goto_3

    :catchall_2
    move-exception v1

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v1

    .line 138
    .end local v12           #e:Ljava/io/IOException;
    :catch_4
    move-exception v12

    .line 139
    .local v12, e:Lorg/json/JSONException;
    const-string v1, "LoadFlowJsonTask"

    const-string v3, "load data JSONException"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    .line 141
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 142
    .restart local v17       #numListeners:I
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_9
    move/from16 v0, v17

    if-ge v13, v0, :cond_7

    .line 143
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/newpiflow/download/LoadFlowJsonTask$LoadNewsInfoListener;

    invoke-interface {v1}, Lcom/inveno/newpiflow/download/LoadFlowJsonTask$LoadNewsInfoListener;->onLoadFailed()V

    .line 142
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 146
    .end local v13           #i:I
    .end local v17           #numListeners:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 148
    :try_start_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_7

    .line 151
    :goto_a
    :try_start_b
    monitor-exit v3

    goto/16 :goto_3

    :catchall_3
    move-exception v1

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v1

    .line 152
    .end local v12           #e:Lorg/json/JSONException;
    :catch_5
    move-exception v12

    .line 153
    .local v12, e:Lcom/inveno/newpiflow/download/NoUpdateException;
    const-string v1, "LoadFlowJsonTask"

    const-string v3, "load data JSONException"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 156
    .restart local v17       #numListeners:I
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_b
    move/from16 v0, v17

    if-ge v13, v0, :cond_8

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mLoadListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/newpiflow/download/LoadFlowJsonTask$LoadNewsInfoListener;

    invoke-interface {v1}, Lcom/inveno/newpiflow/download/LoadFlowJsonTask$LoadNewsInfoListener;->onLoadFailed()V

    .line 156
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 160
    .end local v13           #i:I
    .end local v17           #numListeners:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 162
    :try_start_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_6

    .line 165
    :goto_c
    :try_start_d
    monitor-exit v3

    goto/16 :goto_3

    :catchall_4
    move-exception v1

    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v1

    .line 224
    .end local v12           #e:Lcom/inveno/newpiflow/download/NoUpdateException;
    .restart local v10       #baiyiPage:I
    :cond_9
    const-string v1, "BYC_TEST"

    const-string v3, "------------------------------------------get test content begin---------------------------------------------------------"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v1, "BYC_TEST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current page is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v1, "BYC_TEST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current iqiyi page is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->iQiyiPage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 228
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_d
    invoke-virtual {v2}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->size()I

    move-result v1

    if-ge v13, v1, :cond_a

    .line 229
    invoke-virtual {v2, v13}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->get(I)Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    move-result-object v18

    .line 230
    .local v18, obj:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->context:Landroid/content/Context;

    invoke-virtual/range {v18 .. v18}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/inveno/newpiflow/biz/OpDataUtil;->getTypeById(Landroid/content/Context;Ljava/lang/String;)I

    move-result v20

    .line 231
    .local v20, type:I
    const-string v1, "BYC_TEST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v1, "BYC_TEST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "item"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " title is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 235
    .end local v13           #i:I
    .end local v18           #obj:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    .end local v20           #type:I
    :cond_a
    const-string v1, "BYC_TEST"

    const-string v3, "------------------------------------------get test content end---------------------------------------------------------"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    if-ltz v10, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_b

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->datas:Ljava/util/List;

    move-object/from16 v21, v0

    new-instance v1, Lcom/inveno/newpiflow/model/PiData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->deviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v3, v3, Lcom/inveno/newpiflow/tools/DeviceConfig;->w:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->deviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v4, v4, Lcom/inveno/newpiflow/tools/DeviceConfig;->h:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->style:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mode:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->theme:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->context:Landroid/content/Context;

    invoke-direct/range {v1 .. v8}, Lcom/inveno/newpiflow/model/PiData;-><init>(Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;IIIIILandroid/content/Context;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v10, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 247
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 248
    :try_start_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->uiLock:Ljava/lang/Object;

    monitor-enter v3

    .line 252
    :try_start_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->uiLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 253
    monitor-exit v3

    goto/16 :goto_0

    :catchall_5
    move-exception v1

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v1

    .line 243
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->datas:Ljava/util/List;

    move-object/from16 v21, v0

    new-instance v1, Lcom/inveno/newpiflow/model/PiData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->deviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v3, v3, Lcom/inveno/newpiflow/tools/DeviceConfig;->w:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->deviceConfig:Lcom/inveno/newpiflow/tools/DeviceConfig;

    iget v4, v4, Lcom/inveno/newpiflow/tools/DeviceConfig;->h:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->style:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mode:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->theme:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->context:Landroid/content/Context;

    invoke-direct/range {v1 .. v8}, Lcom/inveno/newpiflow/model/PiData;-><init>(Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;IIIIILandroid/content/Context;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 249
    :catchall_6
    move-exception v1

    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v1

    .line 256
    .end local v2           #flowNewinfos:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    .end local v10           #baiyiPage:I
    :cond_c
    return-void

    .line 163
    .restart local v2       #flowNewinfos:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    .restart local v12       #e:Lcom/inveno/newpiflow/download/NoUpdateException;
    :catch_6
    move-exception v1

    goto/16 :goto_c

    .line 149
    .local v12, e:Lorg/json/JSONException;
    :catch_7
    move-exception v1

    goto/16 :goto_a

    .line 135
    .local v12, e:Ljava/io/IOException;
    :catch_8
    move-exception v1

    goto/16 :goto_8

    .line 121
    .local v12, e:Lorg/apache/http/HttpException;
    :catch_9
    move-exception v1

    goto/16 :goto_6

    .line 88
    .end local v2           #flowNewinfos:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    .end local v12           #e:Lorg/apache/http/HttpException;
    :catch_a
    move-exception v1

    goto/16 :goto_1
.end method

.method public setMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 292
    const/4 v0, 0x5

    if-eq v0, p1, :cond_0

    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 294
    :cond_1
    iput p1, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->mode:I

    .line 295
    return-void
.end method

.method public setStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 287
    iput p1, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->style:I

    .line 288
    iget-object v0, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 289
    return-void
.end method

.method public setTheme(I)V
    .locals 1
    .parameter "theme"

    .prologue
    .line 298
    iput p1, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->theme:I

    .line 299
    iget-object v0, p0, Lcom/inveno/newpiflow/download/LoadFlowJsonTask;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 300
    return-void
.end method
