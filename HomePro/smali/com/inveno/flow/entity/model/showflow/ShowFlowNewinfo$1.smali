.class final Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo$1;
.super Ljava/lang/Object;
.source "ShowFlowNewinfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    .locals 2
    .parameter "source"

    .prologue
    .line 593
    new-instance v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;-><init>(Landroid/os/Parcel;Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 599
    new-array v0, p1, [Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo$1;->newArray(I)[Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    move-result-object v0

    return-object v0
.end method
