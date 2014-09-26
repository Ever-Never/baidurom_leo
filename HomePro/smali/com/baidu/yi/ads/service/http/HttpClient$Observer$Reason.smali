.class public final enum Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;
.super Ljava/lang/Enum;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/service/http/HttpClient$Observer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Canceled:Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

.field private static final synthetic ENUM$VALUES:[Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

.field public static final enum Failed:Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

.field public static final enum Success:Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    const-string v1, "Success"

    invoke-direct {v0, v1, v2}, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;->Success:Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    .line 50
    new-instance v0, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    const-string v1, "Failed"

    invoke-direct {v0, v1, v3}, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;->Failed:Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    .line 51
    new-instance v0, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    const-string v1, "Canceled"

    invoke-direct {v0, v1, v4}, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;->Canceled:Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    sget-object v1, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;->Success:Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;->Failed:Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;->Canceled:Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;->ENUM$VALUES:[Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    return-object v0
.end method

.method public static values()[Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;->ENUM$VALUES:[Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    array-length v1, v0

    new-array v2, v1, [Lcom/baidu/yi/ads/service/http/HttpClient$Observer$Reason;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
