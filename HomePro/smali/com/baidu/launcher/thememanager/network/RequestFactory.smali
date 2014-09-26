.class public Lcom/baidu/launcher/thememanager/network/RequestFactory;
.super Ljava/lang/Object;
.source "RequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/network/RequestFactory$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static build(Lcom/baidu/launcher/thememanager/network/Request$RequestType;II)Lcom/baidu/launcher/thememanager/network/Request;
    .locals 4
    .parameter "rt"
    .parameter "curpage"
    .parameter "pagerows"

    .prologue
    .line 15
    new-instance v0, Lcom/baidu/launcher/thememanager/network/Request;

    invoke-direct {v0}, Lcom/baidu/launcher/thememanager/network/Request;-><init>()V

    .line 16
    .local v0, request:Lcom/baidu/launcher/thememanager/network/Request;
    invoke-virtual {v0, p0}, Lcom/baidu/launcher/thememanager/network/Request;->setReqType(Lcom/baidu/launcher/thememanager/network/Request$RequestType;)V

    .line 18
    sget-object v1, Lcom/baidu/launcher/thememanager/network/RequestFactory$1;->$SwitchMap$com$baidu$launcher$thememanager$network$Request$RequestType:[I

    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal request type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :pswitch_0
    const-string v1, "launcher/latests"

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/network/Request;->setPath(Ljava/lang/String;)V

    .line 21
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/network/Request;->setMethodType(Ljava/lang/String;)V

    .line 22
    const-string v1, "density"

    sget-object v2, Lcom/baidu/launcher/app/LauncherApplication;->densityString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/thememanager/network/Request;->addGetParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v1, "curPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/thememanager/network/Request;->addGetParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string v1, "pageRows"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/thememanager/network/Request;->addGetParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_0
    return-object v0

    .line 28
    :pswitch_1
    const-string v1, "launcher/hots"

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/network/Request;->setPath(Ljava/lang/String;)V

    .line 29
    const-string v1, "density"

    sget-object v2, Lcom/baidu/launcher/app/LauncherApplication;->densityString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/thememanager/network/Request;->addGetParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/network/Request;->setMethodType(Ljava/lang/String;)V

    .line 31
    const-string v1, "curPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/thememanager/network/Request;->addGetParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "pageRows"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/thememanager/network/Request;->addGetParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :pswitch_2
    const-string v1, "themeList"

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/network/Request;->setPath(Ljava/lang/String;)V

    .line 37
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/thememanager/network/Request;->setMethodType(Ljava/lang/String;)V

    .line 38
    const-string v1, "type"

    const-string v2, "201"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/thememanager/network/Request;->addGetParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v1, "order"

    const-string v2, "updtime"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/thememanager/network/Request;->addGetParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, "curPage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/thememanager/network/Request;->addGetParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "pageRows"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/thememanager/network/Request;->addGetParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 18
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static build(Lcom/baidu/launcher/thememanager/network/Request$RequestType;Ljava/lang/String;)Lcom/baidu/launcher/thememanager/network/Request;
    .locals 5
    .parameter "rt"
    .parameter "id"

    .prologue
    .line 52
    new-instance v1, Lcom/baidu/launcher/thememanager/network/Request;

    invoke-direct {v1}, Lcom/baidu/launcher/thememanager/network/Request;-><init>()V

    .line 53
    .local v1, request:Lcom/baidu/launcher/thememanager/network/Request;
    invoke-virtual {v1, p0}, Lcom/baidu/launcher/thememanager/network/Request;->setReqType(Lcom/baidu/launcher/thememanager/network/Request$RequestType;)V

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, component:Ljava/lang/String;
    sget-object v2, Lcom/baidu/launcher/thememanager/network/RequestFactory$1;->$SwitchMap$com$baidu$launcher$thememanager$network$Request$RequestType:[I

    invoke-virtual {p0}, Lcom/baidu/launcher/thememanager/network/Request$RequestType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 93
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal request type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :pswitch_1
    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/launcher/latests"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/network/Request;->setPath(Ljava/lang/String;)V

    .line 58
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/network/Request;->setMethodType(Ljava/lang/String;)V

    .line 95
    :goto_1
    return-object v1

    .line 57
    :cond_0
    const-string v2, "/launcher/latests"

    goto :goto_0

    .line 63
    :pswitch_2
    if-eqz p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/launcher/hots"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/network/Request;->setPath(Ljava/lang/String;)V

    .line 64
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/network/Request;->setMethodType(Ljava/lang/String;)V

    goto :goto_1

    .line 63
    :cond_1
    const-string v2, "/launcher/hots"

    goto :goto_2

    .line 68
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/preview/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/network/Request;->setPath(Ljava/lang/String;)V

    .line 69
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/network/Request;->setMethodType(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/download/preview/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/network/Request;->setPath(Ljava/lang/String;)V

    .line 74
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/network/Request;->setMethodType(Ljava/lang/String;)V

    goto :goto_1

    .line 79
    :pswitch_5
    invoke-virtual {v1, p1}, Lcom/baidu/launcher/thememanager/network/Request;->setPath(Ljava/lang/String;)V

    .line 81
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/network/Request;->setMethodType(Ljava/lang/String;)V

    goto :goto_1

    .line 86
    :pswitch_6
    invoke-virtual {v1, p1}, Lcom/baidu/launcher/thememanager/network/Request;->setUrl(Ljava/lang/String;)V

    .line 88
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Lcom/baidu/launcher/thememanager/network/Request;->setMethodType(Ljava/lang/String;)V

    goto :goto_1

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
