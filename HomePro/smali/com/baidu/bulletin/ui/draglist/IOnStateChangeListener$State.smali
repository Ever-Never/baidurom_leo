.class public final enum Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
.super Ljava/lang/Enum;
.source "IOnStateChangeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

.field public static final enum FREE:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

.field public static final enum FREE_DOWN:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

.field public static final enum FREE_DOWN_ONGOING:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

.field public static final enum FREE_UP:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

.field public static final enum FREE_UP_ONGOING:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

.field public static final enum IDEL:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

.field public static final enum PULL_DOWN:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

.field public static final enum PULL_DOWN_ONGOING:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

.field public static final enum PULL_DOWN_PREPEAR:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

.field public static final enum REFRESH:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

.field public static final enum TURNING_POINT:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

.field public static final enum TURNING_POINT_ONGOING:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    const-string v1, "IDEL"

    invoke-direct {v0, v1, v3}, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->IDEL:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 13
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    const-string v1, "PULL_DOWN_PREPEAR"

    invoke-direct {v0, v1, v4}, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->PULL_DOWN_PREPEAR:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 16
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    const-string v1, "PULL_DOWN"

    invoke-direct {v0, v1, v5}, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->PULL_DOWN:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 19
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    const-string v1, "PULL_DOWN_ONGOING"

    invoke-direct {v0, v1, v6}, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->PULL_DOWN_ONGOING:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 22
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    const-string v1, "TURNING_POINT"

    invoke-direct {v0, v1, v7}, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->TURNING_POINT:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 25
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    const-string v1, "TURNING_POINT_ONGOING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->TURNING_POINT_ONGOING:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 28
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    const-string v1, "REFRESH"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->REFRESH:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 30
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    const-string v1, "FREE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->FREE:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 32
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    const-string v1, "FREE_DOWN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->FREE_DOWN:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 33
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    const-string v1, "FREE_DOWN_ONGOING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->FREE_DOWN_ONGOING:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 35
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    const-string v1, "FREE_UP"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->FREE_UP:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 36
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    const-string v1, "FREE_UP_ONGOING"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->FREE_UP_ONGOING:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    .line 8
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->IDEL:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->PULL_DOWN_PREPEAR:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->PULL_DOWN:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->PULL_DOWN_ONGOING:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->TURNING_POINT:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->TURNING_POINT_ONGOING:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->REFRESH:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->FREE:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->FREE_DOWN:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->FREE_DOWN_ONGOING:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->FREE_UP:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->FREE_UP_ONGOING:Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->$VALUES:[Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 8
    const-class v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    return-object v0
.end method

.method public static values()[Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->$VALUES:[Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    invoke-virtual {v0}, [Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bulletin/ui/draglist/IOnStateChangeListener$State;

    return-object v0
.end method
