.class public final enum Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;
.super Ljava/lang/Enum;
.source "PageFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/flippage/PageFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

.field public static final enum Finishing:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

.field public static final enum FromBottomToTop:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

.field public static final enum FromLeftToRight:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

.field public static final enum FromRightToLeft:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

.field public static final enum FromTopToBottom:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

.field public static final enum None:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    const-string v1, "FromTopToBottom"

    invoke-direct {v0, v1, v3}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->FromTopToBottom:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    .line 25
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    const-string v1, "FromBottomToTop"

    invoke-direct {v0, v1, v4}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->FromBottomToTop:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    .line 26
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    const-string v1, "FromLeftToRight"

    invoke-direct {v0, v1, v5}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->FromLeftToRight:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    .line 27
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    const-string v1, "FromRightToLeft"

    invoke-direct {v0, v1, v6}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->FromRightToLeft:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    .line 29
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    const-string v1, "None"

    invoke-direct {v0, v1, v7}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->None:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    .line 32
    new-instance v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    const-string v1, "Finishing"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->Finishing:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    sget-object v1, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->FromTopToBottom:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->FromBottomToTop:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->FromLeftToRight:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->FromRightToLeft:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->None:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->Finishing:Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->$VALUES:[Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;
    .locals 1
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    return-object v0
.end method

.method public static values()[Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->$VALUES:[Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    invoke-virtual {v0}, [Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bulletin/ui/flippage/PageFlipper$Direction;

    return-object v0
.end method
