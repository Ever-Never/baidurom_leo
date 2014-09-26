.class public final enum Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NOTIFY_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;

.field public static final enum NOTIFIED:Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;

.field public static final enum UN_NOTIFIED:Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 221
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;

    const-string v1, "UN_NOTIFIED"

    invoke-direct {v0, v1, v3, v2}, Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;->UN_NOTIFIED:Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;

    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;

    const-string v1, "NOTIFIED"

    invoke-direct {v0, v1, v2, v4}, Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;->NOTIFIED:Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;

    .line 220
    new-array v0, v4, [Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;->UN_NOTIFIED:Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;->NOTIFIED:Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;

    aput-object v1, v0, v2

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;->ENUM$VALUES:[Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 224
    iput p3, p0, Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;->value:I

    .line 225
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;

    return-object v0
.end method

.method public static values()[Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;->ENUM$VALUES:[Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;

    array-length v1, v0

    new-array v2, v1, [Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;->value:I

    return v0
.end method
