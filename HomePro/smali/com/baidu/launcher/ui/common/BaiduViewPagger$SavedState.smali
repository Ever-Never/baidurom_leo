.class public Lcom/baidu/launcher/ui/common/BaiduViewPagger$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "BaiduViewPagger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/common/BaiduViewPagger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/launcher/ui/common/BaiduViewPagger$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentPage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1629
    new-instance v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger$SavedState$1;

    invoke-direct {v0}, Lcom/baidu/launcher/ui/common/BaiduViewPagger$SavedState$1;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/common/BaiduViewPagger$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 1619
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1612
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger$SavedState;->currentPage:I

    .line 1620
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger$SavedState;->currentPage:I

    .line 1621
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/baidu/launcher/ui/common/BaiduViewPagger$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1611
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/common/BaiduViewPagger$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "superState"

    .prologue
    .line 1615
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1612
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger$SavedState;->currentPage:I

    .line 1616
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 1625
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1626
    iget v0, p0, Lcom/baidu/launcher/ui/common/BaiduViewPagger$SavedState;->currentPage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1627
    return-void
.end method
