.class public Lcom/baidu/launcher/protocol/Agent;
.super Ljava/lang/Object;
.source "Agent.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/baidu/launcher/protocol/Agent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/protocol/Agent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindUserInfo(Landroid/content/Context;Lcom/baidu/launcher/business/item/PhoneInfo;Lcom/baidu/launcher/business/UserInfoManager$UserInfoCallBack;)V
    .locals 6
    .parameter "aContext"
    .parameter "aPostData"
    .parameter "aCallback"

    .prologue
    .line 184
    invoke-static {p1}, Lcom/baidu/launcher/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, postdata:Ljava/lang/String;
    sget-object v0, Lcom/baidu/launcher/protocol/Agent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindUserInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/baidu/launcher/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v0, Lcom/baidu/launcher/protocol/Agent$5;

    sget-object v2, Lcom/baidu/launcher/network/http/HttpParam$Method;->POST:Lcom/baidu/launcher/network/http/HttpParam$Method;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/protocol/HttpServerUrl;->getBusinessUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "bind"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/protocol/Agent$5;-><init>(Ljava/lang/String;Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;Landroid/content/Context;Lcom/baidu/launcher/business/UserInfoManager$UserInfoCallBack;)V

    invoke-virtual {v0}, Lcom/baidu/launcher/protocol/Agent$5;->send()Z

    .line 219
    return-void
.end method

