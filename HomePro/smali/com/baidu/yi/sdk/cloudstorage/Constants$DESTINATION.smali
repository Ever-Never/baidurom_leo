.class public final enum Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DESTINATION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CACHE_PARTITION:Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

.field public static final enum CACHE_PARTITION_NOROAMING:Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

.field public static final enum CACHE_PARTITION_PURGEABLE:Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

.field private static final synthetic ENUM$VALUES:[Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

.field public static final enum EXTERNAL:Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    const-string v1, "EXTERNAL"

    .line 156
    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;->EXTERNAL:Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    .line 157
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    const-string v1, "CACHE_PARTITION"

    .line 166
    invoke-direct {v0, v1, v3, v3}, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;->CACHE_PARTITION:Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    .line 167
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    const-string v1, "CACHE_PARTITION_PURGEABLE"

    .line 174
    invoke-direct {v0, v1, v4, v4}, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;->CACHE_PARTITION_PURGEABLE:Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    .line 175
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    const-string v1, "CACHE_PARTITION_NOROAMING"

    .line 180
    invoke-direct {v0, v1, v5, v5}, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;->CACHE_PARTITION_NOROAMING:Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    .line 146
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;->EXTERNAL:Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;->CACHE_PARTITION:Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;->CACHE_PARTITION_PURGEABLE:Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;->CACHE_PARTITION_NOROAMING:Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;->ENUM$VALUES:[Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 181
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 182
    iput p3, p0, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;->value:I

    .line 183
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    return-object v0
.end method

.method public static values()[Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;->ENUM$VALUES:[Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    array-length v1, v0

    new-array v2, v1, [Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;->value:I

    return v0
.end method
