.class public Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final DIVIDER_BETWEEN_DAY_AND_NIGHT:J = 0x12L

.field private static final ICON_BLIZZARD:I = 0x65

.field private static final ICON_CLEAR:I = 0x70

.field private static final ICON_CLOUDY:I = 0x6b

.field private static final ICON_DUST:I = 0x6c

.field private static final ICON_DUST_STORM:I = 0x71

.field private static final ICON_FOG:I = 0x73

.field private static final ICON_HEAVY_RAIN:I = 0x69

.field private static final ICON_HEAVY_RAIN_STORM:I = 0x67

.field private static final ICON_HEAVY_SNOW:I = 0x68

.field private static final ICON_IN_THE_SNOW:I = 0x7b

.field private static final ICON_JANSA:I = 0x76

.field private static final ICON_LIGHT_RAIN:I = 0x75

.field private static final ICON_LIGHT_SNOW:I = 0x74

.field private static final ICON_MODERATER_RAIN:I = 0x7c

.field private static final ICON_RAIN_SNOW:I = 0x78

.field private static final ICON_RAIN_STORM:I = 0x66

.field private static final ICON_SHADE:I = 0x77

.field private static final ICON_SHOWER:I = 0x7a

.field private static final ICON_SLEET:I = 0x6a

.field private static final ICON_SNOW_SHOWER:I = 0x79

.field private static final ICON_STRONG_DUST_STORM:I = 0x6f

.field private static final ICON_SUPER_RAIN_STORM:I = 0x72

.field private static final ICON_THUNDER_STORM:I = 0x6d

.field private static final ICON_THUNDER_STORM_HAIL:I = 0x6e

.field private static cond:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