.method public static declared-synchronized getCommonQuestionData(Ljava/lang/String;Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;)V
    .locals 3
    .parameter "aUrl"
    .parameter "aCallback"

    .prologue
    .line 104
    const-class v1, Lcom/baidu/launcher/protocol/Agent;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/baidu/launcher/protocol/Agent$3;

    sget-object v2, Lcom/baidu/launcher/network/http/HttpParam$Method;->GET:Lcom/baidu/launcher/network/http/HttpParam$Method;

    invoke-direct {v0, v2, p0, p1}, Lcom/baidu/launcher/protocol/Agent$3;-><init>(Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;)V

    invoke-virtual {v0}, Lcom/baidu/launcher/protocol/Agent$3;->send()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit v1

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getResponceBody(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "aContext"
    .parameter "aResponce"

    .prologue
    const/4 v4, 0x0

    .line 325
    if-nez p1, :cond_0

    .line 345
    :goto_0
    return-object v4

    .line 329
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 330
    .local v1, jsonobject:Lorg/json/JSONObject;
    const-string v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 331
    .local v2, status:Ljava/lang/String;
    const-string v5, "1000"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 332
    const-string v5, "body"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 333
    :cond_1
    const-string v5, "1004"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 334
    new-instance v3, Lcom/baidu/launcher/business/UserInfoManager;

    invoke-direct {v3, p0}, Lcom/baidu/launcher/business/UserInfoManager;-><init>(Landroid/content/Context;)V

    .line 335
    .local v3, userinfoManager:Lcom/baidu/launcher/business/UserInfoManager;
    invoke-virtual {v3}, Lcom/baidu/launcher/business/UserInfoManager;->bindUserInfo()V

    .line 336
    sget-object v5, Lcom/baidu/launcher/protocol/Agent;->TAG:Ljava/lang/String;

    const-string v6, "getResponceBody status : HttpContant.STATUS_ERROR_NO_USER"

    invoke-static {v5, v6}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    .end local v1           #jsonobject:Lorg/json/JSONObject;
    .end local v2           #status:Ljava/lang/String;
    .end local v3           #userinfoManager:Lcom/baidu/launcher/business/UserInfoManager;
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 339
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #jsonobject:Lorg/json/JSONObject;
    .restart local v2       #status:Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v5, Lcom/baidu/launcher/protocol/Agent;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getResponceBody status :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getResponceBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "aResponce"

    .prologue
    const/4 v3, 0x0

    .line 306
    if-nez p0, :cond_0

    .line 321
    :goto_0
    return-object v3

    .line 310
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 311
    .local v1, jsonobject:Lorg/json/JSONObject;
    const-string v4, "status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 312
    .local v2, status:Ljava/lang/String;
    const-string v4, "1000"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    const-string v4, "body"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 315
    :cond_1
    sget-object v4, Lcom/baidu/launcher/protocol/Agent;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getResponceBody status :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    .end local v1           #jsonobject:Lorg/json/JSONObject;
    .end local v2           #status:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 319
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getResponceData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "aResponce"

    .prologue
    const/4 v3, 0x0

    .line 286
    if-nez p0, :cond_0

    .line 301
    :goto_0
    return-object v3

    .line 290
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 291
    .local v1, jsonobject:Lorg/json/JSONObject;
    const-string v4, "status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 292
    .local v2, status:Ljava/lang/String;
    const-string v4, "1000"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 293
    const-string v4, "data"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 295
    :cond_1
    sget-object v4, Lcom/baidu/launcher/protocol/Agent;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getResponceBody status :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/launcher/utils/LogEx;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    .end local v1           #jsonobject:Lorg/json/JSONObject;
    .end local v2           #status:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static postCheckUpdate(Lcom/baidu/launcher/update/CheckUpdatePostInfo;Lcom/baidu/launcher/update/UpdateManager$UpdateManagerCallback;)V
    .locals 4
    .parameter "aInfo"
    .parameter "aCallback"

    .prologue
    .line 222
    invoke-static {p0}, Lcom/baidu/launcher/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, postdata:Ljava/lang/String;
    new-instance v1, Lcom/baidu/launcher/protocol/Agent$6;

    sget-object v2, Lcom/baidu/launcher/network/http/HttpParam$Method;->POST:Lcom/baidu/launcher/network/http/HttpParam$Method;

    invoke-static {}, Lcom/baidu/launcher/protocol/HttpServerUrl;->getUpdateUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/baidu/launcher/protocol/Agent$6;-><init>(Ljava/lang/String;Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;Lcom/baidu/launcher/update/UpdateManager$UpdateManagerCallback;)V

    invoke-virtual {v1}, Lcom/baidu/launcher/protocol/Agent$6;->send()Z

    .line 253
    return-void
.end method

.method public static declared-synchronized postCommonQuestionUpdate(Lcom/baidu/launcher/feedback/CommonQuestionPostInfo;Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;)V
    .locals 6
    .parameter "aPostData"
    .parameter "aCallback"

    .prologue
    .line 56
    const-class v2, Lcom/baidu/launcher/protocol/Agent;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/baidu/launcher/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, postdata:Ljava/lang/String;
    sget-object v1, Lcom/baidu/launcher/protocol/Agent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postCommonQuestionUpdate postdata : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/baidu/launcher/utils/LogEx;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v1, Lcom/baidu/launcher/protocol/Agent$2;

    sget-object v3, Lcom/baidu/launcher/network/http/HttpParam$Method;->POST:Lcom/baidu/launcher/network/http/HttpParam$Method;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/protocol/HttpServerUrl;->getBusinessUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "qa"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v3, v4, p1}, Lcom/baidu/launcher/protocol/Agent$2;-><init>(Ljava/lang/String;Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;Lcom/baidu/launcher/feedback/CommonQuestionFragment$CommonQuestionCallback;)V

    invoke-virtual {v1}, Lcom/baidu/launcher/protocol/Agent$2;->send()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit v2

    return-void

    .line 56
    .end local v0           #postdata:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized postFeedBack(Lcom/baidu/launcher/feedback/FeedBackPostInfo;)V
    .locals 5
    .parameter "aPostData"

    .prologue
    .line 36
    const-class v2, Lcom/baidu/launcher/protocol/Agent;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/baidu/launcher/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, postdata:Ljava/lang/String;
    new-instance v1, Lcom/baidu/launcher/protocol/Agent$1;

    sget-object v3, Lcom/baidu/launcher/network/http/HttpParam$Method;->POST:Lcom/baidu/launcher/network/http/HttpParam$Method;

    invoke-static {}, Lcom/baidu/launcher/protocol/HttpServerUrl;->getFeedbackUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v3, v4}, Lcom/baidu/launcher/protocol/Agent$1;-><init>(Ljava/lang/String;Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/baidu/launcher/protocol/Agent$1;->send()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit v2

    return-void

    .line 36
    .end local v0           #postdata:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized postSyncData(Landroid/content/Context;Lcom/baidu/launcher/business/item/RecommendPostInfo;Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;)V
    .locals 7
    .parameter "aContext"
    .parameter "aPostData"
    .parameter "aCallback"

    .prologue
    .line 136
    const-class v6, Lcom/baidu/launcher/protocol/Agent;

    monitor-enter v6

    :try_start_0
    invoke-static {p1}, Lcom/baidu/launcher/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, postdata:Ljava/lang/String;
    sget-object v0, Lcom/baidu/launcher/protocol/Agent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "postSyncData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/baidu/launcher/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Lcom/baidu/launcher/protocol/Agent$4;

    sget-object v2, Lcom/baidu/launcher/network/http/HttpParam$Method;->POST:Lcom/baidu/launcher/network/http/HttpParam$Method;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/protocol/HttpServerUrl;->getBusinessUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/protocol/Agent$4;-><init>(Ljava/lang/String;Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;Landroid/content/Context;Lcom/baidu/launcher/business/BusinessSyncManager$BusinessManagerCallback;)V

    invoke-virtual {v0}, Lcom/baidu/launcher/protocol/Agent$4;->send()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit v6

    return-void

    .line 136
    .end local v1           #postdata:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static updateUserInfo(Landroid/content/Context;Lcom/baidu/launcher/business/item/PhoneInfo;Lcom/baidu/launcher/business/UserInfoManager$UserInfoCallBack;)V
    .locals 6
    .parameter "aContext"
    .parameter "aPostData"
    .parameter "aCallback"

    .prologue
    .line 256
    invoke-static {p1}, Lcom/baidu/launcher/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, postdata:Ljava/lang/String;
    sget-object v0, Lcom/baidu/launcher/protocol/Agent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUserInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/baidu/launcher/utils/JsonUtil;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance v0, Lcom/baidu/launcher/protocol/Agent$7;

    sget-object v2, Lcom/baidu/launcher/network/http/HttpParam$Method;->POST:Lcom/baidu/launcher/network/http/HttpParam$Method;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/protocol/HttpServerUrl;->getBusinessUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "userupdate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/protocol/Agent$7;-><init>(Ljava/lang/String;Lcom/baidu/launcher/network/http/HttpParam$Method;Ljava/lang/String;Landroid/content/Context;Lcom/baidu/launcher/business/UserInfoManager$UserInfoCallBack;)V

    invoke-virtual {v0}, Lcom/baidu/launcher/protocol/Agent$7;->send()Z

    .line 282
    return-void
.end method
