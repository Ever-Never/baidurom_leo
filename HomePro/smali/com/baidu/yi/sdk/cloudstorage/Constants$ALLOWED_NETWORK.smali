.class public final enum Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ALLOWED_NETWORK"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ANY:Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;

.field private static final synthetic ENUM$VALUES:[Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;

.field public static final enum WIFI_ONLY:Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 238
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;

    const-string v1, "ANY"

    invoke-direct {v0, v1, v3, v2}, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;->ANY:Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;

    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;

    const-string v1, "WIFI_ONLY"

    invoke-direct {v0, v1, v2, v4}, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;->WIFI_ONLY:Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;

    .line 237
    new-array v0, v4, [Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;->ANY:Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;->WIFI_ONLY:Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;

    aput-object v1, v0, v2

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;->ENUM$VALUES:[Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 239
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 240
    iput p3, p0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;->value:I

    .line 241
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;

    return-object v0
.end method

.method public static values()[Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;->ENUM$VALUES:[Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;

    array-length v1, v0

    new-array v2, v1, [Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;->value:I

    return v0
.end method
