.class public Lcom/baidu/yi/ads/AdViewBackground;
.super Ljava/lang/Object;
.source "AdViewBackground.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final BOTTOM_POSITION:B = 0x2t

.field static final CENTER_POSITION:B = 0x1t

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/yi/ads/AdViewBackground;",
            ">;"
        }
    .end annotation
.end field

.field static final FOCUS_STATE:B = 0x1t

.field static final NORMAL_STATE:B = 0x0t

.field static final PRESSED_STATE:B = 0x2t

.field static final TOP_POSITION:B = 0x0t

.field private static final TOTAL_POSITIONS:B = 0x3t

.field private static final TOTAL_STATES:B = 0x3t


# instance fields
.field private mBackgrounds:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/baidu/yi/ads/AdViewBackground$1;

    invoke-direct {v0}, Lcom/baidu/yi/ads/AdViewBackground$1;-><init>()V

    .line 31
    sput-object v0, Lcom/baidu/yi/ads/AdViewBackground;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 41
    return-void
.end method

.method public constructor <init>(IIIIIIIII)V
    .locals 4
    .parameter "normalTop"
    .parameter "normalCenter"
    .parameter "normalBottom"
    .parameter "focusTop"
    .parameter "focusCenter"
    .parameter "focusBottom"
    .parameter "pressedTop"
    .parameter "pressedCenter"
    .parameter "pressedBottom"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdViewBackground;->initArray()V

    .line 61
    iget-object v0, p0, Lcom/baidu/yi/ads/AdViewBackground;->mBackgrounds:[[I

    aget-object v0, v0, v1

    aput p1, v0, v1

    .line 62
    iget-object v0, p0, Lcom/baidu/yi/ads/AdViewBackground;->mBackgrounds:[[I

    aget-object v0, v0, v1

    aput p2, v0, v2

    .line 63
    iget-object v0, p0, Lcom/baidu/yi/ads/AdViewBackground;->mBackgrounds:[[I

    aget-object v0, v0, v1

    aput p3, v0, v3

    .line 64
    iget-object v0, p0, Lcom/baidu/yi/ads/AdViewBackground;->mBackgrounds:[[I

    aget-object v0, v0, v2

    aput p4, v0, v1

    .line 65
    iget-object v0, p0, Lcom/baidu/yi/ads/AdViewBackground;->mBackgrounds:[[I

    aget-object v0, v0, v2

    aput p5, v0, v2

    .line 66
    iget-object v0, p0, Lcom/baidu/yi/ads/AdViewBackground;->mBackgrounds:[[I

    aget-object v0, v0, v2

    aput p6, v0, v3

    .line 67
    iget-object v0, p0, Lcom/baidu/yi/ads/AdViewBackground;->mBackgrounds:[[I

    aget-object v0, v0, v3

    aput p7, v0, v1

    .line 68
    iget-object v0, p0, Lcom/baidu/yi/ads/AdViewBackground;->mBackgrounds:[[I

    aget-object v0, v0, v3

    aput p8, v0, v2

    .line 69
    iget-object v0, p0, Lcom/baidu/yi/ads/AdViewBackground;->mBackgrounds:[[I

    aget-object v0, v0, v3

    aput p9, v0, v3

    .line 70
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .parameter "in"

    .prologue
    const/4 v5, 0x3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-direct {p0}, Lcom/baidu/yi/ads/AdViewBackground;->initArray()V

    .line 80
    const/4 v2, 0x0

    .local v2, state:B
    :goto_0
    if-lt v2, v5, :cond_0

    .line 86
    return-void

    .line 81
    :cond_0
    const/4 v0, 0x0

    .local v0, pos:B
    :goto_1
    if-lt v0, v5, :cond_1

    .line 80
    add-int/lit8 v3, v2, 0x1

    int-to-byte v2, v3

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 83
    .local v1, size:I
    iget-object v3, p0, Lcom/baidu/yi/ads/AdViewBackground;->mBackgrounds:[[I

    aget-object v3, v3, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v0

    .line 81
    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/baidu/yi/ads/AdViewBackground;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/baidu/yi/ads/AdViewBackground;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private initArray()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 92
    new-array v1, v3, [[I

    iput-object v1, p0, Lcom/baidu/yi/ads/AdViewBackground;->mBackgrounds:[[I

    .line 93
    const/4 v0, 0x0

    .local v0, state:B
    :goto_0
    if-lt v0, v3, :cond_0

    .line 96
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/baidu/yi/ads/AdViewBackground;->mBackgrounds:[[I

    new-array v2, v3, [I

    aput-object v2, v1, v0

    .line 93
    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getBackground(BB)I
    .locals 1
    .parameter "state"
    .parameter "pos"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/baidu/yi/ads/AdViewBackground;->mBackgrounds:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v3, 0x3

    .line 109
    const/4 v1, 0x0

    .local v1, state:B
    :goto_0
    if-lt v1, v3, :cond_0

    .line 114
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    .local v0, pos:B
    :goto_1
    if-lt v0, v3, :cond_1

    .line 109
    add-int/lit8 v2, v1, 0x1

    int-to-byte v1, v2

    goto :goto_0

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/baidu/yi/ads/AdViewBackground;->mBackgrounds:[[I

    aget-object v2, v2, v1

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    goto :goto_1
.end method
