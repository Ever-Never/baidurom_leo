.class Lcom/inveno/flow/entity/model/showflow/ShowFlowNews$1;
.super Ljava/lang/Object;
.source "ShowFlowNews.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    .locals 1
    .parameter "source"

    .prologue
    .line 174
    new-instance v0, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;

    invoke-direct {v0, p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews$1;->createFromParcel(Landroid/os/Parcel;)Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    .locals 1
    .parameter "size"

    .prologue
    .line 169
    new-array v0, p1, [Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews$1;->newArray(I)[Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;

    move-result-object v0

    return-object v0
.end method
