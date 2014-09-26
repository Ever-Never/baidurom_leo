.class public Lcom/inveno/newpiflow/model/PiDataItem;
.super Ljava/lang/Object;
.source "PiDataItem.java"


# static fields
.field public static final LAYOUT_LBS_TYPE_IMG_NORMAL:I = 0x6

.field public static final LAYOUT_LBS_TYPE_LEFT_RIGHT_IMG_NORMAL:I = 0x8

.field public static final LAYOUT_LBS_TYPE_TEXT_NORMAL:I = 0x7

.field public static final LAYOUT_TYPE_IMG_NORMAL:I = 0x1

.field public static final LAYOUT_TYPE_IMG_NORMAL_LIST:I = 0x4

.field public static final LAYOUT_TYPE_IMG_TEXT:I = 0x2

.field public static final LAYOUT_TYPE_IMG_TEXT_LEFT_RIGHT:I = 0x3

.field public static final LAYOUT_TYPE_TEXT_NORMAL:I = 0x0

.field public static final LAYOUT_TYPE_TEXT_NORMAL_LIST:I = 0x5


# instance fields
.field private banner:Z

.field private flowNewinfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

.field public height:I

.field id:Ljava/lang/String;

.field public imgUrl:Ljava/lang/String;

.field private iv:Lcom/inveno/newpiflow/widget/PiImageView;

.field public ivHeight:I

.field public ivWidth:I

.field public lbs:I

.field public maxLine:I

.field public snippet:Ljava/lang/String;

.field public src:Ljava/lang/String;

.field public time:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field private uploadInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;",
            ">;"
        }
    .end annotation
.end field

.field public viewType:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "ivWidth"
    .parameter "ivHeight"
    .parameter "title"
    .parameter "snippet"
    .parameter "src"
    .parameter "imgUrl"
    .parameter "time"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/inveno/newpiflow/model/PiDataItem;->id:Ljava/lang/String;

    .line 79
    iput p2, p0, Lcom/inveno/newpiflow/model/PiDataItem;->ivWidth:I

    .line 80
    iput p3, p0, Lcom/inveno/newpiflow/model/PiDataItem;->ivHeight:I

    .line 81
    iput-object p4, p0, Lcom/inveno/newpiflow/model/PiDataItem;->title:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lcom/inveno/newpiflow/model/PiDataItem;->snippet:Ljava/lang/String;

    .line 83
    iput-object p6, p0, Lcom/inveno/newpiflow/model/PiDataItem;->src:Ljava/lang/String;

    .line 84
    iput-object p7, p0, Lcom/inveno/newpiflow/model/PiDataItem;->imgUrl:Ljava/lang/String;

    .line 85
    iput-object p8, p0, Lcom/inveno/newpiflow/model/PiDataItem;->time:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "ivWidth"
    .parameter "title"
    .parameter "snippet"
    .parameter "src"
    .parameter "imgUrl"
    .parameter "time"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/inveno/newpiflow/model/PiDataItem;->id:Ljava/lang/String;

    .line 68
    iput p2, p0, Lcom/inveno/newpiflow/model/PiDataItem;->ivWidth:I

    .line 69
    iput-object p3, p0, Lcom/inveno/newpiflow/model/PiDataItem;->title:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/inveno/newpiflow/model/PiDataItem;->snippet:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lcom/inveno/newpiflow/model/PiDataItem;->src:Ljava/lang/String;

    .line 72
    iput-object p6, p0, Lcom/inveno/newpiflow/model/PiDataItem;->imgUrl:Ljava/lang/String;

    .line 73
    iput-object p7, p0, Lcom/inveno/newpiflow/model/PiDataItem;->time:Ljava/lang/String;

    .line 74
    return-void
.end method


# virtual methods
.method public getFlowNewinfo()Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/inveno/newpiflow/model/PiDataItem;->flowNewinfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    return-object v0
.end method

.method public getIv()Lcom/inveno/newpiflow/widget/PiImageView;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/inveno/newpiflow/model/PiDataItem;->iv:Lcom/inveno/newpiflow/widget/PiImageView;

    return-object v0
.end method

.method public getLbs()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/inveno/newpiflow/model/PiDataItem;->lbs:I

    return v0
.end method

.method public getUploadInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/inveno/newpiflow/model/PiDataItem;->uploadInfos:Ljava/util/List;

    return-object v0
.end method

.method public isBanner()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/inveno/newpiflow/model/PiDataItem;->banner:Z

    return v0
.end method

.method public setBanner(Z)V
    .locals 0
    .parameter "banner"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/inveno/newpiflow/model/PiDataItem;->banner:Z

    .line 94
    return-void
.end method

.method public setFlowNewinfo(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;)V
    .locals 0
    .parameter "flowNewinfo"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/inveno/newpiflow/model/PiDataItem;->flowNewinfo:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    .line 102
    return-void
.end method

.method public setIv(Lcom/inveno/newpiflow/widget/PiImageView;)V
    .locals 0
    .parameter "iv"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/inveno/newpiflow/model/PiDataItem;->iv:Lcom/inveno/newpiflow/widget/PiImageView;

    .line 118
    return-void
.end method

.method public setLbs(I)V
    .locals 0
    .parameter "lbs"

    .prologue
    .line 125
    iput p1, p0, Lcom/inveno/newpiflow/model/PiDataItem;->lbs:I

    .line 126
    return-void
.end method

.method public setUploadInfos(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, uploadInfos:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;>;"
    iput-object p1, p0, Lcom/inveno/newpiflow/model/PiDataItem;->uploadInfos:Ljava/util/List;

    .line 110
    return-void
.end method
