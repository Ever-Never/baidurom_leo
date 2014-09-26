.class public Lcom/baidu/launcher/thememanager/network/Response;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/thememanager/network/Response$Result;
    }
.end annotation


# static fields
.field public static final APP_NOT_FOUND:I = 0x6

.field public static final FILE_NOT_FOUND:I = 0x5

.field public static final GOODS_ALREADY_PAID:I = 0x8

.field public static final GOODS_FEE_TYPE_UNALLOQED:I = 0x9

.field public static final GOODS_NOT_DOWNLOADED:I = 0xb

.field public static final GOODS_NOT_FOUND:I = 0x7

.field public static final GOODS_WRONG_FEE:I = 0xa

.field public static final NOT_LOGIN_YET:I = 0x3

.field public static final NOT_PAY_YET:I = 0x4

.field public static final RESPONSE_JSON_EXCEPTION:I = -0x1

.field public static final RESPONSE_PARAMETER_ERROR:I = 0x1

.field public static final RESPONSE_SERVER_ERROR:I = 0x2

.field public static final RESPONSE_SUCCESS:I


# instance fields
.field public mData:[B

.field public mDataSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/thememanager/model/AbsDataItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRawContent:Ljava/lang/String;

.field public mRequest:Lcom/baidu/launcher/thememanager/network/Request;

.field private mRequestType:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

.field public mResult:Lcom/baidu/launcher/thememanager/network/Response$Result;

.field public mStoken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/thememanager/network/Request$RequestType;)V
    .locals 2
    .parameter "requesttype"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/network/Response;->mRawContent:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/network/Response;->mStoken:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/network/Response;->mDataSet:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/network/Response;->mRequestType:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    .line 48
    new-instance v0, Lcom/baidu/launcher/thememanager/network/Response$Result;

    invoke-direct {v0, p0}, Lcom/baidu/launcher/thememanager/network/Response$Result;-><init>(Lcom/baidu/launcher/thememanager/network/Response;)V

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/network/Response;->mResult:Lcom/baidu/launcher/thememanager/network/Response$Result;

    .line 49
    iput-object v1, p0, Lcom/baidu/launcher/thememanager/network/Response;->mDataSet:Ljava/util/List;

    .line 50
    return-void
.end method

.method public static parse([BLcom/baidu/launcher/thememanager/network/Request;)Lcom/baidu/launcher/thememanager/network/Response;
    .locals 4
    .parameter "data"
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v1, Lcom/baidu/launcher/thememanager/network/Response;

    iget-object v2, p1, Lcom/baidu/launcher/thememanager/network/Request;->mRequestType:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    invoke-direct {v1, v2}, Lcom/baidu/launcher/thememanager/network/Response;-><init>(Lcom/baidu/launcher/thememanager/network/Request$RequestType;)V

    .line 54
    .local v1, r:Lcom/baidu/launcher/thememanager/network/Response;
    iput-object p1, v1, Lcom/baidu/launcher/thememanager/network/Response;->mRequest:Lcom/baidu/launcher/thememanager/network/Request;

    .line 63
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, v1, Lcom/baidu/launcher/thememanager/network/Response;->mRawContent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/network/JSONParser;->parseResponse(Lcom/baidu/launcher/thememanager/network/Response;)V

    .line 70
    return-object v1

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dump()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/network/Response;->mRawContent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 92
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/network/Response;->mRawContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method public getRawContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/network/Response;->mRawContent:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestType()Lcom/baidu/launcher/thememanager/network/Request$RequestType;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/network/Response;->mRequestType:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    return-object v0
.end method

.method public setRawContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/network/Response;->mRawContent:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setRequestType(Lcom/baidu/launcher/thememanager/network/Request$RequestType;)V
    .locals 0
    .parameter "request_type"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/network/Response;->mRequestType:Lcom/baidu/launcher/thememanager/network/Request$RequestType;

    .line 88
    return-void
.end method
