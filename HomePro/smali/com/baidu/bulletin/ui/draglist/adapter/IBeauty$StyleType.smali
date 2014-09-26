.class public final enum Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;
.super Ljava/lang/Enum;
.source "IBeauty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StyleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

.field public static final enum BEAUTIFUL_GIRL:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

.field public static final enum LEFT_HAVE_RIGHT_NO_PIC:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

.field public static final enum MUSIC:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

.field public static final enum RIGHT_HAVE_LEFT_NO_PIC:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

.field public static final enum SINGLE_BIG:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

.field public static final enum SINGLE_NO_PIC:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

.field public static final enum SINGLE_SMALL:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

.field public static final enum TWO_HAVE_PIC_LEFT_BIG_RIGHT_SMALL:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

.field public static final enum TWO_HAVE_PIC_LEFT_SMALL_RIGHT_BIG:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

.field public static final enum TWO_NO_PIC:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    const-string v1, "SINGLE_SMALL"

    invoke-direct {v0, v1, v3}, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->SINGLE_SMALL:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    .line 19
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    const-string v1, "SINGLE_NO_PIC"

    invoke-direct {v0, v1, v4}, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->SINGLE_NO_PIC:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    .line 20
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    const-string v1, "SINGLE_BIG"

    invoke-direct {v0, v1, v5}, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->SINGLE_BIG:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    .line 21
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    const-string v1, "TWO_NO_PIC"

    invoke-direct {v0, v1, v6}, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->TWO_NO_PIC:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    .line 22
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    const-string v1, "TWO_HAVE_PIC_LEFT_SMALL_RIGHT_BIG"

    invoke-direct {v0, v1, v7}, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->TWO_HAVE_PIC_LEFT_SMALL_RIGHT_BIG:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    .line 23
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    const-string v1, "TWO_HAVE_PIC_LEFT_BIG_RIGHT_SMALL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->TWO_HAVE_PIC_LEFT_BIG_RIGHT_SMALL:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    .line 24
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    const-string v1, "LEFT_HAVE_RIGHT_NO_PIC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->LEFT_HAVE_RIGHT_NO_PIC:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    .line 25
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    const-string v1, "RIGHT_HAVE_LEFT_NO_PIC"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->RIGHT_HAVE_LEFT_NO_PIC:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    .line 27
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    const-string v1, "MUSIC"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->MUSIC:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    .line 29
    new-instance v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    const-string v1, "BEAUTIFUL_GIRL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->BEAUTIFUL_GIRL:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    .line 17
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->SINGLE_SMALL:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->SINGLE_NO_PIC:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->SINGLE_BIG:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->TWO_NO_PIC:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->TWO_HAVE_PIC_LEFT_SMALL_RIGHT_BIG:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->TWO_HAVE_PIC_LEFT_BIG_RIGHT_SMALL:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->LEFT_HAVE_RIGHT_NO_PIC:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->RIGHT_HAVE_LEFT_NO_PIC:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->MUSIC:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->BEAUTIFUL_GIRL:Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->$VALUES:[Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;
    .locals 1
    .parameter "name"

    .prologue
    .line 17
    const-class v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    return-object v0
.end method

.method public static values()[Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->$VALUES:[Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    invoke-virtual {v0}, [Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;

    return-object v0
.end method
