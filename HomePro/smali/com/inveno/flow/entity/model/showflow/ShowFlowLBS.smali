.class public Lcom/inveno/flow/entity/model/showflow/ShowFlowLBS;
.super Ljava/lang/Object;
.source "ShowFlowLBS.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final BUY:Ljava/lang/String; = "0"

.field public static final EXCELLENT:Ljava/lang/String; = "2"

.field public static final RECOMMEND:Ljava/lang/String; = "1"


# instance fields
.field private lbsType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public getLbsType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowLBS;->lbsType:Ljava/lang/String;

    return-object v0
.end method

.method public setLbsType(Ljava/lang/String;)V
    .locals 0
    .parameter "lbsType"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/inveno/flow/entity/model/showflow/ShowFlowLBS;->lbsType:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 37
    return-void
.end method
