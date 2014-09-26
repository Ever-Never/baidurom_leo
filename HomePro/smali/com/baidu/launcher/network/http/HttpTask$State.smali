.class public final enum Lcom/baidu/launcher/network/http/HttpTask$State;
.super Ljava/lang/Enum;
.source "HttpTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/network/http/HttpTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/launcher/network/http/HttpTask$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/launcher/network/http/HttpTask$State;

.field public static final enum Cancelled:Lcom/baidu/launcher/network/http/HttpTask$State;

.field public static final enum Failed:Lcom/baidu/launcher/network/http/HttpTask$State;

.field public static final enum Finished:Lcom/baidu/launcher/network/http/HttpTask$State;

.field public static final enum Idle:Lcom/baidu/launcher/network/http/HttpTask$State;

.field public static final enum Receiving:Lcom/baidu/launcher/network/http/HttpTask$State;

.field public static final enum Sending:Lcom/baidu/launcher/network/http/HttpTask$State;

.field public static final enum Start:Lcom/baidu/launcher/network/http/HttpTask$State;

.field public static final enum StartReceive:Lcom/baidu/launcher/network/http/HttpTask$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/baidu/launcher/network/http/HttpTask$State;

    const-string v1, "Idle"

    invoke-direct {v0, v1, v3}, Lcom/baidu/launcher/network/http/HttpTask$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/launcher/network/http/HttpTask$State;->Idle:Lcom/baidu/launcher/network/http/HttpTask$State;

    .line 18
    new-instance v0, Lcom/baidu/launcher/network/http/HttpTask$State;

    const-string v1, "Start"

    invoke-direct {v0, v1, v4}, Lcom/baidu/launcher/network/http/HttpTask$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/launcher/network/http/HttpTask$State;->Start:Lcom/baidu/launcher/network/http/HttpTask$State;

    .line 19
    new-instance v0, Lcom/baidu/launcher/network/http/HttpTask$State;

    const-string v1, "Sending"

    invoke-direct {v0, v1, v5}, Lcom/baidu/launcher/network/http/HttpTask$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/launcher/network/http/HttpTask$State;->Sending:Lcom/baidu/launcher/network/http/HttpTask$State;

    .line 20
    new-instance v0, Lcom/baidu/launcher/network/http/HttpTask$State;

    const-string v1, "StartReceive"

    invoke-direct {v0, v1, v6}, Lcom/baidu/launcher/network/http/HttpTask$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/launcher/network/http/HttpTask$State;->StartReceive:Lcom/baidu/launcher/network/http/HttpTask$State;

    .line 21
    new-instance v0, Lcom/baidu/launcher/network/http/HttpTask$State;

    const-string v1, "Receiving"

    invoke-direct {v0, v1, v7}, Lcom/baidu/launcher/network/http/HttpTask$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/launcher/network/http/HttpTask$State;->Receiving:Lcom/baidu/launcher/network/http/HttpTask$State;

    .line 22
    new-instance v0, Lcom/baidu/launcher/network/http/HttpTask$State;

    const-string v1, "Finished"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/network/http/HttpTask$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/launcher/network/http/HttpTask$State;->Finished:Lcom/baidu/launcher/network/http/HttpTask$State;

    .line 23
    new-instance v0, Lcom/baidu/launcher/network/http/HttpTask$State;

    const-string v1, "Failed"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/network/http/HttpTask$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/launcher/network/http/HttpTask$State;->Failed:Lcom/baidu/launcher/network/http/HttpTask$State;

    .line 24
    new-instance v0, Lcom/baidu/launcher/network/http/HttpTask$State;

    const-string v1, "Cancelled"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/network/http/HttpTask$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/launcher/network/http/HttpTask$State;->Cancelled:Lcom/baidu/launcher/network/http/HttpTask$State;

    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/baidu/launcher/network/http/HttpTask$State;

    sget-object v1, Lcom/baidu/launcher/network/http/HttpTask$State;->Idle:Lcom/baidu/launcher/network/http/HttpTask$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/launcher/network/http/HttpTask$State;->Start:Lcom/baidu/launcher/network/http/HttpTask$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/launcher/network/http/HttpTask$State;->Sending:Lcom/baidu/launcher/network/http/HttpTask$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/launcher/network/http/HttpTask$State;->StartReceive:Lcom/baidu/launcher/network/http/HttpTask$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/launcher/network/http/HttpTask$State;->Receiving:Lcom/baidu/launcher/network/http/HttpTask$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/launcher/network/http/HttpTask$State;->Finished:Lcom/baidu/launcher/network/http/HttpTask$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/launcher/network/http/HttpTask$State;->Failed:Lcom/baidu/launcher/network/http/HttpTask$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/baidu/launcher/network/http/HttpTask$State;->Cancelled:Lcom/baidu/launcher/network/http/HttpTask$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/launcher/network/http/HttpTask$State;->$VALUES:[Lcom/baidu/launcher/network/http/HttpTask$State;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/launcher/network/http/HttpTask$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 16
    const-class v0, Lcom/baidu/launcher/network/http/HttpTask$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/network/http/HttpTask$State;

    return-object v0
.end method

.method public static values()[Lcom/baidu/launcher/network/http/HttpTask$State;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/baidu/launcher/network/http/HttpTask$State;->$VALUES:[Lcom/baidu/launcher/network/http/HttpTask$State;

    invoke-virtual {v0}, [Lcom/baidu/launcher/network/http/HttpTask$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/launcher/network/http/HttpTask$State;

    return-object v0
.end method
