.class public final enum Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOWNLOAD:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

.field private static final synthetic ENUM$VALUES:[Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

.field public static final enum OFFLINE:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

.field public static final enum OFFLINEINFO:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

.field public static final enum UPLOAD:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 207
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    const-string v1, "UPLOAD"

    invoke-direct {v0, v1, v5, v2}, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->UPLOAD:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->DOWNLOAD:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    const-string v1, "OFFLINE"

    invoke-direct {v0, v1, v3, v4}, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->OFFLINE:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    const-string v1, "OFFLINEINFO"

    invoke-direct {v0, v1, v4, v6}, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->OFFLINEINFO:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    .line 206
    new-array v0, v6, [Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->UPLOAD:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->DOWNLOAD:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->OFFLINE:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->OFFLINEINFO:Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->ENUM$VALUES:[Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 210
    iput p3, p0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->value:I

    .line 211
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    return-object v0
.end method

.method public static values()[Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->ENUM$VALUES:[Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    array-length v1, v0

    new-array v2, v1, [Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;->value:I

    return v0
.end method
