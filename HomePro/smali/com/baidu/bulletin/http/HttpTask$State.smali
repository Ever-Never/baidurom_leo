.class public final enum Lcom/baidu/bulletin/http/HttpTask$State;
.super Ljava/lang/Enum;
.source "HttpTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/http/HttpTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/bulletin/http/HttpTask$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/bulletin/http/HttpTask$State;

.field public static final enum Canceled:Lcom/baidu/bulletin/http/HttpTask$State;

.field public static final enum Failed:Lcom/baidu/bulletin/http/HttpTask$State;

.field public static final enum Finished:Lcom/baidu/bulletin/http/HttpTask$State;

.field public static final enum Idel:Lcom/baidu/bulletin/http/HttpTask$State;

.field public static final enum Receiving:Lcom/baidu/bulletin/http/HttpTask$State;

.field public static final enum Sending:Lcom/baidu/bulletin/http/HttpTask$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/baidu/bulletin/http/HttpTask$State;

    const-string v1, "Idel"

    invoke-direct {v0, v1, v3}, Lcom/baidu/bulletin/http/HttpTask$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/http/HttpTask$State;->Idel:Lcom/baidu/bulletin/http/HttpTask$State;

    .line 10
    new-instance v0, Lcom/baidu/bulletin/http/HttpTask$State;

    const-string v1, "Sending"

    invoke-direct {v0, v1, v4}, Lcom/baidu/bulletin/http/HttpTask$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/http/HttpTask$State;->Sending:Lcom/baidu/bulletin/http/HttpTask$State;

    .line 11
    new-instance v0, Lcom/baidu/bulletin/http/HttpTask$State;

    const-string v1, "Receiving"

    invoke-direct {v0, v1, v5}, Lcom/baidu/bulletin/http/HttpTask$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/http/HttpTask$State;->Receiving:Lcom/baidu/bulletin/http/HttpTask$State;

    .line 12
    new-instance v0, Lcom/baidu/bulletin/http/HttpTask$State;

    const-string v1, "Finished"

    invoke-direct {v0, v1, v6}, Lcom/baidu/bulletin/http/HttpTask$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/http/HttpTask$State;->Finished:Lcom/baidu/bulletin/http/HttpTask$State;

    .line 13
    new-instance v0, Lcom/baidu/bulletin/http/HttpTask$State;

    const-string v1, "Failed"

    invoke-direct {v0, v1, v7}, Lcom/baidu/bulletin/http/HttpTask$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/http/HttpTask$State;->Failed:Lcom/baidu/bulletin/http/HttpTask$State;

    .line 14
    new-instance v0, Lcom/baidu/bulletin/http/HttpTask$State;

    const-string v1, "Canceled"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/http/HttpTask$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/http/HttpTask$State;->Canceled:Lcom/baidu/bulletin/http/HttpTask$State;

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/baidu/bulletin/http/HttpTask$State;

    sget-object v1, Lcom/baidu/bulletin/http/HttpTask$State;->Idel:Lcom/baidu/bulletin/http/HttpTask$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/bulletin/http/HttpTask$State;->Sending:Lcom/baidu/bulletin/http/HttpTask$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/bulletin/http/HttpTask$State;->Receiving:Lcom/baidu/bulletin/http/HttpTask$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/bulletin/http/HttpTask$State;->Finished:Lcom/baidu/bulletin/http/HttpTask$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/bulletin/http/HttpTask$State;->Failed:Lcom/baidu/bulletin/http/HttpTask$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/bulletin/http/HttpTask$State;->Canceled:Lcom/baidu/bulletin/http/HttpTask$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/bulletin/http/HttpTask$State;->$VALUES:[Lcom/baidu/bulletin/http/HttpTask$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/bulletin/http/HttpTask$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 8
    const-class v0, Lcom/baidu/bulletin/http/HttpTask$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/http/HttpTask$State;

    return-object v0
.end method

.method public static values()[Lcom/baidu/bulletin/http/HttpTask$State;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/baidu/bulletin/http/HttpTask$State;->$VALUES:[Lcom/baidu/bulletin/http/HttpTask$State;

    invoke-virtual {v0}, [Lcom/baidu/bulletin/http/HttpTask$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bulletin/http/HttpTask$State;

    return-object v0
.end method
