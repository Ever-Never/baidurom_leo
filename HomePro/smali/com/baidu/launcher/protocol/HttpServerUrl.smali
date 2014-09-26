.class public Lcom/baidu/launcher/protocol/HttpServerUrl;
.super Ljava/lang/Object;
.source "HttpServerUrl.java"


# static fields
.field public static final BIND_USER_INFO:Ljava/lang/String; = "bind"

.field public static final COMMON_QUESTION_UPDATE:Ljava/lang/String; = "qa"

.field public static final FEEDBACK_URL:Ljava/lang/String; = "http://os.baidu.com/feedback/send2"

.field public static final STATUS_ERROR_CONTENT:Ljava/lang/String; = "1001"

.field public static final STATUS_ERROR_JSON_FORMAT:Ljava/lang/String; = "1002"

.field public static final STATUS_ERROR_NO_RESPONSE_TYPE:Ljava/lang/String; = "1003"

.field public static final STATUS_ERROR_NO_USER:Ljava/lang/String; = "1004"

.field public static final STATUS_ERROR_SERVER:Ljava/lang/String; = "1005"

.field public static final STATUS_ERROR_UPLOAD_FILE:Ljava/lang/String; = "1006"

.field public static final STATUS_SUCCEED:Ljava/lang/String; = "1000"

.field public static final SYNC_RECOMMEND_DATA:Ljava/lang/String; = "list"

.field public static final UPDATE_SERVER_URL:Ljava/lang/String; = "http://cloud.os.baidu.com/cloud/launcher/upgrade"

.field public static final UPDATE_USER_INFO:Ljava/lang/String; = "userupdate"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBusinessUrl()Ljava/lang/String;
    .locals 9

    .prologue
    .line 28
    const-string v3, "https://cloud.os.baidu.com/launcher/mb/"

    .line 30
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 32
    .local v0, classType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 35
    .local v2, getMethod:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "com.baidu.launcher.business_url"

    aput-object v7, v5, v6

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 38
    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 39
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 46
    .end local v0           #classType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #getMethod:Ljava/lang/reflect/Method;
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v5, "HttpUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "business url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/launcher/utils/LogEx;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-object v3

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "HttpUtil"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getFeedbackUrl()Ljava/lang/String;
    .locals 9

    .prologue
    .line 74
    const-string v3, "http://os.baidu.com/feedback/send2"

    .line 76
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 78
    .local v0, classType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 81
    .local v2, getMethod:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "com.baidu.launcher.feedback_url"

    aput-object v7, v5, v6

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 84
    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 85
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 92
    .end local v0           #classType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #getMethod:Ljava/lang/reflect/Method;
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v5, "HttpUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "feedback url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/launcher/utils/LogEx;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-object v3

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "HttpUtil"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getUpdateUrl()Ljava/lang/String;
    .locals 9

    .prologue
    .line 51
    const-string v3, "http://cloud.os.baidu.com/cloud/launcher/upgrade"

    .line 53
    .local v3, url:Ljava/lang/String;
    :try_start_0
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 55
    .local v0, classType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "get"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 58
    .local v2, getMethod:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "com.baidu.launcher.update_url"

    aput-object v7, v5, v6

    invoke-virtual {v2, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 61
    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 62
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 69
    .end local v0           #classType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #getMethod:Ljava/lang/reflect/Method;
    .end local v4           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v5, "HttpUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/launcher/utils/LogEx;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-object v3

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "HttpUtil"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
