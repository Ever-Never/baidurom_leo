.class public final enum Lcom/baidu/bulletin/utils/MusicPlayer$State;
.super Ljava/lang/Enum;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/bulletin/utils/MusicPlayer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/bulletin/utils/MusicPlayer$State;

.field public static final enum Idle:Lcom/baidu/bulletin/utils/MusicPlayer$State;

.field public static final enum Paused:Lcom/baidu/bulletin/utils/MusicPlayer$State;

.field public static final enum Playing:Lcom/baidu/bulletin/utils/MusicPlayer$State;

.field public static final enum Stopped:Lcom/baidu/bulletin/utils/MusicPlayer$State;

.field public static final enum Waiting:Lcom/baidu/bulletin/utils/MusicPlayer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;

    const-string v1, "Playing"

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/utils/MusicPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Playing:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    .line 79
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;

    const-string v1, "Paused"

    invoke-direct {v0, v1, v3}, Lcom/baidu/bulletin/utils/MusicPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Paused:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    .line 80
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;

    const-string v1, "Waiting"

    invoke-direct {v0, v1, v4}, Lcom/baidu/bulletin/utils/MusicPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Waiting:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    .line 81
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;

    const-string v1, "Stopped"

    invoke-direct {v0, v1, v5}, Lcom/baidu/bulletin/utils/MusicPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Stopped:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    .line 82
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;

    const-string v1, "Idle"

    invoke-direct {v0, v1, v6}, Lcom/baidu/bulletin/utils/MusicPlayer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Idle:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    .line 77
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/baidu/bulletin/utils/MusicPlayer$State;

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Playing:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Paused:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Waiting:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Stopped:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$State;->Idle:Lcom/baidu/bulletin/utils/MusicPlayer$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->$VALUES:[Lcom/baidu/bulletin/utils/MusicPlayer$State;

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
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/bulletin/utils/MusicPlayer$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 77
    const-class v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;

    return-object v0
.end method

.method public static values()[Lcom/baidu/bulletin/utils/MusicPlayer$State;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$State;->$VALUES:[Lcom/baidu/bulletin/utils/MusicPlayer$State;

    invoke-virtual {v0}, [Lcom/baidu/bulletin/utils/MusicPlayer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bulletin/utils/MusicPlayer$State;

    return-object v0
.end method
