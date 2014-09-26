.class final Lcom/inveno/newpiflow/model/Item$1;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/newpiflow/model/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/inveno/newpiflow/model/Item;
    .locals 1
    .parameter "paramParcel"

    .prologue
    .line 10
    new-instance v0, Lcom/inveno/newpiflow/model/Item;

    invoke-direct {v0, p1}, Lcom/inveno/newpiflow/model/Item;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/inveno/newpiflow/model/Item$1;->createFromParcel(Landroid/os/Parcel;)Lcom/inveno/newpiflow/model/Item;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/inveno/newpiflow/model/Item;
    .locals 1
    .parameter "paramInt"

    .prologue
    .line 14
    new-array v0, p1, [Lcom/inveno/newpiflow/model/Item;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/inveno/newpiflow/model/Item$1;->newArray(I)[Lcom/inveno/newpiflow/model/Item;

    move-result-object v0

    return-object v0
.end method
