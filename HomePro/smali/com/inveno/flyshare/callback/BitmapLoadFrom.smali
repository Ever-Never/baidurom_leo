.class public final enum Lcom/inveno/flyshare/callback/BitmapLoadFrom;
.super Ljava/lang/Enum;
.source "BitmapLoadFrom.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inveno/flyshare/callback/BitmapLoadFrom;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISK_CACHE:Lcom/inveno/flyshare/callback/BitmapLoadFrom;

.field private static final synthetic ENUM$VALUES:[Lcom/inveno/flyshare/callback/BitmapLoadFrom;

.field public static final enum MEMORY_CACHE:Lcom/inveno/flyshare/callback/BitmapLoadFrom;

.field public static final enum URL:Lcom/inveno/flyshare/callback/BitmapLoadFrom;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/inveno/flyshare/callback/BitmapLoadFrom;

    const-string v1, "MEMORY_CACHE"

    invoke-direct {v0, v1, v2}, Lcom/inveno/flyshare/callback/BitmapLoadFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inveno/flyshare/callback/BitmapLoadFrom;->MEMORY_CACHE:Lcom/inveno/flyshare/callback/BitmapLoadFrom;

    new-instance v0, Lcom/inveno/flyshare/callback/BitmapLoadFrom;

    const-string v1, "DISK_CACHE"

    invoke-direct {v0, v1, v3}, Lcom/inveno/flyshare/callback/BitmapLoadFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inveno/flyshare/callback/BitmapLoadFrom;->DISK_CACHE:Lcom/inveno/flyshare/callback/BitmapLoadFrom;

    new-instance v0, Lcom/inveno/flyshare/callback/BitmapLoadFrom;

    const-string v1, "URL"

    invoke-direct {v0, v1, v4}, Lcom/inveno/flyshare/callback/BitmapLoadFrom;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inveno/flyshare/callback/BitmapLoadFrom;->URL:Lcom/inveno/flyshare/callback/BitmapLoadFrom;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inveno/flyshare/callback/BitmapLoadFrom;

    sget-object v1, Lcom/inveno/flyshare/callback/BitmapLoadFrom;->MEMORY_CACHE:Lcom/inveno/flyshare/callback/BitmapLoadFrom;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inveno/flyshare/callback/BitmapLoadFrom;->DISK_CACHE:Lcom/inveno/flyshare/callback/BitmapLoadFrom;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inveno/flyshare/callback/BitmapLoadFrom;->URL:Lcom/inveno/flyshare/callback/BitmapLoadFrom;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inveno/flyshare/callback/BitmapLoadFrom;->ENUM$VALUES:[Lcom/inveno/flyshare/callback/BitmapLoadFrom;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inveno/flyshare/callback/BitmapLoadFrom;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/inveno/flyshare/callback/BitmapLoadFrom;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inveno/flyshare/callback/BitmapLoadFrom;

    return-object v0
.end method

.method public static values()[Lcom/inveno/flyshare/callback/BitmapLoadFrom;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/inveno/flyshare/callback/BitmapLoadFrom;->ENUM$VALUES:[Lcom/inveno/flyshare/callback/BitmapLoadFrom;

    array-length v1, v0

    new-array v2, v1, [Lcom/inveno/flyshare/callback/BitmapLoadFrom;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
