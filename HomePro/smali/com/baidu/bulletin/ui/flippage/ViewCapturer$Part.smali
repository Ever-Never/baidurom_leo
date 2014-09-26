.class public final enum Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;
.super Ljava/lang/Enum;
.source "ViewCapturer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/flippage/ViewCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Part"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

.field public static final enum Bottom:Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

.field public static final enum Left:Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

.field public static final enum Right:Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

.field public static final enum Top:Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

    const-string v1, "Top"

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;->Top:Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

    .line 17
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

    const-string v1, "Bottom"

    invoke-direct {v0, v1, v3}, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;->Bottom:Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

    .line 18
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

    const-string v1, "Left"

    invoke-direct {v0, v1, v4}, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;->Left:Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

    .line 19
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

    const-string v1, "Right"

    invoke-direct {v0, v1, v5}, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;->Right:Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

    sget-object v1, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;->Top:Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;->Bottom:Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;->Left:Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;->Right:Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;->$VALUES:[Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;
    .locals 1
    .parameter "name"

    .prologue
    .line 15
    const-class v0, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

    return-object v0
.end method

.method public static values()[Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;->$VALUES:[Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

    invoke-virtual {v0}, [Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bulletin/ui/flippage/ViewCapturer$Part;

    return-object v0
.end method
