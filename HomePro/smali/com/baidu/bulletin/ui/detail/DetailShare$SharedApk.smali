.class final enum Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;
.super Ljava/lang/Enum;
.source "DetailShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/detail/DetailShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SharedApk"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

.field public static final enum MAIL:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

.field public static final enum MORE:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

.field public static final enum QZONE:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

.field public static final enum SINAWEIBO:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

.field public static final enum SOHUWEIBO:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

.field public static final enum TENCENTFRIENDS:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

.field public static final enum TENCENTMM:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

.field public static final enum TENCENTWBLOG:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;


# instance fields
.field private docIdList:[I

.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 233
    new-instance v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    const-string v1, "SINAWEIBO"

    invoke-direct {v0, v1, v4, v4}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->SINAWEIBO:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    new-instance v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    const-string v1, "TENCENTMM"

    invoke-direct {v0, v1, v5, v5}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTMM:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    new-instance v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    const-string v1, "TENCENTFRIENDS"

    invoke-direct {v0, v1, v6, v6}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTFRIENDS:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    new-instance v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    const-string v1, "TENCENTWBLOG"

    invoke-direct {v0, v1, v7, v7}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTWBLOG:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    new-instance v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    const-string v1, "QZONE"

    invoke-direct {v0, v1, v8, v8}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->QZONE:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    new-instance v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    const-string v1, "SOHUWEIBO"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->SOHUWEIBO:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    .line 234
    new-instance v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    const-string v1, "MAIL"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->MAIL:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    new-instance v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    const-string v1, "MORE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->MORE:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    .line 232
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    sget-object v1, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->SINAWEIBO:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTMM:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTFRIENDS:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTWBLOG:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    aput-object v1, v0, v7

    sget-object v1, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->QZONE:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->SOHUWEIBO:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->MAIL:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->MORE:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->$VALUES:[Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 240
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 237
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->docIdList:[I

    .line 241
    iput p3, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->index:I

    .line 242
    return-void

    .line 237
    nop

    :array_0
    .array-data 0x4
        0x31t 0x31t 0x3et 0x0t
        0x80t 0x47t 0x3dt 0x0t
        0x80t 0x47t 0x3dt 0x0t
        0x74t 0x3bt 0x3dt 0x0t
        0x9at 0xf7t 0x39t 0x0t
        0xbdt 0x6t 0x34t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;
    .locals 1
    .parameter "name"

    .prologue
    .line 232
    const-class v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    return-object v0
.end method

.method public static values()[Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->$VALUES:[Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v0}, [Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    return-object v0
.end method


# virtual methods
.method getDocId(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->docIdList:[I

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->docIdList:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->docIdList:[I

    aget v0, v0, p1

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getIndex()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->index:I

    return v0
.end method
