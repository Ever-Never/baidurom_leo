.class public final enum Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VISIBILITY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

.field public static final enum HIDDEN:Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

.field public static final enum VISIBLE:Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

.field public static final enum VISIBLE_NOTIFY_COMPLETED:Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

    const-string v1, "VISIBLE"

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;->VISIBLE:Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

    const-string v1, "VISIBLE_NOTIFY_COMPLETED"

    invoke-direct {v0, v1, v3, v3}, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;->VISIBLE_NOTIFY_COMPLETED:Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v4, v4}, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;->HIDDEN:Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

    .line 192
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;->VISIBLE:Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;->VISIBLE_NOTIFY_COMPLETED:Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;->HIDDEN:Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;->ENUM$VALUES:[Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 196
    iput p3, p0, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;->value:I

    .line 197
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

    return-object v0
.end method

.method public static values()[Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;->ENUM$VALUES:[Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

    array-length v1, v0

    new-array v2, v1, [Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;->value:I

    return v0
.end method
