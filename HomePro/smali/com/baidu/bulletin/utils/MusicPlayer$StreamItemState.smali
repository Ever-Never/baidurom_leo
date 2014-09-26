.class final enum Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;
.super Ljava/lang/Enum;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamItemState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

.field public static final enum FiledownloadFinished:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

.field public static final enum Filedownloadcalled:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

.field public static final enum Idle:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

.field public static final enum RequestTokenCallbacked:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

.field public static final enum RequestTokenCanceled:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

.field public static final enum RequestTokenSent:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 385
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    const-string v1, "Idle"

    invoke-direct {v0, v1, v3}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->Idle:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    .line 386
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    const-string v1, "RequestTokenSent"

    invoke-direct {v0, v1, v4}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->RequestTokenSent:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    .line 387
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    const-string v1, "RequestTokenCallbacked"

    invoke-direct {v0, v1, v5}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->RequestTokenCallbacked:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    .line 388
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    const-string v1, "RequestTokenCanceled"

    invoke-direct {v0, v1, v6}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->RequestTokenCanceled:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    .line 389
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    const-string v1, "Filedownloadcalled"

    invoke-direct {v0, v1, v7}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->Filedownloadcalled:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    .line 390
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    const-string v1, "FiledownloadFinished"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->FiledownloadFinished:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    .line 384
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->Idle:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->RequestTokenSent:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->RequestTokenCallbacked:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->RequestTokenCanceled:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->Filedownloadcalled:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->FiledownloadFinished:Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->$VALUES:[Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

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
    .line 384
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;
    .locals 1
    .parameter "name"

    .prologue
    .line 384
    const-class v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    return-object v0
.end method

.method public static values()[Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->$VALUES:[Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    invoke-virtual {v0}, [Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bulletin/utils/MusicPlayer$StreamItemState;

    return-object v0
.end method