.field private static mClockLaunchIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->getLogger(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->mClockLaunchIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkStringLegal(Ljava/lang/String;)Z
    .locals 7
    .parameter "string"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 206
    if-nez p0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v3

    .line 208
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, length:I
    const/4 v0, 0x0

    .line 209
    .local v0, i:I
    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_3

    move v2, v4

    .line 212
    .local v2, negative:Z
    :goto_1
    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    if-eq v0, v1, :cond_0

    :cond_2
    move v3, v4

    .line 215
    goto :goto_0

    .end local v2           #negative:Z
    :cond_3
    move v2, v3

    .line 211
    goto :goto_1
.end method

.method private static cn2EnForWeather(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "weatherCn"
    .parameter "context"

    .prologue
    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 284
    .local v0, res:Landroid/content/res/Resources;
    const-string v1, ""

    .line 286
    .local v1, weatherEn:Ljava/lang/String;
    const v2, 0x7f0c0305

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    const v2, 0x7f0c0325

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 351
    :cond_0
    :goto_0
    return-object v1

    .line 288
    :cond_1
    const v2, 0x7f0c0306

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    const v2, 0x7f0c0326

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 290
    :cond_2
    const v2, 0x7f0c0307

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 291
    const v2, 0x7f0c0327

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 292
    :cond_3
    const v2, 0x7f0c0308

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 293
    const v2, 0x7f0c0328

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 294
    :cond_4
    const v2, 0x7f0c0309

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 295
    const v2, 0x7f0c0329

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 296
    :cond_5
    const v2, 0x7f0c030a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 297
    const v2, 0x7f0c032a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 298
    :cond_6
    const v2, 0x7f0c030b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 299
    const v2, 0x7f0c032b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 300
    :cond_7
    const v2, 0x7f0c030c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 301
    const v2, 0x7f0c032c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 302
    :cond_8
    const v2, 0x7f0c030d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 303
    const v2, 0x7f0c032d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 304
    :cond_9
    const v2, 0x7f0c030e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 305
    const v2, 0x7f0c032e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 306
    :cond_a
    const v2, 0x7f0c030f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 307
    const v2, 0x7f0c032f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 308
    :cond_b
    const v2, 0x7f0c0310

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 309
    const v2, 0x7f0c0330

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 310
    :cond_c
    const v2, 0x7f0c0311

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 311
    const v2, 0x7f0c0331

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 312
    :cond_d
    const v2, 0x7f0c0312

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 313
    const v2, 0x7f0c0332

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 314
    :cond_e
    const v2, 0x7f0c0313

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 315
    const v2, 0x7f0c0333

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 316
    :cond_f
    const v2, 0x7f0c0314

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 317
    const v2, 0x7f0c0334

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 318
    :cond_10
    const v2, 0x7f0c0315

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 319
    const v2, 0x7f0c0335

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 320
    :cond_11
    const v2, 0x7f0c0316

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 321
    const v2, 0x7f0c0336

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 322
    :cond_12
    const v2, 0x7f0c0317

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 323
    const v2, 0x7f0c0337

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 324
    :cond_13
    const v2, 0x7f0c0318

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 325
    const v2, 0x7f0c0338

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 326
    :cond_14
    const v2, 0x7f0c0319

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 327
    const v2, 0x7f0c0339

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 328
    :cond_15
    const v2, 0x7f0c031a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 329
    const v2, 0x7f0c033a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 330
    :cond_16
    const v2, 0x7f0c031b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 331
    const v2, 0x7f0c033b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 332
    :cond_17
    const v2, 0x7f0c031c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 333
    const v2, 0x7f0c033c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 334
    :cond_18
    const v2, 0x7f0c031d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 335
    const v2, 0x7f0c033d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 336
    :cond_19
    const v2, 0x7f0c031e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 337
    const v2, 0x7f0c033e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 338
    :cond_1a
    const v2, 0x7f0c031f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 339
    const v2, 0x7f0c033f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 340
    :cond_1b
    const v2, 0x7f0c0320

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 341
    const v2, 0x7f0c0340

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 342
    :cond_1c
    const v2, 0x7f0c0321

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 343
    const v2, 0x7f0c0341

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 344
    :cond_1d
    const v2, 0x7f0c0322

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 345
    const v2, 0x7f0c0342

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 346
    :cond_1e
    const v2, 0x7f0c0323

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 347
    const v2, 0x7f0c0343

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 348
    :cond_1f
    const v2, 0x7f0c0324

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    const v2, 0x7f0c0344

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static formateIconValue(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 10
    .parameter "context"
    .parameter "condition"
    .parameter "isDay"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 111
    if-nez p1, :cond_0

    move v6, v7

    .line 147
    :goto_0
    return v6

    .line 114
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 115
    .local v4, res:Landroid/content/res/Resources;
    const v6, 0x7f0c01d5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, turn:Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 119
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, cons:[Ljava/lang/String;
    array-length v6, v0

    if-ge v6, v8, :cond_1

    move v6, v7

    .line 121
    goto :goto_0

    .line 122
    :cond_1
    array-length v6, v0

    if-le v6, v8, :cond_3

    .line 123
    if-eqz p2, :cond_2

    const/4 v6, 0x0

    aget-object v1, v0, v6

    .line 131
    .end local v0           #cons:[Ljava/lang/String;
    .local v1, forecast:Ljava/lang/String;
    :goto_1
    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "condition :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->d(Ljava/lang/String;)V

    .line 132
    if-nez v1, :cond_5

    move v6, v7

    .line 133
    goto :goto_0

    .line 123
    .end local v1           #forecast:Ljava/lang/String;
    .restart local v0       #cons:[Ljava/lang/String;
    :cond_2
    aget-object v1, v0, v8

    goto :goto_1

    .line 125
    :cond_3
    move-object v1, p1

    .restart local v1       #forecast:Ljava/lang/String;
    goto :goto_1

    .line 128
    .end local v0           #cons:[Ljava/lang/String;
    .end local v1           #forecast:Ljava/lang/String;
    :cond_4
    move-object v1, p1

    .restart local v1       #forecast:Ljava/lang/String;
    goto :goto_1

    .line 135
    :cond_5
    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 136
    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 137
    .local v3, index:I
    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    const-string v7, "is match :: "

    invoke-virtual {v6, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->d(Ljava/lang/String;)V

    .line 138
    invoke-static {v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->matchIconValue(I)I

    move-result v6

    goto :goto_0

    .line 140
    .end local v3           #index:I
    :cond_6
    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    const-string v8, "is not match :: "

    invoke-virtual {v6, v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->d(Ljava/lang/String;)V

    .line 141
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_8

    .line 142
    sget-object v6, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 143
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->matchIconValue(I)I

    move-result v6

    goto/16 :goto_0

    .line 141
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    move v6, v7

    .line 147
    goto/16 :goto_0
.end method

.method public static getLocationColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->isEnglish()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "locationNameEn"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "locationName"

    goto :goto_0
.end method

.method public static getWeatherEn(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "str"
    .parameter "context"

    .prologue
    const v9, 0x7f0c0359

    .line 361
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 362
    .local v6, res:Landroid/content/res/Resources;
    const-string v7, ""

    .line 364
    .local v7, weatherEn:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 365
    const v8, 0x7f0c01b2

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 383
    :goto_0
    return-object v8

    .line 367
    :cond_0
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 368
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 369
    .local v2, index:I
    const/4 v8, 0x0

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, day:Ljava/lang/String;
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 372
    .local v4, night:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cn2EnForWeather(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, dayEn:Ljava/lang/String;
    invoke-static {v4, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cn2EnForWeather(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 374
    .local v5, nightEn:Ljava/lang/String;
    const-string v3, ""

    .line 375
    .local v3, invalid:Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 376
    :cond_1
    const-string v7, ""

    .end local v0           #day:Ljava/lang/String;
    .end local v1           #dayEn:Ljava/lang/String;
    .end local v2           #index:I
    .end local v3           #invalid:Ljava/lang/String;
    .end local v4           #night:Ljava/lang/String;
    .end local v5           #nightEn:Ljava/lang/String;
    :goto_1
    move-object v8, v7

    .line 383
    goto :goto_0

    .line 378
    .restart local v0       #day:Ljava/lang/String;
    .restart local v1       #dayEn:Ljava/lang/String;
    .restart local v2       #index:I
    .restart local v3       #invalid:Ljava/lang/String;
    .restart local v4       #night:Ljava/lang/String;
    .restart local v5       #nightEn:Ljava/lang/String;
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0c035a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 381
    .end local v0           #day:Ljava/lang/String;
    .end local v1           #dayEn:Ljava/lang/String;
    .end local v2           #index:I
    .end local v3           #invalid:Ljava/lang/String;
    .end local v4           #night:Ljava/lang/String;
    .end local v5           #nightEn:Ljava/lang/String;
    :cond_3
    invoke-static {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cn2EnForWeather(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public static initCond(Landroid/content/Context;)V
    .locals 30
    .parameter "context"

    .prologue
    .line 54
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 56
    .local v19, res:Landroid/content/res/Resources;
    const v28, 0x7f0c01b4

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, clear:Ljava/lang/String;
    const v28, 0x7f0c01b5

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 58
    .local v26, sun_cloud:Ljava/lang/String;
    const v28, 0x7f0c01b6

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, cloudy:Ljava/lang/String;
    const v28, 0x7f0c01b7

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 60
    .local v21, shower:Ljava/lang/String;
    const v28, 0x7f0c01b8

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 61
    .local v27, thunderstorm:Ljava/lang/String;
    const v28, 0x7f0c01b9

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, hail:Ljava/lang/String;
    const v28, 0x7f0c01ba

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 63
    .local v17, rainsnow:Ljava/lang/String;
    const v28, 0x7f0c01bb

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 64
    .local v14, lightrain:Ljava/lang/String;
    const v28, 0x7f0c01bc

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 65
    .local v16, moderaterain:Ljava/lang/String;
    const v28, 0x7f0c01bd

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 66
    .local v9, heavyrain:Ljava/lang/String;
    const v28, 0x7f0c01be

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 67
    .local v18, rainstorm:Ljava/lang/String;
    const v28, 0x7f0c01bf

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 68
    .local v10, heavyrainstorm1:Ljava/lang/String;
    const v28, 0x7f0c01c0

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 69
    .local v11, heavyrainstorm2:Ljava/lang/String;
    const v28, 0x7f0c01c1

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 70
    .local v24, snowshower:Ljava/lang/String;
    const v28, 0x7f0c01c2

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 71
    .local v15, lightsnow:Ljava/lang/String;
    const v28, 0x7f0c01c3

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 72
    .local v12, inthesnow:Ljava/lang/String;
    const v28, 0x7f0c01c4

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 73
    .local v23, snowbig:Ljava/lang/String;
    const v28, 0x7f0c01c5

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, blizzard:Ljava/lang/String;
    const v28, 0x7f0c01c6

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 75
    .local v7, fog:Ljava/lang/String;
    const v28, 0x7f0c01c7

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 76
    .local v22, sleet:Ljava/lang/String;
    const v28, 0x7f0c01c8

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 77
    .local v20, sandstorm:Ljava/lang/String;
    const v28, 0x7f0c01c9

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 78
    .local v13, jansa:Ljava/lang/String;
    const v28, 0x7f0c01ca

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, dust:Ljava/lang/String;
    const v28, 0x7f0c01cb

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 81
    .local v25, strongduststorm:Ljava/lang/String;
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    .line 82
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 83
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 84
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0x2

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 85
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0x3

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 86
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0x4

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v1, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 87
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0x5

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 88
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0x6

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 89
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0x7

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 90
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0x8

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 91
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0x9

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v1, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 92
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0xa

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 93
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0xb

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 94
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0xc

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 95
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0xd

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 96
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0xe

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 97
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0xf

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v1, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 98
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0x10

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v1, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 99
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0x11

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v1, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 100
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0x12

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 101
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0x13

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 102
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0x14

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 103
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0x15

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 104
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0x16

    move-object/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v0, v1, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 105
    sget-object v28, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->cond:Ljava/util/ArrayList;

    const/16 v29, 0x17

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 107
    return-void
.end method

.method public static isAlpha(Ljava/lang/String;)Z
    .locals 4
    .parameter "source"

    .prologue
    .line 219
    const/4 v2, 0x1

    .line 220
    .local v2, isAlpha:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 221
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 222
    .local v0, c:C
    const/16 v3, 0x61

    if-lt v0, v3, :cond_0

    const/16 v3, 0x7a

    if-le v0, v3, :cond_3

    :cond_0
    const/16 v3, 0x41

    if-lt v0, v3, :cond_1

    const/16 v3, 0x5a

    if-le v0, v3, :cond_3

    .line 223
    :cond_1
    const/4 v2, 0x0

    .line 227
    .end local v0           #c:C
    :cond_2
    return v2

    .line 220
    .restart local v0       #c:C
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isEnglish()Z
    .locals 2

    .prologue
    .line 235
    const-string v0, "en"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static matchIconValue(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 151
    packed-switch p0, :pswitch_data_0

    .line 201
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 153
    :pswitch_0
    const/16 v0, 0x65

    goto :goto_0

    .line 155
    :pswitch_1
    const/16 v0, 0x66

    goto :goto_0

    .line 157
    :pswitch_2
    const/16 v0, 0x67

    goto :goto_0

    .line 159
    :pswitch_3
    const/16 v0, 0x68

    goto :goto_0

    .line 161
    :pswitch_4
    const/16 v0, 0x69

    goto :goto_0

    .line 163
    :pswitch_5
    const/16 v0, 0x6a

    goto :goto_0

    .line 165
    :pswitch_6
    const/16 v0, 0x6b

    goto :goto_0

    .line 167
    :pswitch_7
    const/16 v0, 0x6c

    goto :goto_0

    .line 169
    :pswitch_8
    const/16 v0, 0x6d

    goto :goto_0

    .line 171
    :pswitch_9
    const/16 v0, 0x6e

    goto :goto_0

    .line 173
    :pswitch_a
    const/16 v0, 0x6f

    goto :goto_0

    .line 175
    :pswitch_b
    const/16 v0, 0x70

    goto :goto_0

    .line 177
    :pswitch_c
    const/16 v0, 0x71

    goto :goto_0

    .line 179
    :pswitch_d
    const/16 v0, 0x72

    goto :goto_0

    .line 181
    :pswitch_e
    const/16 v0, 0x73

    goto :goto_0

    .line 183
    :pswitch_f
    const/16 v0, 0x74

    goto :goto_0

    .line 185
    :pswitch_10
    const/16 v0, 0x75

    goto :goto_0

    .line 187
    :pswitch_11
    const/16 v0, 0x76

    goto :goto_0

    .line 189
    :pswitch_12
    const/16 v0, 0x77

    goto :goto_0

    .line 191
    :pswitch_13
    const/16 v0, 0x78

    goto :goto_0

    .line 193
    :pswitch_14
    const/16 v0, 0x79

    goto :goto_0

    .line 195
    :pswitch_15
    const/16 v0, 0x7a

    goto :goto_0

    .line 197
    :pswitch_16
    const/16 v0, 0x7b

    goto :goto_0

    .line 199
    :pswitch_17
    const/16 v0, 0x7c

    goto :goto_0

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public static queryClockLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 250
    sget-object v8, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->mClockLaunchIntent:Landroid/content/Intent;

    if-eqz v8, :cond_1

    .line 251
    sget-object v2, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->mClockLaunchIntent:Landroid/content/Intent;

    .line 273
    :cond_0
    :goto_0
    return-object v2

    .line 253
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 254
    .local v5, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v3, v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 255
    .local v3, mainIntent:Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const/4 v8, 0x0

    invoke-virtual {v5, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 259
    .local v7, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v8, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v8, v5}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 261
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 262
    .local v6, reInfo:Landroid/content/pm/ResolveInfo;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 263
    .local v0, activityName:Ljava/lang/String;
    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 264
    .local v4, pkgName:Ljava/lang/String;
    const-string v8, "clock"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "Clock"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "CLOCK"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 266
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 267
    .local v2, launchIntent:Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 269
    sput-object v2, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->mClockLaunchIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public static toParentLocationCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "locationCode"

    .prologue
    .line 387
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    const/4 v0, 0x0

    .line 395
    :goto_0
    return-object v0

    .line 391
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    .line 392
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "LocationCode length should > 2"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
