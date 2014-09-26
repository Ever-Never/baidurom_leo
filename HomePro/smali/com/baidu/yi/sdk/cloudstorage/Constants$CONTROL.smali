.class public final enum Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CONTROL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CANCEL:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

.field private static final synthetic ENUM$VALUES:[Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

.field public static final enum PAUSED:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

.field public static final enum RUN:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 252
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    const-string v1, "RUN"

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->RUN:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v3, v3}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->PAUSED:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v4, v4}, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->CANCEL:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    .line 251
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->RUN:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->PAUSED:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->CANCEL:Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->ENUM$VALUES:[Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 253
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 254
    iput p3, p0, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->value:I

    .line 255
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    return-object v0
.end method

.method public static values()[Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->ENUM$VALUES:[Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    array-length v1, v0

    new-array v2, v1, [Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;->value:I

    return v0
.end method
