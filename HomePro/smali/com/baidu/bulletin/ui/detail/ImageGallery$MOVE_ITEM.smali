.class final enum Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;
.super Ljava/lang/Enum;
.source "ImageGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/detail/ImageGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MOVE_ITEM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

.field public static final enum AUTO_MOVE:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

.field public static final enum NEXT:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

.field public static final enum NONE:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

.field public static final enum PREVIOUSE:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->NONE:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    .line 30
    new-instance v0, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    const-string v1, "PREVIOUSE"

    invoke-direct {v0, v1, v3}, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->PREVIOUSE:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    .line 31
    new-instance v0, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    const-string v1, "NEXT"

    invoke-direct {v0, v1, v4}, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->NEXT:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    .line 32
    new-instance v0, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    const-string v1, "AUTO_MOVE"

    invoke-direct {v0, v1, v5}, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->AUTO_MOVE:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    sget-object v1, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->NONE:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->PREVIOUSE:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->NEXT:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->AUTO_MOVE:Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->$VALUES:[Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;
    .locals 1
    .parameter "name"

    .prologue
    .line 28
    const-class v0, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    return-object v0
.end method

.method public static values()[Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->$VALUES:[Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    invoke-virtual {v0}, [Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bulletin/ui/detail/ImageGallery$MOVE_ITEM;

    return-object v0
.end method
