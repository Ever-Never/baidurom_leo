.class public Lcom/inveno/newpiflow/model/Result;
.super Ljava/lang/Object;
.source "Result.java"


# static fields
.field private static final ERROR:Ljava/lang/String; = "errno"

.field public static final RETURN_CODE_200:Ljava/lang/String; = "200"

.field public static final RETURN_CODE_DEFAULT:I


# instance fields
.field private code:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/inveno/newpiflow/model/Result;->code:I

    .line 15
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/inveno/newpiflow/model/Result;
    .locals 3
    .parameter "jsonStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, result:Lcom/inveno/newpiflow/model/Result;
    invoke-static {p0}, Lcom/inveno/flyshare/utils/StringTools;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    new-instance v1, Lcom/inveno/newpiflow/model/Result;

    .end local v1           #result:Lcom/inveno/newpiflow/model/Result;
    invoke-direct {v1}, Lcom/inveno/newpiflow/model/Result;-><init>()V

    .line 40
    .restart local v1       #result:Lcom/inveno/newpiflow/model/Result;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, jsonObject:Lorg/json/JSONObject;
    const-string v2, "errno"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const-string v2, "errno"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/inveno/newpiflow/model/Result;->setCode(I)V

    .line 47
    .end local v0           #jsonObject:Lorg/json/JSONObject;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/inveno/newpiflow/model/Result;->code:I

    return v0
.end method

.method public setCode(I)V
    .locals 0
    .parameter "code"

    .prologue
    .line 55
    iput p1, p0, Lcom/inveno/newpiflow/model/Result;->code:I

    .line 56
    return-void
.end method
