.class public final enum Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;
.super Ljava/lang/Enum;
.source "PageFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/flippage/PageFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

.field public static final enum Above:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

.field public static final enum Below:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

.field public static final enum Current:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

.field public static final enum Left:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

.field public static final enum Right:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    const-string v1, "Above"

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;->Above:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    .line 17
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    const-string v1, "Below"

    invoke-direct {v0, v1, v3}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;->Below:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    .line 18
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    const-string v1, "Left"

    invoke-direct {v0, v1, v4}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;->Left:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    .line 19
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    const-string v1, "Right"

    invoke-direct {v0, v1, v5}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;->Right:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    .line 20
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    const-string v1, "Current"

    invoke-direct {v0, v1, v6}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;->Current:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    sget-object v1, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;->Above:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;->Below:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;->Left:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;->Right:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;->Current:Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    aput-object v1, v0, v6

    sput-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;->$VALUES:[Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

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

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;
    .locals 1
    .parameter "name"

    .prologue
    .line 15
    const-class v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    return-object v0
.end method

.method public static values()[Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;->$VALUES:[Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    invoke-virtual {v0}, [Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bulletin/ui/flippage/PageFlipper$ViewName;

    return-object v0
.end method
