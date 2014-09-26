.class public final enum Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;
.super Ljava/lang/Enum;
.source "CompatibleAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/flyshare/lru/CompatibleAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

.field public static final enum FINISHED:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

.field public static final enum PENDING:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

.field public static final enum RUNNING:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 284
    new-instance v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;->PENDING:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    .line 288
    new-instance v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;->RUNNING:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    .line 293
    new-instance v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;->FINISHED:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    .line 280
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    sget-object v1, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;->PENDING:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;->RUNNING:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;->FINISHED:Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;->ENUM$VALUES:[Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    return-object v0
.end method

.method public static values()[Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;->ENUM$VALUES:[Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    array-length v1, v0

    new-array v2, v1, [Lcom/inveno/flyshare/lru/CompatibleAsyncTask$Status;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
