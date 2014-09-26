.class public final enum Lcom/baidu/yi/ads/service/http/HttpParam$Method;
.super Ljava/lang/Enum;
.source "HttpParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/service/http/HttpParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/yi/ads/service/http/HttpParam$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/baidu/yi/ads/service/http/HttpParam$Method;

.field public static final enum GET:Lcom/baidu/yi/ads/service/http/HttpParam$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/baidu/yi/ads/service/http/HttpParam$Method;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/baidu/yi/ads/service/http/HttpParam$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/yi/ads/service/http/HttpParam$Method;->GET:Lcom/baidu/yi/ads/service/http/HttpParam$Method;

    .line 13
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/baidu/yi/ads/service/http/HttpParam$Method;

    sget-object v1, Lcom/baidu/yi/ads/service/http/HttpParam$Method;->GET:Lcom/baidu/yi/ads/service/http/HttpParam$Method;

    aput-object v1, v0, v2

    sput-object v0, Lcom/baidu/yi/ads/service/http/HttpParam$Method;->ENUM$VALUES:[Lcom/baidu/yi/ads/service/http/HttpParam$Method;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/yi/ads/service/http/HttpParam$Method;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/baidu/yi/ads/service/http/HttpParam$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/yi/ads/service/http/HttpParam$Method;

    return-object v0
.end method

.method public static values()[Lcom/baidu/yi/ads/service/http/HttpParam$Method;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/baidu/yi/ads/service/http/HttpParam$Method;->ENUM$VALUES:[Lcom/baidu/yi/ads/service/http/HttpParam$Method;

    array-length v1, v0

    new-array v2, v1, [Lcom/baidu/yi/ads/service/http/HttpParam$Method;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
