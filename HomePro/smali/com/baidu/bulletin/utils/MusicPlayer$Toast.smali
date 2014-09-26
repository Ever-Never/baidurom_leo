.class public final enum Lcom/baidu/bulletin/utils/MusicPlayer$Toast;
.super Ljava/lang/Enum;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Toast"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/bulletin/utils/MusicPlayer$Toast;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

.field public static final enum AcquireMusicUrlError:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

.field public static final enum ChannelContentError:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

.field public static final enum FileInputStreamError:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

.field public static final enum NetworkInvalid:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

.field public static final enum TransmissionError:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

.field public static final enum ViaMOBILENetwork:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

.field public static final enum ViaWIFINetwork:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    const-string v1, "NetworkInvalid"

    invoke-direct {v0, v1, v3}, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->NetworkInvalid:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    .line 87
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    const-string v1, "ViaMOBILENetwork"

    invoke-direct {v0, v1, v4}, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->ViaMOBILENetwork:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    .line 88
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    const-string v1, "ViaWIFINetwork"

    invoke-direct {v0, v1, v5}, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->ViaWIFINetwork:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    .line 89
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    const-string v1, "FileInputStreamError"

    invoke-direct {v0, v1, v6}, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->FileInputStreamError:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    .line 90
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    const-string v1, "AcquireMusicUrlError"

    invoke-direct {v0, v1, v7}, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->AcquireMusicUrlError:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    .line 91
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    const-string v1, "TransmissionError"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->TransmissionError:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    .line 92
    new-instance v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    const-string v1, "ChannelContentError"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->ChannelContentError:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    .line 85
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->NetworkInvalid:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->ViaMOBILENetwork:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->ViaWIFINetwork:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->FileInputStreamError:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->AcquireMusicUrlError:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->TransmissionError:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->ChannelContentError:Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->$VALUES:[Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/bulletin/utils/MusicPlayer$Toast;
    .locals 1
    .parameter "name"

    .prologue
    .line 85
    const-class v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    return-object v0
.end method

.method public static values()[Lcom/baidu/bulletin/utils/MusicPlayer$Toast;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->$VALUES:[Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    invoke-virtual {v0}, [Lcom/baidu/bulletin/utils/MusicPlayer$Toast;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bulletin/utils/MusicPlayer$Toast;

    return-object v0
.end method
