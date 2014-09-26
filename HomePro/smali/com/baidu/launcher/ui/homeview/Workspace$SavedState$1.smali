.class final Lcom/baidu/launcher/ui/homeview/Workspace$SavedState$1;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/Workspace$SavedState;
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
        "Lcom/baidu/launcher/ui/homeview/Workspace$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2957
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/baidu/launcher/ui/homeview/Workspace$SavedState;
    .locals 2
    .parameter "in"

    .prologue
    .line 2959
    new-instance v0, Lcom/baidu/launcher/ui/homeview/Workspace$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/baidu/launcher/ui/homeview/Workspace$SavedState;-><init>(Landroid/os/Parcel;Lcom/baidu/launcher/ui/homeview/Workspace$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2957
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/baidu/launcher/ui/homeview/Workspace$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/baidu/launcher/ui/homeview/Workspace$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 2963
    new-array v0, p1, [Lcom/baidu/launcher/ui/homeview/Workspace$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2957
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace$SavedState$1;->newArray(I)[Lcom/baidu/launcher/ui/homeview/Workspace$SavedState;

    move-result-object v0

    return-object v0
.end method
