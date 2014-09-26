.class Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;
.super Ljava/lang/Object;
.source "TrafficView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TrafficView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimTrafficInfo"
.end annotation


# instance fields
.field public mSimName:Ljava/lang/String;

.field public mTrafficDay:J

.field public mTrafficMonth:J

.field public mTrafficPackage:J

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/TrafficView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/TrafficView;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;->this$0:Lcom/android/systemui/statusbar/phone/TrafficView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/TrafficView;Lcom/android/systemui/statusbar/phone/TrafficView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TrafficView$SimTrafficInfo;-><init>(Lcom/android/systemui/statusbar/phone/TrafficView;)V

    return-void
.end method
